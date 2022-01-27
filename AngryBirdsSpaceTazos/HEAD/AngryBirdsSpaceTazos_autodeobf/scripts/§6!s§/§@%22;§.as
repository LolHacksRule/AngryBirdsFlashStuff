package §6!s§
{
   import §#!O§.§"!t§;
   import §#!O§.§,4§;
   import §#R§.§%!S§;
   import §%!P§.§@o§;
   import §%"%§.§2Z§;
   import §&f§.§<!0§;
   import §1z§.§^!@§;
   import §3"#§.§0k§;
   import §4u§.§1!C§;
   import §7!6§.§@Y§;
   import §7!6§.§^l§;
   import §="<§.§,"$§;
   import §="<§.§87§;
   import §>"2§.§8k§;
   import §["9§.§`"=§;
   import §`!w§.§&!Q§;
   import §const§.§-!u§;
   import flash.display.MovieClip;
   
   public class §@";§ extends §-!u§
   {
      
      public static const §=e§:int = 50;
      
      protected static const §?"F§:String = "MightyEagleButtonVisible";
      
      protected static const §4"'§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §>[§:String = "MightyEagleButtonHide";
       
      
      protected var §2`§:§<!0§;
      
      protected var §^!v§:§1!C§;
      
      protected var §%"5§:§,4§;
      
      protected var §1<§:String;
      
      protected var §6",§:§87§;
      
      protected var §[!m§:§87§;
      
      protected var §&;§:§87§;
      
      protected var § !<§:§87§;
      
      protected var §9!5§:MovieClip;
      
      protected var §#l§:Boolean = false;
      
      public function §@";§(param1:§,"$§, param2:§^!@§, param3:§<!0§, param4:§@o§, param5:§2Z§)
      {
         this.§^!v§ = new §1!C§();
         super(param1,param2,param4,param5);
         this.§2`§ = param3;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§#l§;
      }
      
      override protected function init() : void
      {
         §-!O§.setVisibility(false);
         this.§6",§ = §87§(§-!O§.getItemByName("Button_MightyEagle"));
         this.§[!m§ = §87§(§-!O§.getItemByName("Button_Pause"));
         this.§&;§ = §87§(§-!O§.getItemByName("Button_Restart"));
         this.§ !<§ = §87§(§-!O§.getItemByName("Button_FullScreen"));
         this.§9!5§ = §-!O§.getItemByName("Container_MightyEagle").mClip;
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §-!O§.setVisibility(true);
         §-!O§.addEventListener(§%!S§.§0!W§,this.onUIInteraction);
         this.§^!v§.§;"6§(0);
         this.§&!t§(0);
         this.§;!n§();
         this.§1<§ = §?"F§;
         this.§%"5§ = null;
         this.§#l§ = false;
         if(this.§6",§)
         {
            this.§6",§.setVisibility(true);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
         §-!O§.setVisibility(false);
         §-!O§.removeEventListener(§%!S§.§0!W§,this.onUIInteraction);
         this.§[!m§.setComponentVisualState(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§&;§.setComponentVisualState(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§6"'§();
         if(this.§%"5§ != null)
         {
            this.§%"5§.stop();
            this.§%"5§ = null;
         }
      }
      
      protected function §&!!§() : void
      {
         if(§2&§.§6o§.§2c§.userProgress.§-!0§ && §2&§.§6o§.§2c§.userProgress.§?6§(§#"=§.currentLevel))
         {
         }
      }
      
      override public function update(param1:Number) : void
      {
         this.§&!t§(param1);
         if(this.§1<§ == §?"F§ && !§8k§.§;!]§.objects.isPigsAlive())
         {
            this.§&!&§();
         }
         if((this.§1<§ == §?"F§ || this.§1<§ == §4"'§) && §8k§.§;!]§.slingshot.mSlingShotState == §0k§.§3!y§)
         {
            this.§3H§();
         }
      }
      
      protected function §;!n§() : void
      {
         this.§9!5§.scaleY = 1;
         this.§9!5§.scaleX = 1;
      }
      
      public function §6"'§() : void
      {
         this.§6",§.setComponentVisualState(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§6",§.setComponentState(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      protected function §&!&§() : void
      {
         this.§1<§ = §4"'§;
      }
      
      protected function §3H§() : void
      {
         this.§6",§.setComponentState(§^l§.COMPONENT_STATE_DISABLED);
         this.§6",§.setComponentVisualState(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§%"5§ == null)
         {
            this.§%"5§ = §"!t§.§3R§.§2m§(this.§9!5§,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§1<§ = §>[§;
         this.§%"5§.onComplete = this.§2"§;
         this.§%"5§.play();
      }
      
      protected function §2"§() : void
      {
         this.§%"5§ = §"!t§.§3R§.§2m§(this.§9!5§,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§%"5§.play();
         this.§1<§ = §>[§;
      }
      
      protected function §&!t§(param1:Number) : void
      {
         var _loc2_:int = this.§2`§.getScore(10);
         var _loc3_:int = §7W§.userProgress.getScoreForLevel(§#"=§.currentLevel);
         var _loc4_:int;
         if((_loc4_ = this.§^!v§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,this.§^!v§.getValue() + param1 * §=e§);
            this.§^!v§.§;"6§(_loc4_);
         }
      }
      
      protected function §#""§() : void
      {
         var _loc1_:int = §2&§.§6o§.§2c§.userProgress.§`!P§(§#"=§.currentLevel);
      }
      
      protected function §2!c§() : void
      {
         §8k§.§;!]§.§2!c§();
         this.§#""§();
         this.§#l§ = true;
      }
      
      protected function onUIInteraction(param1:§%!S§) : void
      {
         if(§="3§)
         {
            return;
         }
         if(param1.§^"G§ is §87§)
         {
            if(param1.§!"E§ == §@Y§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §&!Q§.§!""§();
            }
            else if(param1.§!"E§ == §@Y§.LISTENER_EVENT_MOUSE_UP)
            {
               §&!Q§.§2'§();
            }
         }
         switch(param1.§[!U§)
         {
            case "PAUSE":
               dispatchEvent(new §`"=§(§`"=§.§1$§));
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new §`"=§(§`"=§.§`w§,§ 4§()));
               break;
            case "MIGHTY_EAGLE":
               if(§2&§.§6o§.§2c§.userProgress.§?6§(§#"=§.currentLevel))
               {
                  if(§2&§.§6o§.§2c§.userProgress.§-!0§)
                  {
                     this.§2!c§();
                  }
               }
               break;
            case "FULLSCREEN_BUTTON":
               §2&§.§6o§.§>!9§();
         }
      }
   }
}
