# React App containerised with Docker

## Available Scripts

In the project directory, you can run:

### `yarn start`

Runs the app in the development mode.<br>
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

The page will reload if you make edits.<br>
You will also see any lint errors in the console.

### `docker build -t react-docker-app .`

Builds a production image of the React App<br>
Updates what docker run will see when called

### `docker run -it -p 8080:80 react-docker-app`

Runs the app from the latest production docker build.<br>
Open [http://localhost:8080](http://localhost:8080) to view it in the browser.

The page will **not** reload if you make edits. (i.e. only for final production build)<br>
It only updates if you run docker build

## Dockerfile

The Dockerfile contains comments on how Docker is set up to comply with create-react-app