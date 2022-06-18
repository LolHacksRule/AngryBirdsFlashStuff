package §[$&§
{
   import §%#A§.§,#w§;
   import §%#A§.§]!_§;
   import §&"J§.§<&§;
   import §&$!§.§+#!§;
   import §+!C§.§]#b§;
   import §6"r§.§!#A§;
   import §6V§.§#j§;
   import §8Z§.§-#C§;
   import §8Z§.§6"w§;
   import §;5§.§12§;
   import §<"1§.§'"S§;
   import §<"1§.§@!N§;
   import §<"p§.§9#D§;
   import §<o§.§3h§;
   import §@#§.§^#Q§;
   import §[!2§.§=!C§;
   import §["-§.§;#>§;
   import flash.display.MovieClip;
   
   public class §^#S§ extends §=!C§
   {
      
      public static const §8!w§:int = 50;
      
      protected static const §1!_§:String = "MightyEagleButtonVisible";
      
      protected static const §,"6§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §>>§:String = "MightyEagleButtonHide";
       
      
      protected var §?5§:§;#>§;
      
      protected var §-!;§:§#j§;
      
      protected var §]#L§:§-#C§;
      
      protected var §>!7§:String;
      
      protected var §>#w§:§,#w§;
      
      protected var §^!%§:§,#w§;
      
      protected var § !i§:§,#w§;
      
      protected var §,Q§:§,#w§;
      
      protected var §@#T§:MovieClip;
      
      protected var §["m§:Boolean = false;
      
      public function §^#S§(param1:§]!_§, param2:§^#Q§, param3:§;#>§, param4:§<&§, param5:§+#!§)
      {
         this.§-!;§ = new §#j§();
         super(param1,param2,param4,param5);
         this.§?5§ = param3;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§["m§;
      }
      
      override protected function init() : void
      {
         §@!3§.setVisibility(false);
         this.§>#w§ = §,#w§(§@!3§.getItemByName("Button_MightyEagle"));
         this.§^!%§ = §,#w§(§@!3§.getItemByName("Button_Pause"));
         this.§ !i§ = §,#w§(§@!3§.getItemByName("Button_Restart"));
         this.§,Q§ = §,#w§(§@!3§.getItemByName("Button_FullScreen"));
         this.§@#T§ = §@!3§.getItemByName("Container_MightyEagle").mClip;
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §@!3§.setVisibility(true);
         §@!3§.addEventListener(§3h§.§9"L§,this.onUIInteraction);
         this.§-!;§.§`"x§(0);
         this.§'"G§(0);
         this.§`!0§();
         this.§>!7§ = §1!_§;
         this.§]#L§ = null;
         this.§["m§ = false;
         if(this.§>#w§)
         {
            this.§>#w§.setVisibility(true);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
         §@!3§.setVisibility(false);
         §@!3§.removeEventListener(§3h§.§9"L§,this.onUIInteraction);
         this.§^!%§.setComponentVisualState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§ !i§.setComponentVisualState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§,!1§();
         if(this.§]#L§ != null)
         {
            this.§]#L§.stop();
            this.§]#L§ = null;
         }
      }
      
      protected function §]!>§() : void
      {
         if(AngryBirdsBase.singleton.dataModel.userProgress.§<"L§ && AngryBirdsBase.singleton.dataModel.userProgress.§`!A§(mLevelManager.currentLevel))
         {
         }
      }
      
      override public function update(param1:Number) : void
      {
         this.§'"G§(param1);
         if(this.§>!7§ == §1!_§ && !§!#A§.§#F§.objects.isLevelGoalObjectsAlive())
         {
            this.§]u§();
         }
         if((this.§>!7§ == §1!_§ || this.§>!7§ == §,"6§) && §!#A§.§#F§.slingshot.mSlingShotState == §]#b§.§-"1§)
         {
            this.§7"p§();
         }
      }
      
      protected function §`!0§() : void
      {
         this.§@#T§.scaleY = 1;
         this.§@#T§.scaleX = 1;
      }
      
      public function §,!1§() : void
      {
         this.§>#w§.setComponentVisualState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§>#w§.setComponentState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      protected function §]u§() : void
      {
         this.§>!7§ = §,"6§;
      }
      
      protected function §7"p§() : void
      {
         this.§>#w§.setComponentState(§@!N§.COMPONENT_STATE_DISABLED);
         this.§>#w§.setComponentVisualState(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§]#L§ == null)
         {
            this.§]#L§ = §6"w§.§ "D§.§""3§(this.§@#T§,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§>!7§ = §>>§;
         this.§]#L§.onComplete = this.§9!Y§;
         this.§]#L§.play();
      }
      
      protected function §9!Y§() : void
      {
         this.§]#L§ = §6"w§.§ "D§.§""3§(this.§@#T§,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§]#L§.play();
         this.§>!7§ = §>>§;
      }
      
      protected function §'"G§(param1:Number) : void
      {
         var _loc2_:int = this.§?5§.getScore();
         var _loc3_:int = §5""§.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         var _loc4_:int;
         if((_loc4_ = this.§-!;§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,this.§-!;§.getValue() + param1 * §8!w§);
            this.§-!;§.§`"x§(_loc4_);
         }
      }
      
      protected function §-!2§() : void
      {
         var _loc1_:int = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
      }
      
      protected function useMightyEagle() : void
      {
         §!#A§.§#F§.useMightyEagle();
         this.§-!2§();
         this.§["m§ = true;
      }
      
      protected function onUIInteraction(param1:§3h§) : void
      {
         if(§+#3§)
         {
            return;
         }
         if(param1.component is §,#w§)
         {
            if(param1.eventIndex == §'"S§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §9#D§.§9#q§();
            }
            else if(param1.eventIndex == §'"S§.LISTENER_EVENT_MOUSE_UP)
            {
               §9#D§.§4!E§();
            }
         }
         switch(param1.eventName)
         {
            case "PAUSE":
               dispatchEvent(new §12§(§12§.§;"1§));
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new §12§(§12§.§`"Q§,getLevelLoadStateName()));
               break;
            case "MIGHTY_EAGLE":
               if(AngryBirdsBase.singleton.dataModel.userProgress.§`!A§(mLevelManager.currentLevel))
               {
                  if(AngryBirdsBase.singleton.dataModel.userProgress.§<"L§)
                  {
                     this.useMightyEagle();
                  }
               }
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§6"0§();
         }
      }
   }
}
