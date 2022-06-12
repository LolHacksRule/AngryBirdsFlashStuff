package §'!s§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §,V§.§'"5§;
   import §2!i§.§'M§;
   import §4!e§.§-"E§;
   import §[!K§.§-k§;
   import flash.events.MouseEvent;
   
   public class §'",§ extends Popup
   {
       
      
      private var §>t§:Boolean = false;
      
      private var §"!T§:StatePopupManager;
      
      private var §]J§:String = "";
      
      public function §'",§(param1:§7!A§, param2:StatePopupManager, param3:String)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            super(§ "A§.§4[§.Views.PopupView_TournamentInfo[0],param1);
            loop0:
            do
            {
               mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§`!a§);
               while(true)
               {
                  this.§"!T§ = param2;
                  while(!_loc5_)
                  {
                     this.§"!T§.addEventListener(§'"5§.§#2§,this.onUiInteraction);
                     do
                     {
                        (§]"3§.getItemByName("Info_Text") as §-"E§).setText(param3);
                     }
                     while(_loc5_);
                     
                     if(!_loc5_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!_loc4_);
            
         }
      }
      
      private function §`!a§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §3T§.§67§.§=!w§(§-k§.STATE_NAME);
            do
            {
               this.close();
            }
            while(_loc2_ && this);
            
         }
      }
      
      private function onUiInteraction(param1:§'"5§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.uiInteractionHandler(param1.§"!k§,param1.§[2§,param1.§1!`§);
         }
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc4_:* = param2;
         switch(0)
         {
         }
      }
      
      override public function close() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§"!T§.removeEventListener(§'"5§.§#2§,this.onUiInteraction);
            do
            {
               super.close();
            }
            while(_loc1_ && _loc2_);
            
         }
      }
   }
}
