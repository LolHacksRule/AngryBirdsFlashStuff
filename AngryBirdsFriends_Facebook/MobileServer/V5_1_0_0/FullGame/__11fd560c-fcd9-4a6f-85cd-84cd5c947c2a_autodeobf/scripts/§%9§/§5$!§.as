package §%9§
{
   import §!#"§.§&"H§;
   import §!#"§.§4[§;
   import §1!T§.§>""§;
   import §2G§.§3W§;
   import §3"I§.§ E§;
   import §3#T§.§'§;
   import §3#T§.§,#[§;
   import §5P§.§""C§;
   import §;#D§.§3#U§;
   import §;$3§.§8=§;
   import §<h§.§>"0§;
   import §<h§.§[#K§;
   import §=#G§.§6"v§;
   import §?"@§.§^!S§;
   import §@0§.§ !o§;
   import §]!6§.§7Z§;
   import §`7§.§;e§;
   import flash.display.MovieClip;
   
   public class §5$!§ extends §>""§
   {
      
      public static const §[!"§:int = 50;
      
      protected static const §6"G§:String = "MightyEagleButtonVisible";
      
      protected static const §4"J§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §4p§:String = "MightyEagleButtonHide";
       
      
      protected var §!!p§:§6"v§;
      
      protected var §=$8§:§;e§;
      
      protected var §>"s§:§4[§;
      
      protected var §4m§:String;
      
      protected var §&#h§:§>"0§;
      
      protected var §6!G§:§>"0§;
      
      protected var §%"i§:§>"0§;
      
      protected var §@!$§:§>"0§;
      
      protected var §"$1§:MovieClip;
      
      protected var § ##§:Boolean = false;
      
      public function §5$!§(param1:§[#K§, param2:§8=§, param3:§6"v§, param4:§3W§, param5:§""C§)
      {
         this.§=$8§ = new §;e§();
         super(param1,param2,param4,param5);
         this.§!!p§ = param3;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§ ##§;
      }
      
      override protected function init() : void
      {
         §4"y§.setVisibility(false);
         this.§&#h§ = §>"0§(§4"y§.getItemByName("Button_MightyEagle"));
         this.§6!G§ = §>"0§(§4"y§.getItemByName("Button_Pause"));
         this.§%"i§ = §>"0§(§4"y§.getItemByName("Button_Restart"));
         this.§@!$§ = §>"0§(§4"y§.getItemByName("Button_FullScreen"));
         this.§"$1§ = §4"y§.getItemByName("Container_MightyEagle").mClip;
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §4"y§.setVisibility(true);
         §4"y§.addEventListener(§ E§.§=$1§,this.onUIInteraction);
         this.§=$8§.§ $;§(0);
         this.§9[§(0);
         this.§+#i§();
         this.§4m§ = §6"G§;
         this.§>"s§ = null;
         this.§ ##§ = false;
         if(this.§&#h§)
         {
            this.§&#h§.setVisibility(true);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
         §4"y§.setVisibility(false);
         §4"y§.removeEventListener(§ E§.§=$1§,this.onUIInteraction);
         this.§6!G§.setComponentVisualState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§%"i§.setComponentVisualState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§8$$§();
         if(this.§>"s§ != null)
         {
            this.§>"s§.stop();
            this.§>"s§ = null;
         }
      }
      
      protected function §'x§() : void
      {
         if(AngryBirdsBase.singleton.dataModel.userProgress.§-!!§ && AngryBirdsBase.singleton.dataModel.userProgress.§[!?§(mLevelManager.currentLevel))
         {
         }
      }
      
      override public function update(param1:Number) : void
      {
         this.§9[§(param1);
         if(this.§4m§ == §6"G§ && !§3#U§.§#$4§.objects.isLevelGoalObjectsAlive())
         {
            this.§0!M§();
         }
         if((this.§4m§ == §6"G§ || this.§4m§ == §4"J§) && §3#U§.§#$4§.slingshot.mSlingShotState == § !o§.§3"'§)
         {
            this.§#!2§();
         }
      }
      
      protected function §+#i§() : void
      {
         this.§"$1§.scaleY = 1;
         this.§"$1§.scaleX = 1;
      }
      
      public function §8$$§() : void
      {
         this.§&#h§.setComponentVisualState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§&#h§.setComponentState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      protected function §0!M§() : void
      {
         this.§4m§ = §4"J§;
      }
      
      protected function §#!2§() : void
      {
         this.§&#h§.setComponentState(§,#[§.COMPONENT_STATE_DISABLED);
         this.§&#h§.setComponentVisualState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§>"s§ == null)
         {
            this.§>"s§ = §&"H§.§6!§.§6C§(this.§"$1§,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§4m§ = §4p§;
         this.§>"s§.onComplete = this.§8$;§;
         this.§>"s§.play();
      }
      
      protected function §8$;§() : void
      {
         this.§>"s§ = §&"H§.§6!§.§6C§(this.§"$1§,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§>"s§.play();
         this.§4m§ = §4p§;
      }
      
      protected function §9[§(param1:Number) : void
      {
         var _loc2_:int = this.§!!p§.getScore();
         var _loc3_:int = §#A§.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         var _loc4_:int;
         if((_loc4_ = this.§=$8§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,this.§=$8§.getValue() + param1 * §[!"§);
            this.§=$8§.§ $;§(_loc4_);
         }
      }
      
      protected function §]<§() : void
      {
         var _loc1_:int = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
      }
      
      protected function useMightyEagle() : void
      {
         §3#U§.§#$4§.useMightyEagle();
         this.§]<§();
         this.§ ##§ = true;
      }
      
      protected function onUIInteraction(param1:§ E§) : void
      {
         if(§!"J§)
         {
            return;
         }
         if(param1.component is §>"0§)
         {
            if(param1.eventIndex == §'#0§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §7Z§.§2# §();
            }
            else if(param1.eventIndex == §'#0§.LISTENER_EVENT_MOUSE_UP)
            {
               §7Z§.§[!_§();
            }
         }
         switch(param1.eventName)
         {
            case "PAUSE":
               dispatchEvent(new §^!S§(§^!S§.§"x§));
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new §^!S§(§^!S§.§]y§,getLevelLoadStateName()));
               break;
            case "MIGHTY_EAGLE":
               if(AngryBirdsBase.singleton.dataModel.userProgress.§[!?§(mLevelManager.currentLevel))
               {
                  if(AngryBirdsBase.singleton.dataModel.userProgress.§-!!§)
                  {
                     this.useMightyEagle();
                  }
               }
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§5#p§();
         }
      }
   }
}
