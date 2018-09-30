package com.itsol.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class MemberInfor {
	private Integer numMember;
	private String name;
	private String nameKana;
	private String address;
	private String phone;
}
