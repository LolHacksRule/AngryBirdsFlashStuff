package §'!s§
{
   import § each§.§>v§;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §7-§.§,!C§;
   import flash.events.MouseEvent;
   
   public class §^""§ extends Popup
   {
       
      
      private var §2<§:Object;
      
      public function §^""§(param1:§7!A§, param2:StatePopupManager, param3:Object)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            super(§ "A§.§4[§.Views.PopupMightyEaglePromotion[0],param1);
            do
            {
               this.§2<§ = param3;
               do
               {
                  mClip.btnBack.addEventListener(MouseEvent.CLICK,this.§0![§);
                  do
                  {
                     mClip.btnClose.addEventListener(MouseEvent.CLICK,this.§>!V§);
                  }
                  while(_loc4_);
                  
               }
               while(!(_loc5_ || this));
               
            }
            while(!_loc5_);
            
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Date = new Date();
         var _loc3_:Number = _loc2_.time;
         §§push(this.§2<§.ce - _loc3_);
         if(_loc6_ || this)
         {
            §§push(§§pop() / 1000);
         }
         var _loc4_:int = §§pop();
         if(!(_loc5_ && param1))
         {
            mClip.timeLeft.text = §,!C§.§;"§.§52§(_loc4_)[0];
            do
            {
               super.open(param1);
            }
            while(_loc5_);
            
         }
      }
      
      private function §0![§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §>v§.§ [§ = "MightyEagle";
         }
         while(true)
         {
            §%?§.§6!x§(null);
            while(!_loc3_)
            {
               preClose(false);
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      private function §>!V§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            preClose();
         }
      }
   }
}
