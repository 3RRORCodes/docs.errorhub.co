-- Insert the job
INSERT INTO
    `jobs` (`name`, `label`)
VALUES (
        'raycrest',
        'Raycrest Restaurant'
    );

-- Insert job grades
INSERT INTO
    `job_grades` (
        `job_name`,
        `grade`,
        `name`,
        `label`,
        `salary`,
        `skin_male`,
        `skin_female`
    )
VALUES (
        'raycrest',
        0,
        'waiter',
        'Waiter',
        50,
        '{}',
        '{}'
    ),
    (
        'raycrest',
        1,
        'cook',
        'Cook',
        75,
        '{}',
        '{}'
    ),
    (
        'raycrest',
        2,
        'chef',
        'Chef',
        100,
        '{}',
        '{}'
    ),
    (
        'raycrest',
        3,
        'head_chef',
        'Head Chef',
        125,
        '{}',
        '{}'
    ),
    (
        'raycrest',
        4,
        'assistant_manager',
        'Assistant Manager',
        150,
        '{}',
        '{}'
    ),
    (
        'raycrest',
        5,
        'boss',
        'Manager',
        175,
        '{}',
        '{}'
    ),
    (
        'raycrest',
        6,
        'boss',
        'Owner',
        200,
        '{}',
        '{}'
    );
