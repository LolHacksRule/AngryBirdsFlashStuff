package §<#O§
{
   import § !3§.§^L§;
   import § #_§.§?!>§;
   import § null§.§5"<§;
   import § null§.§@§;
   import §#"3§.§2#>§;
   import §+!n§.§+!p§;
   import §0!>§.§;#$§;
   import §2$;§.§!"e§;
   import §2$;§.§;!b§;
   import §2E§.§[S§;
   import §<8§.§8!g§;
   import §<8§.§;"k§;
   import §=-§.§@$%§;
   import §=X§.§3§;
   import §>#Y§.§@!p§;
   import §?$#§.§2!"§;
   import §?o§.§4#?§;
   import flash.display.MovieClip;
   
   public class §#!m§ extends §^L§
   {
      
      public static const §6]§:int = 50;
      
      protected static const §0"+§:String = "MightyEagleButtonVisible";
      
      protected static const §'"s§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §7#Q§:String = "MightyEagleButtonHide";
       
      
      protected var §%#4§:§;#$§;
      
      protected var §!!%§:§[S§;
      
      protected var §0!K§:§@#5§;
      
      protected var §;!%§:String;
      
      protected var §@!=§:§;!b§;
      
      protected var §'"c§:§;!b§;
      
      protected var §1#-§:§;!b§;
      
      protected var §!#k§:§;!b§;
      
      protected var §@!F§:MovieClip;
      
      protected var §7@§:Boolean = false;
      
      public function §#!m§(param1:§!"e§, param2:§4#?§, param3:§;#$§, param4:§@!p§, param5:§?!>§)
      {
         this.§!!%§ = new §[S§();
         super(param1,param2,param4,param5);
         this.§%#4§ = param3;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§7@§;
      }
      
      override protected function init() : void
      {
         §<!§.setVisibility(false);
         this.§@!=§ = §;!b§(§<!§.getItemByName("Button_MightyEagle"));
         this.§'"c§ = §;!b§(§<!§.getItemByName("Button_Pause"));
         this.§1#-§ = §;!b§(§<!§.getItemByName("Button_Restart"));
         this.§!#k§ = §;!b§(§<!§.getItemByName("Button_FullScreen"));
         this.§@!F§ = §<!§.getItemByName("Container_MightyEagle").mClip;
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §<!§.setVisibility(true);
         §<!§.addEventListener(§3#6§.§[!$§,this.onUIInteraction);
         this.§!!%§.§,#T§(0);
         this.§1"M§(0);
         this.§5#T§();
         this.§;!%§ = §0"+§;
         this.§0!K§ = null;
         this.§7@§ = false;
         if(this.§@!=§)
         {
            this.§@!=§.setVisibility(true);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
         §<!§.setVisibility(false);
         §<!§.removeEventListener(§3#6§.§[!$§,this.onUIInteraction);
         this.§'"c§.setComponentVisualState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§1#-§.setComponentVisualState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§&!U§();
         if(this.§0!K§ != null)
         {
            this.§0!K§.stop();
            this.§0!K§ = null;
         }
      }
      
      protected function §73§() : void
      {
         if(AngryBirdsBase.singleton.dataModel.userProgress.§<!0§ && AngryBirdsBase.singleton.dataModel.userProgress.§&!T§(mLevelManager.currentLevel))
         {
         }
      }
      
      override public function update(param1:Number) : void
      {
         this.§1"M§(param1);
         if(this.§;!%§ == §0"+§ && !§+!p§.§`?§.objects.isLevelGoalObjectsAlive())
         {
            this.§,"7§();
         }
         if((this.§;!%§ == §0"+§ || this.§;!%§ == §'"s§) && §+!p§.§`?§.slingshot.mSlingShotState == §2!"§.§ "X§)
         {
            this.§2!J§();
         }
      }
      
      protected function §5#T§() : void
      {
         this.§@!F§.scaleY = 1;
         this.§@!F§.scaleX = 1;
      }
      
      public function §&!U§() : void
      {
         this.§@!=§.setComponentVisualState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§@!=§.setComponentState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      protected function §,"7§() : void
      {
         this.§;!%§ = §'"s§;
      }
      
      protected function §2!J§() : void
      {
         this.§@!=§.setComponentState(§;"k§.COMPONENT_STATE_DISABLED);
         this.§@!=§.setComponentVisualState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§0!K§ == null)
         {
            this.§0!K§ = §5"<§.§3"1§.§3#§(this.§@!F§,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§;!%§ = §7#Q§;
         this.§0!K§.onComplete = this.§&!#§;
         this.§0!K§.play();
      }
      
      protected function §&!#§() : void
      {
         this.§0!K§ = §5"<§.§3"1§.§3#§(this.§@!F§,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§0!K§.play();
         this.§;!%§ = §7#Q§;
      }
      
      protected function §1"M§(param1:Number) : void
      {
         var _loc2_:int = this.§%#4§.getScore();
         int(§'"G§.userProgress.getScoreForLevel(mLevelManager.currentLevel));
         var _loc4_:int;
         if((_loc4_ = this.§!!%§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,this.§!!%§.getValue() + param1 * §6]§);
            this.§!!%§.§,#T§(_loc4_);
         }
      }
      
      protected function §5"#§() : void
      {
         int(AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel));
      }
      
      protected function useMightyEagle() : void
      {
         §+!p§.§`?§.useMightyEagle();
         this.§5"#§();
         this.§7@§ = true;
      }
      
      protected function onUIInteraction(param1:§3#6§) : void
      {
         if(§&"-§)
         {
            return;
         }
         if(param1.component is §;!b§)
         {
            if(param1.eventIndex == §8!g§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §2#>§.§28§();
            }
            else if(param1.eventIndex == §8!g§.LISTENER_EVENT_MOUSE_UP)
            {
               §2#>§.§-`§();
            }
         }
         switch(param1.eventName)
         {
            case "PAUSE":
               dispatchEvent(new §@$%§(§@$%§.§`$;§));
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new §@$%§(§@$%§.§,f§,getLevelLoadStateName()));
               break;
            case "MIGHTY_EAGLE":
               if(AngryBirdsBase.singleton.dataModel.userProgress.§&!T§(mLevelManager.currentLevel))
               {
                  if(AngryBirdsBase.singleton.dataModel.userProgress.§<!0§)
                  {
                     this.useMightyEagle();
                     break;
                  }
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§=!Y§();
         }
      }
   }
}
