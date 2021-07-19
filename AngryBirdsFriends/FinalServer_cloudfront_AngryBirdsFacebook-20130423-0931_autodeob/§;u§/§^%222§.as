package §;u§
{
   import § "!§.§-"$§;
   import §"a§.§!"J§;
   import §%!I§.§]!M§;
   import §%i§.§0!Y§;
   import §%i§.§7"0§;
   import §%i§.§^n§;
   import §0D§.§3!R§;
   import §0D§.§3j§;
   import §1!t§.§!>§;
   import §1!t§.§""B§;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §5!Y§.§9"6§;
   import §8";§.§+d§;
   import §8m§.§6!n§;
   import §8m§.§;!e§;
   import §8m§.§@"M§;
   import §9!n§.§3-§;
   import §9!n§.LevelManager;
   import §9@§.§!"P§;
   import §=!>§.§2!Z§;
   import §@!"§.§?l§;
   import §@!%§.§#!$§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import com.AngryBirds.friendsbar.§]a§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §^"2§ extends §+d§
   {
      
      public static const STATE_NAME:String = "ChapterSelectionState";
       
      
      private var mChapterTween0:§6!K§ = null;
      
      private var mChapterTween1:§6!K§ = null;
      
      private var mChapterTween2:§6!K§ = null;
      
      private var mChapterTween3:§6!K§ = null;
      
      private var §;D§:§6!K§ = null;
      
      private var §!!_§:§6!K§ = null;
      
      private var §]!f§:§6!K§ = null;
      
      private var §&!X§:§6!K§ = null;
      
      private var §!!c§:§-"$§;
      
      public function §^"2§(param1:Boolean, param2:String = "ChapterSelectionState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"@§ = new §`_§(this);
         §2"@§.init(§ "<§.§%I§.Views.View_ChapterFacebookSelection[0]);
      }
      
      override public function activate() : void
      {
         var _loc8_:String = null;
         var _loc9_:§3j§ = null;
         super.activate();
         (§?l§.§ "G§ as §%"S§).§96§.§<!J§ = false;
         (§?l§.§ "G§ as §%"S§).§!n§("");
         if(§!"J§.§1&§)
         {
            §!"J§.§1&§.start();
         }
         §?l§.§'h§.§#"[§(false);
         §?l§.§'h§.clearLevel();
         var _loc1_:§!>§ = §2"@§.getItemByName("AvatarPlaceHolder");
         var _loc2_:§!>§ = §2"@§.getItemByName("AvatarSilhouette");
         if(_loc1_)
         {
            while(_loc1_.mClip.numChildren > 1)
            {
               _loc1_.mClip.removeChildAt(1);
            }
         }
         if(§%"S§.§!C§.§^!F§ && §%"S§.§!C§.§^!F§.§#!=§)
         {
            §9"6§.§#z§();
         }
         if(this.§!!c§ == null)
         {
            this.§!!c§ = new §-"$§((AngryBirdsFP11.sUserProgress as §#!$§).§5!0§,(AngryBirdsFP11.sUserProgress as §#!$§).avatarString,_loc2_.mClip,false,"240");
            this.§!!c§.scaleX = 0.75;
            this.§!!c§.scaleY = 0.75;
            this.§!!c§.x = -40;
            this.§!!c§.y = -50;
            _loc1_.mClip.addChild(this.§!!c§);
         }
         else
         {
            _loc1_.mClip.addChild(this.§!!c§);
            this.§!!c§.§&s§ = _loc2_.mClip;
            if(this.§!!c§.§5"$§)
            {
               this.§!!c§.§&s§.visible = false;
            }
         }
         this.playThemeMusic();
         var _loc3_:int = 0;
         while(_loc3_ <= 4)
         {
            this.§7u§(_loc3_);
            _loc3_++;
         }
         var _loc4_:§3-§ = LevelManager.§1!m§(3);
         §2"@§.setText(AngryBirdsFP11.sUserProgress.§[!a§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§3W§(_loc4_),"Textfield_CollectedStarsGE");
         §2"@§.setText(AngryBirdsFP11.sUserProgress.§]L§(_loc4_) + "/" + AngryBirdsFP11.sUserProgress.§="'§(_loc4_),"Textfield_ME_ScoreGE");
         this.§8T§();
         var _loc5_:§3-§ = LevelManager.§2R§("12");
         §2"@§.setText(AngryBirdsFP11.sUserProgress.§[!a§(_loc5_) + "/" + AngryBirdsFP11.sUserProgress.§3W§(_loc5_),"Textfield_CollectedStars3");
         §2"@§.setText(AngryBirdsFP11.sUserProgress.§]L§(_loc5_) + "/" + AngryBirdsFP11.sUserProgress.§="'§(_loc5_),"Textfield_ME_Score3");
         var _loc6_:§3-§ = LevelManager.§2R§("4000");
         §2"@§.setText(AngryBirdsFP11.sUserProgress.§[!a§(_loc6_) + "/" + AngryBirdsFP11.sUserProgress.§3W§(_loc6_),"Textfield_CollectedStarsW");
         §2"@§.setText(AngryBirdsFP11.sUserProgress.§]L§(_loc6_) + "/" + AngryBirdsFP11.sUserProgress.§="'§(_loc6_),"Textfield_ME_ScoreW");
         (§?l§.§ "G§ as §%"S§).§ b§(§]a§.§^!r§);
         (§2"@§.getItemByName("Button_Tournament") as §7"0§).mClip.Button_Graphic.gotoAndStop("STANDARD_BUTTON");
         (§2"@§.getItemByName("MovieClip_BackGround") as §0!Y§).mClip.gotoAndStop(0);
         if(§3!R§.§&"5§.§%!^§)
         {
            if(§3!R§.§&"5§.§%!^§.§ set§)
            {
               (§2"@§.getItemByName("MovieClip_BackGround") as §0!Y§).mClip.gotoAndStop(§3!R§.§&"5§.§%!^§.§ set§);
            }
            if(§3!R§.§&"5§.§%!^§.§<">§)
            {
               (§2"@§.getItemByName("Button_Tournament") as §7"0§).mClip.Button_Graphic.gotoAndStop(§3!R§.§&"5§.§%!^§.§<">§);
            }
            this.§1f§(§3!R§.§&"5§.§%!^§);
            if(_loc8_ = §3!R§.§&"5§.§&"N§)
            {
               if((_loc9_ = §3!R§.§&"5§.§%!f§(_loc8_)) && _loc9_.§!!-§)
               {
                  if(_loc9_.§ set§)
                  {
                     (§2"@§.getItemByName("MovieClip_BackGround") as §0!Y§).mClip.gotoAndStop(_loc9_.§ set§);
                  }
                  this.§1f§(_loc9_,true);
               }
            }
         }
         this.§ !g§();
         var _loc7_:Boolean = §2!Z§.§&9§();
         §2"@§.getItemByName("Container_Sale").visible = _loc7_;
         if(_loc7_)
         {
            §2"@§.setText(§2!Z§.§'!n§,"Textfield_Sale_Discount_Value");
         }
      }
      
      private function §&!Z§(param1:Event) : void
      {
         var _loc2_:MovieClip = param1.currentTarget as MovieClip;
         if(_loc2_.currentFrame == _loc2_.totalFrames)
         {
            this.§8",§();
         }
      }
      
      private function § !g§() : void
      {
         var _loc1_:§0!Y§ = §2"@§.getItemByName("Container_NewChapterSelection") as §0!Y§;
         var _loc2_:§^n§ = _loc1_.getItemByName("Animation_Star_Wars_Promo") as §^n§;
         _loc2_.mClip.gotoAndPlay(0);
         _loc2_.mClip.addEventListener(Event.ENTER_FRAME,this.§&!Z§);
         _loc2_.visible = true;
         var _loc3_:§7"0§ = _loc1_.getItemByName("Button_Star_Wars_Promo") as §7"0§;
         _loc3_.visible = false;
      }
      
      private function §8",§() : void
      {
         var _loc1_:§0!Y§ = §2"@§.getItemByName("Container_NewChapterSelection") as §0!Y§;
         var _loc2_:§^n§ = _loc1_.getItemByName("Animation_Star_Wars_Promo") as §^n§;
         _loc2_.mClip.stop();
         _loc2_.mClip.removeEventListener(Event.ENTER_FRAME,this.§&!Z§);
         _loc2_.visible = false;
         var _loc3_:§7"0§ = _loc1_.getItemByName("Button_Star_Wars_Promo") as §7"0§;
         _loc3_.visible = true;
      }
      
      private function §1f§(param1:§3j§, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:§!>§ = null;
         if(param1.§^"1§ != null)
         {
            _loc3_ = 0;
            while(_loc3_ < param1.§^"1§.length)
            {
               _loc4_ = param1.§^"1§[_loc3_];
               if(!(_loc5_ = §2"@§.getItemByName(_loc4_)))
               {
                  throw new Error("Tournament teaser graphic id was not found!");
               }
               _loc5_.setVisibility(true);
               if(!param2)
               {
                  _loc5_.setEnabled(true);
               }
               _loc3_++;
            }
         }
      }
      
      protected function playThemeMusic() : void
      {
         var _loc1_:§6!n§ = §%"S§.§!C§.§#"C§();
         _loc1_.§3%§(§;!e§.§^a§);
      }
      
      protected function §8T§() : void
      {
         var _loc1_:int = §3!R§.§&"5§.§0h§();
         var _loc2_:String = "Your Rank: " + _loc1_ + §!"P§.§>!9§(_loc1_);
         if(_loc1_ == §3!R§.§%!B§)
         {
            _loc2_ = "Join the fun!";
         }
         §2"@§.setText(_loc2_,"Textfield_TournamentRank");
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§0`§();
         §2"@§.getItemByName("Container_Chapter0").mClip.scaleX = 1;
         §2"@§.getItemByName("Container_Chapter0").mClip.scaleY = 1;
         §2"@§.getItemByName("Container_Chapter1").mClip.scaleX = 1;
         §2"@§.getItemByName("Container_Chapter1").mClip.scaleY = 1;
         §2"@§.getItemByName("Container_Chapter2").mClip.scaleX = 1;
         §2"@§.getItemByName("Container_Chapter2").mClip.scaleY = 1;
         §2"@§.getItemByName("Container_ChapterGoldenEggs").mClip.scaleX = 1;
         §2"@§.getItemByName("Container_ChapterGoldenEggs").mClip.scaleY = 1;
         §2"@§.getItemByName("Container_Tournament").mClip.scaleX = 1;
         §2"@§.getItemByName("Container_Tournament").mClip.scaleY = 1;
      }
      
      private function §0`§() : void
      {
         if(this.mChapterTween0 != null)
         {
            this.mChapterTween0.stop();
            this.mChapterTween0 = null;
         }
         if(this.mChapterTween1 != null)
         {
            this.mChapterTween1.stop();
            this.mChapterTween1 = null;
         }
         if(this.mChapterTween2 != null)
         {
            this.mChapterTween2.stop();
            this.mChapterTween2 = null;
         }
         if(this.mChapterTween3 != null)
         {
            this.mChapterTween3.stop();
            this.mChapterTween3 = null;
         }
         if(this.§;D§ != null)
         {
            this.§;D§.stop();
            this.§;D§ = null;
         }
      }
      
      private function §7u§(param1:int, param2:String = "", param3:String = "") : void
      {
         var _loc4_:§3-§ = null;
         if(param3 == "")
         {
            _loc4_ = LevelManager.§1!m§(param1);
         }
         else
         {
            _loc4_ = LevelManager.§2R§(param3);
         }
         if(_loc4_ == null)
         {
            return;
         }
         if(param2 == "")
         {
            param2 = param1 + "";
         }
         var _loc5_:int = AngryBirdsFP11.sUserProgress.§[!a§(_loc4_);
         var _loc6_:int = AngryBirdsFP11.sUserProgress.§3W§(_loc4_);
         var _loc7_:int = AngryBirdsFP11.sUserProgress.§]L§(_loc4_);
         var _loc8_:int = AngryBirdsFP11.sUserProgress.§="'§(_loc4_);
         §2"@§.setText(_loc5_ + "/" + _loc6_,"Textfield_CollectedStars" + param2);
         §2"@§.setText(_loc7_ + "/" + _loc8_,"Textfield_ME_Score" + param2);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+d§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §2"@§.setText(§3!R§.§&"5§.§^!y§()[0],"Textfield_TimeLeft");
         var _loc3_:Boolean = §2!Z§.§&9§();
         §2"@§.getItemByName("Container_Sale").visible = _loc3_;
         if(_loc3_)
         {
            §2"@§.setText(§2!Z§.§2"I§(),"Sale_Countdown");
         }
         if(mNextState.length > 0)
         {
            return §+d§.STATE_STATUS_COMPLETED;
         }
         return §+d§.STATE_STATUS_RUNNING;
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc5_:int = 0;
         var _loc4_:int;
         if((_loc4_ = param2.indexOf("EASTER_EGG_")) != -1)
         {
            _loc5_ = int(param2.substr("EASTER_EGG_".length));
            LevelManager.§,!m§("1000-" + _loc5_);
            mNextState = StateCutScene.STATE_NAME;
         }
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "AVATAREDITOR":
               §9"6§.§<h§();
               break;
            case "showCredits":
               mNextState = §&"[§.STATE_NAME;
               break;
            case "CHAPTER2":
               §@"M§.§3"C§("Menu_Confirm");
               LevelManager.§,m§ = 2;
               mNextState = §9"@§.STATE_NAME;
               break;
            case "CHAPTER3":
               §@"M§.§3"C§("Menu_Confirm");
               LevelManager.§,m§ = 5;
               mNextState = §9"@§.STATE_NAME;
               break;
            case "CHAPTER0":
               §@"M§.§3"C§("Menu_Confirm");
               LevelManager.§,m§ = 0;
               mNextState = §9"@§.STATE_NAME;
               break;
            case "CHAPTER1":
               §@"M§.§3"C§("Menu_Confirm");
               LevelManager.§,m§ = 1;
               mNextState = §9"@§.STATE_NAME;
               break;
            case "CHAPTERGE":
               §@"M§.§3"C§("Menu_Confirm");
               LevelManager.§,m§ = 3;
               mNextState = §4"Y§.STATE_NAME;
               break;
            case "SALE":
               if(§2!Z§.§25§ != null)
               {
                  §@"M§.§3"C§("Menu_Confirm");
                  §9"6§.§;!w§();
               }
               break;
            case "CHAPTER0OVER":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_Chapter0").mClip,{
                  "scaleX":1.2,
                  "scaleY":1.2
               },null,0.2);
               this.mChapterTween0.play();
               break;
            case "CHAPTER0OUT":
               if(this.mChapterTween0 != null)
               {
                  this.mChapterTween0.stop();
               }
               this.mChapterTween0 = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_Chapter0").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§0W§.§8!s§);
               this.mChapterTween0.play();
               break;
            case "CHAPTER1OVER":
               if(this.mChapterTween1 != null)
               {
                  this.mChapterTween1.stop();
               }
               this.mChapterTween1 = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_Chapter1").mClip,{
                  "scaleX":1.2,
                  "scaleY":1.2
               },null,0.2);
               this.mChapterTween1.play();
               break;
            case "CHAPTER1OUT":
               if(this.mChapterTween1 != null)
               {
                  this.mChapterTween1.stop();
               }
               this.mChapterTween1 = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_Chapter1").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§0W§.§8!s§);
               this.mChapterTween1.play();
               break;
            case "CHAPTER2OVER":
               if(this.mChapterTween2 != null)
               {
                  this.mChapterTween2.stop();
               }
               this.mChapterTween2 = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_Chapter2").mClip,{
                  "scaleX":1.2,
                  "scaleY":1.2
               },null,0.2);
               this.mChapterTween2.play();
               break;
            case "CHAPTER2OUT":
               if(this.mChapterTween2 != null)
               {
                  this.mChapterTween2.stop();
               }
               this.mChapterTween2 = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_Chapter2").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§0W§.§8!s§);
               this.mChapterTween2.play();
               break;
            case "CHAPTER3OVER":
               if(this.mChapterTween3 != null)
               {
                  this.mChapterTween3.stop();
               }
               this.mChapterTween3 = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_Chapter3").mClip,{
                  "scaleX":1.2,
                  "scaleY":1.2
               },null,0.2);
               this.mChapterTween3.play();
               break;
            case "CHAPTER3OUT":
               if(this.mChapterTween3 != null)
               {
                  this.mChapterTween3.stop();
               }
               this.mChapterTween3 = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_Chapter3").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§0W§.§8!s§);
               this.mChapterTween3.play();
               break;
            case "CHAPTERGEOVER":
               if(this.§!!_§ != null)
               {
                  this.§!!_§.stop();
               }
               this.§!!_§ = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_ChapterGoldenEggs").mClip,{
                  "scaleX":1.2,
                  "scaleY":1.2
               },null,0.2);
               this.§!!_§.play();
               break;
            case "CHAPTERGEOUT":
               if(this.§!!_§ != null)
               {
                  this.§!!_§.stop();
               }
               this.§!!_§ = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_ChapterGoldenEggs").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§0W§.§8!s§);
               this.§!!_§.play();
               break;
            case "TOURNAMENTOVER":
               if(this.§;D§ != null)
               {
                  this.§;D§.stop();
               }
               this.§;D§ = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1.2,
                  "scaleY":1.2
               },null,0.2);
               this.§;D§.play();
               break;
            case "TOURNAMENTOUT":
               if(this.§;D§ != null)
               {
                  this.§;D§.stop();
               }
               this.§;D§ = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_Tournament").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§0W§.§8!s§);
               this.§;D§.play();
               break;
            case "SALEOVER":
               if(this.§]!f§ != null)
               {
                  this.§]!f§.stop();
               }
               this.§]!f§ = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Sale_Container").mClip,{
                  "scaleX":1.2,
                  "scaleY":1.2
               },null,0.2);
               this.§]!f§.play();
               break;
            case "SALEOUT":
               if(this.§]!f§ != null)
               {
                  this.§]!f§.stop();
               }
               this.§]!f§ = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Sale_Container").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§0W§.§8!s§);
               this.§]!f§.play();
               break;
            case "TOURNAMENT":
            case "CHRISTMASTEASER":
               LevelManager.§,m§ = 4;
               mNextState = §]!M§.STATE_NAME;
               break;
            case "STAR_WARS_PROMO":
               §9"6§.§6"C§();
               break;
            case "CHAPTERWONDERLAND":
               §@"M§.§3"C§("Menu_Confirm");
               LevelManager.§,m§ = 6;
               mNextState = §5<§.STATE_NAME;
               break;
            case "CHAPTERWONDERLANDOVER":
               if(this.§&!X§ != null)
               {
                  this.§&!X§.stop();
               }
               this.§&!X§ = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_ChapterWonderland").mClip,{
                  "scaleX":1.2,
                  "scaleY":1.2
               },null,0.2);
               this.§&!X§.play();
               break;
            case "CHAPTERWONDERLANDOUT":
               if(this.§&!X§ != null)
               {
                  this.§&!X§.stop();
               }
               this.§&!X§ = §0W§.§&"5§.§]!r§(§2"@§.getItemByName("Container_ChapterWonderland").mClip,{
                  "scaleX":1,
                  "scaleY":1
               },null,0.5,§0W§.§8!s§);
               this.§&!X§.play();
         }
      }
   }
}
