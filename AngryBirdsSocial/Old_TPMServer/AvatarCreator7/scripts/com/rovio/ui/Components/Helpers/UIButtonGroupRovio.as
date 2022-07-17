package com.rovio.ui.Components.Helpers
{
   import com.rovio.ui.Components.UIButtonRovio;
   
   public class UIButtonGroupRovio
   {
      
      public static const TYPE_EXCLUSIVE_BUTTONS:int = 0;
       
      
      public var mButtons:Array;
      
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
         if(!param1)
         {
            return;
         }
         this.mButtons[this.mButtons.length] = param1;
      }
      
      public function buttonSelected(param1:String) : void
      {
         var _loc2_:int = 0;
         this.mLastSelectedButtonName = param1;
         if(this.mType == TYPE_EXCLUSIVE_BUTTONS)
         {
            _loc2_ = 0;
            while(_loc2_ < this.mButtons.length)
            {
               if((this.mButtons[_loc2_] as UIButtonRovio).mComponentName.toUpperCase() == param1.toUpperCase())
               {
                  (this.mButtons[_loc2_] as UIButtonRovio).setComponentState(UIComponentRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.mButtons[_loc2_] as UIButtonRovio).mComponentState == UIComponentRovio.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.mButtons[_loc2_] as UIButtonRovio).setComponentState(UIComponentRovio.COMPONENT_STATE_DEACTIVE);
               }
               _loc2_++;
            }
         }
      }
   }
}
