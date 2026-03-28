package com.micropop.api;

public class ImageResponse {
	private String nomscompletclient;
	private String description;
	private String image;

	public ImageResponse(String nomscompletclient, String description, String image) {
		this.nomscompletclient = nomscompletclient;
		this.description = description;
		this.image = image;
	}

	public String getNomscompletclient() {
		return nomscompletclient;
	}

	public String getDescription() {
		return description;
	}

	public String getImage() {
		return image;
	}
}
