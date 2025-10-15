pub contract PerformanceRecorder {

    // Structure to store user performance data
    pub struct Performance {
        pub var tasksCompleted: UInt64
        pub var successes: UInt64
        pub var failures: UInt64
        pub var lastUpdated: UFix64

        init() {
            self.tasksCompleted = 0
            self.successes = 0
            self.failures = 0
            self.lastUpdated = 0.0
        }
    }

    // Mapping of account address → Performance data
    access(self) var performances: {Address: Performance}

    // Event definitions
    pub event TaskRecorded(address: Address, tasksCompleted: UInt64, timestamp: UFix64)
    pub event SuccessRecorded(address: Address, successes: UInt64, timestamp: UFix64)
    pub event FailureRecorded(address: Address, failures: UInt64, timestamp: UFix64)
    pub event PerformanceReset(address: Address, timestamp: UFix64)

    init() {
        self.performances = {}
    }

    // Internal helper to get (or create) a Performance record for an address
    access(self) fun getOrCreatePerformance(user: Address): &Performance {
        if self.performances[user] == nil {
            self.performances[user] = Performance()
        }
        return &self.performances[user] as &Performance
    }

    // 🟢 Record a generic task
    pub fun recordTask() {
        let user = getCurrentExecutor().address!
        let perf = self.getOrCreatePerformance(user)
        perf.tasksCompleted = perf.tasksCompleted + 1
        perf.lastUpdated = getCurrentBlock().timestamp
        emit TaskRecorded(address: user, tasksCompleted: perf.tasksCompleted, timestamp: perf.lastUpdated)
    }

    // 🟢 Record success
    pub fun recordSuccess() {
        let user = getCurrentExecutor().address!
        let perf = self.getOrCreatePerformance(user)
        perf.tasksCompleted = perf.tasksCompleted + 1
        perf.successes = perf.successes + 1
        perf.lastUpdated = getCurrentBlock().timestamp
        emit SuccessRecorded(address: user, successes: perf.successes, timestamp: perf.lastUpdated)
    }

    // 🟢 Record failure
    pub fun recordFailure() {
        let user = getCurrentExecutor().address!
        let perf = self.getOrCreatePerformance(user)
        perf.tasksCompleted = perf.tasksCompleted + 1
        perf.failures = perf.failures + 1
        perf.lastUpdated = getCurrentBlock().timestamp
        emit FailureRecorded(address: user, failures: perf.failures, timestamp: perf.lastUpdated)
    }

    // 🔄 Reset performance
    pub fun resetMyPerformance() {
        let user = getCurrentExecutor().address!
        self.performances[user] = Performance()
        emit PerformanceReset(address: user, timestamp: getCurrentBlock().timestamp)
    }

    // 📊 Get the caller's performance
    pub fun getMyPerformance(): Performance {
        let user = getCurrentExecutor().address!
        let perf = self.getOrCreatePerformance(user)
        return perf
    }
}
pub contract PerformanceRecorder {

    // Structure to store user performance data
    pub struct Performance {
        pub var tasksCompleted: UInt64
        pub var successes: UInt64
        pub var failures: UInt64
        pub var lastUpdated: UFix64

        init() {
            self.tasksCompleted = 0
            self.successes = 0
            self.failures = 0
            self.lastUpdated = 0.0
        }
    }

    // Mapping of account address → Performance data
    access(self) var performances: {Address: Performance}

    // Event definitions
    pub event TaskRecorded(address: Address, tasksCompleted: UInt64, timestamp: UFix64)
    pub event SuccessRecorded(address: Address, successes: UInt64, timestamp: UFix64)
    pub event FailureRecorded(address: Address, failures: UInt64, timestamp: UFix64)
    pub event PerformanceReset(address: Address, timestamp: UFix64)

    init() {
        self.performances = {}
    }

    // Internal helper to get (or create) a Performance record for an address
    access(self) fun getOrCreatePerformance(user: Address): &Performance {
        if self.performances[user] == nil {
            self.performances[user] = Performance()
        }
        return &self.performances[user] as &Performance
    }

    // 🟢 Record a generic task
    pub fun recordTask() {
        let user = getCurrentExecutor().address!
        let perf = self.getOrCreatePerformance(user)
        perf.tasksCompleted = perf.tasksCompleted + 1
        perf.lastUpdated = getCurrentBlock().timestamp
        emit TaskRecorded(address: user, tasksCompleted: perf.tasksCompleted, timestamp: perf.lastUpdated)
    }

    // 🟢 Record success
    pub fun recordSuccess() {
        let user = getCurrentExecutor().address!
        let perf = self.getOrCreatePerformance(user)
        perf.tasksCompleted = perf.tasksCompleted + 1
        perf.successes = perf.successes + 1
        perf.lastUpdated = getCurrentBlock().timestamp
        emit SuccessRecorded(address: user, successes: perf.successes, timestamp: perf.lastUpdated)
    }

    // 🟢 Record failure
    pub fun recordFailure() {
        let user = getCurrentExecutor().address!
        let perf = self.getOrCreatePerformance(user)
        perf.tasksCompleted = perf.tasksCompleted + 1
        perf.failures = perf.failures + 1
        perf.lastUpdated = getCurrentBlock().timestamp
        emit FailureRecorded(address: user, failures: perf.failures, timestamp: perf.lastUpdated)
    }

    // 🔄 Reset performance
    pub fun resetMyPerformance() {
        let user = getCurrentExecutor().address!
        self.performances[user] = Performance()
        emit PerformanceReset(address: user, timestamp: getCurrentBlock().timestamp)
    }

    // 📊 Get the caller's performance
    pub fun getMyPerformance(): Performance {
        let user = getCurrentExecutor().address!
        let perf = self.getOrCreatePerformance(user)
        return perf
    }
}
