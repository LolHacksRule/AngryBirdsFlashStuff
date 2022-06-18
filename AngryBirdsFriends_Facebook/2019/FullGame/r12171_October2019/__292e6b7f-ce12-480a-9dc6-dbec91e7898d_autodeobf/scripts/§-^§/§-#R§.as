package §-^§
{
   import § "L§.§1"r§;
   import § "L§.§23§;
   import §!1§.§]^§;
   import §#"4§.§'#B§;
   import §#g§.§^"R§;
   import §+`§.§%"q§;
   import §,#,§.§3#J§;
   import §6"p§.§8"M§;
   import §6#h§.§'!t§;
   import §7#$§.§]#q§;
   import §8!A§.§^#N§;
   import §;"5§.§6"W§;
   import §;"5§.§@$-§;
   import §?#z§.§]$?§;
   import §^"3§.§ #&§;
   import §^"3§.§`$4§;
   import §`§.§%#m§;
   import flash.display.MovieClip;
   
   public class §-#R§ extends §]^§
   {
      
      public static const §[!#§:int = 50;
      
      protected static const §`"_§:String = "MightyEagleButtonVisible";
      
      protected static const §;#2§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §`z§:String = "MightyEagleButtonHide";
       
      
      protected var §!"K§:§'!t§;
      
      protected var §<!f§:§'#B§;
      
      protected var §>"L§:§@$-§;
      
      protected var §26§:String;
      
      protected var §3#0§:§1"r§;
      
      protected var §%$D§:§1"r§;
      
      protected var §2u§:§1"r§;
      
      protected var §9#F§:§1"r§;
      
      protected var §6"d§:MovieClip;
      
      protected var §,!5§:Boolean = false;
      
      public function §-#R§(param1:§23§, param2:§]#q§, param3:§'!t§, param4:§3#J§, param5:§%"q§)
      {
         this.§<!f§ = new §'#B§();
         super(param1,param2,param4,param5);
         this.§!"K§ = param3;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§,!5§;
      }
      
      override protected function init() : void
      {
         §?!,§.setVisibility(false);
         this.§3#0§ = §1"r§(§?!,§.getItemByName("Button_MightyEagle"));
         this.§%$D§ = §1"r§(§?!,§.getItemByName("Button_Pause"));
         this.§2u§ = §1"r§(§?!,§.getItemByName("Button_Restart"));
         this.§9#F§ = §1"r§(§?!,§.getItemByName("Button_FullScreen"));
         this.§6"d§ = §?!,§.getItemByName("Container_MightyEagle").mClip;
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §?!,§.setVisibility(true);
         §?!,§.addEventListener(§%#m§.§-!O§,this.onUIInteraction);
         this.§<!f§.§!!5§(0);
         this.§@!E§(0);
         this.§ u§();
         this.§26§ = §`"_§;
         this.§>"L§ = null;
         this.§,!5§ = false;
         if(this.§3#0§)
         {
            this.§3#0§.setVisibility(true);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
         §?!,§.setVisibility(false);
         §?!,§.removeEventListener(§%#m§.§-!O§,this.onUIInteraction);
         this.§%$D§.setComponentVisualState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§2u§.setComponentVisualState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§&#b§();
         if(this.§>"L§ != null)
         {
            this.§>"L§.stop();
            this.§>"L§ = null;
         }
      }
      
      protected function § !p§() : void
      {
         if(AngryBirdsBase.singleton.dataModel.userProgress.§2]§ && AngryBirdsBase.singleton.dataModel.userProgress.§1#9§(mLevelManager.currentLevel))
         {
         }
      }
      
      override public function update(param1:Number) : void
      {
         this.§@!E§(param1);
         if(this.§26§ == §`"_§ && !§]$?§.§2#§.objects.isLevelGoalObjectsAlive())
         {
            this.§4"[§();
         }
         if((this.§26§ == §`"_§ || this.§26§ == §;#2§) && §]$?§.§2#§.slingshot.mSlingShotState == §^"R§.§@#+§)
         {
            this.§@"I§();
         }
      }
      
      protected function § u§() : void
      {
         this.§6"d§.scaleY = 1;
         this.§6"d§.scaleX = 1;
      }
      
      public function §&#b§() : void
      {
         this.§3#0§.setComponentVisualState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§3#0§.setComponentState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      protected function §4"[§() : void
      {
         this.§26§ = §;#2§;
      }
      
      protected function §@"I§() : void
      {
         this.§3#0§.setComponentState(§ #&§.COMPONENT_STATE_DISABLED);
         this.§3#0§.setComponentVisualState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§>"L§ == null)
         {
            this.§>"L§ = §6"W§.§+!,§.§9!n§(this.§6"d§,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§26§ = §`z§;
         this.§>"L§.onComplete = this.§7!m§;
         this.§>"L§.play();
      }
      
      protected function §7!m§() : void
      {
         this.§>"L§ = §6"W§.§+!,§.§9!n§(this.§6"d§,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§>"L§.play();
         this.§26§ = §`z§;
      }
      
      protected function §@!E§(param1:Number) : void
      {
         var _loc2_:int = this.§!"K§.getScore();
         var _loc3_:int = §#!h§.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         var _loc4_:int;
         if((_loc4_ = this.§<!f§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,this.§<!f§.getValue() + param1 * §[!#§);
            this.§<!f§.§!!5§(_loc4_);
         }
      }
      
      protected function § "C§() : void
      {
         var _loc1_:int = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
      }
      
      protected function useMightyEagle() : void
      {
         §]$?§.§2#§.useMightyEagle();
         this.§ "C§();
         this.§,!5§ = true;
      }
      
      protected function onUIInteraction(param1:§%#m§) : void
      {
         if(§ #"§)
         {
            return;
         }
         if(param1.component is §1"r§)
         {
            if(param1.eventIndex == §`$4§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §8"M§.§[#+§();
            }
            else if(param1.eventIndex == §`$4§.LISTENER_EVENT_MOUSE_UP)
            {
               §8"M§.§+!M§();
            }
         }
         switch(param1.eventName)
         {
            case "PAUSE":
               dispatchEvent(new §^#N§(§^#N§.§0!5§));
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new §^#N§(§^#N§.§8#j§,getLevelLoadStateName()));
               break;
            case "MIGHTY_EAGLE":
               if(AngryBirdsBase.singleton.dataModel.userProgress.§1#9§(mLevelManager.currentLevel))
               {
                  if(AngryBirdsBase.singleton.dataModel.userProgress.§2]§)
                  {
                     this.useMightyEagle();
                  }
               }
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§`<§();
         }
      }
   }
}
