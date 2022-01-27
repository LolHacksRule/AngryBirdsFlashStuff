package §%!c§
{
   import §""d§.§,m§;
   import §'+§.§="B§;
   import §,#+§.§7!m§;
   import §]!=§.§;"I§;
   import §`"8§.§-!w§;
   import §`"8§.§4"K§;
   import §`"8§.§@T§;
   import §`"]§.§'b§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §2!v§ extends §'b§
   {
       
      
      private var §@"L§:MovieClip;
      
      private var §0!<§:MovieClip;
      
      public function §2!v§(param1:§,m§, param2:§7!m§, param3:§;"I§, param4:§4"K§, param5:§="B§)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§@"L§ = §=5§.getItemByName("LastCrystalActivated").mClip;
         this.§@"L§.visible = false;
         this.§0!<§ = §=5§.getItemByName("CrystalBreakAnimation").mClip;
         this.§0!<§.visible = false;
         var _loc1_:§@T§ = §-!w§(§;"@§.singleton.dataModel).§`!§;
         if(!_loc1_.§'O§)
         {
            this.§0!^§();
            if(_loc1_.energy == 0)
            {
               this.§]W§();
            }
         }
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §`"D§ = true;
         §7##§.active = false;
         §7##§.enabled = false;
         §7##§.visible = false;
         §6m§.view.x = §0!>§;
         §<;§.x = §0!>§;
      }
      
      override protected function getLevelLoadStateName() : String
      {
         return §4"O§.§'#2§;
      }
      
      override public function dispose() : void
      {
         this.§@"L§ = null;
         this.§0!<§ = null;
         super.dispose();
      }
      
      private function §]W§() : void
      {
         if(this.§@"L§)
         {
            this.§@"L§.gotoAndPlay(1);
            this.§@"L§.visible = true;
            this.§@"L§.addEventListener(Event.ENTER_FRAME,this.§^A§);
         }
      }
      
      private function §0!^§() : void
      {
         this.§0!<§.gotoAndPlay(1);
         §&"1§(§;"@§.singleton).§`!u§.§<!y§();
         this.§0!<§.visible = true;
         this.§0!<§.addEventListener(Event.ENTER_FRAME,this.§'!S§);
      }
      
      private function §^A§(param1:Event) : void
      {
         if(this.§@"L§)
         {
            if(this.§@"L§.currentFrame == this.§@"L§.totalFrames - 1)
            {
               this.§@"L§.stop();
               this.§@"L§.visible = false;
               this.§@"L§.removeEventListener(Event.ENTER_FRAME,this.§^A§);
            }
         }
      }
      
      private function §'!S§(param1:Event) : void
      {
         if(this.§0!<§)
         {
            if(this.§0!<§.currentFrame == this.§0!<§.totalFrames - 1)
            {
               this.§0!<§.stop();
               this.§0!<§.visible = false;
               this.§0!<§.removeEventListener(Event.ENTER_FRAME,this.§'!S§);
            }
         }
      }
   }
}
