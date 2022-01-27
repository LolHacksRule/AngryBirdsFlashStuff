package §7!c§
{
   import § %§.§]!w§;
   import §!i§.§1s§;
   import §"!>§.§<!o§;
   import §""%§.§extends§;
   import §&!R§.§+"E§;
   import §+!9§.§;0§;
   import §+w§.§,!@§;
   import §+w§.§?e§;
   import §9!G§.§"!S§;
   import §;!0§.;
   import §<!d§.§-"-§;
   import §<!d§.§^!B§;
   import §>"0§.§7"$§;
   import flash.events.KeyboardEvent;
   
   public class StatePlay extends §3!q§
   {
      
      public static const STATE_NAME:String = "StatePlay";
       
      
      protected var §["?§:§-"-§;
      
      protected var §5<§:§^!B§;
      
      public function StatePlay(param1:§#2§, param2:§<!o§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      private function get §;!H§() : §-"-§
      {
         return this.§["?§;
      }
      
      override protected function init() : void
      {
         §4§ = new §,!@§(this);
         §4§.init(§?e§.§'"G§.Views.View_LevelPlay[0]);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §0D§() : void
      {
         this.§0!d§();
         this.§9"F§();
         this.§4!§();
      }
      
      protected function §6H§() : void
      {
         this.§8;§();
         if(this.§["?§)
         {
            this.§["?§.dispose();
            this.§["?§ = null;
         }
         if(this.§5<§)
         {
            this.§5<§.dispose();
            this.§5<§ = null;
         }
      }
      
      protected function §0!d§() : void
      {
         var _loc1_:§extends§ = §&!h§.§ u§.§-!V§;
         var _loc2_:§1s§ = §1s§(§4§.getItemByName("Container_Pause"));
         this.§5<§ = new §]!w§(_loc2_,§,W§,_loc1_,§4!T§);
      }
      
      protected function §9"F§() : void
      {
         var _loc1_:§extends§ = §&!h§.§ u§.§-!V§;
         var _loc2_:§1s§ = §1s§(§4§.getItemByName("Container_Play"));
         this.§["?§ = new §+"E§(_loc2_,§,W§,§`S§,_loc1_,§4!T§);
      }
      
      protected function §4!§() : void
      {
         this.§5<§.addEventListener(§7"$§.§'G§,this.§-!1§);
         this.§5<§.addEventListener(§7"$§.§>m§,this.§-!1§);
         this.§5<§.addEventListener(§7"$§.RESTART_LEVEL,this.§-!1§);
         this.§5<§.addEventListener(§7"$§.RESUME_LEVEL,this.§-!1§);
         this.§["?§.addEventListener(§7"$§.§>m§,this.§-!1§);
         this.§["?§.addEventListener(§7"$§.RESTART_LEVEL,this.§-!1§);
         this.§["?§.addEventListener(§7"$§.RESUME_LEVEL,this.§-!1§);
         this.§["?§.addEventListener(§7"$§.§0!a§,this.§-!1§);
      }
      
      protected function §8;§() : void
      {
         this.§5<§.removeEventListener(§7"$§.§'G§,this.§-!1§);
         this.§5<§.removeEventListener(§7"$§.§>m§,this.§-!1§);
         this.§5<§.removeEventListener(§7"$§.RESTART_LEVEL,this.§-!1§);
         this.§5<§.removeEventListener(§7"$§.RESUME_LEVEL,this.§-!1§);
         this.§["?§.removeEventListener(§7"$§.§>m§,this.§-!1§);
         this.§["?§.removeEventListener(§7"$§.RESTART_LEVEL,this.§-!1§);
         this.§["?§.removeEventListener(§7"$§.RESUME_LEVEL,this.§-!1§);
         this.§["?§.removeEventListener(§7"$§.§0!a§,this.§-!1§);
      }
      
      override protected function levelStarted() : void
      {
         §"!S§.§#9§();
         super.levelStarted();
         this.§,!B§();
      }
      
      protected function §,!B§() : void
      {
         §"!S§.§?2§("LevelStartsBirdsMilitary2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§0D§();
         this.§1!u§(false,false);
      }
      
      override public function deActivate() : void
      {
         this.§6H§();
         §&!h§.§ u§.§!N§ = false;
         super.deActivate();
      }
      
      protected function §1!u§(param1:Boolean, param2:Boolean = true) : void
      {
         §&!h§.§ u§.§!N§ = param1;
         if(param1)
         {
            this.§["?§.disable(param2);
            this.§5<§.enable(param2);
         }
         else
         {
            this.§["?§.enable(param2);
            this.§5<§.disable(param2);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§["?§ && this.§["?§.§;x§())
         {
            this.§["?§.update(param1);
         }
         if(this.§5<§ && this.§5<§.§;x§())
         {
            this.§5<§.update(param1);
         }
      }
      
      protected function §-!1§(param1:§7"$§) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
         {
            case §7"$§.§'G§:
               break;
            case §7"$§.§0!a§:
               this.§1!u§(true);
               break;
            case §7"$§.RESUME_LEVEL:
               this.§1!u§(false);
               break;
            case §7"$§.RESTART_LEVEL:
               §2g§(this.§'F§());
               break;
            case §7"$§.§>m§:
               _loc2_ = param1.§'!R§;
               §2g§(_loc2_);
         }
      }
      
      override public function getVictoryStateName() : String
      {
         if(this.§;!H§.isEagleUsed())
         {
            return §;!r§.STATE_NAME;
         }
         return §="1§.STATE_NAME;
      }
      
      override public function getLoserStateName() : String
      {
         return §0!Q§.STATE_NAME;
      }
      
      protected function §'F§() : String
      {
         return §"!H§.STATE_NAME;
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         if(isTransitioning)
         {
            return;
         }
         super.keyUp(param1);
         switch(param1.keyCode)
         {
            case 82:
               §2g§(this.§'F§());
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(isTransitioning)
         {
            return;
         }
         if(§;0§.§+",§)
         {
            switch(param1.keyCode)
            {
               case 53:
                  §2g§(this.§'F§());
                  break;
               case 54:
                  §2g§(this.§'F§());
            }
         }
      }
   }
}
