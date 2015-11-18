FROM java:8

MAINTAINER Michele Sorcinelli "michelesr@autistici.org"

EXPOSE 8000

RUN curl -L 'http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest.tar.gz' | tar xz

CMD ["java", "-Djava.library.path=DynamoDBLocal_lib", "-jar", "DynamoDBLocal.jar", "-sharedDb"]
