package §7#W§
{
   import §"a§.§6#!§;
   import §+D§.§ #^§;
   import §,"N§.§?v§;
   import §,"N§.§@#B§;
   import §,"N§.§@>§;
   import §8!E§.§^![§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §]"s§ extends §^![§
   {
       
      
      private var §!!<§:MovieClip;
      
      private var §9"s§:MovieClip;
      
      public function §]"s§(param1:§ #^§, param2:§+"2§, param3:§6#!§, param4:§@>§, param5:§5"H§)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§!!<§ = §=#=§.getItemByName("LastCrystalActivated").mClip;
         this.§!!<§.visible = false;
         this.§9"s§ = §=#=§.getItemByName("CrystalBreakAnimation").mClip;
         this.§9"s§.visible = false;
         var _loc1_:§?v§ = §@#B§(§4#;§.singleton.dataModel).§^"J§;
         if(!_loc1_.§3!@§)
         {
            this.§!2§();
            if(_loc1_.energy == 0)
            {
               this.§`"L§();
            }
         }
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §>M§ = true;
         §0#,§.active = false;
         §0#,§.enabled = false;
         §0#,§.visible = false;
         §0!`§.view.x = §#"$§;
         §4"v§.x = §#"$§;
      }
      
      override protected function getLevelLoadStateName() : String
      {
         return §2O§.§^!7§;
      }
      
      override public function dispose() : void
      {
         this.§!!<§ = null;
         this.§9"s§ = null;
         super.dispose();
      }
      
      private function §`"L§() : void
      {
         if(this.§!!<§)
         {
            this.§!!<§.gotoAndPlay(1);
            this.§!!<§.visible = true;
            this.§!!<§.addEventListener(Event.ENTER_FRAME,this.§-"l§);
         }
      }
      
      private function §!2§() : void
      {
         this.§9"s§.gotoAndPlay(1);
         §@!m§(§4#;§.singleton).§""s§.§%!r§();
         this.§9"s§.visible = true;
         this.§9"s§.addEventListener(Event.ENTER_FRAME,this.§6!M§);
      }
      
      private function §-"l§(param1:Event) : void
      {
         if(this.§!!<§)
         {
            if(this.§!!<§.currentFrame == this.§!!<§.totalFrames - 1)
            {
               this.§!!<§.stop();
               this.§!!<§.visible = false;
               this.§!!<§.removeEventListener(Event.ENTER_FRAME,this.§-"l§);
            }
         }
      }
      
      private function §6!M§(param1:Event) : void
      {
         if(this.§9"s§)
         {
            if(this.§9"s§.currentFrame == this.§9"s§.totalFrames - 1)
            {
               this.§9"s§.stop();
               this.§9"s§.visible = false;
               this.§9"s§.removeEventListener(Event.ENTER_FRAME,this.§6!M§);
            }
         }
      }
   }
}
