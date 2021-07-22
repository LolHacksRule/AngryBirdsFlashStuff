package §8!^§
{
   import §%!I§.§5S§;
   import §%!I§.§]!M§;
   import §%i§.§4"9§;
   import §%i§.§7"0§;
   import §%i§.§^n§;
   import §0D§.§3!R§;
   import §1!t§.§!!G§;
   import §1!t§.§""B§;
   import §5!Y§.§9"6§;
   import §9!n§.LevelManager;
   import §;u§.StateCutScene;
   import §@!%§.§#!$§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class §,p§ extends §]!M§
   {
      
      public static const STATE_NAME:String = "TournamentState";
      
      private static const §'"P§:int = 5;
      
      public static const §0=§:Array = ["2000-81","2000-90","2000-80","2000-83","2000-75"];
      
      private static var §@g§:Array = [true,false,false,false,false];
       
      
      private var §<!&§:Vector.<§7"0§>;
      
      private var §+";§:Boolean = false;
      
      private var §'R§:Vector.<§7"0§>;
      
      private const §'"?§:uint = 6000;
      
      private var §@"Z§:Number = 3000.0;
      
      public function §,p§(param1:Boolean = false, param2:String = "TournamentState")
      {
         super(param1,param2);
      }
      
      public static function §6"8§(param1:int) : void
      {
         var _loc2_:String = §0=§[param1 - 1];
         if(param1 == 5)
         {
            _loc2_ = "2000-199";
         }
         StateCutScene.§@"T§(true,param1);
         LevelManager.§,!m§(LevelManager.§["S§(_loc2_));
         §%"S§.§!C§.§`H§(§5S§.STATE_NAME);
      }
      
      public static function §'"&§(param1:int) : Boolean
      {
         if(param1 < 1)
         {
            return false;
         }
         if(param1 > 5)
         {
            return false;
         }
         return §@g§[param1 - 1];
      }
      
      override public function init() : void
      {
         super.init();
         §2"@§ = new §`_§(this);
         §2"@§.init(§ "<§.§%I§.Views.View_BrandedTournament[0]);
         §1"§ = §3!R§.§&"5§.§8I§;
         this.§<!&§ = new Vector.<§7"0§>(§1"§.length,true);
         var _loc1_:int = 0;
         while(_loc1_ < §1"§.length)
         {
            this.§<!&§[_loc1_] = §2"@§.getItemByName("LevelButton" + (_loc1_ + 1)) as §7"0§;
            _loc1_++;
         }
         this.§'R§ = new Vector.<§7"0§>(§'"P§);
         _loc1_ = 0;
         while(_loc1_ < §'"P§)
         {
            this.§'R§[_loc1_] = §2"@§.getItemByName("CutsceneButton" + (_loc1_ + 1)) as §7"0§;
            _loc1_++;
         }
         var _loc2_:§4"9§ = §2"@§.getItemByName("TournamentTitleTextField") as §4"9§;
         _loc2_.setText("Easter\'s Tournament");
      }
      
      override protected function requestTournamentInfo() : void
      {
         var _loc4_:§7"0§ = null;
         super.requestTournamentInfo();
         var _loc1_:§7"0§ = §2"@§.getItemByName("LevelButton5") as §7"0§;
         var _loc2_:§7"0§ = §2"@§.getItemByName("LevelButton6") as §7"0§;
         var _loc3_:Array = [_loc1_,_loc2_];
         for each(_loc4_ in _loc3_)
         {
            _loc4_.setVisibility(false);
         }
      }
      
      private function §null§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:§7"0§ = null;
         var _loc6_:int = 0;
         var _loc7_:§#!$§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:Array = null;
         var _loc12_:String = null;
         if(this.§+";§)
         {
            _loc1_ = §3!R§.§&"5§.§8I§;
            _loc2_ = false;
            _loc3_ = 0;
            while(_loc3_ < this.§<!&§.length)
            {
               _loc4_ = _loc1_[_loc3_];
               _loc5_ = §2"@§.getItemByName("LevelButton" + (_loc3_ + 1)) as §7"0§;
               if((_loc6_ = §3!R§.§&"5§.secondsToUnlock(_loc4_)) <= 0)
               {
                  if((_loc5_.mClip as MovieClip).currentFrameLabel == "Closed")
                  {
                     (_loc5_.mClip as MovieClip).MouseHitArea.removeEventListener(MouseEvent.MOUSE_UP,this.§0"$§);
                  }
                  _loc5_.mClip.gotoAndStop("Open");
                  _loc5_.setEnabled(true);
                  §3!R§.§&"5§.§,"4§(_loc4_,true);
                  _loc5_.mClip.TextField_LevelNum.text.text = _loc3_ + 1 + "";
                  if((_loc8_ = (_loc7_ = AngryBirdsFP11.sUserProgress as §#!$§).§3"4§(_loc4_)) && _loc8_ <= 3)
                  {
                     _loc5_.mClip.LevelSelection_Crown.gotoAndStop(_loc8_);
                  }
                  else
                  {
                     _loc5_.mClip.LevelSelection_Crown.gotoAndStop(4);
                  }
                  _loc9_ = _loc7_.§="&§(_loc4_);
                  _loc5_.mClip.Textfield_LevelScore.text.text = §<Y§(_loc9_);
                  _loc10_ = _loc7_.getStarsForLevel(_loc4_,_loc9_);
                  _loc5_.mClip.MovieClip_Stars.gotoAndStop(_loc10_.toString() + "_stars");
                  if(_loc9_ == 0)
                  {
                     _loc5_.mClip.MovieClip_Stars.visible = false;
                     _loc5_.mClip.Textfield_LevelScore.visible = false;
                     _loc5_.mClip.GiftboxMovieclip.visible = true;
                  }
                  else
                  {
                     _loc5_.mClip.MovieClip_Stars.visible = true;
                     _loc5_.mClip.Textfield_LevelScore.visible = true;
                     _loc5_.mClip.GiftboxMovieclip.visible = false;
                  }
               }
               else
               {
                  _loc12_ = (_loc12_ = (_loc11_ = §3!R§.§&"5§.§2"I§(_loc6_))[0] as String).replace(" Left","");
                  _loc5_.setEnabled(true);
                  (_loc5_.mClip.Textfield_LockTime.text as TextField).text = _loc12_;
               }
               _loc3_++;
            }
         }
      }
      
      override public function injectData() : void
      {
         super.injectData();
      }
      
      override public function deActivate() : void
      {
         var _loc2_:§7"0§ = null;
         §1"§ = §3!R§.§&"5§.§8I§;
         var _loc1_:int = 0;
         while(_loc1_ < §1"§.length)
         {
            _loc2_ = §2"@§.getItemByName("LevelButton" + (_loc1_ + 1)) as §7"0§;
            if(_loc2_ != null && (_loc2_.mClip as MovieClip).currentFrameLabel == "Closed")
            {
               (_loc2_.mClip as MovieClip).MouseHitArea.removeEventListener(MouseEvent.MOUSE_UP,this.§0"$§);
            }
            _loc1_++;
         }
         return super.deActivate();
      }
      
      private function §0"$§(param1:MouseEvent) : void
      {
         §9"6§.§7!B§(§3!R§.§&"5§.§%!^§.§;[§,"level-locked");
      }
      
      override protected function setLevelButtons() : int
      {
         var _loc3_:§7"0§ = null;
         this.§+";§ = true;
         var _loc1_:int = super.setLevelButtons();
         var _loc2_:int = 0;
         while(_loc2_ < §1"§.length)
         {
            _loc3_ = §2"@§.getItemByName("LevelButton" + (_loc2_ + 1)) as §7"0§;
            if(_loc3_ != null && (_loc3_.mClip as MovieClip).currentFrameLabel == "Closed")
            {
               (_loc3_.mClip as MovieClip).MouseHitArea.addEventListener(MouseEvent.MOUSE_UP,this.§0"$§);
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc4_:§7"0§ = null;
         if(param2.indexOf("LEVEL_") != -1)
         {
            if(((_loc4_ = §2"@§.getItemByName("LevelButton" + param2.split("_")[1]) as §7"0§).mClip as MovieClip).currentFrameLabel == "Closed")
            {
               return;
            }
         }
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "LEVEL_5":
               §8?§(§1"§[4]);
               break;
            case "LEVEL_6":
               §8?§(§1"§[5]);
               break;
            case "BRANDED_SHOP":
               §9"6§.§7!B§(§3!R§.§&"5§.§%!^§.§;[§,"level-selection");
               break;
            case "BRANDED_SHOP_OVER":
               (§2"@§.getItemByName("Button_BrandedShopButtonAnimation") as §^n§).mClip.scaleX = (§2"@§.getItemByName("Button_BrandedShopButtonAnimation") as §^n§).mClip.scaleX + 0.05;
               (§2"@§.getItemByName("Button_BrandedShopButtonAnimation") as §^n§).mClip.scaleY = (§2"@§.getItemByName("Button_BrandedShopButtonAnimation") as §^n§).mClip.scaleY + 0.05;
               break;
            case "BRANDED_SHOP_OUT":
               (§2"@§.getItemByName("Button_BrandedShopButtonAnimation") as §^n§).mClip.scaleX = (§2"@§.getItemByName("Button_BrandedShopButtonAnimation") as §^n§).mClip.scaleX - 0.05;
               (§2"@§.getItemByName("Button_BrandedShopButtonAnimation") as §^n§).mClip.scaleY = (§2"@§.getItemByName("Button_BrandedShopButtonAnimation") as §^n§).mClip.scaleY - 0.05;
               break;
            case "CUTSCENE_1":
            case "CUTSCENE_2":
            case "CUTSCENE_3":
            case "CUTSCENE_4":
            case "CUTSCENE_5":
               §6"8§(int(param2.charAt(param2.length - 1)));
         }
      }
      
      override public function run(param1:Number) : int
      {
         this.§null§();
         return super.run(param1);
      }
      
      private function §6"5§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:int = 0;
         var _loc4_:* = false;
         var _loc5_:int = 0;
         if(§1"§)
         {
            _loc1_ = §!!G§.COMPONENT_STATE_ACTIVE_DEFAULT;
            _loc2_ = §!!G§.§[E§;
            _loc3_ = 1;
            switch(§1"§[0])
            {
               case §0=§[0]:
                  _loc3_ = 1;
                  break;
               case §0=§[1]:
                  _loc3_ = 2;
                  break;
               case §0=§[2]:
                  _loc3_ = 3;
                  break;
               case §0=§[3]:
                  _loc3_ = 4;
            }
            _loc4_ = (AngryBirdsFP11.sUserProgress as §#!$§).§="&§(§1"§[5]) > 0;
            §@g§[0] = true;
            §@g§[1] = _loc3_ >= 2;
            §@g§[2] = _loc3_ >= 3;
            §@g§[3] = _loc3_ >= 4;
            §@g§[4] = _loc3_ >= 4 && _loc4_;
            _loc5_ = 0;
            while(_loc5_ < 5)
            {
               this.§'R§[_loc5_].setComponentState(!!§@g§[_loc5_] ? _loc1_ : _loc2_);
               _loc5_++;
            }
         }
      }
   }
}
