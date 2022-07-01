package §#!c§
{
   import §"I§.§?"4§;
   import §#k§.§-!y§;
   import §'<§.§=!o§;
   import §0I§.§;"0§;
   import §9!o§.§9U§;
   import §;!b§.§%>§;
   import §><§.§0!M§;
   import §><§.§4!N§;
   import §?!4§.§^!S§;
   import §?!6§.§5[§;
   import §@#§.§4!O§;
   import §@#§.§9!'§;
   import §[!b§.§'!R§;
   import §[!b§.§]"-§;
   import §[j§.§-?§;
   import §`6§.§-!j§;
   import com.angrybirds.§6U§;
   import flash.display.MovieClip;
   
   public class §^8§ extends §-!y§
   {
      
      public static const §6O§:int = 50;
      
      protected static const §3!2§:String = "MightyEagleButtonVisible";
      
      protected static const §%"+§:String = "MightyEagleButtonPrepareHide";
      
      protected static const § a§:String = "MightyEagleButtonHide";
       
      
      protected var §+!o§:§9U§;
      
      protected var §37§:§-!j§;
      
      protected var §!!#§:§4!N§;
      
      protected var §^_§:String;
      
      protected var §'!H§:§4!O§;
      
      protected var §[M§:§4!O§;
      
      protected var §9!F§:§4!O§;
      
      protected var §#!Y§:§4!O§;
      
      protected var §6o§:MovieClip;
      
      protected var §6!Y§:Boolean = false;
      
      public function §^8§(param1:§9!'§, param2:§=!o§, param3:§9U§, param4:§-?§, param5:§%>§)
      {
         this.§37§ = new §-!j§();
         super(param1,param2,param4,param5);
         this.§+!o§ = param3;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§6!Y§;
      }
      
      override protected function init() : void
      {
         §?5§.setVisibility(false);
         this.§'!H§ = §4!O§(§?5§.getItemByName("Button_MightyEagle"));
         this.§[M§ = §4!O§(§?5§.getItemByName("Button_Pause"));
         this.§9!F§ = §4!O§(§?5§.getItemByName("Button_Restart"));
         this.§#!Y§ = §4!O§(§?5§.getItemByName("Button_FullScreen"));
         this.§6o§ = §?5§.getItemByName("Container_MightyEagle").mClip;
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §?5§.setVisibility(true);
         §?5§.addEventListener(§^!S§.§?!p§,this.onUIInteraction);
         this.§37§.§7!r§(0);
         this.§!"3§(0);
         this.§?!g§();
         this.§^_§ = §3!2§;
         this.§!!#§ = null;
         this.§6!Y§ = false;
         if(this.§'!H§)
         {
            this.§'!H§.setVisibility(true);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
         §?5§.setVisibility(false);
         §?5§.removeEventListener(§^!S§.§?!p§,this.onUIInteraction);
         this.§[M§.setComponentVisualState(§]"-§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§9!F§.setComponentVisualState(§]"-§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§2O§();
         if(this.§!!#§ != null)
         {
            this.§!!#§.stop();
            this.§!!#§ = null;
         }
      }
      
      protected function §3"5§() : void
      {
         if(§-!l§.§"x§.§?"&§.userProgress.§3r§ && §-!l§.§"x§.§?"&§.userProgress.§!d§(§+o§.currentLevel))
         {
         }
      }
      
      override public function update(param1:Number) : void
      {
         this.§!"3§(param1);
         if(this.§^_§ == §3!2§ && !§6U§.§+_§.objects.isPigsAlive())
         {
            this.§-!9§();
         }
         if((this.§^_§ == §3!2§ || this.§^_§ == §%"+§) && §6U§.§+_§.slingshot.mSlingShotState == §;"0§.§8!m§)
         {
            this.§;!5§();
         }
      }
      
      protected function §?!g§() : void
      {
         this.§6o§.scaleY = 1;
         this.§6o§.scaleX = 1;
      }
      
      public function §2O§() : void
      {
         this.§'!H§.setComponentVisualState(§]"-§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§'!H§.setComponentState(§]"-§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      protected function §-!9§() : void
      {
         this.§^_§ = §%"+§;
      }
      
      protected function §;!5§() : void
      {
         this.§'!H§.setComponentState(§]"-§.COMPONENT_STATE_DISABLED);
         this.§'!H§.setComponentVisualState(§]"-§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§!!#§ == null)
         {
            this.§!!#§ = §0!M§.§?!+§.§3d§(this.§6o§,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§^_§ = § a§;
         this.§!!#§.onComplete = this.§48§;
         this.§!!#§.play();
      }
      
      protected function §48§() : void
      {
         this.§!!#§ = §0!M§.§?!+§.§3d§(this.§6o§,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§!!#§.play();
         this.§^_§ = § a§;
      }
      
      protected function §!"3§(param1:Number) : void
      {
         var _loc2_:int = this.§+!o§.getScore(10);
         var _loc3_:int = §^!g§.userProgress.getScoreForLevel(§+o§.currentLevel);
         var _loc4_:int;
         if((_loc4_ = this.§37§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,this.§37§.getValue() + param1 * §6O§);
            this.§37§.§7!r§(_loc4_);
         }
      }
      
      protected function § !J§() : void
      {
         var _loc1_:int = §-!l§.§"x§.§?"&§.userProgress.§#!1§(§+o§.currentLevel);
      }
      
      protected function §;!v§() : void
      {
         §6U§.§+_§.§;!v§();
         this.§ !J§();
         this.§6!Y§ = true;
      }
      
      protected function onUIInteraction(param1:§^!S§) : void
      {
         if(§4!n§)
         {
            return;
         }
         if(param1.§`!]§ is §4!O§)
         {
            if(param1.§7t§ == §'!R§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §?"4§.mouseDown();
            }
            else if(param1.§7t§ == §'!R§.LISTENER_EVENT_MOUSE_UP)
            {
               §?"4§.mouseUp();
            }
         }
         switch(param1.§'"3§)
         {
            case "PAUSE":
               dispatchEvent(new §5[§(§5[§.§1]§));
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new §5[§(§5[§.§%!p§,§[!e§()));
               break;
            case "MIGHTY_EAGLE":
               if(§-!l§.§"x§.§?"&§.userProgress.§!d§(§+o§.currentLevel))
               {
                  if(§-!l§.§"x§.§?"&§.userProgress.§3r§)
                  {
                     this.§;!v§();
                  }
               }
               break;
            case "FULLSCREEN_BUTTON":
               §-!l§.§"x§.§3l§();
         }
      }
   }
}
