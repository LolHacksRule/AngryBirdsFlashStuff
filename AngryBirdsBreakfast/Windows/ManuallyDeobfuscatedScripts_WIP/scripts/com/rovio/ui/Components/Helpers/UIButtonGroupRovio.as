package com.rovio.ui.Components.Helpers
{
   import com.rovio.ui.Components.UIButtonRovio;
   
   public class UIButtonGroupRovio
   {
      
      public static const TYPE_EXCLUSIVE_BUTTONS:int = 0;
      
      public static const TYPE_NO_SELECTION:int = 1;
      
      public static const TYPE_MULTI_SELECTION:int = 2;
       
      
      public var mButtons:Array;
      
      public var mMultiSelectionCount:int;
      
      public var mType:int;
      
      public var mName:String;
      
      public var mLastSelectedButtonName:String;
      
      public function UIButtonGroupRovio(param1:int, param2:String)
      {
         super();
         this.mType = param1;
         this.mName = param2;
         this.mButtons = new Array();
      }
      
      public function addButton(param1:UIButtonRovio) : void
      {
         if(param1)
         {
            return;
         }
         this.mButtons[this.mButtons.length] = param1;
      }
      
      public function buttonSelected(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.mLastSelectedButtonName = param1;
         if(this.mType == TYPE_EXCLUSIVE_BUTTONS)
         {
            _loc2_ = 0;
            while(_loc2_ < this.mButtons.length)
            {
               if((this.mButtons[_loc2_] as UIButtonRovio).mName.toUpperCase() == param1.toUpperCase())
               {
                  (this.mButtons[_loc2_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.mButtons[_loc2_] as UIButtonRovio).mComponentState == UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.mButtons[_loc2_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE);
               }
               _loc2_++;
            }
         }
         if(this.mType == TYPE_MULTI_SELECTION)
         {
            _loc2_ = 0;
            while(_loc2_ < this.mButtons.length)
            {
               if((this.mButtons[_loc2_] as UIButtonRovio).mName.toUpperCase() == param1.toUpperCase())
               {
                  if((this.mButtons[_loc2_] as UIButtonRovio).mComponentState == UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT)
                  {
                     (this.mButtons[_loc2_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE);
                  }
                  else if((this.mButtons[_loc2_] as UIButtonRovio).mComponentState == UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE)
                  {
                     if(this.getCurrentSelection().length < this.mMultiSelectionCount)
                     {
                        (this.mButtons[_loc2_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
                     }
                  }
               }
               if(this.getCurrentSelection().length >= this.mMultiSelectionCount)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.mButtons.length)
                  {
                     if((this.mButtons[_loc3_] as UIButtonRovio).mComponentState == UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE)
                     {
                        (this.mButtons[_loc3_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DISABLED);
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.mButtons.length)
                  {
                     if((this.mButtons[_loc3_] as UIButtonRovio).mComponentState == UIComponentInteractiveRovio.COMPONENT_STATE_DISABLED)
                     {
                        (this.mButtons[_loc3_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE);
                     }
                     _loc3_++;
                  }
               }
               _loc2_++;
            }
         }
      }
      
      public function setEnabled(param1:Boolean, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         while(_loc3_ < this.mButtons.length)
         {
            (this.mButtons[_loc3_] as UIButtonRovio).setEnabled(param1,param2);
            _loc3_++;
         }
      }
      
      public function resetSelections() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.mButtons.length)
         {
            (this.mButtons[_loc1_] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE);
            _loc1_++;
         }
      }
      
      public function setNumSelectable(param1:Number) : void
      {
         this.mMultiSelectionCount = param1;
         if(param1 == 1)
         {
            this.mType = TYPE_EXCLUSIVE_BUTTONS;
         }
         else
         {
            this.mType = TYPE_MULTI_SELECTION;
         }
      }
      
      public function setSelections(param1:Array) : void
      {
         this.resetSelections();
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            this.buttonSelected(param1[_loc2_]);
            _loc2_++;
         }
      }
      
      public function getCurrentSelection() : Array
      {
         var _loc1_:Array = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < this.mButtons.length)
         {
            if((this.mButtons[_loc2_] as UIButtonRovio).mComponentState == UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT)
            {
               _loc1_.push((this.mButtons[_loc2_] as UIButtonRovio).mName);
            }
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
