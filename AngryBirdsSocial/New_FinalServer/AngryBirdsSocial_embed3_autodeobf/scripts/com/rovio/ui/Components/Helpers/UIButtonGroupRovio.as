package com.rovio.ui.Components.Helpers
{
   import com.rovio.ui.Components.UIButtonRovio;
   
   public class UIButtonGroupRovio
   {
      
      public static const TYPE_EXCLUSIVE_BUTTONS:int = 0;
      
      public static const TYPE_NO_SELECTION:int = 1;
       
      
      public var mButtons:Array;
      
      public var mType:int;
      
      public var mName:String;
      
      public var mLastSelectedButtonName:String;
      
      public function UIButtonGroupRovio(newType:int, newName:String)
      {
         super();
         this.mType = newType;
         this.mName = newName;
         this.mButtons = new Array();
      }
      
      public function addButton(newButton:UIButtonRovio) : void
      {
         if(!newButton)
         {
            return;
         }
         this.mButtons[this.mButtons.length] = newButton;
      }
      
      public function buttonSelected(name:String) : void
      {
         var i:int = 0;
         this.mLastSelectedButtonName = name;
         if(this.mType == TYPE_EXCLUSIVE_BUTTONS)
         {
            for(i = 0; i < this.mButtons.length; i++)
            {
               if((this.mButtons[i] as UIButtonRovio).mName.toUpperCase() == name.toUpperCase())
               {
                  (this.mButtons[i] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else if((this.mButtons[i] as UIButtonRovio).mComponentState == UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT)
               {
                  (this.mButtons[i] as UIButtonRovio).setComponentState(UIComponentInteractiveRovio.COMPONENT_STATE_DEACTIVE);
               }
            }
         }
      }
   }
}
