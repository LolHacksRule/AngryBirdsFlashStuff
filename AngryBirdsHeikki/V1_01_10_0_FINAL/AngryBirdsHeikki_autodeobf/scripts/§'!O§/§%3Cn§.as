package §'!O§
{
   import §'!N§.§25§;
   import §'!N§.§2O§;
   import §'!N§.§<i§;
   import §'!N§.§[!%§;
   import §-!"§.§=p§;
   import §1m§.§0!%§;
   import §2`§.HighscoreSidebar;
   import §3!b§.§;F§;
   import §3Y§.§4!_§;
   import §5!1§.§"!X§;
   import §5!1§.§&[§;
   import §8P§.§1A§;
   import §9!@§.§-k§;
   import §9I§.§+J§;
   import §9I§.§>!=§;
   import §9b§.§"!S§;
   import §<!!§.§#!`§;
   import §<u§.§;A§;
   import §<u§.§]!Q§;
   import §=! §.§'!4§;
   import §=! §.§9>§;
   import §^!5§.§,4§;
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
   
   public class §<n§ extends §=j§ implements §>!=§
   {
      
      public static const §@o§:String = "LevelSelectionStateHeikki";
      
      private static const §=!R§:Number = 3000;
      
      private static const §-!8§:Number = 1.5;
       
      
      private var §9m§:Number = 3000;
      
      private var §%;§:§;F§ = null;
      
      private const §5y§:Boolean = true;
      
      private var §@!;§:Boolean = false;
      
      private var §5!4§:String = "";
      
      private var §"!A§:Number;
      
      private var §7%§:Boolean = false;
      
      private var §2!B§:Vector.<§&[§> = null;
      
      private var §1v§:Vector.<GlowFilter> = null;
      
      private var §9V§:String = "";
      
      public function §<n§(param1:Boolean = false, param2:String = "LevelSelectionStateHeikki")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §4!N§ = new §-k§(75,0,0,1);
         §]!9§ = new §]!Q§(this);
         §]!9§.init(§;A§.§=I§.Views.View_LevelSelectionHeikki[0]);
         this.§%;§ = new §0!%§(§"!S§.§-!7§,"INGAME_THEME_1",false,3);
         this.§2!B§ = new Vector.<§&[§>(HighscoreSidebar.§&!`§.length,true);
         this.§1v§ = new Vector.<GlowFilter>(HighscoreSidebar.§&!`§.length,true);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§7%§)
         {
            this.§7%§ = true;
            §9>§.§>%§(§9>§.§8W§);
         }
         §"!S§.§-!7§.§3g§(false);
         sHighscoreSidebar.enableHighScoreTab(true);
         if(!this.§5y§)
         {
            §"!S§.§-!7§.§%2§(true);
            §"!S§.§-!7§.§3g§(true);
            §"!S§.§-!7§.clearLevel();
            §"!S§.§8m§(this.§%;§);
            this.§%;§.init();
         }
         §,L§.§[!;§ = §@o§;
         §,L§.§`!]§();
         this.§3&§();
         this.§`!5§("");
         this.§"!A§ = 0;
         (§]!9§.getItemByName("MovieClip_Visor") as §25§).§<v§("Start");
         (§]!9§.getItemByName("MovieClip_Visor") as §25§).§&A§ = true;
         (§]!9§.getItemByName("MovieClip_Visor") as §25§).setVisibility(true);
         new §'!4§((§]!9§.getItemByName("TextField_Unlock_Code") as §[!%§).§^!1§,§,L§.§?!S§,§,L§.§^p§,§,L§.§%I§);
      }
      
      private function §`!5§(param1:String) : void
      {
         if(!§,L§.§8!F§.§"!1§)
         {
            this.§9V§ = ((§]!9§.container.getItemByName("Container_Unlock_PowerUp") as §2O§).getItemByName("TextField_Unlock_Code") as §[!%§).getText();
            ((§]!9§.container.getItemByName("Container_Unlock_PowerUp") as §2O§).getItemByName("TextField_Unlock_Code") as §[!%§).setText(param1);
            if(param1 != "")
            {
               §]!9§.setText(param1,"TextField_Unlock_Code");
               (§]!9§.getItemByName("TextField_Unlock_Code") as §[!%§).§^!1§.setSelection(0,param1.length);
               (§]!9§.getItemByName("TextField_Unlock_Code") as §[!%§).§^!1§.addEventListener(MouseEvent.MOUSE_DOWN,this.§-R§);
            }
         }
         §]!9§.getItemByName("Container_Unlock_PowerUp").setVisibility(!§,L§.§8!F§.§"!1§);
         §]!9§.getItemByName("Container_CodeActivated").setVisibility(§,L§.§8!F§.§"!1§);
         if(this.§5!4§ != "")
         {
            §]!9§.setText("Active until: " + this.§5!4§,"TextField_ActiveUntil");
         }
         else
         {
            §]!9§.setText("","TextField_ActiveUntil");
         }
      }
      
      private function §-R§(param1:MouseEvent) : void
      {
         (§]!9§.getItemByName("TextField_Unlock_Code") as §[!%§).§^!1§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§-R§);
         §]!9§.setText(this.§9V§,"TextField_Unlock_Code");
      }
      
      override public function deActivate() : void
      {
         (§]!9§.getItemByName("TextField_Unlock_Code") as §[!%§).§^!1§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§-R§);
         this.§^t§();
         super.deActivate();
      }
      
      private function §^t§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= this.§1v§.length)
         {
            this.§1v§[_loc1_ - 1] = null;
            _loc2_ = §]!9§.getItemByName("Button_" + _loc1_).mClip;
            _loc2_.TextField_Date.filters = [];
            if(this.§2!B§[_loc1_ - 1] is §&[§)
            {
               (this.§2!B§[_loc1_ - 1] as §&[§).§2=§();
            }
            this.§2!B§[_loc1_ - 1] = null;
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
      
      private function §3&§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.§"!P§.length)
         {
            _loc2_ = §]!9§.getItemByName("Button_" + _loc1_).mClip;
            (_loc2_.TextField_LevelNum.text as TextField).mouseEnabled = false;
            if(§4!_§.§]#§(HighscoreSidebar.§"!P§[_loc1_ - 1]))
            {
               (§]!9§.getItemByName("Button_" + _loc1_) as §<i§).scaleOnMouseOver = true;
               (§]!9§.getItemByName("Button_" + _loc1_) as §<i§).mClip.useHandCursor = true;
               _loc2_.MovieClip_Lock.visible = false;
               _loc2_.MovieClip_Stars.visible = true;
               _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§&!`§[_loc1_ - 1];
               _loc2_.TextField_Date.visible = false;
               _loc3_ = §,L§.§8!F§.§2!a§(HighscoreSidebar.§"!P§[_loc1_ - 1]);
               _loc2_.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
               this.§5!4§ = HighscoreSidebar.§2g§[_loc1_];
            }
            else
            {
               (§]!9§.getItemByName("Button_" + _loc1_) as §<i§).scaleOnMouseOver = false;
               (§]!9§.getItemByName("Button_" + _loc1_) as §<i§).mClip.useHandCursor = false;
               _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§&!`§[_loc1_ - 1];
               _loc2_.TextField_Date.text.text = HighscoreSidebar.§2g§[_loc1_ - 1];
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
         if(_loc2_ != §=p§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§5y§)
         {
            §"!S§.§]O§.update(param1);
         }
         else
         {
            this.§3x§(param1);
            this.§'H§(§]!9§.getItemByName("MovieClip_Visor") as §25§,param1 / 2,true);
         }
         this.§#f§();
         if(mNextState.length > 0)
         {
            return §=p§.STATE_STATUS_COMPLETED;
         }
         return §=p§.STATE_STATUS_RUNNING;
      }
      
      private function §#f§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= 12)
         {
            if(this.§1v§[_loc1_ - 1] != null)
            {
               _loc2_ = §]!9§.getItemByName("Button_" + _loc1_).mClip;
               _loc2_.TextField_Date.filters = [this.§1v§[_loc1_ - 1]];
            }
            _loc1_++;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§1A§) : void
      {
         var _loc6_:String = null;
         super.uiInteractionHandler(param1,param2,param3);
         var _loc5_:int = 0;
         while(_loc5_ < HighscoreSidebar.§"!P§.length)
         {
            if(param2 == "LVL" + (_loc5_ + 1))
            {
               if(§4!_§.§]#§(§,4§.§`Y§(HighscoreSidebar.§"!P§[_loc5_])))
               {
                  §<r§.§>!D§ = StatePlay.§@o§;
                  §,4§.§&O§(§,4§.§`Y§(HighscoreSidebar.§"!P§[_loc5_]));
                  mNextState = StateCutScene.§@o§;
               }
               else
               {
                  this.§;!!§(_loc5_ + 1);
               }
            }
            _loc5_++;
         }
         switch(param2)
         {
            case "UNLOCK_POWER_UP":
               _loc6_ = ((§]!9§.container.getItemByName("Container_Unlock_PowerUp") as §2O§).getItemByName("TextField_Unlock_Code") as §[!%§).getText();
               this.§[!d§(_loc6_);
               break;
            case "CUT_SCENE":
               StateCutScene.§1c§ = true;
               mNextState = StateCutScene.§@o§;
               break;
            case "FACEBOOK_LINK":
               navigateToURL(new URLRequest("http://www.facebook.com/Heikki.Kovalainen.Official.Fan.Page"),"_blank");
         }
      }
      
      private function §;!!§(param1:int) : void
      {
         var _loc2_:MovieClip = §]!9§.getItemByName("Button_" + param1).mClip;
         if(this.§2!B§[param1 - 1] is §&[§)
         {
            if((this.§2!B§[param1 - 1] as §&[§).isCompleted == false)
            {
               return;
            }
         }
         if(this.§1v§[param1 - 1] == null)
         {
            this.§1v§[param1 - 1] = new GlowFilter(16777215,0.6,16,4,0,5,false,false);
         }
         var _loc3_:§&[§ = §"!X§.§ s§.§0<§(§"!X§.§ s§.§%!;§(this.§1v§[param1 - 1],{"strength":4},{"strength":0},§-!8§ / 4,§"!X§.§%!5§),§"!X§.§ s§.§%!;§(this.§1v§[param1 - 1],{"strength":0},{"strength":4},§-!8§ / 4,§"!X§.§=!K§),§"!X§.§ s§.§%!;§(this.§1v§[param1 - 1],{"strength":4},{"strength":0},§-!8§ / 4,§"!X§.§%!5§),§"!X§.§ s§.§%!;§(this.§1v§[param1 - 1],{"strength":0},{"strength":4},§-!8§ / 4,§"!X§.§=!K§));
         _loc3_.play();
         this.§2!B§[param1 - 1] = _loc3_;
      }
      
      private function §3x§(param1:Number) : Boolean
      {
         if((§]!9§.getItemByName("MovieClip_Visor") as §25§).§&A§ == false)
         {
            this.§"!A§ += param1;
            if(this.§"!A§ > this.§9m§)
            {
               this.§"!A§ = 0;
               (§]!9§.getItemByName("MovieClip_Visor") as §25§).§<v§("Start");
               (§]!9§.getItemByName("MovieClip_Visor") as §25§).§&A§ = true;
               (§]!9§.getItemByName("MovieClip_Visor") as §25§).setVisibility(true);
               this.§9m§ = §=!R§ + Math.random() * (§=!R§ * 3);
               return true;
            }
         }
         return false;
      }
      
      private function §'H§(param1:§25§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(param1.§&A§ == true)
         {
            if((_loc4_ = param1.§>Z§(param2)) == "End")
            {
               param1.§&A§ = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function §[!d§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§#!`§ = null;
         if(this.§@!;§ == false && (param1 != "Incorrect code" || param1 != "Code already used"))
         {
            _loc2_ = "code";
            _loc3_ = {
               "playerId":§4!_§.§,t§.§5!D§,
               "code":param1
            };
            _loc4_ = new §#!`§(_loc3_,§,L§.§2;§ + _loc2_,this,§#!`§.§`!1§);
            this.§@!;§ = true;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §+J§.§;!+§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = "";
         this.§@!;§ = false;
         if(_loc2_ && _loc2_.powerUp == true)
         {
            §,L§.§8!F§.§"!1§ = true;
         }
         else if(_loc2_ && _loc2_.error == "CODE_USED")
         {
            _loc3_ = "Code already used";
            this.§`!5§(_loc3_);
         }
         else
         {
            _loc3_ = "Incorrect code";
            this.§`!5§(_loc3_);
         }
      }
      
      public function §3!X§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'z§(param1:IOErrorEvent) : void
      {
         this.§`!5§("Incorrect code");
         this.§@!;§ = false;
      }
   }
}
