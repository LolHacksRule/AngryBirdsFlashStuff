package §6!!§
{
   import § P§.§'!`§;
   import §!!G§.§0§;
   import §"G§.§%n§;
   import §#v§.§#!?§;
   import §#v§.§6^§;
   import §%$!§.§%h§;
   import §%$!§.§+3§;
   import §%$!§.§,"n§;
   import §&#S§.§""Z§;
   import §&#S§.§+,§;
   import §'!U§.§4P§;
   import §'"-§.§ !_§;
   import §'"-§.§;#[§;
   import §'"-§.§`j§;
   import §'U§.§]#[§;
   import §'z§.§4!x§;
   import §'z§.§7!J§;
   import §+!d§.§&b§;
   import §+!d§.§2![§;
   import §+!d§.§3§;
   import §,!=§.§ N§;
   import §,!=§.§3"%§;
   import §,!=§.§6!'§;
   import §,!=§.§@#j§;
   import §,!=§.§`$ §;
   import §-"i§.§6#A§;
   import §0#d§.§<#u§;
   import §1"0§.§4$#§;
   import §3!Q§.§<K§;
   import §3!T§.§3">§;
   import §4#%§.§@#@§;
   import §5"$§.§7!Y§;
   import §5"$§.§]!m§;
   import §5"$§.§`"Z§;
   import §52§.§#%§;
   import §52§.§&#q§;
   import §52§.§;!p§;
   import §52§.§@M§;
   import §6"r§.§0"<§;
   import §6"r§.§="T§;
   import §6"r§.§=O§;
   import §8§.§ ;§;
   import §8§.§#$+§;
   import §8§.§7#!§;
   import §8§.§@!"§;
   import §8§.§[!9§;
   import §9!s§.§!#d§;
   import §;!H§.§<!K§;
   import §;!Q§.§%!Q§;
   import §;!Q§.§^"!§;
   import §<H§.§1"T§;
   import §=!7§.§ #f§;
   import §>!#§.§ 1§;
   import §>!#§.§'"R§;
   import §>!#§.§,"W§;
   import §>!#§.§-#A§;
   import §>!#§.§;-§;
   import §>!#§.§>p§;
   import §?"R§.SyncingPopup;
   import §?"R§.§[W§;
   import §?§.§>"$§;
   import §["Q§.§0$,§;
   import §[#a§.§8"i§;
   import §^!,§.§'!T§;
   import §^!,§.§<d§;
   import §^a§.Starling;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §,_§ extends §%n§ implements § 1§, §@#@§
   {
      
      protected static const §=N§:String = "MightyEagleButtonVisible";
      
      protected static const §9#+§:String = "MightyEagleButtonPrepareHide";
      
      protected static const §1$5§:String = "MightyEagleButtonHide";
      
      private static const §-'§:Number = -5 * 1000;
      
      private static const §-!l§:Number = 10 * 1000;
      
      public static const §<!S§:int = 50;
      
      public static var §%#3§:Number = 0;
      
      public static var §9#w§:int = 0;
      
      private static const §["x§:Number = 20;
      
      private static const §5+§:Number = 0.1;
      
      public static const §;s§:String = "4000-";
      
      private static const §-$6§:int = 0;
      
      private static const §1"q§:int = -1;
      
      private static const §4#h§:int = -2;
      
      private static const §2#`§:String = "MovieClip_GetMore";
      
      private static const §,"x§:String = "MovieClip_GetMoreWM";
      
      private static const §!"k§:String = "MovieClip_Boom";
      
      private static const §>!8§:Number = -43.05;
      
      private static const § #Z§:Number = -2.05;
       
      
      private var §,"3§:Number = -5000.0;
      
      private var §0$%§:int = 0;
      
      private var §'!c§:Number = 0;
      
      private var §^"Z§:Number = 0;
      
      protected var §>j§:Boolean;
      
      protected var §=T§:String;
      
      protected var §>!>§:§+,§;
      
      private var §0J§:Boolean = false;
      
      protected var §<#i§:§>p§;
      
      private var §'"u§:Vector.<int>;
      
      private var §#G§:Boolean;
      
      private var §'">§:Boolean;
      
      private var §=K§:String = "";
      
      protected var §7#_§:§'!`§;
      
      private var §6#x§:Boolean = true;
      
      private var §""j§:Boolean = false;
      
      private var §0,§:Boolean = false;
      
      private var §'"P§:SyncingPopup;
      
      protected var §[!Z§:§;#[§;
      
      private var §7"p§:§+,§;
      
      private var §>9§:§+,§;
      
      protected var §@! §:Boolean = false;
      
      protected var §!$;§:§2![§;
      
      protected var §@!b§:Boolean = false;
      
      private var §?#,§:§+,§;
      
      private var §'!R§:Number = 0;
      
      private var §1!?§:Number = 0;
      
      private var §<$6§:Number;
      
      protected var §1#p§:§7!J§;
      
      private var §?#D§:§^"!§;
      
      private var §,B§:int = 3000;
      
      private var §^!1§:Boolean = false;
      
      private var §>"t§:Number = 0;
      
      private var §1!h§:§'"R§;
      
      private var §37§:Boolean = false;
      
      private var §97§:Boolean;
      
      private var §5#M§:Boolean;
      
      private const §="K§:int = 500;
      
      private const §3#b§:int = 10000;
      
      private const §4"9§:int = 20.0;
      
      private const §##R§:int = 8000;
      
      private const §9#X§:int = 1000;
      
      private var §3!q§:int;
      
      private var §2%§:§+,§;
      
      protected var §5r§:§7!Y§;
      
      private var §7A§:Boolean = false;
      
      private var §?#M§:Boolean;
      
      private var §;"n§:Boolean = false;
      
      private var §&"k§:Boolean;
      
      protected var § $'§:§0"<§;
      
      private var §>"P§:§0"<§;
      
      private var §[#!§:Vector.<§="T§>;
      
      private var §7!K§:int;
      
      private var §@q§:int;
      
      private var §]#`§:§+,§;
      
      private var §>"q§:MovieClip;
      
      private var §!,§:§+,§;
      
      public function §,_§(param1:§0"<§, param2:§#!?§, param3:§7!J§, param4:§,"n§, param5:§]#[§)
      {
         this.§<#i§ = new §>p§();
         this.§'"u§ = new Vector.<int>(32);
         this.§1!h§ = new §'"R§();
         this.§1#p§ = param3;
         this.§5r§ = new §7!Y§();
         super(param1,param2,param4,param5);
      }
      
      override protected function init() : void
      {
         this.§'"u§[3] = 5000;
         this.§'"u§[7] = 5000;
         this.§'"u§[8] = 5000;
         this.§'"u§[9] = 5000;
         this.§'"u§[18] = 5000;
         §@#_§.setVisibility(false);
         this.§2"$§();
         this.§,#h§();
         this.§@",§();
         this.§7!3§();
         this.§^#i§();
         this.levelStarted();
         if((§>"$§.§<_§ as §8G§).§&#§)
         {
            (§>"$§.§<_§ as §8G§).§&#§.addEventListener(§!#d§.§3"J§,this.§^G§);
         }
         (§@#_§.getItemByName("MovieClip_GetMoreWM") as §="T§).mClip.stop();
         this.§?#M§ = false;
         this.§ $'§ = §@#_§.getItemByName("Container_ZoomButtons") as §0"<§;
      }
      
      protected function §2"$§() : void
      {
         this.§>"P§ = §@#_§.getItemByName("Container_EndLevelDialogue") as §0"<§;
         this.§>"P§.setVisibility(false);
         this.§>"q§ = §@#_§.getItemByName("EndLevelDialogueBG").mClip;
         this.§7!K§ = §-$6§;
         this.§@q§ = 0;
      }
      
      protected function §,#h§() : void
      {
         this.§7#_§ = new §'!`§(§@#_§);
      }
      
      protected function §@",§() : void
      {
         var _loc2_:String = null;
         this.§[!Z§ = new §;#[§(§@#_§,mLevelManager);
         this.§[#!§ = new Vector.<§="T§>();
         var _loc1_:int = 1;
         while(_loc1_ < 7)
         {
            _loc2_ = §2#`§ + _loc1_;
            this.§[#!§.push(this.§-i§(_loc2_));
            _loc1_++;
         }
      }
      
      protected function §7!3§() : void
      {
         var _loc2_:§&b§ = null;
         this.§!$;§ = new §2![§(§@#_§,mLevelManager);
         var _loc1_:Object = §+3§(AngryBirdsBase.singleton.dataModel).§+!=§.§=#3§(§<!K§.§-7§);
         if(!_loc1_)
         {
            this.§!$;§.§]k§(§2![§.§,#>§(),true);
         }
         else
         {
            _loc2_ = §3#8§.§6#o§(_loc1_[0]);
            if(_loc2_ && _loc2_.§?C§)
            {
               this.§!$;§.§]k§(_loc1_[0],true);
            }
            else
            {
               this.§!$;§.§]k§(§3#8§.§0"&§.§"!E§,true);
            }
         }
      }
      
      override public function dispose() : void
      {
         this.§[!Z§.removeEventListener(§ !_§.§?=§,this.§##m§);
         if((§>"$§.§<_§ as §8G§).§&#§)
         {
            (§>"$§.§<_§ as §8G§).§&#§.removeEventListener(§!#d§.§3"J§,this.§^G§);
         }
         this.§5r§.state = §`"Z§.§&!U§;
         this.§2%§ = null;
         this.§5r§.mCurrentPosition = 0;
         this.disable(false);
         this.§!$;§.dispose();
         this.§1!h§ = null;
         if(this.§>9§)
         {
            this.§'!1§(this.§>9§);
            this.§>9§ = null;
         }
         if(this.§7"p§)
         {
            this.§'!1§(this.§7"p§);
            this.§7"p§ = null;
         }
         this.§[#!§ = null;
         this.§+<§();
         §]!m§.§3!]§.removeEventListener(§0#3§.§^"B§,this.§&!Y§);
         this.§'!1§(this.§]#`§);
         this.§]#`§ = null;
         this.§'!1§(this.§!,§);
         this.§!,§ = null;
      }
      
      override public function enable(param1:Boolean) : void
      {
         super.enable(param1);
         var _loc2_:Boolean = §'!T§(AngryBirdsBase.singleton.popupManager).§5"'§();
         if(!_loc2_)
         {
            §>"$§.resume();
         }
         §@#_§.setVisibility(true);
         §@#_§.addEventListener(§3">§.§6!3§,this.onUIInteraction);
         this.§[!Z§.addEventListener(§4$#§.CLOSE,this.§;C§);
         this.setPowerupVisibility();
         this.§+!s§();
         if(!this.§[!Z§.§'#A§)
         {
            this.§[!Z§.§4$-§();
         }
         this.§[!Z§.activate(§4!x§(this.§1#p§),false,false);
         this.adjustTopHudPosition();
         if(this.§>9§)
         {
            this.§>9§.play();
         }
         if(this.§7"p§)
         {
            this.§7"p§.play();
         }
         §]!m§.§3!]§.addEventListener(§0#3§.§^"B§,this.§&!Y§);
      }
      
      protected function §^G§(param1:§!#d§) : void
      {
         this.§;"C§();
      }
      
      public function adjustTopHudPosition() : void
      {
         if(§2![§.§6b§)
         {
            §@#_§.getItemByName("Button_Slingshot").setVisibility(true);
            §@#_§.getItemByName("Container_MightyEagle").x = 185;
            §@#_§.getItemByName("Button_PowerUpMenuOpenWhole").x = 257;
            §@#_§.getItemByName("Container_PowerUpButtons").x = 255;
         }
         else
         {
            §@#_§.getItemByName("Button_Slingshot").setVisibility(false);
            §@#_§.getItemByName("Container_MightyEagle").x = 114;
            §@#_§.getItemByName("Button_PowerUpMenuOpenWhole").x = 187;
            §@#_§.getItemByName("Container_PowerUpButtons").x = 187;
         }
      }
      
      protected function §;C§(param1:Event) : void
      {
         if(!this.§[!Z§.§'#A§)
         {
            this.§5#z§();
         }
      }
      
      override public function disable(param1:Boolean) : void
      {
         §@#_§.setVisibility(false);
         this.§[!Z§.removeEventListener(§4$#§.CLOSE,this.§;C§);
         §@#_§.removeEventListener(§3">§.§6!3§,this.onUIInteraction);
         §1"T§.§]"!§();
         this.§7#_§.deActivate();
         this.§[!Z§.deActivate();
         this.§!$;§.deActivate();
         this.§1#p§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§+#9§);
         if(this.§>9§)
         {
            this.§>9§.pause();
         }
         if(this.§7"p§)
         {
            this.§7"p§.pause();
         }
         if(this.§?#,§)
         {
            this.§'!1§(this.§?#,§);
            this.§?#,§ = null;
         }
         this.§'!1§(this.§]#`§);
         this.§]#`§ = null;
         this.§'!1§(this.§!,§);
         this.§!,§ = null;
         §@#_§.getItemByName("MovieClip_GetMore").setVisibility(false);
         §@#_§.getItemByName("MovieClip_GetMoreWM").setVisibility(false);
         var _loc2_:int = 1;
         while(_loc2_ < 6)
         {
            (§@#_§.getItemByName("MovieClip_GetMore" + _loc2_) as §="T§).setVisibility(false);
            _loc2_++;
         }
         §>"$§.§3#'§.§ !A§(false);
         this.§%5§();
         this.§7",§();
         if(§+3§(§'7§).§&!?§ && §+3§(§'7§).§&!?§.§=#t§())
         {
            (this.§1#p§ as §4!x§).removeEventListener(§%!Q§.§[?§,this.§6#D§);
         }
         super.disable(param1);
      }
      
      private function §'!1§(param1:§+,§) : void
      {
         if(param1)
         {
            param1.§?#$§();
         }
      }
      
      protected function §+<§() : void
      {
         var _loc2_:§@!"§ = null;
         if(§>"$§.§3#'§.background)
         {
            §>"$§.§3#'§.background.stopAmbientSound();
         }
         §#$+§.§%!!§(§ ;§.§<"c§);
         §%#3§ = 0;
         var _loc1_:§7#!§ = §#$+§.§#!C§(§ ;§.§<"c§);
         if(_loc1_ != null)
         {
            _loc2_ = _loc1_.§="<§(this.§=K§);
            if(_loc2_ != null)
            {
               §%#3§ = _loc2_.§]#Q§;
            }
            §#$+§.§%!!§(§ ;§.§<"c§);
         }
      }
      
      protected function §+!s§() : void
      {
         this.§@""§();
         this.§7#_§.activate();
         if(this.§""j§)
         {
            this.§1#p§.addEventListener(MouseEvent.MOUSE_DOWN,this.§+#9§);
         }
         §@#_§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         if(§>"$§.§3#'§.§'"j§ || this.§>j§ || §>"$§.§3#'§.slingshot.mSlingShotState == §@M§.§!!R§)
         {
            §@#_§.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(false);
            §@#_§.getItemByName("Container_MightyEagle").setVisibility(false);
            §@#_§.getItemByName("Container_PowerUpButtons").setVisibility(false);
            §@#_§.getItemByName("Container_Slingshot_Buttons").setVisibility(false);
         }
         else
         {
            §@#_§.getItemByName("Container_MightyEagle").setVisibility(true);
         }
         this.§<$6§ = 2500;
         (§>"$§.§<_§ as §8G§).§?"0§(§<#u§.§=0§);
         this.§7",§();
         if(§+3§(§'7§).§&!?§.§=#t§() && !§+3§(§'7§).§&!?§.§8"#§())
         {
            this.§,B§ = 3000;
            this.§^!1§ = false;
         }
         if(§>"$§.§3#'§.§'"j§ || this.§>j§ || §>"$§.§3#'§.slingshot.mSlingShotState == §@M§.§!!R§)
         {
            (§@#_§.getItemByName("Movieclip_Slider") as §0"<§).mClip.visible = true;
         }
         §1"T§.showTutorials(false,true);
      }
      
      private function §,!I§() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:int = 0;
         this.§,B§ -= 33;
         if(!this.§^!1§)
         {
            this.§^!1§ = true;
            _loc1_ = §@#_§.getItemByName("eggMovieClip").mClip;
            _loc2_ = 0;
            while(_loc2_ < _loc1_.numChildren)
            {
               (_loc1_.getChildAt(_loc2_) as MovieClip).gotoAndStop(2);
               _loc2_++;
            }
         }
      }
      
      protected function levelStarted() : void
      {
         §;#[§.§`"A§ = true;
         §;#[§.§^2§ = false;
         §,"W§.§`#f§(§;-§.§6r§,mLevelManager.currentLevel);
         §,"W§.trackPageView(this,this.§7">§());
         if(mLevelManager.currentLevel != §6^§.§&!!§)
         {
            §6^§.§&!!§ = mLevelManager.currentLevel;
            this.§>"t§ = 0;
         }
         else
         {
            ++this.§>"t§;
         }
         var _loc1_:int = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel);
         §-#A§.§6$2§().§>!9§(mLevelManager.currentLevel,mLevelManager.getCurrentEpisodeModel().name,_loc1_,this.§>"t§);
         if((§>"$§.§<_§ as §8G§).§&#§)
         {
            (§>"$§.§<_§ as §8G§).§&#§.levelStarted();
         }
         this.showScoresForLevel();
         this.§;"C§();
         this.§[!Z§.§ !h§ = false;
         this.§[!Z§.§'#A§ = true;
         §@#_§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.alpha = 1;
         §@#_§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(true);
         §@#_§.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(true);
         §@#_§.getItemByName("Button_MightyEagle").setVisibility(true);
         if(§;#[§.§`"A§ && !§;#[§.§^2§)
         {
            this.§[!Z§.§0"u§();
         }
         §@#_§.getItemByName("Container_PowerUpButtons").setVisibility(false);
         if(this.§>9§)
         {
            this.§>9§.stop();
            this.§>9§ = null;
         }
         if(this.§7"p§)
         {
            this.§7"p§.stop();
            this.§7"p§ = null;
         }
         this.§""j§ = false;
         this.§0,§ = false;
         this.§1#p§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§+#9§);
         this.§@! § = false;
         §@#_§.getItemByName("TextField_PowerUpCountME").setVisibility(true);
         §@#_§.getItemByName("PowerUpCountME_BG").setVisibility(true);
         this.§[!Z§.§-g§();
         §@#_§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.scaleX = 1;
         §@#_§.getItemByName("Button_PowerUpMenuOpenWhole").mClip.scaleY = 1;
         if(§2![§.§6b§)
         {
            §@#_§.getItemByName("Button_Slingshot").setEnabled(true);
            this.§@!b§ = false;
            if(this.§?#,§)
            {
               this.§'!1§(this.§?#,§);
               this.§?#,§ = null;
            }
         }
         §@#_§.getItemByName("Container_Wingman").setVisibility(true);
         (§>"$§.§3#'§ as §#%§).§4"w§.§"p§ = false;
         this.§5r§.activate(§@#_§.getItemByName("Container_Wingman").mClip as MovieClip,true);
         this.§2%§ = null;
         this.§3!q§ = this.§9#X§;
         (§@#_§.getItemByName("Movieclip_Slider") as §0"<§).mClip.visible = true;
         this.§7A§ = false;
         this.§[!Z§.addEventListener(§ !_§.§?=§,this.§##m§);
         var _loc2_:Boolean = (mLevelManager as §6^§).§=<§();
         §@#_§.getItemByName("Button_PowerUp6").setVisibility(_loc2_);
         §@#_§.getItemByName("TextField_PowerUpCount6").setVisibility(_loc2_);
         §@#_§.getItemByName("PowerUpCount6_BG").setVisibility(_loc2_);
         §@#_§.getItemByName("Movieclip_TntSliderBackground").setVisibility(_loc2_);
         this.§'!"§();
         this.§!$;§.activate(§4!x§(this.§1#p§));
         §@#_§.getItemByName("Container_Slingshot_Buttons").setVisibility(false);
         this.§;"n§ = false;
         this.§37§ = false;
      }
      
      protected function §'!"§() : void
      {
         var _loc1_:MovieClip = null;
         this.§ $2§();
         if(§+3§(§'7§).§&!?§ == null)
         {
            return;
         }
         if(§+3§(§'7§).§&!?§.§=#t§() && mLevelManager.currentLevel.indexOf(§;s§) != -1)
         {
            this.§?#D§ = new §^"!§(§+3§(§'7§).§&!?§.§?!>§);
            this.§?#D§.§4"E§ = §+3§(§'7§).§&!?§.§ #g§;
            this.§?#D§.x = -70;
            this.§?#D§.y = -70;
            _loc1_ = §@#_§.getItemByName("EggRaffleBasketContainer").mClip;
            _loc1_.addChild(this.§?#D§);
            this.§1#p§.addEventListener(§%!Q§.§[?§,this.§6#D§);
         }
      }
      
      private function § $2§() : void
      {
         var _loc1_:MovieClip = §@#_§.getItemByName("eggMovieClip").mClip;
         while(_loc1_.numChildren > 0)
         {
            _loc1_.removeChildAt(0);
         }
         var _loc2_:MovieClip = §@#_§.getItemByName("EggRaffleBasketContainer").mClip;
         while(_loc2_.numChildren > 0)
         {
            _loc2_.removeChildAt(0);
         }
      }
      
      private function §6#D§(param1:§%!Q§) : void
      {
         var _loc2_:String = param1.§,"2§.substr(param1.§,"2§.length - 2);
         var _loc3_:MovieClip = §@#_§.getItemByName("eggMovieClip").mClip;
         var _loc5_:MovieClip;
         (_loc5_ = new §@`§.§4!i§("Wonderland_Egg" + _loc2_)()).gotoAndStop(1);
         _loc5_.x = _loc3_.numChildren * _loc5_.width;
         _loc3_.addChild(_loc5_);
      }
      
      protected function §^#i§() : void
      {
         this.§<#i§.§,$-§(0);
         this.§0!8§(0);
         this.§3$3§();
         this.§=T§ = §=N§;
         this.§>!>§ = null;
         this.§>j§ = false;
         this.§7#_§.§-#?§ = this.§>j§;
      }
      
      private function §+#9§(param1:MouseEvent) : void
      {
         this.§0,§ = true;
         this.§1#p§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§+#9§);
      }
      
      protected function §;"C§() : void
      {
         this.§7#_§.levelStarted((§>"$§.§<_§ as §8G§).§&#§.§[!-§(),mLevelManager.currentLevel,(§>"$§.§<_§ as §8G§).§&#§.§="5§() == §<#u§.§?!d§);
      }
      
      protected function §@""§() : void
      {
         var _loc1_:String = null;
         var _loc2_:int = 0;
         var _loc3_:§7#!§ = null;
         if(mLevelManager.currentLevel.indexOf("3001-") > -1 || mLevelManager.currentLevel.indexOf("3000-") > -1)
         {
            _loc1_ = "";
            _loc2_ = 999;
            if(mLevelManager.currentLevel.indexOf("3001-") > -1)
            {
               this.§=K§ = § ;§.§ !D§;
               if(mLevelManager.currentLevel.indexOf("3001-1") > -1)
               {
                  _loc1_ = § ;§.§'"O§;
               }
               else if(mLevelManager.currentLevel.indexOf("3001-2") > -1)
               {
                  _loc1_ = § ;§.§^"P§;
                  this.§=K§ = § ;§.§=Q§;
               }
               else
               {
                  _loc1_ = § ;§.§'"O§;
               }
               if(AngryBirdsBase.singleton.§ "-§().previousState != this.§,#c§())
               {
                  §%#3§ = 0;
               }
            }
            else if(§9#w§ <= 1)
            {
               this.§=K§ = § ;§.override;
               _loc1_ = § ;§.§^j§;
               _loc2_ = 1;
               §#$+§.removeEventListener(§[!9§.SOUND_COMPLETE,this.§``§);
               §#$+§.addEventListener(§[!9§.SOUND_COMPLETE,this.§``§);
            }
            if(_loc1_ != "")
            {
               _loc3_ = §#$+§.§#!C§(§ ;§.§<"c§);
               if(!_loc3_)
               {
                  §#$+§.§9"]§(§ ;§.§<"c§,1,1);
               }
               §#$+§.§61§(_loc1_,this.§=K§,3000,§ ;§.§<"c§,_loc2_,0.75,§%#3§);
            }
         }
      }
      
      private function §``§(param1:§[!9§) : void
      {
         if(param1.§@!L§ == § ;§.override && this.§=K§ == § ;§.override && AngryBirdsBase.singleton.§^#!§() != § N§.STATE_NAME)
         {
            §#$+§.removeEventListener(§[!9§.SOUND_COMPLETE,this.§``§);
            ++§,_§.§9#w§;
         }
      }
      
      private function §'!P§(param1:Number) : void
      {
         if(this.§'!R§)
         {
            this.§1!?§ += param1;
            if(this.§1!?§ > §["x§)
            {
               this.§1#p§.§`c§(true,this.§'!R§);
               this.§1!?§ = 0;
            }
         }
      }
      
      protected function showTutorials() : void
      {
         var _loc1_:String = "ALL_EXTRABIRD";
         if((mLevelManager as §6^§).§=<§())
         {
            _loc1_ = "ALL_MUSHROOM";
         }
         §1"T§.§4"m§(_loc1_,true);
         §1"T§.showTutorials(true,true);
      }
      
      protected function §-i§(param1:String) : §="T§
      {
         var _loc2_:§="T§ = this.§1!h§[param1];
         if(!_loc2_)
         {
            _loc2_ = §@#_§.getItemByName(param1) as §="T§;
            this.§1!h§[param1] = _loc2_;
         }
         return _loc2_;
      }
      
      protected function §4p§(param1:Number) : void
      {
         var _loc6_:int = 0;
         var _loc7_:§="T§ = null;
         var _loc8_:int = 0;
         var _loc9_:§="T§ = null;
         var _loc3_:§="T§ = this.§-i§(§2#`§);
         var _loc4_:§="T§ = this.§-i§(§,"x§);
         var _loc5_:§="T§ = this.§-i§(§!"k§);
         if(_loc3_.isPlaying)
         {
            _loc3_.§`!I§(param1);
         }
         if(_loc4_.isPlaying)
         {
            _loc4_.§`!I§(param1);
         }
         if(this.§[#!§)
         {
            _loc6_ = 0;
            while(_loc6_ < this.§[#!§.length)
            {
               if((_loc7_ = this.§[#!§[_loc6_]).isPlaying)
               {
                  _loc7_.§`!I§(param1);
               }
               _loc6_++;
            }
         }
         if(_loc5_.§^$'§() == "End")
         {
            if(_loc5_.visible)
            {
               _loc5_.setVisibility(false);
            }
            _loc5_.§9!,§("Start");
         }
         if(_loc3_.isPlaying)
         {
            if(_loc3_.§^$'§() == "End")
            {
               _loc3_.isPlaying = false;
               _loc3_.§9!,§("End");
            }
         }
         if(_loc4_.isPlaying)
         {
            if(_loc4_.§^$'§() == "End")
            {
               _loc4_.isPlaying = false;
               _loc4_.§9!,§("End");
            }
         }
         if(this.§[#!§)
         {
            _loc8_ = 0;
            while(_loc8_ < this.§[#!§.length)
            {
               if((_loc9_ = this.§[#!§[_loc8_]).isPlaying)
               {
                  if(_loc9_.§^$'§() == "End")
                  {
                     _loc9_.isPlaying = false;
                     _loc9_.§9!,§("End");
                  }
               }
               _loc8_++;
            }
         }
      }
      
      public function §7">§() : String
      {
         return mLevelManager.currentLevel;
      }
      
      public function §9"v§() : String
      {
         return §,"W§.§9"H§;
      }
      
      protected function §0!8§(param1:Number) : void
      {
         this.§!!^§();
         var _loc2_:int = this.§1#p§.getScore();
         var _loc3_:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         var _loc4_:int;
         if((_loc4_ = this.§<#i§.getValue()) < _loc2_)
         {
            _loc4_ = Math.min(_loc2_,this.§<#i§.getValue() + param1 * §<!S§);
            this.§<#i§.§,$-§(_loc4_);
         }
         if(this.§0J§)
         {
            §@#_§.setText(_loc2_.toString(),"TextField_MEPercentage");
         }
         this.§7#_§.§0!8§(_loc4_,_loc2_,_loc3_);
      }
      
      protected function showScoresForLevel() : void
      {
         (§>"$§.§<_§ as §8G§).§-!R§(§<#u§.§"8§,null);
      }
      
      private function §%5§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         if(this.§,"3§ > §-!l§)
         {
            _loc1_ = Math.round(1000 / this.§,"3§ * this.§0$%§);
            _loc2_ = mLevelManager.currentLevel;
            _loc3_ = (§>"$§.§<_§ as §8G§).§5#N§();
            §,"W§.§>"h§(_loc1_,_loc2_,Starling.§ #4§,_loc3_);
         }
      }
      
      private function §>"p§(param1:Number) : void
      {
         this.§,"3§ += param1;
         if(this.§,"3§ > 0)
         {
            ++this.§0$%§;
         }
         if(this.§'!c§ != §>"$§.§="§() || this.§^"Z§ != §>"$§.§@!F§())
         {
            this.§7",§();
         }
      }
      
      private function §7",§() : void
      {
         this.§,"3§ = §-'§;
         this.§0$%§ = 0;
         this.§'!c§ = §>"$§.§="§();
         this.§^"Z§ = §>"$§.§@!F§();
      }
      
      protected function §9y§() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(!this.§#G§)
         {
            _loc1_ = 0;
            _loc2_ = 0;
            while(_loc2_ < this.§'"u§.length)
            {
               _loc1_ += this.§'"u§[_loc2_];
               _loc2_++;
            }
            if(_loc1_ % 1000 || int(_loc1_ / 1000) != 25)
            {
               this.§#G§ = true;
               §;-§.§`#f§(§;-§.§3m§,mLevelManager.currentLevel);
            }
         }
         if(this.§'">§)
         {
            _loc3_ = getTimer();
            while(getTimer() - _loc3_ < 1000)
            {
            }
         }
      }
      
      protected function §!!^§() : void
      {
         var _loc1_:int = this.§1#p§.getScore();
         var _loc2_:int = this.§<#i§.getValue();
         if(_loc2_ < _loc1_ && this.§#G§)
         {
            this.§'">§ = true;
         }
      }
      
      protected function §3$3§() : void
      {
         §@#_§.getItemByName("TextField_METimer").setVisibility(false);
         §@#_§.getItemByName("Container_MEScore").setVisibility(false);
         §@#_§.getItemByName("Container_MightyEagle").mClip.scaleX = 1;
         §@#_§.getItemByName("Container_MightyEagle").mClip.scaleY = 1;
         (§@#_§.getItemByName("Button_MightyEagle") as §=O§).setComponentVisualState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§@#_§.getItemByName("Button_MightyEagle") as §=O§).setComponentState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§97§ = false;
         this.§5#M§ = false;
      }
      
      protected function deactivateMightyEagleButton() : void
      {
         (§@#_§.getItemByName("Button_MightyEagle") as §=O§).setEnabled(false);
         this.§97§ = false;
         this.§5#M§ = true;
      }
      
      protected function §<##§() : void
      {
         (§@#_§.getItemByName("Button_MightyEagle") as §=O§).setEnabled(true);
         this.§97§ = true;
         this.§5#M§ = false;
      }
      
      protected function hideMightyEagleButton() : void
      {
         (§@#_§.getItemByName("Button_MightyEagle") as §=O§).setComponentState(§4P§.COMPONENT_STATE_DISABLED);
         (§@#_§.getItemByName("Button_MightyEagle") as §=O§).setComponentVisualState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         if(this.§>!>§ == null)
         {
            this.§>!>§ = §""Z§.§3!]§.§5"0§(§@#_§.getItemByName("Container_MightyEagle").mClip,{
               "scaleX":1,
               "scaleY":1
            },null,0.5);
         }
         this.§=T§ = §1$5§;
         this.§>!>§.onComplete = this.§8! §;
         this.§>!>§.play();
         §@#_§.getItemByName("PowerUpCountME_BG").setVisibility(false);
         §@#_§.getItemByName("TextField_PowerUpCountME").setVisibility(false);
      }
      
      protected function §8! §() : void
      {
         this.§>!>§ = §""Z§.§3!]§.§5"0§(§@#_§.getItemByName("Container_MightyEagle").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         this.§>!>§.play();
         this.§=T§ = §1$5§;
      }
      
      protected function §&Z§() : void
      {
         this.§=T§ = §9#+§;
      }
      
      protected function useMightyEagle() : void
      {
         §>"$§.§3#'§.useMightyEagle();
         var _loc1_:int = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
         §@#_§.setText(_loc1_.toString() + "%","TextField_MEPercentage");
         this.§>j§ = true;
         this.§[!Z§.§!!y§(§`j§.§6#z§.eventName,false);
         this.§[!Z§.§!!y§(§`j§.§="-§.eventName,false);
         this.hideMightyEagleButton();
         this.§7#_§.§-#?§ = this.§>j§;
         §1"T§.showTutorials();
         this.§5r§.§%#&§();
         this.§"§();
      }
      
      protected function §5#z§() : void
      {
         §@#_§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         this.§>9§ = §""Z§.§3!]§.§5"0§(§@#_§.getItemByName("Button_PowerUpMenuOpenWhole").mClip,{"alpha":0.5},null,0.5);
         this.§>9§.delay = 2;
         this.§>9§.onComplete = this.§6q§;
         this.§>9§.play();
      }
      
      protected function §,J§(param1:Boolean = true) : void
      {
         this.§@! § = true;
         §@#_§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
         this.§7"p§ = §""Z§.§3!]§.§5"0§(§@#_§.getItemByName("Button_PowerUpMenuOpenWhole").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         if(param1)
         {
            this.§7"p§.delay = 2;
         }
         else
         {
            this.§7"p§.delay = 0.5;
         }
         this.§7"p§.play();
         this.§7"p§.onComplete = this.§^#=§;
      }
      
      private function §^#=§() : void
      {
         §@#_§.getItemByName("Button_PowerUpMenuOpenWhole").setVisibility(false);
         this.§7"p§ = null;
      }
      
      private function §6q§() : void
      {
         this.§>9§ = null;
      }
      
      protected function §;"D§(param1:Boolean = true) : void
      {
         if(!§2![§.§6b§)
         {
            return;
         }
         this.§@!b§ = true;
         §@#_§.getItemByName("Button_Slingshot").setEnabled(false);
         this.§'!1§(this.§?#,§);
         this.§?#,§ = §""Z§.§3!]§.§5"0§(§@#_§.getItemByName("Button_Slingshot").mClip,{
            "scaleX":0,
            "scaleY":0
         },null,0.5);
         if(param1)
         {
            this.§?#,§.delay = 2;
         }
         else
         {
            this.§?#,§.delay = 0.5;
         }
         this.§?#,§.play();
         this.§?#,§.onComplete = this.§1$2§;
      }
      
      private function §1$2§() : void
      {
         §@#_§.getItemByName("Button_Slingshot").setVisibility(false);
      }
      
      protected function disablePowerupMenu() : void
      {
         this.§[!Z§.§!!y§(§`j§.§="-§.eventName,false);
      }
      
      protected function §>d§() : Boolean
      {
         if((§>"$§.§3#'§ as §#%§).§4"w§.§-#!§ && !this.§'"P§)
         {
            this.§'"P§ = new SyncingPopup(§[W§.§5Z§,§<d§.DEFAULT);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§'"P§);
            (§>"$§.§3#'§ as §#%§).§4"w§.addEventListener(Event.COMPLETE,this.§6#&§);
         }
         return !(§>"$§.§3#'§ as §#%§).§4"w§.§-#!§;
      }
      
      private function §6#&§(param1:Event) : void
      {
         (§>"$§.§3#'§ as §#%§).§4"w§.removeEventListener(Event.COMPLETE,this.§6#&§);
         this.§'"P§.close();
         this.§'"P§ = null;
      }
      
      protected function §,#c§() : String
      {
         return § N§.STATE_NAME;
      }
      
      protected function setPowerupVisibility() : void
      {
         §`j§.§?O§.§6!u§ = false;
      }
      
      override public function isEagleUsed() : Boolean
      {
         return this.§>j§;
      }
      
      protected function getLevelLoadState() : String
      {
         return §@#j§.STATE_NAME;
      }
      
      public function getLoserState() : String
      {
         return §6!'§.STATE_NAME;
      }
      
      override public function update(param1:Number) : void
      {
         var _loc3_:Vector.<String> = null;
         var _loc4_:§#%§ = null;
         this.§9y§();
         super.update(param1);
         if(AngryBirdsBase.singleton.popupManager.§5"'§())
         {
            if(!this.§?#M§)
            {
               this.§?#M§ = true;
               if(this.§7"p§)
               {
                  this.§7"p§.pause();
               }
               if(this.§>9§)
               {
                  this.§>9§.pause();
               }
               _loc3_ = new Vector.<String>();
               _loc3_.push(§#$+§.§'!o§);
               §#$+§.§#"r§(_loc3_);
               if(this.§7#_§)
               {
                  this.§7#_§.deActivate();
               }
            }
            return;
         }
         if(this.§?#M§)
         {
            this.§?#M§ = false;
            if(this.§7"p§)
            {
               this.§7"p§.play();
            }
            if(this.§>9§)
            {
               this.§>9§.play();
            }
            if(this.§7#_§)
            {
               this.§7#_§.activate();
            }
            §#$+§.§;$&§();
         }
         this.§0!8§(param1);
         if(this.§=T§ == §=N§ && !§>"$§.§3#'§.objects.isLevelGoalObjectsAlive())
         {
            this.§&Z§();
         }
         if((this.§=T§ == §=N§ || this.§=T§ == §9#+§) && §>"$§.§3#'§.slingshot.mSlingShotState == §@M§.§!!R§)
         {
            this.hideMightyEagleButton();
         }
         var _loc2_:Boolean = this.§6#x§ = this.§7#_§.run(param1);
         if(this.§>j§)
         {
            this.§[!Z§.§4$-§();
            §@#_§.getItemByName("Button_PowerUpMenuOpenWhole").setEnabled(false);
            this.§[!Z§.§!!y§(§`j§.§="-§.eventName,false);
            if(!this.§@! §)
            {
               this.§,J§(this.§[!Z§.§ !h§);
            }
         }
         this.§[!Z§.run(param1);
         this.§!$;§.run(param1);
         this.§'!P§(param1);
         this.§1#p§.mouseEnabled = !this.§!$;§.§1#B§();
         if(this.§!$;§.§1#B§())
         {
            if(this.§&"k§)
            {
               this.§ $'§.getItemByName("Button_ZoomIn").setEnabled(false);
               this.§ $'§.getItemByName("Button_ZoomOut").setEnabled(false);
               this.§ $'§.getItemByName("Button_Magnify").setEnabled(false);
               this.§&"k§ = false;
            }
         }
         else if(!this.§&"k§)
         {
            this.§ $'§.getItemByName("Button_ZoomIn").setEnabled(true);
            this.§ $'§.getItemByName("Button_ZoomOut").setEnabled(true);
            this.§ $'§.getItemByName("Button_Magnify").setEnabled(true);
            this.§&"k§ = true;
         }
         this.§>"p§(param1);
         if(!§>"$§.§3#'§.§'"j§ || !this.§>j§)
         {
            this.§4p§(param1);
         }
         if(AngryBirdsBase.singleton.§ "-§().previousState == §3"%§.STATE_NAME || AngryBirdsBase.singleton.§ "-§().previousState == §6#A§.STATE_NAME)
         {
            if(!this.§""j§)
            {
               this.§1#p§.addEventListener(MouseEvent.MOUSE_DOWN,this.§+#9§);
               this.§""j§ = true;
            }
            if(_loc2_ || this.§0,§)
            {
               this.§<$6§ -= param1;
               if(this.§<$6§ < 0 || this.§0,§)
               {
                  if(!this.§>d§())
                  {
                  }
               }
            }
         }
         else if(AngryBirdsBase.singleton.§ "-§().previousState == §`$ §.STATE_NAME)
         {
            if(!this.§>d§())
            {
            }
         }
         if(!this.§@! § && !§>"$§.§3#'§.slingshot.birdsAvailable)
         {
            this.§[!Z§.§!!y§(§`j§.§6#z§.eventName,false);
            this.§[!Z§.§!!y§(§`j§.§-"f§.eventName,false);
            this.§[!Z§.§!!y§(§`j§.§-"5§.eventName,false);
            this.§[!Z§.§!!y§(§`j§.§?O§.eventName,false);
         }
         if(§>"$§.§3#'§.objects.getPigCount() == 0)
         {
            this.§[!Z§.§!!y§(§`j§.§+"4§.eventName,false);
         }
         this.§`#e§(param1);
         if(§>"$§.§3#'§.slingshot.mSlingShotState == §@M§.§!!R§)
         {
            if(!this.§@! §)
            {
               this.§,J§(this.§[!Z§.§ !h§);
               this.§[!Z§.§4$-§();
               this.§[!Z§.§=M§();
            }
            if(!this.§@!b§ && §2![§.§6b§)
            {
               this.§;"D§(this.§!$;§.§1#B§());
               this.§!$;§.§4#L§();
            }
         }
         if(!§>"$§.isPaused)
         {
            this.§5r§.update(param1);
            if(this.§3!q§ > 0)
            {
               this.§3!q§ -= param1;
            }
            if(this.§>9§ && this.§>9§.isPaused)
            {
               this.§>9§.play();
            }
            if(this.§7"p§ && this.§7"p§.isPaused)
            {
               this.§7"p§.play();
            }
         }
         else
         {
            if(this.§>9§ && !this.§>9§.isPaused)
            {
               this.§>9§.pause();
            }
            if(this.§7"p§ && !this.§7"p§.isPaused)
            {
               this.§7"p§.pause();
            }
         }
         if(!this.§7A§ && (§>"$§.§3#'§ as §#%§).§4"w§.§"p§ && !this.§@! § && §>"$§.§3#'§.slingshot.birdsAvailable && this.§[!Z§.§'#A§ && (§>"$§.§3#'§ as §#%§).§-#k§() < this.§[!Z§.§!"X§())
         {
            if(!(_loc4_ = §>"$§.§3#'§ as §#%§).§!9§(§`j§.§6#z§.§"!E§))
            {
               this.§[!Z§.§!!y§(§`j§.§6#z§.eventName,true);
               this.§7A§ = true;
            }
            if(!_loc4_.§!9§(§`j§.§-"f§.§"!E§))
            {
               this.§[!Z§.§!!y§(§`j§.§-"f§.eventName,true);
               this.§7A§ = true;
            }
            if(!_loc4_.§!9§(§`j§.§-"5§.§"!E§))
            {
               this.§[!Z§.§!!y§(§`j§.§-"5§.eventName,true);
               this.§7A§ = true;
            }
            if(!_loc4_.§!9§(§`j§.§?O§.§"!E§))
            {
               this.§[!Z§.§!!y§(§`j§.§?O§.eventName,true);
               this.§7A§ = true;
            }
            if(!_loc4_.§!9§(§`j§.§5"j§.§"!E§))
            {
               this.§[!Z§.§!!y§(§`j§.§5"j§.eventName,true);
               this.§7A§ = true;
            }
         }
         if((§>"$§.§3#'§.slingshot as §&#q§).mSlingShotState == §&#q§.§,#o§)
         {
            if(!this.§5#M§)
            {
               this.deactivateMightyEagleButton();
            }
         }
         else if(!this.§97§)
         {
            this.§<##§();
         }
         if(§2![§.§,#>§() == §3#8§.§ "Z§.§"!E§)
         {
            this.§]#b§();
         }
      }
      
      private function §]#b§() : void
      {
         var _loc7_:int = 0;
         Number(§>"$§.§3#'§.camera.centerX);
         Number(§0$,§.§,4§);
         var _loc3_:Number = §0$,§.§'!@§;
         var _loc4_:Number = this.§?#1§(§>"$§.§3#'§.§8!X§.§9!m§,§>"$§.§3#'§.§8!X§.§6"4§);
         var _loc5_:§ #f§ = §>"$§.§3#'§.particles as § #f§;
         if(!this.§37§)
         {
            this.§37§ = true;
            _loc7_ = 0;
            while(_loc7_ < 100)
            {
               _loc4_ = this.§?#1§(§>"$§.§3#'§.§8!X§.§9!m§,§>"$§.§3#'§.§8!X§.§6"4§);
               _loc5_.§1#O§(_loc4_,§>"$§.§3#'§.§8!X§.§&#Q§ + (Math.random() + 1) * _loc3_ * 2);
               _loc7_++;
            }
         }
         var _loc6_:int = 0;
         while(_loc6_ < §&#q§.§9"p§)
         {
            _loc4_ = this.§?#1§(§>"$§.§3#'§.§8!X§.§9!m§,§>"$§.§3#'§.§8!X§.§6"4§);
            _loc5_.§1#O§(_loc4_,§>"$§.§3#'§.§8!X§.§&#Q§ + (Math.random() + 1) * _loc3_ * 2);
            _loc6_++;
         }
      }
      
      protected function §`#e§(param1:Number) : void
      {
         if(this.§1#p§.§4!y§())
         {
            if(§>"$§.§3#'§.slingshot.mDragging)
            {
               if(this.§@q§ == 0)
               {
                  this.§@q§ = §;!p§.§<$%§;
                  this.§7!K§ = §-$6§;
               }
               if(this.§7!K§ > §-$6§)
               {
                  this.§ 0§();
               }
            }
            else if(this.§@q§ > 0)
            {
               this.§@q§ -= param1;
               if(this.§@q§ <= 0)
               {
                  this.§@q§ = -1;
                  if(this.§7!K§ < §-$6§)
                  {
                     this.§0$-§();
                  }
               }
            }
            else if(this.§7!K§ == §-$6§)
            {
               this.§7!K§ = §;!p§.§&#!§;
               this.§,"_§();
               this.§@q§ = -1;
            }
            else if(this.§7!K§ > §-$6§)
            {
               this.§7!K§ -= param1;
               if(this.§7!K§ <= §-$6§)
               {
                  §@#_§.setText("0","TextField_EndLevelCounter");
                  this.§=$,§(§-#A§.§4!"§);
                  this.§7!K§ = §4#h§;
               }
               else
               {
                  §@#_§.setText("" + int(this.§7!K§ / 1000),"TextField_EndLevelCounter");
               }
            }
            else if(!this.§!,§)
            {
               this.§>"q§.scaleX = 0.8;
               this.§>"q§.scaleY = 0.8;
            }
         }
         else if(this.§7!K§ > §-$6§)
         {
            this.§7!K§ = §-$6§;
            this.§@q§ = 0;
         }
      }
      
      private function §?#1§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (1 + param2 - param1)) + param1;
      }
      
      protected function onUIInteraction(param1:§3">§) : void
      {
         var powerUpCount:int = 0;
         var totalBirds:int = 0;
         var remainingBirds:int = 0;
         var wingmanIndex:int = 0;
         var wingmanIndexString:String = null;
         var timer:Timer = null;
         var event:§3">§ = param1;
         if(§21§)
         {
            return;
         }
         if(event.§##I§ == 1)
         {
            if(§>"$§.§3#'§.slingshot.mDragging)
            {
               §>"$§.§3#'§.slingshot.shoot();
               this.§1#p§.changeGameState(§7!J§.§@!T§);
               return;
            }
            §>"$§.§3#'§.camera.stopDragging();
         }
         switch(event.eventName)
         {
            case "showTutorial":
               this.showTutorials();
               break;
            case "PAUSE":
               dispatchEvent(new §<K§(§<K§.§;#u§));
               if(this.§7!K§ > §-$6§)
               {
                  this.§0$-§();
               }
               break;
            case "RESTART_LEVEL":
               dispatchEvent(new §<K§(§<K§.RESTART_LEVEL));
               break;
            case "CLOSE_TUTORIAL":
               §1"T§.§]"!§();
               break;
            case "MIGHTY_EAGLE":
               if(this.§>j§ || this.§7!K§ == §4#h§)
               {
                  return;
               }
               if((§>"$§.§3#'§ as §#%§).§4"w§.useMightyEagle())
               {
                  this.useMightyEagle();
               }
               else
               {
                  this.§[!Z§.§?!r§(event.eventName);
               }
               this.§ 0§();
               break;
            case "POWERUP_OPEN":
               if(!this.§[!Z§.§ !h§)
               {
                  §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
                  §@#_§.getItemByName("Container_PowerUpButtons").setVisibility(true);
               }
               else
               {
                  §#$+§.playSound("Menu_Back",§#$+§.§'!o§);
               }
               this.§[!Z§.§0"u§();
               break;
            case "POWERUP1":
            case "POWERUP2":
            case "POWERUP3":
            case "POWERUP4":
            case "POWERUP5":
               if(this.§7!K§ == §4#h§)
               {
                  return;
               }
               this.§[!Z§.§'#A§ = this.§[!Z§.§?!r§(event.eventName);
               if(!this.§[!Z§.§'#A§)
               {
                  this.§5#z§();
               }
               this.§ 0§();
               break;
            case "POWERUPOVER1":
               powerUpCount = §%h§.§3!]§.§7#S§(§`j§.§6#z§.§"!E§);
               if(powerUpCount <= 0)
               {
                  §@#_§.getItemByName("MovieClip_GetMore1").setVisibility(true);
                  (§@#_§.getItemByName("MovieClip_GetMore1") as §="T§).isPlaying = true;
                  (§@#_§.getItemByName("MovieClip_GetMore1") as §="T§).§9!,§("Start");
                  §@#_§.getItemByName("MovieClip_GetMore1").mClip.mouseChildren = false;
                  §@#_§.getItemByName("MovieClip_GetMore1").mClip.mouseEnabled = false;
               }
               break;
            case "POWERUPOVER2":
               powerUpCount = §%h§.§3!]§.§7#S§(§`j§.§-"f§.§"!E§);
               if(powerUpCount <= 0)
               {
                  §@#_§.getItemByName("MovieClip_GetMore2").setVisibility(true);
                  (§@#_§.getItemByName("MovieClip_GetMore2") as §="T§).isPlaying = true;
                  (§@#_§.getItemByName("MovieClip_GetMore2") as §="T§).§9!,§("Start");
                  §@#_§.getItemByName("MovieClip_GetMore2").mClip.mouseChildren = false;
                  §@#_§.getItemByName("MovieClip_GetMore2").mClip.mouseEnabled = false;
               }
               break;
            case "POWERUPOVER3":
               powerUpCount = §%h§.§3!]§.§7#S§(§`j§.§-"5§.§"!E§);
               if(powerUpCount <= 0)
               {
                  §@#_§.getItemByName("MovieClip_GetMore3").setVisibility(true);
                  (§@#_§.getItemByName("MovieClip_GetMore3") as §="T§).isPlaying = true;
                  (§@#_§.getItemByName("MovieClip_GetMore3") as §="T§).§9!,§("Start");
                  §@#_§.getItemByName("MovieClip_GetMore3").mClip.mouseChildren = false;
                  §@#_§.getItemByName("MovieClip_GetMore3").mClip.mouseEnabled = false;
               }
               break;
            case "POWERUPOVER4":
               powerUpCount = §%h§.§3!]§.§7#S§(§`j§.§5"j§.§"!E§);
               if(powerUpCount <= 0)
               {
                  §@#_§.getItemByName("MovieClip_GetMore4").setVisibility(true);
                  (§@#_§.getItemByName("MovieClip_GetMore4") as §="T§).isPlaying = true;
                  (§@#_§.getItemByName("MovieClip_GetMore4") as §="T§).§9!,§("Start");
                  §@#_§.getItemByName("MovieClip_GetMore4").mClip.mouseChildren = false;
                  §@#_§.getItemByName("MovieClip_GetMore4").mClip.mouseEnabled = false;
               }
               break;
            case "POWERUPOVER5":
               powerUpCount = §%h§.§3!]§.§7#S§(§`j§.§?O§.§"!E§);
               if(powerUpCount <= 0)
               {
                  §@#_§.getItemByName("MovieClip_GetMore5").setVisibility(true);
                  (§@#_§.getItemByName("MovieClip_GetMore5") as §="T§).isPlaying = true;
                  (§@#_§.getItemByName("MovieClip_GetMore5") as §="T§).§9!,§("Start");
                  §@#_§.getItemByName("MovieClip_GetMore5").mClip.mouseChildren = false;
                  §@#_§.getItemByName("MovieClip_GetMore5").mClip.mouseEnabled = false;
               }
               break;
            case "POWERUP6":
               if(this.§7!K§ == §4#h§)
               {
                  return;
               }
               this.§[!Z§.§'#A§ = this.§[!Z§.§?!r§(event.eventName);
               if(!this.§[!Z§.§'#A§)
               {
                  this.§5#z§();
               }
               this.§ 0§();
               break;
            case "POWERUPOVER6":
               powerUpCount = §%h§.§3!]§.§7#S§(§`j§.§+"4§.§"!E§);
               if(powerUpCount <= 0)
               {
                  §@#_§.getItemByName("MovieClip_GetMore6").setVisibility(true);
                  (§@#_§.getItemByName("MovieClip_GetMore6") as §="T§).isPlaying = true;
                  (§@#_§.getItemByName("MovieClip_GetMore6") as §="T§).§9!,§("Start");
                  §@#_§.getItemByName("MovieClip_GetMore6").mClip.mouseChildren = false;
                  §@#_§.getItemByName("MovieClip_GetMore6").mClip.mouseEnabled = false;
               }
               break;
            case "POWERUPOUT6":
               §@#_§.getItemByName("MovieClip_GetMore6").setVisibility(false);
               break;
            case "MIGHTYEAGLEOVER":
               powerUpCount = §%h§.§3!]§.§7#S§(§`j§.§@!V§.§"!E§);
               if(powerUpCount <= 0)
               {
                  §@#_§.getItemByName("MovieClip_GetMore").setVisibility(true);
                  (§@#_§.getItemByName("MovieClip_GetMore") as §="T§).isPlaying = true;
                  (§@#_§.getItemByName("MovieClip_GetMore") as §="T§).§9!,§("Start");
                  §@#_§.getItemByName("MovieClip_GetMore").mClip.mouseChildren = false;
                  §@#_§.getItemByName("MovieClip_GetMore").mClip.mouseEnabled = false;
               }
               break;
            case "EXTRABIRD":
               if(this.§7!K§ == §4#h§)
               {
                  return;
               }
               this.§[!Z§.§'#A§ = this.§[!Z§.§?!r§(event.eventName);
               if(!this.§[!Z§.§'#A§)
               {
                  this.§5#z§();
               }
               this.§ 0§();
               break;
            case "EXTRABIRDOVER":
               powerUpCount = §%h§.§3!]§.§7#S§(§`j§.§="-§.§"!E§);
               if(powerUpCount <= 0)
               {
                  §@#_§.getItemByName("MovieClip_GetMoreVH").setVisibility(true);
                  (§@#_§.getItemByName("MovieClip_GetMoreVH") as §="T§).isPlaying = true;
                  (§@#_§.getItemByName("MovieClip_GetMoreVH") as §="T§).§9!,§("Start");
                  §@#_§.getItemByName("MovieClip_GetMoreVH").mClip.mouseChildren = false;
                  §@#_§.getItemByName("MovieClip_GetMoreVH").mClip.mouseEnabled = false;
               }
               break;
            case "MIGHTYEAGLEOUT":
               §@#_§.getItemByName("MovieClip_GetMore").setVisibility(false);
               break;
            case "POWERUPOUT1":
               §@#_§.getItemByName("MovieClip_GetMore1").setVisibility(false);
               break;
            case "POWERUPOUT2":
               §@#_§.getItemByName("MovieClip_GetMore2").setVisibility(false);
               break;
            case "POWERUPOUT3":
               §@#_§.getItemByName("MovieClip_GetMore3").setVisibility(false);
               break;
            case "POWERUPOUT4":
               §@#_§.getItemByName("MovieClip_GetMore4").setVisibility(false);
               break;
            case "POWERUPOUT5":
               §@#_§.getItemByName("MovieClip_GetMore5").setVisibility(false);
               break;
            case "CLOSE_TUTORIAL_POWERUP":
               §1"T§.§]"!§();
               break;
            case "ZOOM_IN":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               this.§'!R§ = §5+§;
               this.§1!?§ = §["x§;
               break;
            case "ZOOM_OUT":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               this.§'!R§ = -§5+§;
               this.§1!?§ = §["x§;
               break;
            case "ZOOM_IN_RELEASE":
               this.§'!R§ = 0;
               break;
            case "ZOOM_OUT_RELEASE":
               this.§'!R§ = 0;
               break;
            case "SLINGSHOT_OPEN":
               if(this.§!$;§.§1#B§())
               {
                  §#$+§.playSound("Menu_Back",§#$+§.§'!o§);
               }
               else
               {
                  §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               }
               this.§!$;§.§1r§();
               break;
            case "SLINGSHOT_NORMAL":
               this.§"#s§("SLINGSHOT_NORMAL");
               break;
            case "SLINGSHOT_WOODCHIPPER":
            case "SLINGSHOT_BUY_SLING_1":
               this.§"#s§("SLINGSHOT_WOODCHIPPER");
               break;
            case "SLINGSHOT_GLASSBREAKER":
            case "SLINGSHOT_BUY_SLING_2":
               this.§"#s§("SLINGSHOT_GLASSBREAKER");
               break;
            case "SLINGSHOT_STONECUTTER":
            case "SLINGSHOT_BUY_SLING_3":
               this.§"#s§("SLINGSHOT_STONECUTTER");
               break;
            case "SLINGSHOT_GOLDEN":
            case "SLINGSHOT_BUY_SLING_4":
               this.§"#s§("SLINGSHOT_GOLDEN");
               break;
            case "SLINGSHOT_WISHBONE":
            case "SLINGSHOT_BUY_SLING_5":
               this.§"#s§("SLINGSHOT_WISHBONE");
               break;
            case "SLINGSHOT_XMASTREE":
            case "SLINGSHOT_BUY_SLING_6":
               this.§"#s§("SLINGSHOT_XMASTREE");
               break;
            case "SLINGSHOT_BOUNCY":
            case "SLINGSHOT_UNLOCK_BOUNCY":
               this.§"#s§("SLINGSHOT_BOUNCY");
               break;
            case "SLINGSHOT_DIAMOND":
            case "SLINGSHOT_UNLOCK_DIAMOND":
               this.§"#s§("SLINGSHOT_DIAMOND");
               break;
            case "POWERUP_WINGMAN":
               if(this.§5r§.§6C§ || this.§7!K§ == §4#h§)
               {
                  return;
               }
               if(this.§3!q§ > 0)
               {
                  return;
               }
               this.§5r§.§6C§ = true;
               this.§[!Z§.§'#A§ = this.§[!Z§.§?!r§(event.eventName);
               totalBirds = §>"$§.§3#'§.slingshot.§`b§();
               remainingBirds = §>"$§.§3#'§.slingshot.§3!4§();
               wingmanIndex = 1 + totalBirds - remainingBirds;
               wingmanIndexString = "";
               if(remainingBirds == 0)
               {
                  wingmanIndexString = "Last-chance";
               }
               else
               {
                  wingmanIndex = Math.max(Math.min(totalBirds,wingmanIndex));
                  wingmanIndexString = "Bird_number:" + wingmanIndex;
               }
               this.§5r§.§6C§ = false;
               this.§5r§.disable();
               this.§"§();
               this.§ 0§();
               break;
            case "POWERUP_OVER_WINGMAN":
               powerUpCount = §%h§.§3!]§.§7#S§(§`j§.§="-§.§"!E§);
               if(powerUpCount <= 0)
               {
                  §@#_§.getItemByName("MovieClip_GetMoreWM").setVisibility(true);
                  (§@#_§.getItemByName("MovieClip_GetMoreWM") as §="T§).isPlaying = true;
                  (§@#_§.getItemByName("MovieClip_GetMoreWM") as §="T§).§9!,§("Start");
                  §@#_§.getItemByName("MovieClip_GetMoreWM").mClip.mouseChildren = false;
                  §@#_§.getItemByName("MovieClip_GetMoreWM").mClip.mouseEnabled = false;
               }
               break;
            case "POWERUP_OUT_WINGMAN":
               §@#_§.getItemByName("MovieClip_GetMoreWM").setVisibility(false);
               break;
            case "LEVEL_END_NO":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               timer = new Timer(100);
               timer.addEventListener(TimerEvent.TIMER,function fn(param1:TimerEvent):void
               {
                  § 0§();
                  timer = null;
               });
               timer.start();
               break;
            case "LEVEL_END_YES":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               this.§=$,§(§-#A§.§0!9§);
               break;
            case "SKIP_LEVEL_END":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               this.§=$,§(§-#A§.§3s§);
         }
      }
      
      private function §"#s§(param1:String) : void
      {
         var _loc2_:§&b§ = §3#8§.§"A§(param1);
         if(_loc2_)
         {
            this.§!$;§.§]k§(_loc2_.§"!E§,false);
            this.§ 0§();
         }
      }
      
      public function §<$#§() : String
      {
         return "PlayView";
      }
      
      override public function isAllowedToChangeVictoryState() : Boolean
      {
         var _loc1_:§8"i§ = null;
         if(!this.§6#x§ && !this.§0,§)
         {
            return false;
         }
         if(this.isEagleUsed())
         {
            _loc1_ = this.§1#p§.§5j§();
            if(!_loc1_)
            {
               return true;
            }
            return _loc1_.§!#[§ && _loc1_.§["O§ && _loc1_.§"4§ > 3000;
         }
         if((this.§1#p§ as §4!x§).§#""§.§6!g§() && !this.§;"n§)
         {
            return false;
         }
         return super.isAllowedToChangeVictoryState();
      }
      
      override public function isAllowedToChangeFailState() : Boolean
      {
         if((this.§1#p§ as §4!x§).§#""§.§6!g§())
         {
            return false;
         }
         return super.isAllowedToChangeFailState();
      }
      
      private function §"§() : void
      {
         (this.§1#p§ as §4!x§).§>$0§();
         if(this.§2%§)
         {
            this.§2%§.onComplete = null;
            this.§'!1§(this.§2%§);
            this.§2%§ = null;
         }
      }
      
      private function §0#K§() : Boolean
      {
         if((this.§1#p§ as §4!x§).§#""§.§6!g§())
         {
            return false;
         }
         if(AngryBirdsBase.singleton.popupManager.§5"'§())
         {
            return false;
         }
         return true;
      }
      
      private function §%#%§() : void
      {
         if(this.§2%§ == null)
         {
            this.§!K§();
         }
      }
      
      public function §!K§() : void
      {
         if((§>"$§.§3#'§ as §#%§).§4"w§.§"p§)
         {
            return;
         }
         var _loc1_:MovieClip = §@#_§.getItemByName("Button_Wingman").mClip as MovieClip;
         this.§2%§ = §""Z§.§3!]§.§[#h§(§""Z§.§3!]§.§5"0§(_loc1_,{
            "scaleX":1.15,
            "scaleY":1.15
         },{
            "scaleX":1,
            "scaleY":1
         },0.1,§""Z§.§-0§),§""Z§.§3!]§.§5"0§(_loc1_,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":1.15,
            "scaleY":1.15
         },0.1,§""Z§.§[$1§),§""Z§.§3!]§.§5"0§(_loc1_,{
            "scaleX":1.15,
            "scaleY":1.15
         },{
            "scaleX":1,
            "scaleY":1
         },0.1,§""Z§.§-0§),§""Z§.§3!]§.§5"0§(_loc1_,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":1.15,
            "scaleY":1.15
         },0.1,§""Z§.§[$1§),§""Z§.§3!]§.§5"0§(_loc1_,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":1,
            "scaleY":1
         },1,§""Z§.§[$1§));
         this.§2%§.onComplete = this.§!K§;
         this.§2%§.play();
      }
      
      protected function §##m§(param1:§ !_§) : void
      {
         if(param1.§&$§ == §`j§.§="-§.eventName)
         {
            this.§5r§.disable();
         }
      }
      
      private function §&!Y§(param1:§0#3§) : void
      {
         (§>"$§.§<_§ as §8G§).§&#§.§+#M§();
      }
      
      protected function §=$,§(param1:String) : void
      {
         §-#A§.§6$2§().§#"E§ = param1;
         this.§6#x§ = true;
         this.§;"n§ = true;
         if(this.§>"P§)
         {
            this.§>"P§.setVisibility(false);
         }
         this.§7!K§ = §1"q§;
         if(this.§1#p§.§0Z§())
         {
            this.§1#p§.§2"V§();
         }
         else
         {
            this.§1#p§.§#"p§();
         }
      }
      
      private function §,"_§() : void
      {
         this.§>"P§.setVisibility(true);
         §@#_§.getItemByName("EndLevelDialogueTitle").y = §>!8§;
         (§@#_§.getItemByName("Button_Yes").mClip.getChildByName("Button_Shine") as MovieClip).gotoAndStop(1);
         §@#_§.getItemByName("Button_No").setVisibility(true);
         §@#_§.getItemByName("Button_No").mClip.scaleX = 1;
         §@#_§.getItemByName("Button_No").mClip.scaleY = 1;
         §@#_§.getItemByName("TextField_EndLevelCounter").setVisibility(true);
         this.§>"q§.scaleX = 1;
         this.§>"q§.scaleY = 1;
         if(!this.§1#p§.§0Z§() && !(§>"$§.§3#'§ as §#%§).§4"w§.§"p§)
         {
            this.§5r§.§8!4§();
         }
         var _loc1_:MovieClip = §@#_§.getItemByName("TextField_EndLevelCounter").mClip;
         this.§]#`§ = §""Z§.§3!]§.§[#h§(§""Z§.§3!]§.§5"0§(_loc1_,{},{},0.8),§""Z§.§3!]§.§5"0§(_loc1_,{
            "scaleX":1.15,
            "scaleY":1.15
         },{
            "scaleX":1,
            "scaleY":1
         },0.1,§""Z§.§-0§),§""Z§.§3!]§.§5"0§(_loc1_,{
            "scaleX":1,
            "scaleY":1
         },{
            "scaleX":1.15,
            "scaleY":1.15
         },0.1,§""Z§.§[$1§));
         this.§]#`§.§^"c§ = false;
         this.§]#`§.delay = 0.1;
         this.§]#`§.play();
      }
      
      private function § 0§() : void
      {
         var _loc1_:§+,§ = null;
         var _loc2_:§+,§ = null;
         if(this.§7!K§ > §-$6§)
         {
            this.§'!1§(this.§]#`§);
            this.§]#`§ = null;
            this.§7!K§ = §1"q§;
            §@#_§.getItemByName("TextField_EndLevelCounter").setVisibility(false);
            _loc1_ = §""Z§.§3!]§.§5"0§(§@#_§.getItemByName("Button_No").mClip,{
               "scaleX":0,
               "scaleY":0
            },{
               "scaleX":1,
               "scaleY":1
            },0.2,§""Z§.§[$1§);
            _loc1_.onComplete = this.§4#R§;
            _loc1_.play();
            _loc2_ = §""Z§.§3!]§.§5"0§(§@#_§.getItemByName("EndLevelDialogueTitle").mClip,{"y":§ #Z§},{"y":§>!8§},0.3,§""Z§.§[$1§);
            _loc2_.onComplete = this.§66§;
            _loc2_.play();
            this.§!,§ = §""Z§.§3!]§.§5"0§(this.§>"q§,{
               "scaleX":0.8,
               "scaleY":0.8
            },{
               "scaleX":1,
               "scaleY":1
            },0.3,§""Z§.§[$1§);
            this.§!,§.onComplete = this.§0$-§;
            this.§!,§.play();
         }
      }
      
      private function §4#R§() : void
      {
         §@#_§.getItemByName("Button_No").setVisibility(false);
      }
      
      private function §66§() : void
      {
         §@#_§.getItemByName("EndLevelDialogueTitle").y = § #Z§;
      }
      
      private function §0$-§() : void
      {
         if(this.§@q§ <= 0)
         {
            this.§>"P§.setVisibility(true);
            this.§7!K§ = §1"q§;
            §@#_§.getItemByName("EndLevelDialogueTitle").y = § #Z§;
            §@#_§.getItemByName("Button_No").setVisibility(false);
            §@#_§.getItemByName("TextField_EndLevelCounter").setVisibility(false);
            this.§>"q§.scaleX = 0.8;
            this.§>"q§.scaleY = 0.8;
            (§@#_§.getItemByName("Button_Yes").mClip.getChildByName("Button_Shine") as MovieClip).play();
            this.§!,§ = null;
         }
      }
   }
}
