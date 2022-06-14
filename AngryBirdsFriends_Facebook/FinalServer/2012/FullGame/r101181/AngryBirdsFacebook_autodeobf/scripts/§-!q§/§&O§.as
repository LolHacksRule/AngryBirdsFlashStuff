package §-!q§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §%!v§.§[<§;
   import §'!s§.§%?§;
   import §2!i§.§'M§;
   import §4!e§.§08§;
   import §4!e§.§^!D§;
   import §7-§.§,!C§;
   import §[!K§.§-k§;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.TextField;
   import flash.utils.getTimer;
   
   public class §&O§ extends §-k§
   {
      
      public static var §3!w§:Boolean = false;
      
      public static const STATE_NAME:String = "TournamentState";
      
      private static const § !f§:int = 4;
       
      
      private var §@H§:Vector.<§^!D§>;
      
      private var §<!Y§:Boolean = false;
      
      public function §&O§(param1:Boolean = false, param2:String = "TournamentState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         var _loc3_:§^!D§ = null;
         super.init();
         §6w§ = new §7!A§(this);
         §6w§.init(§ "A§.§4[§.Views.View_BrandedTournament[0]);
         var _loc1_:Array = §,!C§.§;"§.§-&§;
         this.§@H§ = new Vector.<§^!D§>(_loc1_.length,true);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            _loc3_ = §6w§.getItemByName("LevelButton" + (_loc2_ + 1)) as §^!D§;
            this.§@H§[_loc2_] = _loc3_;
            _loc2_++;
         }
         (§6w§.getItemByName("MovieClip_ContestBox") as §08§).mClip.gotoAndStop("CONTEST_EMPTY");
      }
      
      override protected function get starPillarOwnDefinition() : String
      {
         return "StarpillarBrandedOwn";
      }
      
      override protected function get starPillarEnemyDefinition() : String
      {
         return "StarpillarBrandedEnemy";
      }
      
      override protected function requestTournamentInfo() : void
      {
         super.requestTournamentInfo();
      }
      
      private function §[a§() : void
      {
         var _loc1_:Array = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:§^!D§ = null;
         var _loc6_:int = 0;
         var _loc7_:§[<§ = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:Array = null;
         var _loc12_:String = null;
         if(this.§<!Y§)
         {
            _loc1_ = §,!C§.§;"§.§-&§;
            _loc2_ = false;
            _loc3_ = 0;
            while(_loc3_ < this.§@H§.length)
            {
               _loc4_ = _loc1_[_loc3_];
               _loc5_ = §6w§.getItemByName("LevelButton" + (_loc3_ + 1)) as §^!D§;
               if(!§,!C§.§;"§.isLevelOpen(_loc4_))
               {
                  if((_loc6_ = §,!C§.§;"§.secondsToUnlock(_loc4_) - (getTimer() - §]u§) / 1000) <= 0)
                  {
                     _loc5_.mClip.gotoAndStop("Open");
                     _loc5_.setEnabled(true);
                     §,!C§.§;"§.§ 4§(_loc4_,true);
                     _loc5_.mClip.TextField_LevelNum.text.text = _loc3_ + 1 + "";
                     if((_loc8_ = (_loc7_ = AngryBirdsFP11.sUserProgress as §[<§).§4!N§(_loc4_)) && _loc8_ <= 3)
                     {
                        _loc5_.mClip.LevelSelection_Crown.gotoAndStop(_loc8_);
                     }
                     else
                     {
                        _loc5_.mClip.LevelSelection_Crown.gotoAndStop(4);
                     }
                     _loc9_ = _loc7_.§<U§(_loc4_);
                     _loc5_.mClip.Textfield_LevelScore.text.text = §"!V§(_loc9_);
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
                     _loc12_ = (_loc12_ = (_loc11_ = §,!C§.§;"§.§52§(_loc6_))[0] as String).replace(" Left","");
                     (_loc5_.mClip.Movieclip_UnlockBanner as MovieClip).visible = true;
                     _loc5_.setEnabled(true);
                     (_loc5_.mClip as MovieClip).addEventListener(MouseEvent.MOUSE_UP,this.§&h§);
                     (_loc5_.mClip.Textfield_LockTime.text as TextField).text = _loc12_;
                  }
               }
               _loc3_++;
            }
         }
      }
      
      override public function injectData() : void
      {
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         super.injectData();
         var _loc1_:Boolean = true;
         var _loc2_:§[<§ = AngryBirdsFP11.sUserProgress as §[<§;
         var _loc3_:int = 0;
         while(_loc3_ < § !f§)
         {
            _loc6_ = §92§[_loc3_];
            _loc7_ = _loc2_.§<U§(_loc6_);
            if((_loc8_ = _loc2_.getStarsForLevel(_loc6_,_loc7_)) < 1)
            {
               _loc1_ = false;
               break;
            }
            _loc3_++;
         }
         var _loc4_:String = !!_loc1_ ? "CONTEST_ENTER" : "CONTEST_INFO";
         (§6w§.getItemByName("MovieClip_ContestBox") as §08§).mClip.gotoAndStop(_loc4_);
         (§6w§.getItemByName("Button_CompetitionEnter") as §^!D§).setActiveStatus(_loc1_);
         (§6w§.getItemByName("Button_CompetitionEnter") as §^!D§).setVisibility(_loc1_);
         var _loc5_:Boolean;
         if((_loc5_ = Boolean(§,!C§.§;"§.§!!M§)) || §3!w§)
         {
            (§6w§.getItemByName("MovieClip_ContestBox") as §08§).mClip.gotoAndStop("CONTEST_ALREADY_ENTERED");
            (§6w§.getItemByName("Button_CompetitionEnter") as §^!D§).setActiveStatus(false);
            (§6w§.getItemByName("Button_CompetitionEnter") as §^!D§).setVisibility(false);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc2_:§^!D§ = null;
         §92§ = §,!C§.§;"§.§-&§;
         var _loc1_:int = 0;
         while(_loc1_ < §92§.length)
         {
            _loc2_ = §6w§.getItemByName("LevelButton" + (_loc1_ + 1)) as §^!D§;
            if(_loc2_ != null && (_loc2_.mClip as MovieClip).currentFrameLabel == "Closed")
            {
               (_loc2_.mClip as MovieClip).removeEventListener(MouseEvent.MOUSE_UP,this.§&h§);
            }
            _loc1_++;
         }
         return super.deActivate();
      }
      
      private function §&h§(param1:MouseEvent) : void
      {
      }
      
      override protected function setLevelButtons() : int
      {
         this.§<!Y§ = true;
         return super.setLevelButtons();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc4_:§^!D§ = null;
         if(param2.indexOf("LEVEL_") != -1)
         {
            if(((_loc4_ = §6w§.getItemByName("LevelButton" + param2.split("_")[1]) as §^!D§).mClip as MovieClip).currentFrameLabel == "Closed")
            {
               §%?§.§ ]§("lockedlevel");
               return;
            }
         }
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "LEVEL_5":
               §8"'§(§92§[4]);
               break;
            case "LEVEL_6":
               §8"'§(§92§[5]);
               break;
            case "ENTER_COMPETITION":
               §%?§.§"!#§();
               break;
            case "LOTUS_LINK":
               navigateToURL(new URLRequest("http://www.facebook.com/LotusF1Team"),"_blank");
         }
      }
      
      override public function run(param1:Number) : int
      {
         return super.run(param1);
      }
   }
}
