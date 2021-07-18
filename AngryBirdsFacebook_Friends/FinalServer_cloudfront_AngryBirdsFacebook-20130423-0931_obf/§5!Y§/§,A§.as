package §5!Y§
{
   import §%!I§.§]!M§;
   import §%i§.§4"9§;
   import §1!t§.§""B§;
   import §6!H§.§6!e§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.MouseEvent;
   
   public class §,A§ extends Popup
   {
       
      
      private var §9!a§:Boolean = false;
      
      private var §>"P§:StatePopupManager;
      
      private var §!!w§:String = "";
      
      public function §,A§(param1:§`_§, param2:StatePopupManager, param3:String)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(§ "<§.§%I§.Views.PopupView_TournamentInfo[0],param1);
            loop0:
            while(true)
            {
               mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§ "B§);
               while(true)
               {
                  this.§>"P§ = param2;
                  addr70:
                  while(!_loc4_)
                  {
                     if(!_loc4_)
                     {
                        this.§>"P§.addEventListener(§6!e§.§1" §,this.onUiInteraction);
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            (§[w§.getItemByName("Info_Text") as §4"9§).setText(param3);
            if(_loc4_)
            {
               continue;
            }
            if(_loc5_)
            {
               break;
            }
            §§goto(addr70);
         }
      }
      
      private function § "B§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §%"S§.§!C§.§`H§(§]!M§.STATE_NAME);
            do
            {
               this.close();
            }
            while(_loc3_ && _loc2_);
            
         }
      }
      
      private function onUiInteraction(param1:§6!e§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.uiInteractionHandler(param1.§0!!§,param1.§,§,param1.§`]§);
         }
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc4_:* = param2;
         switch(0)
         {
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§>"P§.removeEventListener(§6!e§.§1" §,this.onUiInteraction);
            do
            {
               super.close();
            }
            while(_loc2_);
            
         }
      }
   }
}
