#!/bin/bash

exec 1>tempfile
exec 0<datafile
exec 2>errorrfile