package com.AngryBirds.AvatarCreator.ui
{
   import com.AngryBirds.AvatarCreator.data.Item;
   import com.AngryBirds.AvatarCreator.states.StateAvatarCreator;
   import com.rovio.assets.AssetCache;
   import com.rovio.states.StateBase;
   import com.rovio.ui.Components.Helpers.UIComponentRovio;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIRepeaterRovio;
   import com.rovio.ui.Components.UIRepeaterTabRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import flash.display.MovieClip;
   
   public class ViewAvatarCreator extends UIView
   {
       
      
      private var mCurrentCategory:String = "";
      
      public function ViewAvatarCreator(param1:StateBase)
      {
         super(param1);
      }
      
      override public function init(param1:XML) : void
      {
         super.init(ViewXMLLibrary.mLibrary.Views.View_AvatarCreator[0]);
      }
      
      override public function activateView() : void
      {
         var _loc4_:String = null;
         super.activateView();
         setRepeaterVisibleTab("Repeater_Items","Repeater_Items_Tab_0");
         var _loc1_:UIRepeaterRovio = getItemByName("Repeater_Items") as UIRepeaterRovio;
         var _loc2_:UIRepeaterRovio = getItemByName("Repeater_Tabs") as UIRepeaterRovio;
         _loc2_.getButtonGroupByName("Repeater_Tabs_Tab_0").buttonSelected(AvatarCreator.smItems.mCategories[0] as String);
         setRepeaterVisibleTab("Repeater_Tabs","Repeater_Tabs_Tab_0");
         var _loc3_:Number = 0;
         while(_loc3_ < AvatarCreator.smItems.mCategories.length)
         {
            _loc4_ = AvatarCreator.smItems.mCategories[_loc3_];
            _loc1_.getButtonGroupByName("Repeater_Items_Tab_" + _loc3_).buttonSelected(_loc4_);
            _loc3_++;
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         var _loc4_:UIComponentRovio = null;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         super.listenerEventOccured(param1,param2,param3);
         if(param3 is UIComponentRovio)
         {
            _loc4_ = param3 as UIComponentRovio;
            if(param2.length > 1)
            {
               if(_loc4_.mParentContainer is UIRepeaterTabRovio)
               {
                  if(((_loc4_.mParentContainer as UIRepeaterTabRovio).mParentContainer as UIRepeaterRovio).mName.toUpperCase() == "REPEATER_TABS")
                  {
                     if((_loc5_ = this.matchTabNameWithCategoryName(param2)) != -1)
                     {
                        setRepeaterVisibleTab("Repeater_Items","Repeater_Items_Tab_" + _loc5_);
                     }
                  }
                  else if(((_loc4_.mParentContainer as UIRepeaterTabRovio).mParentContainer as UIRepeaterRovio).mName.toUpperCase() == "REPEATER_ITEMS")
                  {
                     if((_loc6_ = param2.indexOf("REMOVE_")) == -1)
                     {
                        (mStateBase as StateAvatarCreator).itemSelected(param2);
                     }
                     else if(_loc6_ == 0)
                     {
                        (mStateBase as StateAvatarCreator).removeItem(param2.substring("REMOVE_".length));
                     }
                  }
               }
            }
         }
      }
      
      public function matchTabNameWithCategoryName(param1:String) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < AvatarCreator.smItems.mCategories.length)
         {
            if(param1.toUpperCase() == (AvatarCreator.smItems.mCategories[_loc2_] as String).toUpperCase())
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      override public function getRepeaterDataXML(param1:String) : Array
      {
         if(param1.toUpperCase() == "Repeater_Tabs".toUpperCase())
         {
            return this.getRepeaterTabDataXML();
         }
         if(param1.toUpperCase() == "Repeater_Items".toUpperCase())
         {
            return this.getRepeaterItemsDataXML();
         }
         return null;
      }
      
      public function getRepeaterTabDataXML() : Array
      {
         var _loc2_:XML = null;
         var _loc3_:MovieClip = null;
         var _loc4_:Class = null;
         var _loc6_:String = null;
         var _loc1_:Array = new Array();
         _loc1_[0] = new Array();
         var _loc5_:Number = 0;
         while(_loc5_ < AvatarCreator.smItems.mCategories.length)
         {
            _loc6_ = AvatarCreator.smItems.mCategories[_loc5_];
            _loc3_ = new (_loc4_ = AssetCache.getAssetFromCache("Icon_" + _loc6_))();
            _loc3_.stop();
            _loc2_ = <Button/>;
            _loc2_.@name = _loc6_;
            _loc2_.@MouseUp = _loc6_;
            (_loc1_[0] as Array).push(new Array(_loc2_,_loc3_));
            _loc5_++;
         }
         return _loc1_;
      }
      
      public function getRepeaterItemsDataXML() : Array
      {
         var _loc2_:XML = null;
         var _loc3_:MovieClip = null;
         var _loc4_:Class = null;
         var _loc6_:String = null;
         var _loc7_:Array = null;
         var _loc8_:Number = NaN;
         var _loc9_:Item = null;
         var _loc1_:Array = new Array();
         var _loc5_:Number = 0;
         while(_loc5_ < AvatarCreator.smItems.mCategories.length)
         {
            _loc6_ = AvatarCreator.smItems.mCategories[_loc5_] as String;
            _loc7_ = AvatarCreator.smItems.getItemsInCategory(_loc6_);
            _loc1_[_loc5_] = new Array();
            _loc3_ = new (_loc4_ = AssetCache.getAssetFromCache("Item_Inventory_Deselect"))();
            _loc3_.stop();
            _loc2_ = <Button/>;
            _loc2_.@name = _loc6_;
            _loc2_.@MouseUp = "REMOVE_" + _loc6_;
            (_loc1_[_loc5_] as Array).push(new Array(_loc2_,_loc3_));
            _loc8_ = 0;
            while(_loc8_ < _loc7_.length)
            {
               _loc9_ = _loc7_[_loc8_];
               _loc3_ = new (_loc4_ = AssetCache.getAssetFromCache("Item_Inventory_" + _loc9_.mId))();
               _loc3_.stop();
               _loc2_ = <Button/>;
               _loc2_.@name = _loc9_.mId;
               _loc2_.@MouseUp = _loc9_.mId;
               if(AvatarCreator.smLevel < _loc9_.mLevel)
               {
                  _loc2_.@enabled = false;
               }
               (_loc1_[_loc5_] as Array).push(new Array(_loc2_,_loc3_));
               _loc8_++;
            }
            _loc5_++;
         }
         return _loc1_;
      }
   }
}
