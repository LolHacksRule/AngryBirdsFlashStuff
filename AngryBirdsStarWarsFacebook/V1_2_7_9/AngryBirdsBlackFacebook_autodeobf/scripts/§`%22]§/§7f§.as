package §`"]§
{
   import §""d§.§,m§;
   import §""d§.§2"8§;
   import §#!k§.§4!4§;
   import §'! §.§4!Q§;
   import §'! §.§41§;
   import §'+§.§="B§;
   import §,#+§.§7!m§;
   import §0"I§.§0"b§;
   import §1!X§.§!"#§;
   import §4##§.§7!B§;
   import §4##§.§7!Y§;
   import §5!q§.§-R§;
   import §7A§.§<1§;
   import §<I§.§'#!§;
   import §]!=§.§;"I§;
   import §`"8§.§4"K§;
   import com.angrybirds.§;!e§;
   import flash.display.MovieClip;
   
   public class §7f§ extends §!"#§
   {
      
      public static const §9t§:int = 50;
      
      protected static const §+"G§:String = "MightyEagleButtonVisible";
      
      protected static const §4!X§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §-!P§:String = "MightyEagleButtonHide";
       
      
      protected var §^!!§:§;"I§;
      
      protected var §4&§:§<1§;
      
      protected var §5"P§:§4!Q§;
      
      protected var §8!O§:String;
      
      protected var §8!?§:§2"8§;
      
      protected var §>"4§:§2"8§;
      
      protected var § try§:§2"8§;
      
      protected var §7!N§:§2"8§;
      
      protected var §7##§:MovieClip;
      
      protected var §<d§:Boolean = false;
      
      public function §7f§(param1:§,m§, param2:§7!m§, param3:§;"I§, param4:§4"K§, param5:§="B§)
      {
         this.§4&§ = new §<1§();
         super(param1,param2,param4,param5);
         this.§^!!§ = param3;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§<d§;
      }
      
      override protected function init() : void
      {
         §=5§.setVisibility(false);
         this.§8!?§ = §2"8§(§=5§.getItemByName("Button_MightyEagle"));
         this.§>"4§ = §2"8§(§=5§.getItemByName("Button_Pause"));
         this.§ try§ = §2"8§(§=5§.getItemByName("Button_Restart"));
         this.§7!N§ = §2"8§(§=5§.getItemByName("Button_FullScreen"));
         this.§7##§ = §=5§.getItemByName("Container_MightyEagle").mClip;
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §=5§.setVisibility(true);
         §=5§.addEventListener(§4!4§.§="n§,this.onUIInteraction);
         this.§4&§.§6!b§(0);
         this.§7"'§(0);
         this.§3!k§();
         this.§8!O§ = §+"G§;
         this.§5"P§ = null;
         this.§<d§ = false;
         if(this.§8!?§)
         {
            this.§8!?§.setVisibility(true);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
         §=5§.setVisibility(false);
         §=5§.removeEventListener(§4!4§.§="n§,this.onUIInteraction);
         this.§>"4§.setComponentVisualState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§ try§.setComponentVisualState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§!"K§();
         if(this.§5"P§ != null)
         {
            this.§5"P§.stop();
            this.§5"P§ = null;
         }
      }
      
      protected function §-;§() : void
      {
         if(§;"@§.singleton.dataModel.userProgress.§0!w§ && §;"@§.singleton.dataModel.userProgress.§%"a§(§ !p§.currentLevel))
         {
         }
      }
      
      override public function update(param1:Number) : void
      {
         this.§7"'§(param1);
         if(this.§8!O§ == §+"G§ && !§;!e§.§<x§.objects.isPigsAlive())
         {
            this.§]#&§();
         }
         if((this.§8!O§ == §+"G§ || this.§8!O§ == §4!X§) && §;!e§.§<x§.slingshot.mSlingShotState == §-R§.§7!w§)
         {
            this.§3q§();
         }
      }
      
      protected function §3!k§() : void
      {
         this.§7##§.scaleY = 1;
         this.§7##§.scaleX = 1;
      }
      
      public function §!"K§() : void
      {
         this.§8!?§.setComponentVisualState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§8!?§.setComponentState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      protected function §]#&§() : void
      {
         this.§8!O§ = §4!X§;
      }
      
      protected function §3q§() : void
      {
         this.§8!?§.setComponentState(§7!Y§.COMPONENT_STATE_DISABLED);
         this.§8!?§.setComponentVisualState(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§5"P§ == null)
         {
            this.§5"P§ = §41§.§-G§.§&#'§(this.§7##§,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§8!O§ = §-!P§;
         this.§5"P§.onComplete = this.§4#0§;
         this.§5"P§.play();
      }
      
      protected function §4#0§() : void
      {
         this.§5"P§ = §41§.§-G§.§&#'§(this.§7##§,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§5"P§.play();
         this.§8!O§ = §-!P§;
      }
      
      protected function §7"'§(param1:Number) : void
      {
         var _loc2_:int = this.§^!!§.getScore(10);
         var _loc3_:int = §]S§.userProgress.getScoreForLevel(§ !p§.currentLevel);
         var _loc4_:int;
         if((_loc4_ = this.§4&§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,this.§4&§.getValue() + param1 * §9t§);
            this.§4&§.§6!b§(_loc4_);
         }
      }
      
      protected function §3"[§() : void
      {
         var _loc1_:int = §;"@§.singleton.dataModel.userProgress.getEagleScoreForLevel(§ !p§.currentLevel);
      }
      
      protected function useMightyEagle() : void
      {
         §;!e§.§<x§.useMightyEagle();
         this.§3"[§();
         this.§<d§ = true;
      }
      
      protected function onUIInteraction(param1:§4!4§) : void
      {
         if(§1!?§)
         {
            return;
         }
         if(param1.§-w§ is §2"8§)
         {
            if(param1.§6$§ == §7!B§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §0"b§.§0#,§();
            }
            else if(param1.§6$§ == §7!B§.LISTENER_EVENT_MOUSE_UP)
            {
               §0"b§.§;!p§();
            }
         }
         switch(param1.§84§)
         {
            case "PAUSE":
               dispatchEvent(new §'#!§(§'#!§.§]"U§));
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new §'#!§(§'#!§.§8!F§,getLevelLoadStateName()));
               break;
            case "MIGHTY_EAGLE":
               if(§;"@§.singleton.dataModel.userProgress.§%"a§(§ !p§.currentLevel))
               {
                  if(§;"@§.singleton.dataModel.userProgress.§0!w§)
                  {
                     this.useMightyEagle();
                  }
               }
               break;
            case "FULLSCREEN_BUTTON":
               §;"@§.singleton.§35§();
         }
      }
   }
}
