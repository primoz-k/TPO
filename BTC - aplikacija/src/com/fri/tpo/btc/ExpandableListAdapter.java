package com.fri.tpo.btc;
 
import java.util.List;
import java.util.Map;

import android.app.Activity;
import android.content.Context;
import android.graphics.Typeface;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.TextView;
 
/*
 * Expandable list adapter za nalaganje baze v listview s podskupinami
 */
public class ExpandableListAdapter extends BaseExpandableListAdapter {
 
    private Activity context;
    private Map<String, List<String>> trgovineKategorij;
    private List<String> kategorije;
 
    public ExpandableListAdapter(Activity context, List<String> kategorije,
            Map<String, List<String>> trgovineKategorij) {
        this.context = context;
        this.trgovineKategorij = trgovineKategorij;
        this.kategorije = kategorije;
    }
 
    public Object getChild(int groupPosition, int childPosition) {
        return trgovineKategorij.get(kategorije.get(groupPosition)).get(childPosition);
    }
 
    public long getChildId(int groupPosition, int childPosition) {
    	String child = (String) getChild(groupPosition, childPosition);
    	int childId = Integer.parseInt(child.split("\\|")[1]);
        return childId;
    }
 
    public View getChildView(final int groupPosition, final int childPosition, boolean isLastChild, View convertView, ViewGroup parent) {
        String child = (String) getChild(groupPosition, childPosition);
        LayoutInflater inflater = context.getLayoutInflater();
 
        if (convertView == null) {
            convertView = inflater.inflate(R.layout.child_item, null);
        }
 
        TextView item = (TextView) convertView.findViewById(R.id.child);
        child = child.split("\\|")[0];
        item.setText(child);
        return convertView;
    }
 
    public int getChildrenCount(int groupPosition) {
        return trgovineKategorij.get(kategorije.get(groupPosition)).size();
    }
 
    public Object getGroup(int groupPosition) {
        return kategorije.get(groupPosition);
    }
 
    public int getGroupCount() {
        return kategorije.size();
    }
 
    public long getGroupId(int groupPosition) {
        return groupPosition;
    }
 
    public View getGroupView(int groupPosition, boolean isExpanded,
            View convertView, ViewGroup parent) {
        String kategorija = (String) getGroup(groupPosition);
        if (convertView == null) {
            LayoutInflater infalInflater = (LayoutInflater) context
                    .getSystemService(Context.LAYOUT_INFLATER_SERVICE);
            convertView = infalInflater.inflate(R.layout.group_item,
                    null);
        }
        TextView item = (TextView) convertView.findViewById(R.id.group);
        item.setTypeface(null, Typeface.BOLD);
        item.setText(kategorija);
        return convertView;
    }
 
    public boolean hasStableIds() {
        return true;
    }
 
    public boolean isChildSelectable(int groupPosition, int childPosition) {
        return true;
    }
}