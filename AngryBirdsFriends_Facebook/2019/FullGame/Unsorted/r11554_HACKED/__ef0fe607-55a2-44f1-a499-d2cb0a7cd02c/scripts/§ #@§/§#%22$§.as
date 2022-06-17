package § #@§
{
   import § !D§.§"b§;
   import §!L§.§<"s§;
   import §"$=§.§'![§;
   import §+#B§.§["Q§;
   import §,"8§.§6!v§;
   import §3"G§.§16§;
   import §4!n§.§'!,§;
   import §4!n§.§'!V§;
   import §5!$§.§"S§;
   import §5!$§.§<c§;
   import §5"G§.§8"`§;
   import §6§.§'#n§;
   import §6§.§]%§;
   import §9#K§.§=^§;
   import §=!2§.§%"T§;
   import §]"'§.§""K§;
   import §`"S§.§+l§;
   import flash.display.MovieClip;
   
   public class §#"$§ extends §+l§
   {
      
      public static const §^!=§:int = 50;
      
      protected static const §2!=§:String = "MightyEagleButtonVisible";
      
      protected static const §^>§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §^#]§:String = "MightyEagleButtonHide";
       
      
      protected var §'"A§:§<"s§;
      
      protected var §[!m§:§["Q§;
      
      protected var §2a§:§]%§;
      
      protected var §'"-§:String;
      
      protected var §`!O§:§"S§;
      
      protected var §5"t§:§"S§;
      
      protected var §3M§:§"S§;
      
      protected var §'$6§:§"S§;
      
      protected var §<!"§:MovieClip;
      
      protected var §>#b§:Boolean = false;
      
      public function §#"$§(param1:§<c§, param2:§'![§, param3:§<"s§, param4:§""K§, param5:§16§)
      {
         this.§[!m§ = new §["Q§();
         super(param1,param2,param4,param5);
         this.§'"A§ = param3;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§>#b§;
      }
      
      override protected function init() : void
      {
         §+!9§.setVisibility(false);
         this.§`!O§ = §"S§(§+!9§.getItemByName("Button_MightyEagle"));
         this.§5"t§ = §"S§(§+!9§.getItemByName("Button_Pause"));
         this.§3M§ = §"S§(§+!9§.getItemByName("Button_Restart"));
         this.§'$6§ = §"S§(§+!9§.getItemByName("Button_FullScreen"));
         this.§<!"§ = §+!9§.getItemByName("Container_MightyEagle").mClip;
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §+!9§.setVisibility(true);
         §+!9§.addEventListener(§8"`§.§,$A§,this.onUIInteraction);
         this.§[!m§.§<!Q§(0);
         this.§5+§(0);
         this.§<O§();
         this.§'"-§ = §2!=§;
         this.§2a§ = null;
         this.§>#b§ = false;
         if(this.§`!O§)
         {
            this.§`!O§.setVisibility(true);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
         §+!9§.setVisibility(false);
         §+!9§.removeEventListener(§8"`§.§,$A§,this.onUIInteraction);
         this.§5"t§.setComponentVisualState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§3M§.setComponentVisualState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§79§();
         if(this.§2a§ != null)
         {
            this.§2a§.stop();
            this.§2a§ = null;
         }
      }
      
      protected function §?!^§() : void
      {
         if(AngryBirdsBase.singleton.dataModel.userProgress.§6x§ && AngryBirdsBase.singleton.dataModel.userProgress.§2"+§(mLevelManager.currentLevel))
         {
         }
      }
      
      override public function update(param1:Number) : void
      {
         this.§5+§(param1);
         if(this.§'"-§ == §2!=§ && !§%"T§.§;`§.objects.isLevelGoalObjectsAlive())
         {
            this.§1#§();
         }
         if((this.§'"-§ == §2!=§ || this.§'"-§ == §^>§) && §%"T§.§;`§.slingshot.mSlingShotState == §"b§.§4#C§)
         {
            this.§6!F§();
         }
      }
      
      protected function §<O§() : void
      {
         this.§<!"§.scaleY = 1;
         this.§<!"§.scaleX = 1;
      }
      
      public function §79§() : void
      {
         this.§`!O§.setComponentVisualState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§`!O§.setComponentState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      protected function §1#§() : void
      {
         this.§'"-§ = §^>§;
      }
      
      protected function §6!F§() : void
      {
         this.§`!O§.setComponentState(§'!V§.COMPONENT_STATE_DISABLED);
         this.§`!O§.setComponentVisualState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§2a§ == null)
         {
            this.§2a§ = §'#n§.§?q§.§9!N§(this.§<!"§,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§'"-§ = §^#]§;
         this.§2a§.onComplete = this.§>##§;
         this.§2a§.play();
      }
      
      protected function §>##§() : void
      {
         this.§2a§ = §'#n§.§?q§.§9!N§(this.§<!"§,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§2a§.play();
         this.§'"-§ = §^#]§;
      }
      
      protected function §5+§(param1:Number) : void
      {
         var _loc2_:int = this.§'"A§.getScore();
         int(§]!v§.userProgress.getScoreForLevel(mLevelManager.currentLevel));
         var _loc4_:int;
         if((_loc4_ = this.§[!m§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,this.§[!m§.getValue() + param1 * §^!=§);
            this.§[!m§.§<!Q§(_loc4_);
         }
      }
      
      protected function §8!Y§() : void
      {
         int(AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel));
      }
      
      protected function useMightyEagle() : void
      {
         §%"T§.§;`§.useMightyEagle();
         this.§8!Y§();
         this.§>#b§ = true;
      }
      
      protected function onUIInteraction(param1:§8"`§) : void
      {
         if(§<`§)
         {
            return;
         }
         if(param1.component is §"S§)
         {
            if(param1.eventIndex == §'!,§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §=^§.§4!M§();
            }
            else if(param1.eventIndex == §'!,§.LISTENER_EVENT_MOUSE_UP)
            {
               §=^§.§1$@§();
            }
         }
         switch(param1.eventName)
         {
            case "PAUSE":
               dispatchEvent(new §6!v§(§6!v§.§#j§));
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new §6!v§(§6!v§.§5"R§,getLevelLoadStateName()));
               break;
            case "MIGHTY_EAGLE":
               if(AngryBirdsBase.singleton.dataModel.userProgress.§2"+§(mLevelManager.currentLevel))
               {
                  if(AngryBirdsBase.singleton.dataModel.userProgress.§6x§)
                  {
                     this.useMightyEagle();
                     break;
                  }
                  break;
               }
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§3'§();
         }
      }
   }
}
