package §'K§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §%!v§.§[<§;
   import §'!s§.Popup;
   import §'!s§.StatePopupManager;
   import §7-§.§<"+§;
   import §[!K§.§-k§;
   import §]!>§.§[Q§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class §#!8§ extends Popup
   {
       
      
      private var §"!T§:StatePopupManager;
      
      public function §#!8§(param1:§7!A§, param2:StatePopupManager)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            super(§ "A§.§4[§.Views.PopupView_TournamentTutorial[0],param1);
         }
         loop0:
         while(true)
         {
            this.§"!T§ = param2;
            while(true)
            {
               mClip.Button_Close.addEventListener(MouseEvent.CLICK,this.§@!a§);
               while(!(_loc4_ && this))
               {
                  if(!_loc4_)
                  {
                     mClip.PlayNowButton.addEventListener(MouseEvent.CLICK,this.§="4§);
                     if(_loc3_)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      private function §@!a§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.deActivate();
         }
      }
      
      private function §="4§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §3T§.§67§.§=!w§(§-k§.STATE_NAME);
            do
            {
               this.deActivate();
            }
            while(_loc3_);
            
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super.open(param1);
         }
         var _loc2_:MovieClip = mClip.getChildByName("OwnAvatarHolder") as MovieClip;
         var _loc3_:§[Q§ = new §[Q§((AngryBirdsFP11.sUserProgress as §[<§).§4v§,"Player","",0,0);
         var _loc4_:§<"+§ = new §<"+§(_loc2_,_loc3_);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.deActivate();
            do
            {
               preClose();
            }
            while(_loc1_ && _loc2_);
            
         }
      }
   }
}
