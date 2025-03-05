Scenario: Search for a member by ID
Given a member with ID "300015167300"
When the member search API is called with ID "300015167300"
Then the response should contain the member details

---------------

Scenario: Get the member details with valid member ID
Given the memberSearch API is available
When I send a GET request to "http://localhost:8080/radiance-onecm-membersearch/memberSearch?memberId=300015167300"
Then the response status should be 200 and the response should contain json Object:{"accounts":[{"CMMid":"5~186203440+10+4+20240101+793761+D+4","name":"FREDRANIQU AMANOWEL","gender":"M","dob":"1957-10-15","status":"Terminated Coverage","startDate":"2024-01-01","endDate":"2024-12-31","relationshipToSubscriber":null}]}
