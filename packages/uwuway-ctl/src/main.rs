use anyhow::Context;
use clap::Parser;
use cli::{
	Cli,
	Commands,
};
use std::{
	io::Write,
	os::unix::net::UnixStream,
};

mod cli;

fn main() -> anyhow::Result<()> {
	let cli = Cli::parse();
	let socket_path = "/tmp/uwuway/.socket.sock";

	let mut stream = UnixStream::connect(socket_path).context("Could not create stream")?;

	match &cli.command {
		Commands::SwitchToWorkspace(args) => {
			let command = format!("workspace switch {}", args.id);
			stream.write(command.as_bytes()).context("Failed at writing onto the stream")?;
		}
		Commands::MoveWindow(args) => {
			let command = format!("window move {}", args.id);
			stream.write(command.as_bytes()).context("Failed at writing onto the stream")?;
		}
		Commands::MoveWindowAndFollow(args) => {
			let command = format!("window move_and_follow {}", args.id);
			stream.write(command.as_bytes()).context("Failed at writing onto the stream")?;
		}
		Commands::CloseWindow(_) => {
			stream.write("window close".as_bytes()).context("Failed at writing onto the stream")?;
		}
		Commands::Quit(_) => {
			stream.write("quit".as_bytes()).context("Failed at writing onto the stream")?;
		}
	}

	Ok(())
}
