package §+!9§
{
   import §#!&§.§#O§;
   import §#!&§.§1![§;
   import §#!&§.§48§;
   import §#!&§.§59§;
   import §,J§.§7!A§;
   import §1!6§.§ !3§;
   import §4!9§.§;!9§;
   import §4!9§.§>6§;
   import §4;§.§,h§;
   import §4t§.§1j§;
   import §6!"§.§<!+§;
   import §6-§.§"H§;
   import §6-§.§%1§;
   import §7!X§.§%!=§;
   import §7!X§.§7g§;
   import §8w§.§-x§;
   import §9i§.§+A§;
   import §;<§.§%!I§;
   import §;<§.§7!K§;
   import §?!P§.§@@§;
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
   import §var§.§+!^§;
   
   public class §%!+§ extends §3!!§ implements §%!I§
   {
      
      public static const §6! §:String = "LevelSelectionStateHeikki";
      
      private static const §>_§:Number = 3000;
      
      private static const §3M§:Number = 1.5;
       
      
      private var §4!a§:Number = 3000;
      
      private var §<! §:§1j§ = null;
      
      private const §[!&§:Boolean = true;
      
      private var §;`§:Boolean = false;
      
      private var §5!<§:String = "";
      
      private var §2D§:Number;
      
      private var §@2§:Boolean = false;
      
      private var §?! §:Vector.<§%1§> = null;
      
      private var §#$§:Vector.<GlowFilter> = null;
      
      private var §=!b§:String = "";
      
      public function §%!+§(param1:Boolean = false, param2:String = "LevelSelectionStateHeikki")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §1'§ = new §<!+§(75,0,0,1);
         §2!M§ = new §7g§(this);
         §2!M§.init(§%!=§.§ #§.Views.View_LevelSelectionHeikki[0]);
         this.§<! § = new §-x§(§@@§.§ !8§,"INGAME_THEME_1",false,3);
         this.§?! § = new Vector.<§%1§>(HighscoreSidebar.§5i§.length,true);
         this.§#$§ = new Vector.<GlowFilter>(HighscoreSidebar.§5i§.length,true);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(!this.§@2§)
         {
            this.§@2§ = true;
            §>6§.§%;§(§>6§.§9l§);
         }
         §@@§.§ !8§.§,!Y§(false);
         sHighscoreSidebar.enableHighScoreTab(true);
         if(!this.§[!&§)
         {
            §@@§.§ !8§.§5!?§(true);
            §@@§.§ !8§.§,!Y§(true);
            §@@§.§ !8§.clearLevel();
            §@@§.§1!V§(this.§<! §);
            this.§<! §.init();
         }
         §1F§.§"T§ = §6! §;
         §1F§.§ 9§();
         this.§^+§();
         this.§2R§("");
         this.§2D§ = 0;
         (§2!M§.getItemByName("MovieClip_Visor") as §48§).§0S§("Start");
         (§2!M§.getItemByName("MovieClip_Visor") as §48§).§2Z§ = true;
         (§2!M§.getItemByName("MovieClip_Visor") as §48§).setVisibility(true);
         new §;!9§((§2!M§.getItemByName("TextField_Unlock_Code") as §1![§).§2q§,§1F§.§9!J§,§1F§.§&!§,§1F§.§'I§);
      }
      
      private function §2R§(param1:String) : void
      {
         if(!§1F§.§=l§.§1n§)
         {
            this.§=!b§ = ((§2!M§.container.getItemByName("Container_Unlock_PowerUp") as §59§).getItemByName("TextField_Unlock_Code") as §1![§).getText();
            ((§2!M§.container.getItemByName("Container_Unlock_PowerUp") as §59§).getItemByName("TextField_Unlock_Code") as §1![§).setText(param1);
            if(param1 != "")
            {
               §2!M§.setText(param1,"TextField_Unlock_Code");
               (§2!M§.getItemByName("TextField_Unlock_Code") as §1![§).§2q§.setSelection(0,param1.length);
               (§2!M§.getItemByName("TextField_Unlock_Code") as §1![§).§2q§.addEventListener(MouseEvent.MOUSE_DOWN,this.§3!L§);
            }
         }
         §2!M§.getItemByName("Container_Unlock_PowerUp").setVisibility(!§1F§.§=l§.§1n§);
         §2!M§.getItemByName("Container_CodeActivated").setVisibility(§1F§.§=l§.§1n§);
         if(this.§5!<§ != "")
         {
            §2!M§.setText("Active until: " + this.§5!<§,"TextField_ActiveUntil");
         }
         else
         {
            §2!M§.setText("","TextField_ActiveUntil");
         }
      }
      
      private function §3!L§(param1:MouseEvent) : void
      {
         (§2!M§.getItemByName("TextField_Unlock_Code") as §1![§).§2q§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3!L§);
         §2!M§.setText(this.§=!b§,"TextField_Unlock_Code");
      }
      
      override public function deActivate() : void
      {
         (§2!M§.getItemByName("TextField_Unlock_Code") as §1![§).§2q§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§3!L§);
         this.§6!C§();
         super.deActivate();
      }
      
      private function §6!C§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= this.§#$§.length)
         {
            this.§#$§[_loc1_ - 1] = null;
            _loc2_ = §2!M§.getItemByName("Button_" + _loc1_).mClip;
            _loc2_.TextField_Date.filters = [];
            if(this.§?! §[_loc1_ - 1] is §%1§)
            {
               (this.§?! §[_loc1_ - 1] as §%1§).§?w§();
            }
            this.§?! §[_loc1_ - 1] = null;
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
      
      private function §^+§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc1_:int = 1;
         while(_loc1_ <= HighscoreSidebar.§5z§.length)
         {
            _loc2_ = §2!M§.getItemByName("Button_" + _loc1_).mClip;
            (_loc2_.TextField_LevelNum.text as TextField).mouseEnabled = false;
            if(§ !3§.§]D§(HighscoreSidebar.§5z§[_loc1_ - 1]))
            {
               (§2!M§.getItemByName("Button_" + _loc1_) as §#O§).scaleOnMouseOver = true;
               (§2!M§.getItemByName("Button_" + _loc1_) as §#O§).mClip.useHandCursor = true;
               _loc2_.MovieClip_Lock.visible = false;
               _loc2_.MovieClip_Stars.visible = true;
               _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§5i§[_loc1_ - 1];
               _loc2_.TextField_Date.visible = false;
               _loc3_ = §1F§.§=l§.§%9§(HighscoreSidebar.§5z§[_loc1_ - 1]);
               _loc2_.MovieClip_Stars.gotoAndStop(_loc3_.toString() + "_stars");
               this.§5!<§ = HighscoreSidebar.§1L§[_loc1_];
            }
            else
            {
               (§2!M§.getItemByName("Button_" + _loc1_) as §#O§).scaleOnMouseOver = false;
               (§2!M§.getItemByName("Button_" + _loc1_) as §#O§).mClip.useHandCursor = false;
               _loc2_.TextField_LevelNum.text.text = HighscoreSidebar.§5i§[_loc1_ - 1];
               _loc2_.TextField_Date.text.text = HighscoreSidebar.§1L§[_loc1_ - 1];
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
         if(_loc2_ != §,h§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(!this.§[!&§)
         {
            §@@§.§6!L§.update(param1);
         }
         else
         {
            this.§'Q§(param1);
            this.§!!@§(§2!M§.getItemByName("MovieClip_Visor") as §48§,param1 / 2,true);
         }
         this.§'l§();
         if(mNextState.length > 0)
         {
            return §,h§.STATE_STATUS_COMPLETED;
         }
         return §,h§.STATE_STATUS_RUNNING;
      }
      
      private function §'l§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc1_:int = 1;
         while(_loc1_ <= 12)
         {
            if(this.§#$§[_loc1_ - 1] != null)
            {
               _loc2_ = §2!M§.getItemByName("Button_" + _loc1_).mClip;
               _loc2_.TextField_Date.filters = [this.§#$§[_loc1_ - 1]];
            }
            _loc1_++;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!^§) : void
      {
         var _loc6_:String = null;
         super.uiInteractionHandler(param1,param2,param3);
         var _loc5_:int = 0;
         while(_loc5_ < HighscoreSidebar.§5z§.length)
         {
            if(param2 == "LVL" + (_loc5_ + 1))
            {
               if(§ !3§.§]D§(§7!A§.§]a§(HighscoreSidebar.§5z§[_loc5_])))
               {
                  § 4§.§=D§ = StatePlay.§6! §;
                  §7!A§.§get §(§7!A§.§]a§(HighscoreSidebar.§5z§[_loc5_]));
                  mNextState = StateCutScene.§6! §;
               }
               else
               {
                  this.§1!4§(_loc5_ + 1);
               }
            }
            _loc5_++;
         }
         switch(param2)
         {
            case "UNLOCK_POWER_UP":
               _loc6_ = ((§2!M§.container.getItemByName("Container_Unlock_PowerUp") as §59§).getItemByName("TextField_Unlock_Code") as §1![§).getText();
               this.§ k§(_loc6_);
               break;
            case "CUT_SCENE":
               StateCutScene.§6K§ = true;
               mNextState = StateCutScene.§6! §;
               break;
            case "FACEBOOK_LINK":
               navigateToURL(new URLRequest("http://www.facebook.com/Heikki.Kovalainen.Official.Fan.Page"),"_blank");
         }
      }
      
      private function §1!4§(param1:int) : void
      {
         var _loc2_:MovieClip = §2!M§.getItemByName("Button_" + param1).mClip;
         if(this.§?! §[param1 - 1] is §%1§)
         {
            if((this.§?! §[param1 - 1] as §%1§).isCompleted == false)
            {
               return;
            }
         }
         if(this.§#$§[param1 - 1] == null)
         {
            this.§#$§[param1 - 1] = new GlowFilter(16777215,0.6,16,4,0,5,false,false);
         }
         var _loc3_:§%1§ = §"H§.§'![§.§#!c§(§"H§.§'![§.§8Y§(this.§#$§[param1 - 1],{"strength":4},{"strength":0},§3M§ / 4,§"H§.§]!J§),§"H§.§'![§.§8Y§(this.§#$§[param1 - 1],{"strength":0},{"strength":4},§3M§ / 4,§"H§.§]!H§),§"H§.§'![§.§8Y§(this.§#$§[param1 - 1],{"strength":4},{"strength":0},§3M§ / 4,§"H§.§]!J§),§"H§.§'![§.§8Y§(this.§#$§[param1 - 1],{"strength":0},{"strength":4},§3M§ / 4,§"H§.§]!H§));
         _loc3_.play();
         this.§?! §[param1 - 1] = _loc3_;
      }
      
      private function §'Q§(param1:Number) : Boolean
      {
         if((§2!M§.getItemByName("MovieClip_Visor") as §48§).§2Z§ == false)
         {
            this.§2D§ += param1;
            if(this.§2D§ > this.§4!a§)
            {
               this.§2D§ = 0;
               (§2!M§.getItemByName("MovieClip_Visor") as §48§).§0S§("Start");
               (§2!M§.getItemByName("MovieClip_Visor") as §48§).§2Z§ = true;
               (§2!M§.getItemByName("MovieClip_Visor") as §48§).setVisibility(true);
               this.§4!a§ = §>_§ + Math.random() * (§>_§ * 3);
               return true;
            }
         }
         return false;
      }
      
      private function §!!@§(param1:§48§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(param1.§2Z§ == true)
         {
            if((_loc4_ = param1.§&!H§(param2)) == "End")
            {
               param1.§2Z§ = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function § k§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§+A§ = null;
         if(this.§;`§ == false && (param1 != "Incorrect code" || param1 != "Code already used"))
         {
            _loc2_ = "code";
            _loc3_ = {
               "playerId":§ !3§.§@!`§.§#!3§,
               "code":param1
            };
            _loc4_ = new §+A§(_loc3_,§1F§.§&1§ + _loc2_,this,§+A§.§<!&§);
            this.§;`§ = true;
         }
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §7!K§.§>e§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = "";
         this.§;`§ = false;
         if(_loc2_ && _loc2_.powerUp == true)
         {
            §1F§.§=l§.§1n§ = true;
         }
         else if(_loc2_ && _loc2_.error == "CODE_USED")
         {
            _loc3_ = "Code already used";
            this.§2R§(_loc3_);
         }
         else
         {
            _loc3_ = "Incorrect code";
            this.§2R§(_loc3_);
         }
      }
      
      public function §1x§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §<!L§(param1:IOErrorEvent) : void
      {
         this.§2R§("Incorrect code");
         this.§;`§ = false;
      }
   }
}
