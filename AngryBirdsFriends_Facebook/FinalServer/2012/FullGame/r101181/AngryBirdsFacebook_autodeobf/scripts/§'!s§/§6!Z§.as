package §'!s§
{
   import §!K§.Item;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §6!Z§ extends Popup
   {
       
      
      private var §[C§:String;
      
      public function §6!Z§(param1:§7!A§, param2:StatePopupManager, param3:Item)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            super(§ "A§.§4[§.Views.PopupView_ItemUnlocked[0],param1);
         }
         var _loc4_:MovieClip;
         (_loc4_ = param3.§@!j§()).x = 60 + -_loc4_.width * 0.5;
         if(!_loc6_)
         {
            _loc4_.y = 90 + -_loc4_.height;
            if(_loc7_)
            {
               _loc4_.scaleX = _loc4_.scaleY = 1.75;
               if(_loc7_ || this)
               {
                  mClip.itemUnlockHeader.addChild(_loc4_);
               }
               loop3:
               while(true)
               {
                  mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§@!a§);
                  addr102:
                  loop4:
                  for(; _loc7_ || param2; mClip.wearBtn.addEventListener(MouseEvent.CLICK,this.§^"3§),if(!_loc6_)
                  {
                     return;
                  })
                  {
                     if(_loc7_)
                     {
                        continue;
                     }
                     addr148:
                     while(true)
                     {
                        this.§[C§ = param3.category;
                        addr143:
                        while(true)
                        {
                           mClip.unlockedText.text = "You just unlocked an item: " + param3.mName;
                           break loop4;
                        }
                     }
                  }
                  while(!(_loc6_ && param1))
                  {
                     continue loop3;
                     §§goto(addr102);
                  }
                  §§goto(addr143);
               }
               addr137:
            }
            §§goto(addr148);
         }
         §§goto(addr137);
      }
      
      private function §^"3§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            close();
            do
            {
               §%?§.§9$§(this.§[C§);
            }
            while(!_loc3_);
            
         }
      }
      
      private function §@!a§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            close();
         }
      }
   }
}
