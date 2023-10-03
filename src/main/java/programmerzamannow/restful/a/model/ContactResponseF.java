package programmerzamannow.restful.a.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ContactResponseF {

    private String id;

    private String firstName;

    private String lastName;

    private String email;

    private String phone;
}
