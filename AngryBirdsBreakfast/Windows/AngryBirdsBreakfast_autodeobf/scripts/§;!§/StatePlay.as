package §;!§
{
   import §#"&§.§4!W§;
   import §0"$§.§"!a§;
   import §1T§.§'!c§;
   import §2S§.§<!'§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §7!A§.§-J§;
   import §7!A§.§9!y§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §]![§.§="+§;
   import §^Z§.§8S§;
   import com.angrybirds.§&!"§;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class StatePlay extends §6!X§
   {
      
      public static const §-!q§:String = "StatePlay";
       
      
      protected var §>>§:§9!y§;
      
      protected var §?u§:§-J§;
      
      public function StatePlay(param1:§5!Y§, param2:§6h§, param3:Boolean = true, param4:String = "StatePlay")
      {
         super(param1,param2,param3,param4);
      }
      
      private function get §!+§() : §9!y§
      {
         return this.§>>§;
      }
      
      override protected function init() : void
      {
         §?P§ = new §2W§(this);
         §?P§.init(§#"0§.§+#§.Views.View_LevelPlay[0]);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §4!T§() : void
      {
         this.§!!H§();
         this.§?I§();
         this.§8`§();
      }
      
      protected function §[p§() : void
      {
         this.§'!'§();
         if(this.§>>§)
         {
            this.§>>§.dispose();
            this.§>>§ = null;
         }
         if(this.§?u§)
         {
            this.§?u§.dispose();
            this.§?u§ = null;
         }
      }
      
      protected function §!!H§() : void
      {
         var _loc1_:§4!W§ = §6!!§.singleton.§<!S§;
         var _loc2_:§"!a§ = §"!a§(§?P§.getItemByName("Container_Pause"));
         this.§?u§ = new §="+§(_loc2_,§&" §,_loc1_,§-!]§);
      }
      
      protected function §?I§() : void
      {
         var _loc1_:§4!W§ = §6!!§.singleton.§<!S§;
         var _loc2_:§"!a§ = §"!a§(§?P§.getItemByName("Container_Play"));
         this.§>>§ = new §<!'§(_loc2_,§&" §,§>A§,_loc1_,§-!]§);
      }
      
      protected function §8`§() : void
      {
         this.§?u§.addEventListener(§8S§.§[$§,this.§2U§);
         this.§?u§.addEventListener(§8S§.§1!K§,this.§2U§);
         this.§?u§.addEventListener(§8S§.RESTART_LEVEL,this.§2U§);
         this.§?u§.addEventListener(§8S§.RESUME_LEVEL,this.§2U§);
         this.§>>§.addEventListener(§8S§.§1!K§,this.§2U§);
         this.§>>§.addEventListener(§8S§.RESTART_LEVEL,this.§2U§);
         this.§>>§.addEventListener(§8S§.RESUME_LEVEL,this.§2U§);
         this.§>>§.addEventListener(§8S§.§[!&§,this.§2U§);
      }
      
      protected function §'!'§() : void
      {
         this.§?u§.removeEventListener(§8S§.§[$§,this.§2U§);
         this.§?u§.removeEventListener(§8S§.§1!K§,this.§2U§);
         this.§?u§.removeEventListener(§8S§.RESTART_LEVEL,this.§2U§);
         this.§?u§.removeEventListener(§8S§.RESUME_LEVEL,this.§2U§);
         this.§>>§.removeEventListener(§8S§.§1!K§,this.§2U§);
         this.§>>§.removeEventListener(§8S§.RESTART_LEVEL,this.§2U§);
         this.§>>§.removeEventListener(§8S§.RESUME_LEVEL,this.§2U§);
         this.§>>§.removeEventListener(§8S§.§[!&§,this.§2U§);
      }
      
      override protected function levelStarted() : void
      {
         this.§0!$§();
         super.levelStarted();
         this.§ !D§();
      }
      
      protected function §0!$§() : void
      {
         §'!c§.§&j§();
      }
      
      protected function § !D§() : void
      {
         §'!c§.§"V§("LevelStartsBirdsMilitary2");
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§4!T§();
         this.§+!;§(false,false);
      }
      
      override public function deActivate() : void
      {
         this.§[p§();
         §6!!§.singleton.§2!h§ = false;
         super.deActivate();
      }
      
      protected function §+!;§(param1:Boolean, param2:Boolean = true) : void
      {
         §6!!§.singleton.§2!h§ = param1;
         if(param1)
         {
            this.§>>§.disable(param2);
            this.§?u§.enable(param2);
         }
         else
         {
            this.§>>§.enable(param2);
            this.§?u§.disable(param2);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(this.§>>§ && this.§>>§.§+4§())
         {
            this.§>>§.update(param1);
         }
         if(this.§?u§ && this.§?u§.§+4§())
         {
            this.§?u§.update(param1);
         }
      }
      
      protected function §2U§(param1:§8S§) : void
      {
         var _loc2_:String = null;
         switch(param1.type)
         {
            case §8S§.§[$§:
               break;
            case §8S§.§[!&§:
               this.§+!;§(true);
               break;
            case §8S§.RESUME_LEVEL:
               this.§+!;§(false);
               break;
            case §8S§.RESTART_LEVEL:
               this.§=3§();
               break;
            case §8S§.§1!K§:
               _loc2_ = param1.§0N§;
               §<f§(_loc2_);
         }
      }
      
      override public function getVictoryStateName() : String
      {
         if(this.§!+§.isEagleUsed())
         {
            return §#!J§.§-!q§;
         }
         return §>!X§.§-!q§;
      }
      
      override public function getLoserStateName() : String
      {
         return §"o§.§-!q§;
      }
      
      protected function §0!S§() : String
      {
         return §[j§.§-!q§;
      }
      
      protected function §=3§() : void
      {
         §<f§(this.§0!S§());
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
            case Keyboard.R:
               if(!§&!"§.isPaused)
               {
                  this.§=3§();
               }
         }
      }
      
      override public function keyDown(param1:KeyboardEvent) : void
      {
         if(isTransitioning)
         {
            return;
         }
         if(§&!"§.§7!2§)
         {
            switch(param1.keyCode)
            {
               case Keyboard.NUMBER_5:
                  §<f§(this.§0!S§());
                  break;
               case Keyboard.NUMBER_6:
                  §<f§(this.§0!S§());
                  break;
               default:
                  super.keyDown(param1);
            }
         }
      }
      
      public function §[P§() : void
      {
         this.§>>§.§&$§.listenerUIEventOccured(0,"showTutorial");
      }
   }
}
