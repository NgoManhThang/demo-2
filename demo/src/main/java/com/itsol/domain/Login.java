package com.itsol.domain;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Login {
	@NotEmpty
	@Length(max=10, message="{VLD005}")
	private String id;
	private String code;
	private String name;
	@NotEmpty
	@Length(max=32, message="{VLD005}")
	private String passWord;
}
