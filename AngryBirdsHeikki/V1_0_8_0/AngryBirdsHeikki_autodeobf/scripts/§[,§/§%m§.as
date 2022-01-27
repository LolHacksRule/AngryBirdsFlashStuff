package §[,§
{
   import §!a§.§&6§;
   import §#!+§.§"$§;
   import §#!+§.§?V§;
   import §#!T§.§&2§;
   import §-!V§.§'J§;
   import §-!V§.§+!T§;
   import §-!V§.§+V§;
   import §-!V§.§@§;
   import §0!&§.§@=§;
   import §0;§.§]U§;
   import §1!J§.§6Y§;
   import §1!J§.§>!Q§;
   import §2!D§.§&9§;
   import §2!D§.§'!7§;
   import §3!^§.§<!O§;
   import §3S§.§<p§;
   import §5!5§.§1!4§;
   import §7b§.§"! §;
   import §9!?§.§!2§;
   import §9!?§.§#!=§;
   import §;!0§.§4!I§;
   import §`V§.HighscoreSidebar;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.filters.GlowFilter;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   
   public class §%m§ extends §<!Y§ implements §>!Q§
   {
      
      public static const §+Z§:String = "LevelSelectionStateHeikki";
      
      private static const §;!O§:Number = 3000;
      
      private static const §0![§:Number = 1.5;
       
      
      private var § $§:Number = 3000;
      
      private var §8d§:§"! § = null;
      
      private const §,^§:Boolean = true;
      
      private var §=!F§:Boolean = false;
      
      private var §#!R§:String = "";
      
      private var §0!R§:Number;
      
      private var § X§:Boolean = false;
      
      private var §#f§:Vector.<§&9§> = null;
      
      private var §4Q§:Vector.<GlowFilter> = null;
      
      private var §"'§:String = "";
      
      public function §%m§(param1:Boolean = false, param2:String = "LevelSelectionStateHeikki")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §%L§ = new §1!4§(75,0,0,1);
         §[L§ = new §"$§(this);
         §[L§.init(§?V§.§-2§.Views.View_LevelSelectionHeikki[0]);
         this.§8d§ = new §<p§(§&2§.§4!1§,"INGAME_THEME_1",false,3);
         this.§#f§ = new Vector.<§&9§>(HighscoreSidebar.§1r§.length,true);
         this.§4Q§ = new Vector.<GlowFilter>(HighscoreSidebar.§1r§.length,true);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§ X§)
         {
            this.§ X§ = true;
            §#!=§.§^!4§(§#!=§.§%9§);
         }
         §&2§.§4!1§.§-H§(false);
         sHighscoreSidebar.enableHighScoreTab(true);
         if(!this.§,^§)
         {
            §&2§.§4!1§.§5h§(true);
            §&2§.§4!1§.§-H§(true);
            §&2§.§4!1§.clearLevel();
            §&2§.§9![§(this.§8d§);
            this.§8d§.init();
         }
         §2!S§.§1!b§ = §+Z§;
         §2!S§.§3!E§();
         this.§`-§();
         this.§+!=§("");
         this.§0!R§ = 0;
         (§[L§.getItemByName("MovieClip_Visor") as §+!T§).§"G§("Start");
         (§[L§.getItemByName("MovieClip_Visor") as §+!T§).§6!W§ = true;
         (§[L§.getItemByName("MovieClip_Visor") as §+!T§).setVisibility(true);
         new §!2§((§[L§.getItemByName("TextField_Unlock_Code") as §+V§).§3x§,§2!S§.§ c§,§2!S§.§=c§,§2!S§.§0]§);
      }
      
      private function §+!=§(param1:String) : void
      {
         if(!§2!S§.§<P§.§'Q§)
         {
            this.§"'§ = ((§[L§.container.getItemByName("Container_Unlock_PowerUp") as §@§).getItemByName("TextField_Unlock_Code") as §+V§).getText();
            ((§[L§.container.getItemByName("Container_Unlock_PowerUp") as §@§).getItemByName("TextField_Unlock_Code") as §+V§).setText(param1);
            if(param1 != "")
            {
               §[L§.setText(param1,"TextField_Unlock_Code");
               (§[L§.getItemByName("TextField_Unlock_Code") as §+V§).§3x§.setSelection(0,param1.length);
               (§[L§.getItemByName("TextField_Unlock_Code") as §+V§).§3x§.addEventListener(MouseEvent.MOUSE_DOWN,this.§0D§);
            }
         }
         §[L§.getItemByName("Container_Unlock_PowerUp").setVisibility(!§2!S§.§<P§.§'Q§);
         §[L§.getItemByName("Container_CodeActivated").setVisibility(§2!S§.§<P§.§'Q§);
         if(this.§#!R§ != "")
         {
            §[L§.setText("Active until: " + this.§#!R§,"TextField_ActiveUntil");
         }
         else
         {
            §[L§.setText("","TextField_ActiveUntil");
         }
      }
      
      private function §0D§(param1:MouseEvent) : void
      {
         (§[L§.getItemByName("TextField_Unlock_Code") as §+V§).§3x§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§0D§);
         §[L§.setText(this.§"'§,"TextField_Unlock_Code");
      }
      
      override public function deActivate() : void
      {
         (§[L§.getItemByName("TextField_Unlock_Code") as §+V§).§3x§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§0D§);
         this.§!C§();
         super.deActivate();
      }
      
      private function §!C§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= this.§4Q§.length)
         {
            this.§4Q§[_loc1_ - 1] = null;
            _loc2_ = §[L§.getItemByName("Button_" + _loc1_).mClip;
            _loc2_.TextField_Date.filters = [];
            if(this.§#f§[_loc1_ - 1] is §&9§)
            {
               (this.§#f§[_loc1_ - 1] as §&9§).§+!c§();
            }
            this.§#f§[_loc1_ - 1] = null;
            _loc1_++;
         }
      }
      
      override protected function showCreditsButton() : Boolean
      {
         return true;
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.changeState(sHighscoreSidebar.currentState);
      }
      
      private function §`-§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.§#R§.length)
         {
            _loc2_ = §[L§.getItemByName("Button_" + _loc1_).mClip;
            (_loc2_.TextField_LevelNum.text as TextField).mouseEnabled = false;
            if(§]U§.§&g§(HighscoreSidebar.§#R§[_loc1_ - 1]))
            {
               (§[L§.getItemByName("Button_" + _loc1_) as §'J§).scaleOnMouseOver = true;
               (§[L§.getItemByName("Button_" + _loc1_) as §'J§).mClip.useHandCursor = true;
               _loc2_.MovieClip_Lock.visible = false;
               _loc2_.MovieClip_Stars.visible = true;
               _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§1r§[_loc1_ - 1];
               _loc2_.TextField_Date.visible = false;
               _loc3_ = §2!S§.§<P§.§#!L§(HighscoreSidebar.§#R§[_loc1_ - 1]);
               _loc2_.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
               this.§#!R§ = HighscoreSidebar.§<M§[_loc1_];
            }
            else
            {
               (§[L§.getItemByName("Button_" + _loc1_) as §'J§).scaleOnMouseOver = false;
               (§[L§.getItemByName("Button_" + _loc1_) as §'J§).mClip.useHandCursor = false;
               _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§1r§[_loc1_ - 1];
               _loc2_.TextField_Date.text.text = HighscoreSidebar.§<M§[_loc1_ - 1];
               _loc2_.TextField_Date.visible = true;
               _loc2_.MovieClip_Lock.visible = true;
               _loc2_.MovieClip_Stars.visible = false;
            }
            _loc1_++;
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§,^§)
         {
            §&2§.§7=§.update(param1);
         }
         else
         {
            this.§9a§(param1);
            this.§@!F§(§[L§.getItemByName("MovieClip_Visor") as §+!T§,param1 / 2,true);
         }
         this.§9!S§();
         if(mNextState.length > 0)
         {
            return §&6§.STATE_STATUS_COMPLETED;
         }
         return §&6§.STATE_STATUS_RUNNING;
      }
      
      private function §9!S§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= 12)
         {
            if(this.§4Q§[_loc1_ - 1] != null)
            {
               _loc2_ = §[L§.getItemByName("Button_" + _loc1_).mClip;
               _loc2_.TextField_Date.filters = [this.§4Q§[_loc1_ - 1]];
            }
            _loc1_++;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§4!I§) : void
      {
         var _loc6_:String = null;
         super.uiInteractionHandler(param1,param2,param3);
         var _loc5_:int = 0;
         while(_loc5_ < HighscoreSidebar.§#R§.length)
         {
            if(param2 == "LVL" + (_loc5_ + 1))
            {
               if(§]U§.§&g§(§@=§.§%^§(HighscoreSidebar.§#R§[_loc5_])))
               {
                  §4!M§.§!`§ = StatePlay.§+Z§;
                  §@=§.§-!Q§(§@=§.§%^§(HighscoreSidebar.§#R§[_loc5_]));
                  mNextState = StateCutScene.§+Z§;
               }
               else
               {
                  this.§;!Q§(_loc5_ + 1);
               }
            }
            _loc5_++;
         }
         switch(param2)
         {
            case "UNLOCK_POWER_UP":
               _loc6_ = ((§[L§.container.getItemByName("Container_Unlock_PowerUp") as §@§).getItemByName("TextField_Unlock_Code") as §+V§).getText();
               this.§ !d§(_loc6_);
               break;
            case "CUT_SCENE":
               StateCutScene.§<4§ = true;
               mNextState = StateCutScene.§+Z§;
               break;
            case "FACEBOOK_LINK":
               navigateToURL(new URLRequest("http://www.facebook.com/Heikki.Kovalainen.Official.Fan.Page"),"_blank");
         }
      }
      
      private function §;!Q§(param1:int) : void
      {
         var _loc2_:MovieClip = §[L§.getItemByName("Button_" + param1).mClip;
         if(this.§#f§[param1 - 1] is §&9§)
         {
            if((this.§#f§[param1 - 1] as §&9§).isCompleted == false)
            {
               return;
            }
         }
         if(this.§4Q§[param1 - 1] == null)
         {
            this.§4Q§[param1 - 1] = new GlowFilter(16777215,0.6,16,4,0,5,false,false);
         }
         var _loc3_:§&9§ = §'!7§.§=,§.§,!U§(§'!7§.§=,§.§5Z§(this.§4Q§[param1 - 1],{"strength":4},{"strength":0},§0![§ / 4,§'!7§.§1!N§),§'!7§.§=,§.§5Z§(this.§4Q§[param1 - 1],{"strength":0},{"strength":4},§0![§ / 4,§'!7§.§,!S§),§'!7§.§=,§.§5Z§(this.§4Q§[param1 - 1],{"strength":4},{"strength":0},§0![§ / 4,§'!7§.§1!N§),§'!7§.§=,§.§5Z§(this.§4Q§[param1 - 1],{"strength":0},{"strength":4},§0![§ / 4,§'!7§.§,!S§));
         _loc3_.play();
         this.§#f§[param1 - 1] = _loc3_;
      }
      
      private function §9a§(param1:Number) : Boolean
      {
         if((§[L§.getItemByName("MovieClip_Visor") as §+!T§).§6!W§ == false)
         {
            this.§0!R§ += param1;
            if(this.§0!R§ > this.§ $§)
            {
               this.§0!R§ = 0;
               (§[L§.getItemByName("MovieClip_Visor") as §+!T§).§"G§("Start");
               (§[L§.getItemByName("MovieClip_Visor") as §+!T§).§6!W§ = true;
               (§[L§.getItemByName("MovieClip_Visor") as §+!T§).setVisibility(true);
               this.§ $§ = §;!O§ + Math.random() * (§;!O§ * 3);
               return true;
            }
         }
         return false;
      }
      
      private function §@!F§(param1:§+!T§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(param1.§6!W§ == true)
         {
            if((_loc4_ = param1.§=!H§(param2)) == "End")
            {
               param1.§6!W§ = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function § !d§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§<!O§ = null;
         if(this.§=!F§ == false && (param1 != "Incorrect code" || param1 != "Code already used"))
         {
            _loc2_ = "code";
            _loc3_ = {
               "playerId":§]U§.§-v§.§"!S§,
               "code":param1
            };
            _loc4_ = new §<!O§(_loc3_,§2!S§.§1,§ + _loc2_,this,§<!O§.§#e§);
            this.§=!F§ = true;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §6Y§.static((param1.currentTarget as URLLoader).data);
         var _loc3_:String = "";
         this.§=!F§ = false;
         if(_loc2_ && _loc2_.powerUp == true)
         {
            §2!S§.§<P§.§'Q§ = true;
         }
         else if(_loc2_ && _loc2_.error == "CODE_USED")
         {
            _loc3_ = "Code already used";
            this.§+!=§(_loc3_);
         }
         else
         {
            _loc3_ = "Incorrect code";
            this.§+!=§(_loc3_);
         }
      }
      
      public function §1`§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §"W§(param1:IOErrorEvent) : void
      {
         this.§+!=§("Incorrect code");
         this.§=!F§ = false;
      }
   }
}
