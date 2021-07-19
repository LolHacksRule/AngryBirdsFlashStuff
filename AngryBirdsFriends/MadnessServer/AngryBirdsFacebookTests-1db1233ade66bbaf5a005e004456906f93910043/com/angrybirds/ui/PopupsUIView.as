package com.angrybirds.ui
{
   import com.angrybirds.avatarcreator.AvatarCreatorModel;
   import com.angrybirds.avatarcreator.data.Item;
   import com.angrybirds.popups.AvatarCreatorPopup;
   import com.rovio.assets.AssetCache;
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.UIRepeaterRovio;
   import com.rovio.ui.Views.UIView;
   import flash.display.MovieClip;
   
   public class PopupsUIView extends UIView
   {
       
      
      public function PopupsUIView(newStateBase:StateBase)
      {
         super(newStateBase);
      }
      
      public static function matchTabNameWithCategoryName(tabName:String) : int
      {
         for(var i:int = 0; i < AvatarCreatorModel.instance.items.categories.length; i++)
         {
            if(tabName.toUpperCase() == AvatarCreatorModel.instance.items.categories[i].name.toUpperCase())
            {
               return i;
            }
         }
         return -1;
      }
      
      public static function getRepeaterDataXML(repeaterName:String) : Array
      {
         if(repeaterName.toUpperCase() == "Repeater_Tabs".toUpperCase())
         {
            return getRepeaterTabDataXML();
         }
         if(repeaterName.toUpperCase() == "Repeater_Items".toUpperCase())
         {
            return getRepeaterItemsDataXML();
         }
         return null;
      }
      
      public static function getRepeaterTabDataXML() : Array
      {
         var but:XML = null;
         var clip:MovieClip = null;
         var c:Class = null;
         var categoryName:String = null;
         var list:Array = new Array();
         list[0] = new Array();
         for(var i:int = 0; i < AvatarCreatorModel.instance.items.categories.length; i++)
         {
            categoryName = AvatarCreatorModel.instance.items.categories[i].name;
            c = AssetCache.getAssetFromCache("Icon_" + categoryName);
            clip = new c();
            clip.x = 29 - clip.width * 0.5;
            clip.y = 31 - clip.height * 0.5;
            if(i == 0)
            {
               clip.gotoAndStop("over");
            }
            else
            {
               clip.gotoAndStop("out");
            }
            but = <Button/>;
            but.@name = categoryName;
            but.@MouseOver = "Over" + categoryName;
            but.@MouseOut = "Out" + categoryName;
            but.@MouseUp = categoryName;
            but.@scaleOnMouseOver = "True";
            (list[0] as Array).push(new Array(but,clip));
         }
         return list;
      }
      
      public static function getRepeaterItemsDataXML() : Array
      {
         var but:XML = null;
         var clip:MovieClip = null;
         var c:Class = null;
         var categoryName:String = null;
         var items:Array = null;
         var itemObject:Object = null;
         var item:Item = null;
         var j:Number = NaN;
         var limited:Boolean = false;
         var itemPrice:int = 0;
         var starPrice:int = 0;
         var onSale:Boolean = false;
         var isNew:Boolean = false;
         var btnMc:MovieClip = null;
         var normalItems:Array = [];
         var buyItems:Array = [];
         var btnCls:Class = AssetCache.getAssetFromCache("Repeater_Button_Editor_Items");
         var buyBtnCls:Class = AssetCache.getAssetFromCache("Repeater_Button_Editor_Items_Buy");
         var limitedBuyBtnCls:Class = AssetCache.getAssetFromCache("Repeater_Button_Editor_Items_LimitedTime");
         var starBtnCls:Class = AssetCache.getAssetFromCache("Repeater_Button_Editor_Items_StarLimit");
         var onSaleBtnCls:Class = AssetCache.getAssetFromCache("Repeater_Button_Editor_Items_OnSale");
         var newTag:Class = AssetCache.getAssetFromCache("Tag_New");
         var starsAvailable:int = AngryBirdsFacebook.sHighScoreListManager.getTotalStars();
         for(var i:Number = 0; i < AvatarCreatorModel.instance.items.categories.length; i++)
         {
            categoryName = AvatarCreatorModel.instance.items.categories[i].name as String;
            items = AvatarCreatorModel.instance.items.getItemsInCategory(categoryName);
            normalItems[i] = [];
            buyItems[i] = [];
            for each(itemObject in AvatarCreatorPopup.sItemsAvailable)
            {
               item = null;
               for(j = 0; j < items.length; j++)
               {
                  item = items[j];
                  if(itemObject.itemId == item.mId)
                  {
                     clip = item.getInventoryIcon();
                     clip.mouseChildren = clip.mouseEnabled = false;
                     clip.x = -clip.width * 0.5;
                     clip.y = -clip.height - 3;
                     clip.stop();
                     but = <Button/>;
                     but.@name = item.mId;
                     but.@MouseUp = item.mId;
                     limited = AvatarCreatorPopup.getItemLimited(item.mId);
                     itemPrice = AvatarCreatorPopup.getItemPrice(item.mId);
                     starPrice = AvatarCreatorPopup.getItemStarPrice(item.mId);
                     onSale = AvatarCreatorPopup.getItemOnSale(item.mId);
                     isNew = AvatarCreatorPopup.getItemIsNew(item.mId);
                     if(itemPrice == 0 && (starPrice == 0 || starPrice <= starsAvailable))
                     {
                        btnMc = new btnCls();
                     }
                     else if(itemPrice > 0)
                     {
                        if(!limited)
                        {
                           if(onSale)
                           {
                              btnMc = new onSaleBtnCls();
                           }
                           else
                           {
                              btnMc = new buyBtnCls();
                           }
                           btnMc.itemPrice.text = itemPrice + "";
                           but.@childIndex = 1;
                        }
                        else
                        {
                           btnMc = new limitedBuyBtnCls();
                           btnMc.itemPrice.text = itemPrice + "";
                           but.@childIndex = 1;
                        }
                     }
                     else
                     {
                        btnMc = new starBtnCls();
                        but.@MouseUp = null;
                        btnMc.itemPrice.text = starPrice;
                        but.@childIndex = 1;
                     }
                     if(itemPrice == 0 && starPrice == 0)
                     {
                        normalItems[i].push(new Array(but,clip,btnMc));
                     }
                     else
                     {
                        if(isNew)
                        {
                           btnMc.addChild(new newTag());
                        }
                        if(limited || onSale)
                        {
                           buyItems[i].unshift(new Array(but,clip,btnMc));
                        }
                        else
                        {
                           buyItems[i].push(new Array(but,clip,btnMc));
                        }
                     }
                  }
               }
            }
            if(categoryName != "CategoryBirds" && categoryName != "CategoryBackgrounds")
            {
               c = AssetCache.getAssetFromCache("Inventory_Item_None");
               clip = new c();
               clip.x = -clip.width * 0.5 + 2;
               clip.y = -clip.height + 7;
               clip.stop();
               btnMc = new btnCls();
               but = <Button/>;
               but.@name = categoryName;
               but.@MouseUp = "REMOVE_" + categoryName;
               normalItems[i].unshift(new Array(but,clip,btnMc));
            }
         }
         return parseIntoOneArray(normalItems,buyItems);
      }
      
      private static function parseIntoOneArray(array1:Array, array2:Array) : Array
      {
         var totalLength:int = Math.max(array1.length,array2.length);
         var newArray:Array = [];
         for(var i:int = 0; i < totalLength; i++)
         {
            newArray[i] = array1[i].concat(array2[i]);
         }
         return newArray;
      }
      
      override public function activateView() : void
      {
         super.activateView();
      }
      
      public function avatarCreatorInitializeRepeaters() : void
      {
         var categoryName:String = null;
         setRepeaterVisibleTab("Repeater_Items","Repeater_Items_Tab_0");
         var items:UIRepeaterRovio = getItemByName("Repeater_Items") as UIRepeaterRovio;
         var tabs:UIRepeaterRovio = getItemByName("Repeater_Tabs") as UIRepeaterRovio;
         if(AvatarCreatorModel.instance.items.categories.length > 0)
         {
            tabs.getButtonGroupByName("Repeater_Tabs_Tab_0").buttonSelected(AvatarCreatorModel.instance.items.categories[0].name as String);
         }
         setRepeaterVisibleTab("Repeater_Tabs","Repeater_Tabs_Tab_0");
         for(var i:int = 0; i < AvatarCreatorModel.instance.items.categories.length; i++)
         {
            categoryName = AvatarCreatorModel.instance.items.categories[i].name;
            items.getButtonGroupByName("Repeater_Items_Tab_" + i).buttonSelected(categoryName);
         }
      }
   }
}
