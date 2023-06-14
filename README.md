# Shepherd

Shepherd is an innovative mobile service, designed as an assistant for individuals with ADHD. Our mission is to provide a user-friendly application that supports time management, task organization, and access to mental health resources, fostering an environment that enables focus, productivity, and wellbeing.

## Alpha Release

Our Alpha release is planned for Q3 2023, which will provide early testers a first look at the core features of Shepherd. This release is intended to be used for testing purposes to identify bugs and gather user feedback for improvements.

## Development Status

As of May 2023, Shepherd is in the initial development phase, with its core functionalities and features currently being built.

### Update as of June 14, 2023:

We've made significant progress on the database architecture. Hibernate entity classes for each table have been created, and we've relocated the database to a local machine for focused troubleshooting and further development. The connectivity issues encountered with AWS led to this change of course. Our efforts are currently centered on the Liquibase aspect of the API.

Today's challenges were numerous, but we tackled each one head-on. Although the API is not currently runnable, we're confident we're moving in the right direction.

### Planned Next Steps:

- Implement Log4j for better log management and tracing, aiding in future troubleshooting.
- Resume efforts to establish a remote database connection with AWS once the API issues have been resolved.
- Extend our set of API endpoints.
- Establish a comprehensive suite of unit tests.
- Begin integration efforts with the mobile front-end once the API is stable.

Please note that while we're working hard to bring these features to life, this is a preliminary plan and could change as the project evolves.

## Technology Stack

### Current:

- **Languages & Frameworks**: Java
- **Database & Persistence**: MySQL
- **Development Environment**: IntelliJ IDEA

### Planned:

- **Database & Persistence**: AWS
- **Build & Dependency Management**: [To be decided]
- **Testing & Documentation**: [To be decided]
- **Utilities & Libraries**: Log4j
- **Other Technologies**: [To be decided]

We appreciate your interest in Shepherd and look forward to sharing our progress. Stay tuned!
