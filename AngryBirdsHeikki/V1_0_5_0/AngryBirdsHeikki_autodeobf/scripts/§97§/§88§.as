package §97§
{
   import § !Y§.§7§;
   import § !Y§.§if§;
   import §"!G§.§#!'§;
   import §1!a§.§3U§;
   import §1!a§.§7!I§;
   import §2H§.§>!^§;
   import §3-§.§1L§;
   import §93§.§^!H§;
   import §=!S§.§!!Z§;
   import §=!S§.§;7§;
   import §=!c§.§#=§;
   import §=!c§.§-A§;
   import §=!c§.§=>§;
   import §=!c§.§^"§;
   import §=X§.§7!4§;
   import §>!_§.§2V§;
   import §>!_§.§9!+§;
   import §?!"§.§^!`§;
   import §@!Y§.§-I§;
   import §@=§.§'3§;
   import §[!C§.HighscoreSidebar;
   import §^i§.§;§;
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
   
   public class §88§ extends §62§ implements §7!I§
   {
      
      public static const §4l§:String = "LevelSelectionStateHeikki";
      
      private static const § else§:Number = 3000;
      
      private static const §,c§:Number = 1.5;
       
      
      private var §for §:Number = 3000;
      
      private var §9u§:§#!'§ = null;
      
      private const §'Z§:Boolean = true;
      
      private var §else §:Boolean = false;
      
      private var §2s§:String = "";
      
      private var §3j§:Number;
      
      private var §,!a§:Boolean = false;
      
      private var §;!L§:Vector.<§2V§> = null;
      
      private var §9_§:Vector.<GlowFilter> = null;
      
      private var §[j§:String = "";
      
      public function §88§(param1:Boolean = false, param2:String = "LevelSelectionStateHeikki")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §>l§ = new §'3§(75,0,0,1);
         §?P§ = new §if§(this);
         §?P§.init(§7§.§5!@§.Views.View_LevelSelectionHeikki[0]);
         this.§9u§ = new §-I§(§1L§.§"f§,"INGAME_THEME_1",false,3);
         this.§;!L§ = new Vector.<§2V§>(HighscoreSidebar.§""§.length,true);
         this.§9_§ = new Vector.<GlowFilter>(HighscoreSidebar.§""§.length,true);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§,!a§)
         {
            this.§,!a§ = true;
            §!!Z§.§1!?§(§!!Z§.§>!2§);
         }
         §1L§.§"f§.§`f§(false);
         sHighscoreSidebar.enableHighScoreTab(true);
         if(!this.§'Z§)
         {
            §1L§.§"f§.§2!A§(true);
            §1L§.§"f§.§`f§(true);
            §1L§.§"f§.clearLevel();
            §1L§.§=c§(this.§9u§);
            this.§9u§.init();
         }
         §,-§.§,O§ = §4l§;
         §,-§.§"!,§();
         this.§7;§();
         this.§[!!§("");
         this.§3j§ = 0;
         (§?P§.getItemByName("MovieClip_Visor") as §^"§).§]S§("Start");
         (§?P§.getItemByName("MovieClip_Visor") as §^"§).§;!V§ = true;
         (§?P§.getItemByName("MovieClip_Visor") as §^"§).setVisibility(true);
         new §;7§((§?P§.getItemByName("TextField_Unlock_Code") as §#=§).§5!R§,§,-§.§[!@§,§,-§.§%Q§,§,-§.§[p§);
      }
      
      private function §[!!§(param1:String) : void
      {
         if(!§,-§.§?+§.§"0§)
         {
            this.§[j§ = ((§?P§.container.getItemByName("Container_Unlock_PowerUp") as §=>§).getItemByName("TextField_Unlock_Code") as §#=§).getText();
            ((§?P§.container.getItemByName("Container_Unlock_PowerUp") as §=>§).getItemByName("TextField_Unlock_Code") as §#=§).setText(param1);
            if(param1 != "")
            {
               §?P§.setText(param1,"TextField_Unlock_Code");
               (§?P§.getItemByName("TextField_Unlock_Code") as §#=§).§5!R§.setSelection(0,param1.length);
               (§?P§.getItemByName("TextField_Unlock_Code") as §#=§).§5!R§.addEventListener(MouseEvent.MOUSE_DOWN,this.§!!W§);
            }
         }
         §?P§.getItemByName("Container_Unlock_PowerUp").setVisibility(!§,-§.§?+§.§"0§);
         §?P§.getItemByName("Container_CodeActivated").setVisibility(§,-§.§?+§.§"0§);
         if(this.§2s§ != "")
         {
            §?P§.setText("Active until: " + this.§2s§,"TextField_ActiveUntil");
         }
         else
         {
            §?P§.setText("","TextField_ActiveUntil");
         }
      }
      
      private function §!!W§(param1:MouseEvent) : void
      {
         (§?P§.getItemByName("TextField_Unlock_Code") as §#=§).§5!R§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§!!W§);
         §?P§.setText(this.§[j§,"TextField_Unlock_Code");
      }
      
      override public function deActivate() : void
      {
         (§?P§.getItemByName("TextField_Unlock_Code") as §#=§).§5!R§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§!!W§);
         this.§+!]§();
         super.deActivate();
      }
      
      private function §+!]§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= this.§9_§.length)
         {
            this.§9_§[_loc1_ - 1] = null;
            _loc2_ = §?P§.getItemByName("Button_" + _loc1_).mClip;
            _loc2_.TextField_Date.filters = [];
            if(this.§;!L§[_loc1_ - 1] is §2V§)
            {
               (this.§;!L§[_loc1_ - 1] as §2V§).§"!N§();
            }
            this.§;!L§[_loc1_ - 1] = null;
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
      
      private function §7;§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.§=!J§.length)
         {
            _loc2_ = §?P§.getItemByName("Button_" + _loc1_).mClip;
            (_loc2_.TextField_LevelNum.text as TextField).mouseEnabled = false;
            if(§^!`§.§=!R§(HighscoreSidebar.§=!J§[_loc1_ - 1]))
            {
               (§?P§.getItemByName("Button_" + _loc1_) as §-A§).scaleOnMouseOver = true;
               (§?P§.getItemByName("Button_" + _loc1_) as §-A§).mClip.useHandCursor = true;
               _loc2_.MovieClip_Lock.visible = false;
               _loc2_.MovieClip_Stars.visible = true;
               _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§""§[_loc1_ - 1];
               _loc2_.TextField_Date.visible = false;
               _loc3_ = §,-§.§?+§.§[I§(HighscoreSidebar.§=!J§[_loc1_ - 1]);
               _loc2_.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
               this.§2s§ = HighscoreSidebar.§2k§[_loc1_];
            }
            else
            {
               (§?P§.getItemByName("Button_" + _loc1_) as §-A§).scaleOnMouseOver = false;
               (§?P§.getItemByName("Button_" + _loc1_) as §-A§).mClip.useHandCursor = false;
               _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§""§[_loc1_ - 1];
               _loc2_.TextField_Date.text.text = HighscoreSidebar.§2k§[_loc1_ - 1];
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
         if(_loc2_ != §>!^§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§'Z§)
         {
            §1L§.§[>§.update(param1);
         }
         else
         {
            this.§?!9§(param1);
            this.§"!§(§?P§.getItemByName("MovieClip_Visor") as §^"§,param1 / 2,true);
         }
         this.§"s§();
         if(mNextState.length > 0)
         {
            return §>!^§.STATE_STATUS_COMPLETED;
         }
         return §>!^§.STATE_STATUS_RUNNING;
      }
      
      private function §"s§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= 12)
         {
            if(this.§9_§[_loc1_ - 1] != null)
            {
               _loc2_ = §?P§.getItemByName("Button_" + _loc1_).mClip;
               _loc2_.TextField_Date.filters = [this.§9_§[_loc1_ - 1]];
            }
            _loc1_++;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!H§) : void
      {
         var _loc6_:String = null;
         super.uiInteractionHandler(param1,param2,param3);
         var _loc5_:int = 0;
         while(_loc5_ < HighscoreSidebar.§=!J§.length)
         {
            if(param2 == "LVL" + (_loc5_ + 1))
            {
               if(§^!`§.§=!R§(§7!4§.§!!"§(HighscoreSidebar.§=!J§[_loc5_])))
               {
                  §]!X§.§]!?§ = StatePlay.§4l§;
                  §7!4§.§^!>§(§7!4§.§!!"§(HighscoreSidebar.§=!J§[_loc5_]));
                  mNextState = StateCutScene.§4l§;
               }
               else
               {
                  this.§@!b§(_loc5_ + 1);
               }
            }
            _loc5_++;
         }
         switch(param2)
         {
            case "UNLOCK_POWER_UP":
               _loc6_ = ((§?P§.container.getItemByName("Container_Unlock_PowerUp") as §=>§).getItemByName("TextField_Unlock_Code") as §#=§).getText();
               this.§2!3§(_loc6_);
               break;
            case "CUT_SCENE":
               StateCutScene.§[!6§ = true;
               mNextState = StateCutScene.§4l§;
               break;
            case "FACEBOOK_LINK":
               navigateToURL(new URLRequest("http://www.facebook.com/Heikki.Kovalainen.Official.Fan.Page"),"_blank");
         }
      }
      
      private function §@!b§(param1:int) : void
      {
         var _loc2_:MovieClip = §?P§.getItemByName("Button_" + param1).mClip;
         if(this.§;!L§[param1 - 1] is §2V§)
         {
            if((this.§;!L§[param1 - 1] as §2V§).isCompleted == false)
            {
               return;
            }
         }
         if(this.§9_§[param1 - 1] == null)
         {
            this.§9_§[param1 - 1] = new GlowFilter(16777215,0.6,16,4,0,5,false,false);
         }
         var _loc3_:§2V§ = §9!+§.§;!F§.§9v§(§9!+§.§;!F§.§`!'§(this.§9_§[param1 - 1],{"strength":4},{"strength":0},§,c§ / 4,§9!+§.§4!J§),§9!+§.§;!F§.§`!'§(this.§9_§[param1 - 1],{"strength":0},{"strength":4},§,c§ / 4,§9!+§.§4=§),§9!+§.§;!F§.§`!'§(this.§9_§[param1 - 1],{"strength":4},{"strength":0},§,c§ / 4,§9!+§.§4!J§),§9!+§.§;!F§.§`!'§(this.§9_§[param1 - 1],{"strength":0},{"strength":4},§,c§ / 4,§9!+§.§4=§));
         _loc3_.play();
         this.§;!L§[param1 - 1] = _loc3_;
      }
      
      private function §?!9§(param1:Number) : Boolean
      {
         if((§?P§.getItemByName("MovieClip_Visor") as §^"§).§;!V§ == false)
         {
            this.§3j§ += param1;
            if(this.§3j§ > this.§for §)
            {
               this.§3j§ = 0;
               (§?P§.getItemByName("MovieClip_Visor") as §^"§).§]S§("Start");
               (§?P§.getItemByName("MovieClip_Visor") as §^"§).§;!V§ = true;
               (§?P§.getItemByName("MovieClip_Visor") as §^"§).setVisibility(true);
               this.§for § = § else§ + Math.random() * (§ else§ * 3);
               return true;
            }
         }
         return false;
      }
      
      private function §"!§(param1:§^"§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(param1.§;!V§ == true)
         {
            if((_loc4_ = param1.§2_§(param2)) == "End")
            {
               param1.§;!V§ = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function §2!3§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§;§ = null;
         if(this.§else § == false && (param1 != "Incorrect code" || param1 != "Code already used"))
         {
            _loc2_ = "code";
            _loc3_ = {
               "playerId":§^!`§.§[K§.§%X§,
               "code":param1
            };
            _loc4_ = new §;§(_loc3_,§,-§.§ 6§ + _loc2_,this,§;§.§@<§);
            this.§else § = true;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §3U§.§'o§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = "";
         this.§else § = false;
         if(_loc2_ && _loc2_.powerUp == true)
         {
            §,-§.§?+§.§"0§ = true;
         }
         else if(_loc2_ && _loc2_.error == "CODE_USED")
         {
            _loc3_ = "Code already used";
            this.§[!!§(_loc3_);
         }
         else
         {
            _loc3_ = "Incorrect code";
            this.§[!!§(_loc3_);
         }
      }
      
      public function §4@§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §<!3§(param1:IOErrorEvent) : void
      {
         this.§[!!§("Incorrect code");
         this.§else § = false;
      }
   }
}
