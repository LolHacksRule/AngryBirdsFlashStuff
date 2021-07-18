package §;!W§
{
   import §"a§.§6#!§;
   import §+D§.§ #^§;
   import §+D§.§6!D§;
   import §+D§.§^"m§;
   import §,"N§.§@>§;
   import §1!i§.§;7§;
   import §5t§.§`"+§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §<w§.§6#'§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §^#>§.§;x§;
   import §`"%§.§"!4§;
   import com.angrybirds.§,!q§;
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §%,§ extends §7"]§
   {
      
      public static const §#!X§:int = 50;
      
      protected static const §@"6§:String = "MightyEagleButtonVisible";
      
      protected static const §5"T§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §1!>§:String = "MightyEagleButtonHide";
       
      
      protected var § F§:§6#!§;
      
      protected var §0"-§:§;7§;
      
      protected var §%8§:§[#R§;
      
      protected var §@"u§:String;
      
      protected var §9"3§:§^"m§;
      
      protected var §9"n§:§^"m§;
      
      protected var §5#H§:§^"m§;
      
      protected var §[!S§:§^"m§;
      
      protected var §4s§:TextField;
      
      protected var §0#,§:MovieClip;
      
      protected var §+F§:§ #^§;
      
      protected var §,-§:Boolean = false;
      
      protected var §-?§:§6!D§;
      
      public function §%,§(param1:§ #^§, param2:§+"2§, param3:§6#!§, param4:§@>§, param5:§5"H§)
      {
         this.§0"-§ = new §;7§();
         super(param1,param2,param4,param5);
         this.§ F§ = param3;
         this.§-?§ = §=#=§.getItemByName("TextField_CurrentScore") as §6!D§;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§,-§;
      }
      
      override protected function init() : void
      {
         §=#=§.setVisibility(false);
         this.§9"3§ = §^"m§(§=#=§.getItemByName("Button_MightyEagle"));
         this.§9"n§ = §^"m§(§=#=§.getItemByName("Button_Pause"));
         this.§5#H§ = §^"m§(§=#=§.getItemByName("Button_Restart"));
         this.§[!S§ = §^"m§(§=#=§.getItemByName("Button_FullScreen"));
         this.§0#,§ = §=#=§.getItemByName("Container_MightyEagle").mClip;
         this.§+F§ = § #^§(§=#=§.getItemByName("Container_MEScore"));
         this.§4s§ = TextField(§=#=§.getItemByName("Container_MEScore").mClip.text);
      }
      
      override public function dispose() : void
      {
         this.disable(false);
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         §=#=§.setVisibility(true);
         §=#=§.addEventListener(§6#'§.§+!>§,this.onUIInteraction);
         this.§0"-§.§3"Q§(-1);
         this.§0r§(0);
         this.§2"b§();
         this.§@"u§ = §@"6§;
         this.§%8§ = null;
         if(this.§9"3§)
         {
            this.§9"3§.setVisibility(true);
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         super.disable(param1);
         §=#=§.setVisibility(false);
         §=#=§.removeEventListener(§6#'§.§+!>§,this.onUIInteraction);
         this.§9"n§.setComponentVisualState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§5#H§.setComponentVisualState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§`!U§();
         if(this.§%8§ != null)
         {
            this.§%8§.stop();
            this.§%8§ = null;
         }
      }
      
      override public function update(param1:Number) : void
      {
         this.§0r§(param1);
         if(this.§@"u§ == §@"6§ && !§,!q§.§9!,§.objects.isPigsAlive())
         {
            this.§=!f§();
         }
         if((this.§@"u§ == §@"6§ || this.§@"u§ == §5"T§) && §,!q§.§9!,§.slingshot.mSlingShotState == §;x§.§?R§)
         {
            this.§ !E§();
         }
      }
      
      protected function §2"b§() : void
      {
         this.§0#,§.scaleY = 1;
         this.§0#,§.scaleX = 1;
      }
      
      public function §`!U§() : void
      {
         this.§9"3§.setComponentVisualState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§9"3§.setComponentState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      protected function §=!f§() : void
      {
         this.§@"u§ = §5"T§;
      }
      
      protected function § !E§() : void
      {
         this.§9"3§.setComponentState(§1"z§.COMPONENT_STATE_DISABLED);
         this.§9"3§.setComponentVisualState(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§%8§ == null)
         {
            this.§%8§ = §-#C§.§%!E§.§^!H§(this.§0#,§,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§@"u§ = §1!>§;
         this.§%8§.onComplete = this.§3!`§;
         this.§%8§.play();
      }
      
      protected function §3!`§() : void
      {
         this.§%8§ = §-#C§.§%!E§.§^!H§(this.§0#,§,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§%8§.play();
         this.§@"u§ = §1!>§;
      }
      
      protected function §0r§(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc2_:int = this.§ F§.getScore(10);
         var _loc3_:int = this.§0"-§.getValue();
         if(_loc3_ < _loc2_)
         {
            _loc3_ = Math.min(_loc2_,this.§0"-§.getValue() + param1 * §#!X§);
            this.§0"-§.§3"Q§(_loc3_);
            if(this.§-?§)
            {
               this.§-?§.setText(_loc3_.toString());
            }
         }
         if(this.isEagleUsed())
         {
            this.§0#,§.visible = true;
            _loc4_ = §4#;§.singleton.dataModel.userProgress.getEagleScoreForLevel(§+!b§.currentLevel);
            this.§0#,§.updateScore(_loc4_);
         }
         else
         {
            this.§0#,§.visible = false;
         }
      }
      
      protected function §0!$§() : void
      {
         var _loc1_:int = §4#;§.singleton.dataModel.userProgress.getEagleScoreForLevel(§+!b§.currentLevel);
         this.§4s§.text = _loc1_.toString() + "%";
      }
      
      protected function useMightyEagle() : void
      {
         §,!q§.§9!,§.useMightyEagle();
         this.§0!$§();
         this.§,-§ = true;
      }
      
      protected function onUIInteraction(param1:§6#'§) : void
      {
         if(§]"u§)
         {
            return;
         }
         if(param1.§^"r§ is §^"m§)
         {
            if(param1.§@#8§ == §&#X§.LISTENER_EVENT_MOUSE_DOWN)
            {
               §`"+§.§^U§();
            }
            else if(param1.§@#8§ == §&#X§.LISTENER_EVENT_MOUSE_UP)
            {
               §`"+§.§<"o§();
            }
         }
         switch(param1.§=!k§)
         {
            case "PAUSE":
               dispatchEvent(new §"!4§(§"!4§.§!#B§));
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new §"!4§(§"!4§.§@L§,getLevelLoadStateName()));
               break;
            case "MIGHTY_EAGLE":
               if(§4#;§.singleton.dataModel.userProgress.§=!d§(§+!b§.currentLevel))
               {
                  if(§4#;§.singleton.dataModel.userProgress.§0#9§)
                  {
                     this.useMightyEagle();
                  }
               }
               break;
            case "FULLSCREEN_BUTTON":
               §4#;§.singleton.§5"q§();
         }
      }
   }
}
