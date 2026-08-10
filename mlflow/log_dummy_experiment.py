
---

### `mlflow/log_dummy_experiment.py`

```python
#!/usr/bin/env python3
"""
Dummy MLflow experiment for optional extra credit.

This script logs a simple parameter and metric to a local MLflow run.
"""

import random

import mlflow


def main() -> None:
    mlflow.set_experiment("devops-final-demo")

    with mlflow.start_run():
        message = "Hello, DevOps!"
        dummy_score = random.random()

        mlflow.log_param("message", message)
        mlflow.log_metric("dummy_score", dummy_score)

        print("MLflow dummy experiment logged successfully.")
        print(f"message={message}")
        print(f"dummy_score={dummy_score}")


if __name__ == "__main__":
    main()