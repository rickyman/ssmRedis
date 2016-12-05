package com.springapp.mvc.helper;

/**
 * 计算两个点之间的球面距离
 * @author feige
 *
 */
public class GetDistance {
	// 地球半径，km
	public static final double EARTH_RADIUS = 6378.137;
	

	/**
	 * @Title: getRadian
	 * @Description: 返回角度angle的弧度
	 * @param angle
	 * @return
	 */
	public  static double getRadian(double angle) {
		return angle * Math.PI / 180.0;
	}
	
	/**
	 * @Title: getGeoDis
	 * @Description: 返回球面距离，单位为km
	 * @param pa
	 * @param pb
	 * @return
	 */
	public static double getGeoDis(String pa, String pb) {
		String[] paStr=pa.split(",");
		String[] pbStr=pb.split(",");
		double lat1 =Double.parseDouble(paStr[1]);
		double lng1 =Double.parseDouble(paStr[0]);
		double lat2 =Double.parseDouble(pbStr[1]);
		double lng2 =Double.parseDouble(pbStr[0]);

		double radLat1 = getRadian(lat1);
		double radLat2 = getRadian(lat2);
		double a = radLat1 - radLat2;
		double b = getRadian(lng1) - getRadian(lng2);

		double sin_a2 = Math.pow(Math.sin(a / 2), 2);
		double sin_b2 = Math.pow(Math.sin(b / 2), 2);

		double s = 2 * Math.asin(Math.sqrt(sin_a2 + Math.cos(radLat1)
				* Math.cos(radLat2) * sin_b2));

		s = s * EARTH_RADIUS;
        return ((int) (s * 100))/(double)100;//保留2位小数
	}

	public GetDistance() {
	}

}
