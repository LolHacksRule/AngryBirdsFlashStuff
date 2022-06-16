package §%;§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §&!"§.§`B§;
   import §-B§.§="0§;
   import §-B§.§]!<§;
   import §2!6§.§`"J§;
   import §6k§.§-#§;
   import §6k§.§0§;
   import §;n§.§^!;§;
   import §;n§.§^q§;
   import §<";§.§'y§;
   import §@",§.StateCutScene;
   import §^!o§.§=1§;
   import §`!n§.LevelManager;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class §7!H§ extends §-#§
   {
      
      public static const STATE_NAME:String = "TournamentState";
      
      private static const §^+§:int = 5;
      
      public static const §`!+§:Array = ["2000-81","2000-90","2000-80","2000-83","2000-75"];
      
      private static var §4L§:Array = [true,false,false,false,false];
       
      
      private var §6i§:Vector.<§]!<§>;
      
      private var §>W§:Boolean = false;
      
      private var §&n§:Vector.<§]!<§>;
      
      private const §=!a§:uint = 6000;
      
      private var §]t§:Number = 3000.0;
      
      public function §7!H§(param1:Boolean = false, param2:String = "TournamentState")
      {
         super(param1,param2);
      }
      
      public static function §6`§(param1:int) : void
      {
         var _loc2_:String = §`!+§[param1 - 1];
         if(param1 == 5)
         {
            _loc2_ = "2000-199";
         }
         StateCutScene.§2!I§(true,param1);
         LevelManager.§^p§(LevelManager.§&!1§(_loc2_));
         §,"I§.§&q§.§>"I§(§0§.STATE_NAME);
      }
      
      public static function § '§(param1:int) : Boolean
      {
         if(param1 < 1)
         {
            return false;
         }
         if(param1 > 5)
         {
            return false;
         }
         return §4L§[param1 - 1];
      }
      
      override public function init() : void
      {
         super.init();
         §2!K§ = new §^0§(this);
         §2!K§.init(§%^§.§?>§.Views.View_BrandedTournament[0]);
         §]!d§ = §=1§.§1[§.§;9§;
         this.§6i§ = new Vector.<§]!<§>(§]!d§.length,true);
         var _loc1_:int = 0;
         while(_loc1_ < §]!d§.length)
         {
            this.§6i§[_loc1_] = §2!K§.getItemByName("LevelButton" + (_loc1_ + 1)) as §]!<§;
            _loc1_++;
         }
         this.§&n§ = new Vector.<§]!<§>(§^+§);
         _loc1_ = 0;
         while(_loc1_ < §^+§)
         {
            this.§&n§[_loc1_] = §2!K§.getItemByName("CutsceneButton" + (_loc1_ + 1)) as §]!<§;
            _loc1_++;
         }
      }
      
      override protected function get starPillarOwnDefinition() : String
      {
         return "StarpillarBrandedOwn_Christmas";
      }
      
      override protected function get starPillarEnemyDefinition() : String
      {
         return "StarpillarBrandedEnemy_Christmas";
      }
      
      override protected function requestTournamentInfo() : void
      {
         var _loc4_:§]!<§ = null;
         super.requestTournamentInfo();
         var _loc1_:§]!<§ = §2!K§.getItemByName("LevelButton5") as §]!<§;
         var _loc2_:§]!<§ = §2!K§.getItemByName("LevelButton6") as §]!<§;
         var _loc3_:Array = [_loc1_,_loc2_];
         for each(_loc4_ in _loc3_)
         {
            _loc4_.setVisibility(false);
         }
      }
      
      private function §2!b§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:§]!<§ = null;
         var _loc6_:int = 0;
         var _loc7_:§'y§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:Array = null;
         var _loc12_:String = null;
         if(this.§>W§)
         {
            _loc1_ = §=1§.§1[§.§;9§;
            _loc2_ = false;
            _loc3_ = 0;
            while(_loc3_ < this.§6i§.length)
            {
               _loc4_ = _loc1_[_loc3_];
               _loc5_ = §2!K§.getItemByName("LevelButton" + (_loc3_ + 1)) as §]!<§;
               if((_loc6_ = §=1§.§1[§.secondsToUnlock(_loc4_)) <= 0)
               {
                  if((_loc5_.mClip as MovieClip).currentFrameLabel == "Closed")
                  {
                     (_loc5_.mClip as MovieClip).MouseHitArea.removeEventListener(MouseEvent.MOUSE_UP,this.§1" §);
                  }
                  _loc5_.mClip.gotoAndStop("Open");
                  _loc5_.setEnabled(true);
                  §=1§.§1[§.§ 0§(_loc4_,true);
                  _loc5_.mClip.TextField_LevelNum.text.text = _loc3_ + 1 + "";
                  if((_loc8_ = (_loc7_ = AngryBirdsFP11.sUserProgress as §'y§).§']§(_loc4_)) && _loc8_ <= 3)
                  {
                     _loc5_.mClip.LevelSelection_Crown.gotoAndStop(_loc8_);
                  }
                  else
                  {
                     _loc5_.mClip.LevelSelection_Crown.gotoAndStop(4);
                  }
                  _loc9_ = _loc7_.§6!C§(_loc4_);
                  _loc5_.mClip.Textfield_LevelScore.text.text = §!U§(_loc9_);
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
                  _loc12_ = (_loc12_ = (_loc11_ = §=1§.§3!u§(_loc6_))[0] as String).replace(" Left","");
                  _loc5_.setEnabled(true);
                  (_loc5_.mClip.Textfield_LockTime.text as TextField).text = _loc12_;
               }
               _loc5_.mClip.UnlimitedPowerups1.visible = §`"J§.§;i§(_loc1_[_loc3_]);
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
         var _loc2_:§]!<§ = null;
         §]!d§ = §=1§.§1[§.§;9§;
         var _loc1_:int = 0;
         while(_loc1_ < §]!d§.length)
         {
            _loc2_ = §2!K§.getItemByName("LevelButton" + (_loc1_ + 1)) as §]!<§;
            if(_loc2_ != null && (_loc2_.mClip as MovieClip).currentFrameLabel == "Closed")
            {
               (_loc2_.mClip as MovieClip).MouseHitArea.removeEventListener(MouseEvent.MOUSE_UP,this.§1" §);
            }
            _loc1_++;
         }
         return super.deActivate();
      }
      
      private function §1" §(param1:MouseEvent) : void
      {
         §`B§.§29§(§=1§.§1[§.§,!X§.§6!§,"level-locked");
      }
      
      override protected function setLevelButtons() : int
      {
         var _loc3_:§]!<§ = null;
         this.§>W§ = true;
         var _loc1_:int = super.setLevelButtons();
         var _loc2_:int = 0;
         while(_loc2_ < §]!d§.length)
         {
            _loc3_ = §2!K§.getItemByName("LevelButton" + (_loc2_ + 1)) as §]!<§;
            if(_loc3_ != null && (_loc3_.mClip as MovieClip).currentFrameLabel == "Closed")
            {
               (_loc3_.mClip as MovieClip).MouseHitArea.addEventListener(MouseEvent.MOUSE_UP,this.§1" §);
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§1">§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
      {
         var _loc4_:§]!<§ = null;
         if(param2.indexOf("LEVEL_") != -1)
         {
            if(((_loc4_ = §2!K§.getItemByName("LevelButton" + param2.split("_")[1]) as §]!<§).mClip as MovieClip).currentFrameLabel == "Closed")
            {
               return;
            }
         }
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "LEVEL_5":
               §>Y§(§]!d§[4]);
               break;
            case "LEVEL_6":
               §>Y§(§]!d§[5]);
               break;
            case "BRANDED_SHOP":
               §`B§.§29§(§=1§.§1[§.§,!X§.§6!§,"level-selection");
               break;
            case "BRANDED_SHOP_OVER":
               (§2!K§.getItemByName("Button_BrandedShopButtonAnimation") as §="0§).mClip.scaleX = (§2!K§.getItemByName("Button_BrandedShopButtonAnimation") as §="0§).mClip.scaleX + 0.05;
               (§2!K§.getItemByName("Button_BrandedShopButtonAnimation") as §="0§).mClip.scaleY = (§2!K§.getItemByName("Button_BrandedShopButtonAnimation") as §="0§).mClip.scaleY + 0.05;
               break;
            case "BRANDED_SHOP_OUT":
               (§2!K§.getItemByName("Button_BrandedShopButtonAnimation") as §="0§).mClip.scaleX = (§2!K§.getItemByName("Button_BrandedShopButtonAnimation") as §="0§).mClip.scaleX - 0.05;
               (§2!K§.getItemByName("Button_BrandedShopButtonAnimation") as §="0§).mClip.scaleY = (§2!K§.getItemByName("Button_BrandedShopButtonAnimation") as §="0§).mClip.scaleY - 0.05;
               break;
            case "CUTSCENE_1":
            case "CUTSCENE_2":
            case "CUTSCENE_3":
            case "CUTSCENE_4":
            case "CUTSCENE_5":
               §6`§(int(param2.charAt(param2.length - 1)));
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:MovieClip = null;
         this.§2!b§();
         this.§]t§ += param1;
         if(this.§]t§ > this.§=!a§)
         {
            _loc2_ = (§2!K§.getItemByName("Button_BrandedShopButtonAnimation") as §="0§).mClip;
            if(_loc2_.currentFrame >= _loc2_.totalFrames - 1)
            {
               this.§]t§ = 0;
               _loc2_.gotoAndPlay(0);
            }
         }
         return super.run(param1);
      }
      
      private function §1">§() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:int = 0;
         var _loc4_:* = false;
         var _loc5_:int = 0;
         if(§]!d§)
         {
            _loc1_ = §^q§.COMPONENT_STATE_ACTIVE_DEFAULT;
            _loc2_ = §^q§.§?!0§;
            _loc3_ = 1;
            switch(§]!d§[0])
            {
               case §`!+§[0]:
                  _loc3_ = 1;
                  break;
               case §`!+§[1]:
                  _loc3_ = 2;
                  break;
               case §`!+§[2]:
                  _loc3_ = 3;
                  break;
               case §`!+§[3]:
                  _loc3_ = 4;
            }
            _loc4_ = (AngryBirdsFP11.sUserProgress as §'y§).§6!C§(§]!d§[5]) > 0;
            §4L§[0] = true;
            §4L§[1] = _loc3_ >= 2;
            §4L§[2] = _loc3_ >= 3;
            §4L§[3] = _loc3_ >= 4;
            §4L§[4] = _loc3_ >= 4 && _loc4_;
            _loc5_ = 0;
            while(_loc5_ < 5)
            {
               this.§&n§[_loc5_].setComponentState(!!§4L§[_loc5_] ? _loc1_ : _loc2_);
               _loc5_++;
            }
         }
      }
   }
}
