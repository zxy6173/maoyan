package com.maoyan.common;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

public class Tools {
	/**
	 * 截取集合中的数据
	 * @param list 待截取的集合
	 * @param index 截取的起始位置
	 * @param howMany 截取的数量
	 * @return 截取后的集合
	 */
	public static List cutList(List list ,int index,int howMany) {
		List newList = new ArrayList();
		if(howMany > 0 && howMany < list.size()){
			newList = list.subList(index, index+howMany);
		}else{
			newList = list.subList(index, list.size());
		}
		return newList;
	}
	/**
	 * 将数字拆分成整数和小数
	 * @param num
	 * @return 拆分后的数组，其中第一个元素是整数，第二个元素是小数。
	 */
	public static String [] splitScore(String num){
		String [] values = num.split("\\.");
		if(values.length == 1){
			values = new String[]{values[0],"0"};
		}
		return values;
	}
	public static void main(String[] args) {
//		String [] strs = splitScore(9);
//		System.out.println(strs[0]+" "+strs[1]);
	}
}
