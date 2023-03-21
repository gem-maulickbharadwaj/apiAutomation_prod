Feature: Admin

  @tag
  Scenario Outline: API to create new Project (admin screen)
    Given Set post token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName   |
      | adminApi1 | post   | 200             | adminScreen1 |

  @tag
  Scenario Outline: API to create new Project when project already exists (admin screen)
    Given Set post token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName   |
      | adminApi1 | post   | 200             | adminScreen2 |

  @tag
  Scenario Outline: API to create new Project with no bearer token (admin screen)
    Given Set post empty token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName   |
      | adminApi1 | post   | 403             | adminScreen1 |
#
  @tag
  Scenario Outline: API to create new Project when project name left as empty (admin screen)
    Given Set post token without steps endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName   |
      | adminApi1 | post   | 400             | adminScreen3 |
#
  @tag
  Scenario Outline: API to create new Project when description is left as empty (admin screen)
    Given Set post token without steps endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName   |
      | adminApi1 | post   | 400             | adminScreen4 |
#
  @tag
  Scenario Outline: API to create new Project when enviroment is left as empty (admin screen)
    Given Set post token without steps endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName   |
      | adminApi1 | post   | 200             | adminScreen5 |

  @tag
  Scenario Outline: API to update Project (admin screen)
    Given Set post token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName   |
      | adminApi1 | put    | 200             | adminScreen6 |

  @tag
  Scenario Outline: API to update Project when project already exists (admin screen)
    Given Set post token endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName   |
      | adminApi1 | put    | 200             | adminScreen7 |

  @tag
  Scenario Outline: API to update Project when project name is empty (admin screen)
    Given Set post token without steps endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName   |
      | adminApi1 | put    | 400             | adminScreen8 |

  @tag
  Scenario Outline: API to update Project when description is empty (admin screen)
    Given Set post token without steps endpoint and method "<endpoint>" and "<Method>" and "<SampleName>"
    Then Verify Status code <Expected_status>
    Examples:
      | endpoint  | Method | Expected_status | SampleName   |
      | adminApi1 | put    | 400             | adminScreen9 |













































