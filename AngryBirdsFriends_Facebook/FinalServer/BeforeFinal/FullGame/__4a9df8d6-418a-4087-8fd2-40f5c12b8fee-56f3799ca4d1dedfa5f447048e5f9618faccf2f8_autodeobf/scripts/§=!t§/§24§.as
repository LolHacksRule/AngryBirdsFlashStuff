package §=!t§
{
   import § !j§.§4#c§;
   import §!"'§.§0"Z§;
   import §!#C§.§#H§;
   import §#,§.§ !>§;
   import §#,§.§]$+§;
   import §&!_§.§@"E§;
   import §&$3§.§"!&§;
   import §&$3§.§7$C§;
   import §,!Q§.§+!2§;
   import §,!Q§.§6"n§;
   import §,"v§.§;"n§;
   import §1#v§.§4"l§;
   import §3!!§.§^"S§;
   import §4§.§9#i§;
   import §=#f§.§""F§;
   import §>2§.§6#t§;
   import §`#@§.§7n§;
   import flash.display.MovieClip;
   
   public class §24§ extends §^"S§
   {
      
      public static const §@"&§:int = 50;
      
      protected static const §]!0§:String = "MightyEagleButtonVisible";
      
      protected static const §1#r§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §-$1§:String = "MightyEagleButtonHide";
       
      
      protected var §3!;§:§9#i§;
      
      protected var §`$!§:§@"E§;
      
      protected var §="`§:§7$C§;
      
      protected var §+!k§:String;
      
      protected var §-!8§:§ !>§;
      
      protected var §;!+§:§ !>§;
      
      protected var §"y§:§ !>§;
      
      protected var §%T§:§ !>§;
      
      protected var §!!g§:MovieClip;
      
      protected var §5$#§:Boolean = false;
      
      public function §24§(param1:§]$+§, param2:§;"n§, param3:§9#i§, param4:§#H§, param5:§4#c§)
      {
         this.§`$!§ = new §@"E§();
         super(param1,param2,param4,param5);
         this.§3!;§ = param3;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§5$#§;
      }
      
      override protected function init() : void
      {
         §6#`§.setVisibility(false);
         this.§-!8§ = § !>§(§6#`§.getItemByName("Button_MightyEagle"));
         this.§;!+§ = § !>§(§6#`§.getItemByName("Button_Pause"));
         this.§"y§ = § !>§(§6#`§.getItemByName("Button_Restart"));
         this.§%T§ = § !>§(§6#`§.getItemByName("Button_FullScreen"));
         this.§!!g§ = §6#`§.getItemByName("Container_MightyEagle").mClip;
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §6#`§.setVisibility(true);
         §6#`§.addEventListener(§0"Z§.§0#,§,this.onUIInteraction);
         this.§`$!§.§@&§(0);
         this.§<$#§(0);
         this.§`;§();
         this.§+!k§ = §]!0§;
         this.§="`§ = null;
         this.§5$#§ = false;
         if(this.§-!8§)
         {
            this.§-!8§.setVisibility(true);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
         §6#`§.setVisibility(false);
         §6#`§.removeEventListener(§0"Z§.§0#,§,this.onUIInteraction);
         this.§;!+§.setComponentVisualState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§"y§.setComponentVisualState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§with§();
         if(this.§="`§ != null)
         {
            this.§="`§.stop();
            this.§="`§ = null;
         }
      }
      
      protected function §00§() : void
      {
         if(AngryBirdsBase.singleton.dataModel.userProgress.§;?§ && AngryBirdsBase.singleton.dataModel.userProgress.§^#9§(mLevelManager.currentLevel))
         {
         }
      }
      
      override public function update(param1:Number) : void
      {
         this.§<$#§(param1);
         if(this.§+!k§ == §]!0§ && !§7n§.§6#K§.objects.isLevelGoalObjectsAlive())
         {
            this.§<$ §();
         }
         if((this.§+!k§ == §]!0§ || this.§+!k§ == §1#r§) && §7n§.§6#K§.slingshot.mSlingShotState == §6#t§.§`!t§)
         {
            this.§^#X§();
         }
      }
      
      protected function §`;§() : void
      {
         this.§!!g§.scaleY = 1;
         this.§!!g§.scaleX = 1;
      }
      
      public function §with§() : void
      {
         this.§-!8§.setComponentVisualState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§-!8§.setComponentState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      protected function §<$ §() : void
      {
         this.§+!k§ = §1#r§;
      }
      
      protected function §^#X§() : void
      {
         this.§-!8§.setComponentState(§+!2§.COMPONENT_STATE_DISABLED);
         this.§-!8§.setComponentVisualState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§="`§ == null)
         {
            this.§="`§ = §"!&§.§`"H§.§1"W§(this.§!!g§,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§+!k§ = §-$1§;
         this.§="`§.onComplete = this.§27§;
         this.§="`§.play();
      }
      
      protected function §27§() : void
      {
         this.§="`§ = §"!&§.§`"H§.§1"W§(this.§!!g§,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§="`§.play();
         this.§+!k§ = §-$1§;
      }
      
      protected function §<$#§(param1:Number) : void
      {
         var _loc2_:int = this.§3!;§.getScore();
         var _loc3_:int = §#!$§.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         var _loc4_:int;
         if((_loc4_ = this.§`$!§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,this.§`$!§.getValue() + param1 * §@"&§);
            this.§`$!§.§@&§(_loc4_);
         }
      }
      
      protected function §=u§() : void
      {
         var _loc1_:int = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
      }
      
      protected function useMightyEagle() : void
      {
         §7n§.§6#K§.useMightyEagle();
         this.§=u§();
         this.§5$#§ = true;
      }
      
      protected function onUIInteraction(param1:§0"Z§) : void
      {
         if(§^!!§)
         {
            return;
         }
         if(param1.component is § !>§)
         {
            if(param1.eventIndex == §6"n§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §4"l§.§"!m§();
            }
            else if(param1.eventIndex == §6"n§.LISTENER_EVENT_MOUSE_UP)
            {
               §4"l§.§3"B§();
            }
         }
         switch(param1.eventName)
         {
            case "PAUSE":
               dispatchEvent(new §""F§(§""F§.§@#A§));
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new §""F§(§""F§.§]E§,getLevelLoadStateName()));
               break;
            case "MIGHTY_EAGLE":
               if(AngryBirdsBase.singleton.dataModel.userProgress.§^#9§(mLevelManager.currentLevel))
               {
                  if(AngryBirdsBase.singleton.dataModel.userProgress.§;?§)
                  {
                     this.useMightyEagle();
                  }
               }
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§1a§();
         }
      }
   }
}
