package §1v§
{
   import §"§.§%§;
   import §&!j§.§5#+§;
   import §+d§.§0#&§;
   import §0"g§.§%b§;
   import §0"g§.§5!%§;
   import §18§.§-!>§;
   import §8!h§.§%"z§;
   import §8!h§.§-V§;
   import §9"U§.§'!;§;
   import §9"`§.§]s§;
   import §=!4§.§8"U§;
   import §=Z§.§0%§;
   import §=Z§.§;g§;
   import §=Z§.§@!8§;
   import §?"6§.§`!^§;
   import com.angrybirds.§<!J§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import §null §.§5#§;
   
   public class §6@§ extends §!!b§
   {
      
      public static const §^!5§:int = 50;
      
      protected static const §4"H§:String = "MightyEagleButtonVisible";
      
      protected static const §0!@§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §<"3§:String = "MightyEagleButtonHide";
       
      
      protected var §3!d§:§`!^§;
      
      protected var §]!"§:§0#&§;
      
      protected var §%"h§:§%b§;
      
      protected var §""o§:String;
      
      protected var §&"W§:§;g§;
      
      protected var §1&§:§;g§;
      
      protected var §-+§:§;g§;
      
      protected var §3#%§:§;g§;
      
      protected var §]#,§:TextField;
      
      protected var §2!-§:MovieClip;
      
      protected var §##"§:§@!8§;
      
      protected var §'#%§:Boolean = false;
      
      protected var § !L§:§0%§;
      
      public function §6@§(param1:§@!8§, param2:§5#§, param3:§`!^§, param4:§'!;§, param5:§5#+§)
      {
         this.§]!"§ = new §0#&§();
         super(param1,param2,param4,param5);
         this.§3!d§ = param3;
         this.§ !L§ = §3!m§.getItemByName("TextField_CurrentScore") as §0%§;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§'#%§;
      }
      
      override protected function init() : void
      {
         §3!m§.setVisibility(false);
         this.§&"W§ = §;g§(§3!m§.getItemByName("Button_MightyEagle"));
         this.§1&§ = §;g§(§3!m§.getItemByName("Button_Pause"));
         this.§-+§ = §;g§(§3!m§.getItemByName("Button_Restart"));
         this.§3#%§ = §;g§(§3!m§.getItemByName("Button_FullScreen"));
         this.§2!-§ = §3!m§.getItemByName("Container_MightyEagle").mClip;
         this.§##"§ = §@!8§(§3!m§.getItemByName("Container_MEScore"));
         this.§]#,§ = TextField(§3!m§.getItemByName("Container_MEScore").mClip.text);
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §3!m§.setVisibility(true);
         §3!m§.addEventListener(§8"U§.§`n§,this.onUIInteraction);
         this.§]!"§.§-[§(-1);
         this.§#e§(0);
         this.§[!c§();
         this.§""o§ = §4"H§;
         this.§%"h§ = null;
         if(this.§&"W§)
         {
            this.§&"W§.setVisibility(true);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
         §3!m§.setVisibility(false);
         §3!m§.removeEventListener(§8"U§.§`n§,this.onUIInteraction);
         this.§1&§.setComponentVisualState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§-+§.setComponentVisualState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§4o§();
         if(this.§%"h§ != null)
         {
            this.§%"h§.stop();
            this.§%"h§ = null;
         }
      }
      
      override public function update(param1:Number) : void
      {
         this.§#e§(param1);
         if(this.§""o§ == §4"H§ && !§<!J§.§=!%§.objects.isPigsAlive())
         {
            this.§8e§();
         }
         if((this.§""o§ == §4"H§ || this.§""o§ == §0!@§) && §<!J§.§=!%§.slingshot.mSlingShotState == §%#7§.§>k§)
         {
            this.§3#§();
         }
      }
      
      protected function §[!c§() : void
      {
         this.§2!-§.scaleY = 1;
         this.§2!-§.scaleX = 1;
      }
      
      public function §4o§() : void
      {
         this.§&"W§.setComponentVisualState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§&"W§.setComponentState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      protected function §8e§() : void
      {
         this.§""o§ = §0!@§;
      }
      
      protected function §3#§() : void
      {
         this.§&"W§.setComponentState(§%"z§.COMPONENT_STATE_DISABLED);
         this.§&"W§.setComponentVisualState(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§%"h§ == null)
         {
            this.§%"h§ = §5!%§.§!6§.§4!M§(this.§2!-§,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§""o§ = §<"3§;
         this.§%"h§.onComplete = this.§4!@§;
         this.§%"h§.play();
      }
      
      protected function §4!@§() : void
      {
         this.§%"h§ = §5!%§.§!6§.§4!M§(this.§2!-§,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§%"h§.play();
         this.§""o§ = §<"3§;
      }
      
      protected function §#e§(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc2_:int = this.§3!d§.getScore(10);
         var _loc3_:int = this.§]!"§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,this.§]!"§.getValue() + param1 * §^!5§);
            this.§]!"§.§-[§(_loc3_);
            if(this.§ !L§)
            {
               this.§ !L§.setText(_loc3_.toString());
            }
         }
         if(this.isEagleUsed())
         {
            this.§2!-§.visible = true;
            _loc4_ = §4"#§.singleton.dataModel.userProgress.getEagleScoreForLevel(§'""§.currentLevel);
            this.§2!-§.updateScore(_loc4_);
         }
         else
         {
            this.§2!-§.visible = false;
         }
      }
      
      protected function §&"D§() : void
      {
         var _loc1_:int = §4"#§.singleton.dataModel.userProgress.getEagleScoreForLevel(§'""§.currentLevel);
         this.§]#,§.text = _loc1_.toString() + "%";
      }
      
      protected function useMightyEagle() : void
      {
         §<!J§.§=!%§.useMightyEagle();
         this.§&"D§();
         this.§'#%§ = true;
      }
      
      protected function onUIInteraction(param1:§8"U§) : void
      {
         if(§2@§)
         {
            return;
         }
         if(param1.§7!k§ is §;g§)
         {
            if(param1.§;#6§ == §-V§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §]s§.§9!j§();
            }
            else if(param1.§;#6§ == §-V§.LISTENER_EVENT_MOUSE_UP)
            {
               §]s§.§ ! §();
            }
         }
         switch(param1.§5!u§)
         {
            case "PAUSE":
               dispatchEvent(new §-!>§(§-!>§.§@! §));
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new §-!>§(§-!>§.§5!w§,getLevelLoadStateName()));
               break;
            case "MIGHTY_EAGLE":
               if(§4"#§.singleton.dataModel.userProgress.§9t§(§'""§.currentLevel))
               {
                  if(§4"#§.singleton.dataModel.userProgress.§0#2§)
                  {
                     this.useMightyEagle();
                  }
               }
               break;
            case "FULLSCREEN_BUTTON":
               §4"#§.singleton.§^L§();
         }
      }
   }
}
