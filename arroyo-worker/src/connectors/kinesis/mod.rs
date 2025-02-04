use serde::{Deserialize, Serialize};
use typify::import_types;

pub mod sink;
pub mod source;

import_types!(schema = "../connector-schemas/kinesis/table.json");
