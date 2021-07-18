package §5!Y§
{
   import §4y§.Item;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §-E§ extends Popup
   {
       
      
      private var §;"V§:String;
      
      public function §-E§(param1:§`_§, param2:StatePopupManager, param3:Item)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param2))
         {
            super(§ "<§.§%I§.Views.PopupView_ItemUnlocked[0],param1);
         }
         var _loc4_:MovieClip;
         (_loc4_ = param3.§>N§()).x = 60 + -_loc4_.width * 0.5;
         if(_loc6_)
         {
            _loc4_.y = 90 + -_loc4_.height;
            if(_loc6_ || param2)
            {
               _loc4_.scaleX = _loc4_.scaleY = 1.75;
               if(!(_loc7_ && param1))
               {
                  mClip.itemUnlockHeader.addChild(_loc4_);
                  while(true)
                  {
                     this.§;"V§ = param3.category;
                  }
                  addr152:
               }
            }
            while(true)
            {
               mClip.unlockedText.text = "You just unlocked an item: " + param3.mName;
               while(_loc6_)
               {
                  if(!_loc7_)
                  {
                     mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§if §);
                     while(!_loc7_)
                     {
                        mClip.wearBtn.addEventListener(MouseEvent.CLICK,this.§8"I§);
                        if(!(_loc7_ && param1))
                        {
                           return;
                        }
                     }
                     continue;
                  }
               }
            }
         }
         §§goto(addr152);
      }
      
      private function §8"I§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            close();
         }
         do
         {
            §9"6§.§<h§(this.§;"V§);
         }
         while(!_loc2_);
         
      }
      
      private function §if §(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            close();
         }
      }
   }
}
