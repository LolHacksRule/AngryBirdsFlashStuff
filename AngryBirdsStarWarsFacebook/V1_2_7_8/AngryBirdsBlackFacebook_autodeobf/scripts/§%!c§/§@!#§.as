package §%!c§
{
   import §!X§.§5+§;
   import §!X§.§@!?§;
   import §'+§.§="B§;
   import §,"v§.§@§;
   import §,#+§.§7!m§;
   import §1!o§.§<"]§;
   import §3"R§.§0!H§;
   import §4##§.§7!B§;
   import §4m§.§5!R§;
   import §4m§.§^T§;
   import §6"e§.§+!§;
   import §7""§.§0I§;
   import §7""§.§4!z§;
   import §7""§.§>!5§;
   import §;q§.§ true§;
   import §<"s§.§0u§;
   import §<"s§.CrystalImprovementsPopup;
   import §<"s§.EnergyOutPopup;
   import §=N§.TournamentHistoryPopup;
   import §=N§.TournamentInfoPopup;
   import §^!`§.§%n§;
   import §^!`§.§6"!§;
   import §`!b§.§`§;
   import §`"8§.§-!w§;
   import §`"8§.§6v§;
   import §`"8§.§>6§;
   import com.angrybirds.§;!e§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §@!#§ extends §@!?§
   {
      
      public static const §'#2§:String = "TournamentState";
      
      private static const §7"N§:Number = 1000 / 60;
      
      private static const §,!"§:int = 5;
       
      
      private var §?8§:§>6§;
      
      private var §="W§:Vector.<§>!5§>;
      
      private var §%]§:§>!5§;
      
      private var §@,§:§0I§;
      
      private var §2j§:Array;
      
      private var §="X§:§#!t§;
      
      public function §@!#§(param1:§7!m§, param2:§="B§, param3:Boolean = false, param4:String = "TournamentState")
      {
         this.§2j§ = [];
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         var _loc3_:§>!5§ = null;
         §+!g§ = true;
         super.init();
         §>I§ = new §6"!§(this);
         §>I§.init(§%n§.§ set§.Views.View_Tournament[0]);
         this.§?8§ = §-!w§(§;"@§.singleton.dataModel).§2!J§;
         this.§="W§ = new Vector.<§>!5§>(§,!"§);
         var _loc1_:int = this.§?8§.§@"C§;
         var _loc2_:int = 0;
         while(_loc2_ < §,!"§)
         {
            _loc3_ = this.§="W§[_loc2_] = new §>!5§(§>I§.getItemByName("Container_LevelSelection").mClip["level" + (_loc2_ + 1)].levelButton,§>I§.getItemByName("Container_LevelSelection").mClip["level" + (_loc2_ + 1)].tournamentScore,_loc2_ + 1);
            §>I§.getItemByName("Container_LevelSelection").mClip["level" + (_loc2_ + 1)].levelButton.tournamentIcon.gotoAndStop("planet_" + _loc1_);
            _loc3_.addEventListener(MouseEvent.CLICK,this.§#!i§);
            _loc3_.addEventListener(Event.CHANGE,this.§>#&§);
            _loc2_++;
         }
         §>I§.getItemByName("Container_TotalTrophies").mClip.Container_TotalTrophiesContent.floatingPlatform.gotoAndStop("platform_0" + _loc1_);
         switch(_loc1_)
         {
            case 1:
            default:
               §>I§.getItemByName("MovieClip_BackgroundBespin").mClip.alpha = 0;
               break;
            case 2:
               §>I§.getItemByName("MovieClip_Background").mClip.alpha = 0;
         }
         this.§@,§ = new §0I§("StarBackground");
         §>I§.movieClip.addChildAt(this.§@,§,0);
         this.§!"g§(false);
      }
      
      private function §#!i§(param1:MouseEvent) : void
      {
         var _loc3_:§-!w§ = null;
         var _loc4_:§5!R§ = null;
         var _loc5_:String = null;
         if(isTransitioning)
         {
            return;
         }
         var _loc2_:§>!5§ = §>!5§(param1.target);
         if(_loc2_.§@!l§)
         {
            return;
         }
         if(_loc2_.isLocked)
         {
            if(_loc2_.canBuyToUnlock)
            {
               _loc3_ = §-!w§(§;"@§.singleton.dataModel);
               if(_loc3_.§;L§.starCoins >= _loc2_.§,"=§)
               {
                  this.§%]§ = _loc2_;
                  _loc2_.canBuyToUnlock = false;
                  _loc2_.§@!l§ = true;
                  _loc3_.§;L§.§1"F§(_loc2_.§,"=§);
                  _loc3_.§9"1§.addEventListener(§<"]§.§2"S§,this.§6O§);
                  _loc3_.§9"1§.§!l§(new § true§("TournamentLevel",1,_loc2_.§,"=§));
                  §@§.§=Y§("black_shop_purchase");
               }
               else
               {
                  §;"@§.singleton.popupManager.openPopup(new §+!§(§0u§.§1"J§,§^T§.TOP,§+!§.§7!W§),true,true,true);
               }
            }
         }
         else if(§-!w§(§;"@§.singleton.dataModel).§`!§.energy <= 0)
         {
            _loc4_ = new EnergyOutPopup(§0u§.§1"J§,§^T§.TOP);
            §;"@§.singleton.popupManager.openPopup(_loc4_,true,true,true);
         }
         else
         {
            _loc5_ = this.§?8§.levelObjects[this.§="W§.indexOf(_loc2_)].levelId;
            §@§.§=Y§("misc_menubuttonproceed_1");
            § !p§.loadLevel(_loc5_);
            §0"B§(§;"h§.§'#2§);
         }
      }
      
      private function §6O§(param1:§<"]§) : void
      {
         §-!w§(§;"@§.singleton.dataModel).§9"1§.removeEventListener(§<"]§.§2"S§,this.§6O§);
         this.§%]§.§@!l§ = false;
         this.§%]§.isLocked = false;
         delete this.§%]§.§^=§.unlocksAt;
         this.§%]§ = null;
         this.§3B§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         var _loc4_:§5!R§ = null;
         switch(param2)
         {
            case "BACK":
               §@§.§=Y§("misc_menubuttonback_1");
               §0"B§(§5+§.§'#2§,true);
               break;
            case "TOURNAMENT_HISTORY":
               §@§.§=Y§("misc_menubuttonback_1");
               _loc4_ = new TournamentHistoryPopup(§0u§.§1"J§,§^T§.DEFAULT);
               §;"@§.singleton.popupManager.openPopup(_loc4_,true,true,true);
               break;
            default:
               super.onUIInteraction(param1,param2,param3);
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:§5!R§ = null;
         §;!e§.§<x§.clearLevel();
         §;!e§.§<x§.§5!y§(false);
         §;"@§.singleton.playThemeMusic();
         super.activate(param1);
         if(this.§?8§.§4,§)
         {
            this.§?8§.reset();
         }
         this.§!"g§(this.§?8§.isLoading);
         this.§?8§.addEventListener(§>6§.§]"R§,this.§,!u§);
         this.§?8§.addEventListener(§>6§.§5"G§,this.§]"0§);
         if(!this.§?8§.isLoading)
         {
            this.§7"K§();
         }
         §>I§.movieClip.addEventListener(Event.ENTER_FRAME,this.§`_§);
         if(!§;"@§.singleton.dataModel.userProgress.hasTutorialBeenSeen(TournamentInfoPopup.§8j§))
         {
            §;"@§.singleton.popupManager.openPopup(new TournamentInfoPopup(§0u§.§1"J§,§^T§.DEFAULT),true,true,true);
            §;"@§.singleton.dataModel.userProgress.saveTutorialSeen(TournamentInfoPopup.§8j§);
         }
         if(this.§?8§.§"F§ != null && this.§?8§.§"F§.length > 0)
         {
            if(!§-!w§(§&"1§(§;"@§.singleton).dataModel).userProgress.hasTutorialBeenSeen(CrystalImprovementsPopup.§^"3§))
            {
               _loc2_ = new CrystalImprovementsPopup(§0u§.§1"J§,§^T§.TOP);
               §;"@§.singleton.popupManager.openPopup(_loc2_,true,true,true);
            }
         }
      }
      
      private function §&!]§() : void
      {
         this.§="X§ = new §#!t§(§>I§.getItemByName("MovieClip_UpSell").mClip,§-!w§(§;"@§.singleton.dataModel).§9"1§);
      }
      
      private function §]"0§(param1:Event) : void
      {
         this.§!"g§(true);
      }
      
      private function §,!u§(param1:Event) : void
      {
         this.§7"K§();
      }
      
      override public function deActivate() : void
      {
         var _loc1_:§>!5§ = null;
         super.deActivate();
         if(this.§="X§)
         {
            this.§="X§.dispose();
         }
         this.§?8§.removeEventListener(§>6§.§]"R§,this.§,!u§);
         this.§?8§.removeEventListener(§>6§.§5"G§,this.§]"0§);
         §-!w§(§;"@§.singleton.dataModel).§9"1§.removeEventListener(§<"]§.§2"S§,this.§6O§);
         §-!w§(§;"@§.singleton.dataModel).§9"1§.removeEventListener(§<"]§.§=n§,this.§@-§);
         if(this.§%]§ != null)
         {
            this.§?8§.§4,§ = true;
            this.§%]§ = null;
         }
         §>I§.movieClip.removeEventListener(Event.ENTER_FRAME,this.§`_§);
         this.§+!b§();
         for each(_loc1_ in this.§="W§)
         {
            _loc1_.§8!x§();
         }
      }
      
      private function §+!b§() : void
      {
         var _loc1_:§4!z§ = null;
         for each(_loc1_ in this.§2j§)
         {
            _loc1_.parent.removeChild(_loc1_);
            _loc1_.dispose();
         }
         this.§2j§.length = 0;
      }
      
      private function §`_§(param1:Event) : void
      {
         if(!this.§?8§.isLoading)
         {
            if(this.§?8§.§4,§)
            {
               this.§?8§.reset();
            }
            else
            {
               §>I§.getItemByName("Container_TournamentTitle").mClip.tournamentTitle.txtTimeLeft.text = this.§?8§.§"#$§();
            }
         }
      }
      
      private function §!"g§(param1:Boolean) : void
      {
         §>I§.getItemByName("MovieClip_TournamentLoading").setVisibility(param1);
         §>I§.getItemByName("Container_TournamentTitle").setVisibility(!param1);
         §>I§.getItemByName("Container_LevelSelection").setVisibility(!param1);
         §>I§.getItemByName("Container_TopThree").setVisibility(!param1);
         §>I§.getItemByName("Container_TotalTrophies").setVisibility(!param1);
      }
      
      private function §@-§(param1:§<"]§) : void
      {
         §-!w§(§;"@§.singleton.dataModel).§9"1§.removeEventListener(§<"]§.§=n§,this.§@-§);
         this.§7"K§();
      }
      
      private function §7"K§() : void
      {
         var _loc1_:§6v§ = §-!w§(§;"@§.singleton.dataModel).§9"1§;
         if(_loc1_.§@!&§ == null)
         {
            this.§!"g§(true);
            _loc1_.addEventListener(§<"]§.§=n§,this.§@-§);
            return;
         }
         this.§!"g§(false);
         var _loc2_:int = 0;
         while(_loc2_ < §,!"§)
         {
            if(!this.§?8§.levelObjects || _loc2_ >= this.§?8§.levelObjects.length || !this.§?8§.levelObjects[_loc2_])
            {
               throw new Error("Tournament level " + (_loc2_ + 1) + " missing.");
            }
            this.§&6§(this.§="W§[_loc2_],this.§?8§.levelObjects[_loc2_]);
            _loc2_++;
         }
         this.§3B§();
         this.§`!r§();
         this.§["5§();
         §&"1§(§;"@§.singleton).§`!u§.§[r§(this.§?8§.§?!x§);
      }
      
      private function §&6§(param1:§>!5§, param2:Object) : void
      {
         var _loc3_:String = param2.levelId;
         var _loc4_:int = this.§?8§.getScoreForLevel(_loc3_);
         var _loc5_:int = this.§?8§.getRankForLevel(_loc3_);
         param1.§8!x§();
         param1.§^=§ = param2;
         param1.§@!l§ = false;
         param1.§-">§(param2.unlocksAt);
         param1.score = _loc4_;
         param1.§^"2§ = §;"@§.singleton.dataModel.userProgress.getStarsForLevel(_loc3_,_loc4_);
         param1.§["Q§ = _loc5_;
         param1.§,"=§ = §-!w§(§;"@§.singleton.dataModel).§9"1§.§@!&§.§]"j§;
      }
      
      private function §`!r§() : void
      {
         var _loc1_:MovieClip = §>I§.getItemByName("Container_TotalTrophiesContent").mClip;
         _loc1_.txtGold.text = "x" + this.§?8§.goldTrophies;
         _loc1_.txtSilver.text = "x" + this.§?8§.silverTrophies;
         _loc1_.txtBronze.text = "x" + this.§?8§.bronzeTrophies;
      }
      
      private function §["5§() : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:int = 0;
         var _loc4_:§`#1§ = null;
         var _loc5_:§4!z§ = null;
         this.§+!b§();
         var _loc1_:int = 0;
         while(_loc1_ < 3)
         {
            _loc2_ = §>I§.getItemByName("Container_TopThree").mClip.topThree["top" + (_loc1_ + 1)];
            _loc3_ = §-!w§(§;"@§.singleton.dataModel).§2!J§.§@"C§;
            _loc2_.floatingPlatform.gotoAndStop("platform_0" + _loc3_);
            if(this.§?8§.§?!x§.data.length > _loc1_)
            {
               if(_loc4_ = this.§?8§.§?!x§.data[_loc1_] as §`#1§)
               {
                  _loc2_.visible = true;
                  _loc2_.txtName.text = _loc4_.userName;
                  _loc2_.txtScore.text = _loc4_.§7"_§;
                  _loc2_.txtName.mouseEnabled = false;
                  _loc2_.txtScore.mouseEnabled = false;
                  _loc5_ = new §4!z§(_loc4_.userId);
                  _loc2_.profilePic.addChild(_loc5_);
                  _loc5_.scaleY = 1.44;
                  _loc5_.scaleX = 1.44;
                  this.§2j§.push(_loc5_);
               }
               else
               {
                  _loc2_.visible = false;
               }
            }
            else
            {
               _loc2_.visible = false;
            }
            _loc1_++;
         }
      }
      
      private function §>#&§(param1:Event) : void
      {
         this.§3B§();
      }
      
      private function §3B§() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < §,!"§)
         {
            this.§="W§[_loc1_].canBuyToUnlock = _loc1_ > 0 && this.§="W§[_loc1_].isLocked && !this.§="W§[_loc1_ - 1].isLocked;
            _loc1_++;
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         super.setViewSize(param1,param2);
         this.§@,§.setSize(param1,param2);
      }
      
      override protected function createTransition(param1:Vector.<MovieClip>) : void
      {
         §,_§ = new §0!H§(param1,§ "6§.stage);
      }
   }
}
