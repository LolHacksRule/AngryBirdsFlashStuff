package §function§
{
   import §#Q§.§8#§;
   import §#Q§.§8Y§;
   import §&!6§.§5r§;
   import §&o§.§7!C§;
   import §'!C§.§-!S§;
   import §1Q§.§'!`§;
   import §3r§.§+!G§;
   import §3r§.§@M§;
   import §4M§.HighscoreSidebar;
   import §4V§.§=!=§;
   import §4V§.§@!Y§;
   import §5!O§.§%!O§;
   import §8! §.§#z§;
   import §8!-§.§1R§;
   import §8!-§.§2!B§;
   import §<<§.§8!Y§;
   import §>!F§.§9!Z§;
   import §@!]§.§%!S§;
   import §@!]§.§%k§;
   import §@!]§.§&!!§;
   import §@!]§.§'!9§;
   import §^E§.§9!Q§;
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
   
   public class §^,§ extends §1!@§ implements §@!Y§
   {
      
      public static const §94§:String = "LevelSelectionStateHeikki";
      
      private static const §,A§:Number = 3000;
      
      private static const §2?§:Number = 1.5;
       
      
      private var §=&§:Number = 3000;
      
      private var §,!J§:§8!Y§ = null;
      
      private const §=Y§:Boolean = true;
      
      private var §5!-§:Boolean = false;
      
      private var §6$§:String = "";
      
      private var §?!3§:Number;
      
      private var §#!A§:Boolean = false;
      
      private var §%!>§:Vector.<§1R§> = null;
      
      private var §;T§:Vector.<GlowFilter> = null;
      
      private var §#g§:String = "";
      
      public function §^,§(param1:Boolean = false, param2:String = "LevelSelectionStateHeikki")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §;'§ = new §-!S§(75,0,0,1);
         §@K§ = new §8Y§(this);
         §@K§.init(§8#§.§6K§.Views.View_LevelSelectionHeikki[0]);
         this.§,!J§ = new §7!C§(§9!Z§.§5!$§,"INGAME_THEME_1",false,3);
         this.§%!>§ = new Vector.<§1R§>(HighscoreSidebar.§+h§.length,true);
         this.§;T§ = new Vector.<GlowFilter>(HighscoreSidebar.§+h§.length,true);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§#!A§)
         {
            this.§#!A§ = true;
            §@M§.§"6§(§@M§.§]Z§);
         }
         §9!Z§.§5!$§.§5!=§(false);
         sHighscoreSidebar.enableHighScoreTab(true);
         if(!this.§=Y§)
         {
            §9!Z§.§5!$§.§8t§(true);
            §9!Z§.§5!$§.§5!=§(true);
            §9!Z§.§5!$§.clearLevel();
            §9!Z§.§5q§(this.§,!J§);
            this.§,!J§.init();
         }
         §"H§.§]X§ = §94§;
         §"H§.§4!Z§();
         this.§3!#§();
         this.§0+§("");
         this.§?!3§ = 0;
         (§@K§.getItemByName("MovieClip_Visor") as §%k§).§>V§("Start");
         (§@K§.getItemByName("MovieClip_Visor") as §%k§).§0m§ = true;
         (§@K§.getItemByName("MovieClip_Visor") as §%k§).setVisibility(true);
         new §+!G§((§@K§.getItemByName("TextField_Unlock_Code") as §%!S§).§9!"§,§"H§.§?!N§,§"H§.§]W§,§"H§.§!!K§);
      }
      
      private function §0+§(param1:String) : void
      {
         if(!§"H§.§""§.§?@§)
         {
            this.§#g§ = ((§@K§.container.getItemByName("Container_Unlock_PowerUp") as §'!9§).getItemByName("TextField_Unlock_Code") as §%!S§).getText();
            ((§@K§.container.getItemByName("Container_Unlock_PowerUp") as §'!9§).getItemByName("TextField_Unlock_Code") as §%!S§).setText(param1);
            if(param1 != "")
            {
               §@K§.setText(param1,"TextField_Unlock_Code");
               (§@K§.getItemByName("TextField_Unlock_Code") as §%!S§).§9!"§.setSelection(0,param1.length);
               (§@K§.getItemByName("TextField_Unlock_Code") as §%!S§).§9!"§.addEventListener(MouseEvent.MOUSE_DOWN,this.§`3§);
            }
         }
         §@K§.getItemByName("Container_Unlock_PowerUp").setVisibility(!§"H§.§""§.§?@§);
         §@K§.getItemByName("Container_CodeActivated").setVisibility(§"H§.§""§.§?@§);
         if(this.§6$§ != "")
         {
            §@K§.setText("Active until: " + this.§6$§,"TextField_ActiveUntil");
         }
         else
         {
            §@K§.setText("","TextField_ActiveUntil");
         }
      }
      
      private function §`3§(param1:MouseEvent) : void
      {
         (§@K§.getItemByName("TextField_Unlock_Code") as §%!S§).§9!"§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§`3§);
         §@K§.setText(this.§#g§,"TextField_Unlock_Code");
      }
      
      override public function deActivate() : void
      {
         (§@K§.getItemByName("TextField_Unlock_Code") as §%!S§).§9!"§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§`3§);
         this.§<Y§();
         super.deActivate();
      }
      
      private function §<Y§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= this.§;T§.length)
         {
            this.§;T§[_loc1_ - 1] = null;
            _loc2_ = §@K§.getItemByName("Button_" + _loc1_).mClip;
            _loc2_.TextField_Date.filters = [];
            if(this.§%!>§[_loc1_ - 1] is §1R§)
            {
               (this.§%!>§[_loc1_ - 1] as §1R§).§4!A§();
            }
            this.§%!>§[_loc1_ - 1] = null;
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
      
      private function §3!#§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.§?'§.length)
         {
            _loc2_ = §@K§.getItemByName("Button_" + _loc1_).mClip;
            (_loc2_.TextField_LevelNum.text as TextField).mouseEnabled = false;
            if(§9!Q§.§ !D§(HighscoreSidebar.§?'§[_loc1_ - 1]))
            {
               (§@K§.getItemByName("Button_" + _loc1_) as §&!!§).scaleOnMouseOver = true;
               (§@K§.getItemByName("Button_" + _loc1_) as §&!!§).mClip.useHandCursor = true;
               _loc2_.MovieClip_Lock.visible = false;
               _loc2_.MovieClip_Stars.visible = true;
               _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§+h§[_loc1_ - 1];
               _loc2_.TextField_Date.visible = false;
               _loc3_ = §"H§.§""§.§5!2§(HighscoreSidebar.§?'§[_loc1_ - 1]);
               _loc2_.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
               this.§6$§ = HighscoreSidebar.§95§[_loc1_];
            }
            else
            {
               (§@K§.getItemByName("Button_" + _loc1_) as §&!!§).scaleOnMouseOver = false;
               (§@K§.getItemByName("Button_" + _loc1_) as §&!!§).mClip.useHandCursor = false;
               _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§+h§[_loc1_ - 1];
               _loc2_.TextField_Date.text.text = HighscoreSidebar.§95§[_loc1_ - 1];
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
         if(_loc2_ != §5r§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§=Y§)
         {
            §9!Z§.§[-§.update(param1);
         }
         else
         {
            this.§+;§(param1);
            this.§;0§(§@K§.getItemByName("MovieClip_Visor") as §%k§,param1 / 2,true);
         }
         this.§'!;§();
         if(mNextState.length > 0)
         {
            return §5r§.STATE_STATUS_COMPLETED;
         }
         return §5r§.STATE_STATUS_RUNNING;
      }
      
      private function §'!;§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= 12)
         {
            if(this.§;T§[_loc1_ - 1] != null)
            {
               _loc2_ = §@K§.getItemByName("Button_" + _loc1_).mClip;
               _loc2_.TextField_Date.filters = [this.§;T§[_loc1_ - 1]];
            }
            _loc1_++;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!`§) : void
      {
         var _loc6_:String = null;
         super.uiInteractionHandler(param1,param2,param3);
         var _loc5_:int = 0;
         while(_loc5_ < HighscoreSidebar.§?'§.length)
         {
            if(param2 == "LVL" + (_loc5_ + 1))
            {
               if(§9!Q§.§ !D§(§#z§.§8F§(HighscoreSidebar.§?'§[_loc5_])))
               {
                  §8E§.§8c§ = StatePlay.§94§;
                  §#z§.§[6§(§#z§.§8F§(HighscoreSidebar.§?'§[_loc5_]));
                  mNextState = StateCutScene.§94§;
               }
               else
               {
                  this.§+!W§(_loc5_ + 1);
               }
            }
            _loc5_++;
         }
         switch(param2)
         {
            case "UNLOCK_POWER_UP":
               _loc6_ = ((§@K§.container.getItemByName("Container_Unlock_PowerUp") as §'!9§).getItemByName("TextField_Unlock_Code") as §%!S§).getText();
               this.§-1§(_loc6_);
               break;
            case "CUT_SCENE":
               StateCutScene.§0H§ = true;
               mNextState = StateCutScene.§94§;
               break;
            case "FACEBOOK_LINK":
               navigateToURL(new URLRequest("http://www.facebook.com/Heikki.Kovalainen.Official.Fan.Page"),"_blank");
         }
      }
      
      private function §+!W§(param1:int) : void
      {
         var _loc2_:MovieClip = §@K§.getItemByName("Button_" + param1).mClip;
         if(this.§%!>§[param1 - 1] is §1R§)
         {
            if((this.§%!>§[param1 - 1] as §1R§).isCompleted == false)
            {
               return;
            }
         }
         if(this.§;T§[param1 - 1] == null)
         {
            this.§;T§[param1 - 1] = new GlowFilter(16777215,0.6,16,4,0,5,false,false);
         }
         var _loc3_:§1R§ = §2!B§.§,!U§.§<!7§(§2!B§.§,!U§.§%!K§(this.§;T§[param1 - 1],{"strength":4},{"strength":0},§2?§ / 4,§2!B§.§-!J§),§2!B§.§,!U§.§%!K§(this.§;T§[param1 - 1],{"strength":0},{"strength":4},§2?§ / 4,§2!B§.§=X§),§2!B§.§,!U§.§%!K§(this.§;T§[param1 - 1],{"strength":4},{"strength":0},§2?§ / 4,§2!B§.§-!J§),§2!B§.§,!U§.§%!K§(this.§;T§[param1 - 1],{"strength":0},{"strength":4},§2?§ / 4,§2!B§.§=X§));
         _loc3_.play();
         this.§%!>§[param1 - 1] = _loc3_;
      }
      
      private function §+;§(param1:Number) : Boolean
      {
         if((§@K§.getItemByName("MovieClip_Visor") as §%k§).§0m§ == false)
         {
            this.§?!3§ += param1;
            if(this.§?!3§ > this.§=&§)
            {
               this.§?!3§ = 0;
               (§@K§.getItemByName("MovieClip_Visor") as §%k§).§>V§("Start");
               (§@K§.getItemByName("MovieClip_Visor") as §%k§).§0m§ = true;
               (§@K§.getItemByName("MovieClip_Visor") as §%k§).setVisibility(true);
               this.§=&§ = §,A§ + Math.random() * (§,A§ * 3);
               return true;
            }
         }
         return false;
      }
      
      private function §;0§(param1:§%k§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(param1.§0m§ == true)
         {
            if((_loc4_ = param1.§,G§(param2)) == "End")
            {
               param1.§0m§ = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function §-1§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§%!O§ = null;
         if(this.§5!-§ == false && (param1 != "Incorrect code" || param1 != "Code already used"))
         {
            _loc2_ = "code";
            _loc3_ = {
               "playerId":§9!Q§.§`!$§.§%^§,
               "code":param1
            };
            _loc4_ = new §%!O§(_loc3_,§"H§.§4O§ + _loc2_,this,§%!O§.§4!-§);
            this.§5!-§ = true;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §=!=§.§=!a§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = "";
         this.§5!-§ = false;
         if(_loc2_ && _loc2_.powerUp == true)
         {
            §"H§.§""§.§?@§ = true;
         }
         else if(_loc2_ && _loc2_.error == "CODE_USED")
         {
            _loc3_ = "Code already used";
            this.§0+§(_loc3_);
         }
         else
         {
            _loc3_ = "Incorrect code";
            this.§0+§(_loc3_);
         }
      }
      
      public function §^;§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §6R§(param1:IOErrorEvent) : void
      {
         this.§0+§("Incorrect code");
         this.§5!-§ = false;
      }
   }
}
