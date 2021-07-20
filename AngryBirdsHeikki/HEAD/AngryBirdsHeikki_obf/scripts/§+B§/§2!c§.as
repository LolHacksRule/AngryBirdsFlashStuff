package §+B§
{
   import §#%§.§70§;
   import §+!M§.§7!0§;
   import §,!V§.§5!-§;
   import §-!f§.§ else§;
   import §-!f§.§=T§;
   import §0!X§.§!!Z§;
   import §0!X§.§8!F§;
   import §1!d§.§!![§;
   import §1!d§.§9m§;
   import §7e§.§#w§;
   import §8O§.§&#§;
   import §9!E§.§'!U§;
   import §9!Q§.§&o§;
   import §9!Q§.§1T§;
   import §=!§.HighscoreSidebar;
   import §>!G§.§6!9§;
   import §>!M§.§2?§;
   import §]!&§.§,K§;
   import §]!&§.§1E§;
   import §]!&§.§5!5§;
   import §]!&§.§^!g§;
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
   import §use §.§;0§;
   
   public class §2!c§ extends §-2§ implements §!!Z§
   {
      
      public static const §[!%§:String = "LevelSelectionStateHeikki";
      
      private static const §[D§:Number = 3000;
      
      private static const §0<§:Number = 1.5;
       
      
      private var §`_§:Number = 3000;
      
      private var §-&§:§5!-§ = null;
      
      private const § N§:Boolean = true;
      
      private var §7>§:Boolean = false;
      
      private var §9!R§:String = "";
      
      private var §]!a§:Number;
      
      private var §+;§:Boolean = false;
      
      private var §44§:Vector.<§!![§> = null;
      
      private var §%^§:Vector.<GlowFilter> = null;
      
      private var §^!1§:String = "";
      
      public function §2!c§(param1:Boolean = false, param2:String = "LevelSelectionStateHeikki")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §#8§ = new §;0§(75,0,0,1);
         § ,§ = new § else§(this);
         § ,§.init(§=T§.§2,§.Views.View_LevelSelectionHeikki[0]);
         this.§-&§ = new §'!U§(§&#§.§3!D§,"INGAME_THEME_1",false,3);
         this.§44§ = new Vector.<§!![§>(HighscoreSidebar.§[[§.length,true);
         this.§%^§ = new Vector.<GlowFilter>(HighscoreSidebar.§[[§.length,true);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§+;§)
         {
            this.§+;§ = true;
            §1T§.§-f§(§1T§.§+!R§);
         }
         §&#§.§3!D§.§>!?§(false);
         sHighscoreSidebar.enableHighScoreTab(true);
         if(!this.§ N§)
         {
            §&#§.§3!D§.§"!E§(true);
            §&#§.§3!D§.§>!?§(true);
            §&#§.§3!D§.clearLevel();
            §&#§.§>A§(this.§-&§);
            this.§-&§.init();
         }
         §"!R§.§54§ = §[!%§;
         §"!R§.§1P§();
         this.§>a§();
         this.§"q§("");
         this.§]!a§ = 0;
         (§ ,§.getItemByName("MovieClip_Visor") as §,K§).§var §("Start");
         (§ ,§.getItemByName("MovieClip_Visor") as §,K§).§4w§ = true;
         (§ ,§.getItemByName("MovieClip_Visor") as §,K§).setVisibility(true);
         new §&o§((§ ,§.getItemByName("TextField_Unlock_Code") as §1E§).§;+§,§"!R§.§4F§,§"!R§.§7![§,§"!R§.§ <§);
      }
      
      private function §"q§(param1:String) : void
      {
         if(!§"!R§.§0!P§.§4g§)
         {
            this.§^!1§ = ((§ ,§.container.getItemByName("Container_Unlock_PowerUp") as §5!5§).getItemByName("TextField_Unlock_Code") as §1E§).getText();
            ((§ ,§.container.getItemByName("Container_Unlock_PowerUp") as §5!5§).getItemByName("TextField_Unlock_Code") as §1E§).setText(param1);
            if(param1 != "")
            {
               § ,§.setText(param1,"TextField_Unlock_Code");
               (§ ,§.getItemByName("TextField_Unlock_Code") as §1E§).§;+§.setSelection(0,param1.length);
               (§ ,§.getItemByName("TextField_Unlock_Code") as §1E§).§;+§.addEventListener(MouseEvent.MOUSE_DOWN,this.§;p§);
            }
         }
         § ,§.getItemByName("Container_Unlock_PowerUp").setVisibility(!§"!R§.§0!P§.§4g§);
         § ,§.getItemByName("Container_CodeActivated").setVisibility(§"!R§.§0!P§.§4g§);
         if(this.§9!R§ != "")
         {
            § ,§.setText("Active until: " + this.§9!R§,"TextField_ActiveUntil");
         }
         else
         {
            § ,§.setText("","TextField_ActiveUntil");
         }
      }
      
      private function §;p§(param1:MouseEvent) : void
      {
         (§ ,§.getItemByName("TextField_Unlock_Code") as §1E§).§;+§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§;p§);
         § ,§.setText(this.§^!1§,"TextField_Unlock_Code");
      }
      
      override public function deActivate() : void
      {
         (§ ,§.getItemByName("TextField_Unlock_Code") as §1E§).§;+§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§;p§);
         this.§<Y§();
         super.deActivate();
      }
      
      private function §<Y§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= this.§%^§.length)
         {
            this.§%^§[_loc1_ - 1] = null;
            _loc2_ = § ,§.getItemByName("Button_" + _loc1_).mClip;
            _loc2_.TextField_Date.filters = [];
            if(this.§44§[_loc1_ - 1] is §!![§)
            {
               (this.§44§[_loc1_ - 1] as §!![§).§'L§();
            }
            this.§44§[_loc1_ - 1] = null;
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
      
      private function §>a§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.§9'§.length)
         {
            _loc2_ = § ,§.getItemByName("Button_" + _loc1_).mClip;
            (_loc2_.TextField_LevelNum.text as TextField).mouseEnabled = false;
            if(§70§.§<!D§(HighscoreSidebar.§9'§[_loc1_ - 1]))
            {
               (§ ,§.getItemByName("Button_" + _loc1_) as §^!g§).scaleOnMouseOver = true;
               (§ ,§.getItemByName("Button_" + _loc1_) as §^!g§).mClip.useHandCursor = true;
               _loc2_.MovieClip_Lock.visible = false;
               _loc2_.MovieClip_Stars.visible = true;
               _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§[[§[_loc1_ - 1];
               _loc2_.TextField_Date.visible = false;
               _loc3_ = §"!R§.§0!P§.§>>§(HighscoreSidebar.§9'§[_loc1_ - 1]);
               _loc2_.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
               this.§9!R§ = HighscoreSidebar.§8!O§[_loc1_];
            }
            else
            {
               (§ ,§.getItemByName("Button_" + _loc1_) as §^!g§).scaleOnMouseOver = false;
               (§ ,§.getItemByName("Button_" + _loc1_) as §^!g§).mClip.useHandCursor = false;
               _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§[[§[_loc1_ - 1];
               _loc2_.TextField_Date.text.text = HighscoreSidebar.§8!O§[_loc1_ - 1];
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
         if(_loc2_ != §6!9§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§ N§)
         {
            §&#§.§"1§.update(param1);
         }
         else
         {
            this.§4!!§(param1);
            this.§[!$§(§ ,§.getItemByName("MovieClip_Visor") as §,K§,param1 / 2,true);
         }
         this.§@U§();
         if(mNextState.length > 0)
         {
            return §6!9§.STATE_STATUS_COMPLETED;
         }
         return §6!9§.STATE_STATUS_RUNNING;
      }
      
      private function §@U§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= 12)
         {
            if(this.§%^§[_loc1_ - 1] != null)
            {
               _loc2_ = § ,§.getItemByName("Button_" + _loc1_).mClip;
               _loc2_.TextField_Date.filters = [this.§%^§[_loc1_ - 1]];
            }
            _loc1_++;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!0§) : void
      {
         var _loc6_:String = null;
         super.uiInteractionHandler(param1,param2,param3);
         var _loc5_:int = 0;
         while(_loc5_ < HighscoreSidebar.§9'§.length)
         {
            if(param2 == "LVL" + (_loc5_ + 1))
            {
               if(§70§.§<!D§(§#w§.§0?§(HighscoreSidebar.§9'§[_loc5_])))
               {
                  §1!g§.§9!F§ = StatePlay.§[!%§;
                  §#w§.§8>§(§#w§.§0?§(HighscoreSidebar.§9'§[_loc5_]));
                  mNextState = StateCutScene.§[!%§;
               }
               else
               {
                  this.§;!U§(_loc5_ + 1);
               }
            }
            _loc5_++;
         }
         switch(param2)
         {
            case "UNLOCK_POWER_UP":
               _loc6_ = ((§ ,§.container.getItemByName("Container_Unlock_PowerUp") as §5!5§).getItemByName("TextField_Unlock_Code") as §1E§).getText();
               this.§<u§(_loc6_);
               break;
            case "CUT_SCENE":
               StateCutScene.§=5§ = true;
               mNextState = StateCutScene.§[!%§;
               break;
            case "FACEBOOK_LINK":
               navigateToURL(new URLRequest("http://www.facebook.com/Heikki.Kovalainen.Official.Fan.Page"),"_blank");
         }
      }
      
      private function §;!U§(param1:int) : void
      {
         var _loc2_:MovieClip = § ,§.getItemByName("Button_" + param1).mClip;
         if(this.§44§[param1 - 1] is §!![§)
         {
            if((this.§44§[param1 - 1] as §!![§).isCompleted == false)
            {
               return;
            }
         }
         if(this.§%^§[param1 - 1] == null)
         {
            this.§%^§[param1 - 1] = new GlowFilter(16777215,0.6,16,4,0,5,false,false);
         }
         var _loc3_:§!![§ = §9m§.§?! §.§9w§(§9m§.§?! §.§]C§(this.§%^§[param1 - 1],{"strength":4},{"strength":0},§0<§ / 4,§9m§.§5?§),§9m§.§?! §.§]C§(this.§%^§[param1 - 1],{"strength":0},{"strength":4},§0<§ / 4,§9m§.§'!;§),§9m§.§?! §.§]C§(this.§%^§[param1 - 1],{"strength":4},{"strength":0},§0<§ / 4,§9m§.§5?§),§9m§.§?! §.§]C§(this.§%^§[param1 - 1],{"strength":0},{"strength":4},§0<§ / 4,§9m§.§'!;§));
         _loc3_.play();
         this.§44§[param1 - 1] = _loc3_;
      }
      
      private function §4!!§(param1:Number) : Boolean
      {
         if((§ ,§.getItemByName("MovieClip_Visor") as §,K§).§4w§ == false)
         {
            this.§]!a§ += param1;
            if(this.§]!a§ > this.§`_§)
            {
               this.§]!a§ = 0;
               (§ ,§.getItemByName("MovieClip_Visor") as §,K§).§var §("Start");
               (§ ,§.getItemByName("MovieClip_Visor") as §,K§).§4w§ = true;
               (§ ,§.getItemByName("MovieClip_Visor") as §,K§).setVisibility(true);
               this.§`_§ = §[D§ + Math.random() * (§[D§ * 3);
               return true;
            }
         }
         return false;
      }
      
      private function §[!$§(param1:§,K§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(param1.§4w§ == true)
         {
            if((_loc4_ = param1.§2"§(param2)) == "End")
            {
               param1.§4w§ = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function §<u§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§2?§ = null;
         if(this.§7>§ == false && (param1 != "Incorrect code" || param1 != "Code already used"))
         {
            _loc2_ = "code";
            _loc3_ = {
               "playerId":§70§.§6d§.§6!X§,
               "code":param1
            };
            _loc4_ = new §2?§(_loc3_,§"!R§.§['§ + _loc2_,this,§2?§.§&!g§);
            this.§7>§ = true;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §8!F§.§[<§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = "";
         this.§7>§ = false;
         if(_loc2_ && _loc2_.powerUp == true)
         {
            §"!R§.§0!P§.§4g§ = true;
         }
         else if(_loc2_ && _loc2_.error == "CODE_USED")
         {
            _loc3_ = "Code already used";
            this.§"q§(_loc3_);
         }
         else
         {
            _loc3_ = "Incorrect code";
            this.§"q§(_loc3_);
         }
      }
      
      public function §;!Q§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §>!6§(param1:IOErrorEvent) : void
      {
         this.§"q§("Incorrect code");
         this.§7>§ = false;
      }
   }
}
