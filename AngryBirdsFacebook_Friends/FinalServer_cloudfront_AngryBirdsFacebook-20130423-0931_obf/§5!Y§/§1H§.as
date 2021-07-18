package §5!Y§
{
   import §0D§.§3!R§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.MouseEvent;
   
   public class §1H§ extends Popup
   {
       
      
      private var §&n§:Object;
      
      public function §1H§(param1:§`_§, param2:StatePopupManager, param3:Object)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(§ "<§.§%I§.Views.PopupMightyEaglePromotion[0],param1);
            while(true)
            {
               this.§&n§ = param3;
               while(!(_loc5_ && param3))
               {
                  mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§1'§);
                  if(_loc5_)
                  {
                     continue;
                  }
                  return;
                  addr53:
               }
            }
         }
         §§goto(addr53);
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§%"S§.§!C§.§9"%§.§ Y§.§?!;§);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§&n§.ce - _loc2_);
         if(_loc5_)
         {
            §§push(§§pop() / 1000);
         }
         var _loc3_:int = §§pop();
         if(_loc5_ || _loc2_)
         {
            mClip.timeLeft.text = §3!R§.§&"5§.§2"I§(_loc3_)[0];
            do
            {
               super.open(param1);
            }
            while(!_loc5_);
            
         }
      }
      
      private function §1'§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            preClose();
         }
      }
   }
}
