#pragma once

#include "postgres.h"
#include <utils/jsonb.h>

Datum replace_placeholders(Datum tpl, Jsonb *values);
