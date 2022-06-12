package §'"-§
{
   import §"!U§.§=#V§;
   import §#v§.§#!?§;
   import §#v§.§-"R§;
   import §#v§.§6^§;
   import §#v§.§@#?§;
   import §%$!§.§%h§;
   import §%$!§.§+3§;
   import §&#S§.§""Z§;
   import §&#S§.§+,§;
   import §'!U§.§>$$§;
   import §'z§.§4!x§;
   import §+!d§.§2![§;
   import §+#!§.PowerupSuggestionPopup;
   import §1"0§.§4$#§;
   import §2#m§.§%F§;
   import §5"$§.§]!m§;
   import §52§.§#%§;
   import §52§.§?!N§;
   import §52§.§@M§;
   import §6"r§.§0"<§;
   import §6"r§.§="T§;
   import §6"r§.§]$!§;
   import §<H§.§1"T§;
   import §>!#§.§,"W§;
   import §>!#§.§]#§;
   import §?"R§.§[W§;
   import §?§.§>"$§;
   import §^!,§.§8!H§;
   import §^!,§.§<d§;
   import §^$4§.§2#I§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class §;#[§ extends EventDispatcher
   {
      
      private static const §8!I§:Number = 3600000;
      
      private static const §@#I§:Number = -130;
      
      private static const §[!=§:int = 5;
      
      private static const §@"_§:Number = 1 / 6;
      
      private static const §'#k§:Number = 6000;
      
      protected static const §[q§:§'#3§ = §`j§.§6#z§;
      
      protected static const §>#u§:§'#3§ = §`j§.§="-§;
      
      protected static const §3L§:int = 2000;
      
      protected static const §,E§:int = 0;
      
      protected static const §;_§:int = 1;
      
      public static var §^2§:Boolean = false;
      
      public static var §`"A§:Boolean = true;
      
      private static var §=4§:String;
      
      private static var §!!h§:Number = 0;
      
      private static var §`!F§:int = 0;
      
      private static var § H§:Boolean = false;
      
      private static const §%I§:int = 10000;
      
      private static const §`"o§:int = 6000;
       
      
      protected var §>"`§:PowerupSuggestionPopup;
      
      protected var §8P§:Boolean = true;
      
      private var §7!6§:int = 0;
      
      private var §<#?§:int = 1;
      
      protected var §!$§:§0"<§;
      
      private var §&#2§:Number = 0;
      
      private var §1#"§:Number = 0;
      
      private var §`5§:Number;
      
      private var §2!&§:Number;
      
      private var §-""§:Timer;
      
      private var §]!V§:Boolean;
      
      private var §1!m§:MovieClip;
      
      private var §5# §:Number;
      
      private var §8j§:§4!x§;
      
      private var mLevelManager:§#!?§;
      
      private var §!#^§:§>$$§;
      
      private var §5#-§:Boolean;
      
      private var §?!0§:§%F§;
      
      private var §-"z§:§>$$§;
      
      private var §`!u§:Vector.<§+,§>;
      
      private var §"!S§:Number;
      
      private var §0$5§:Number;
      
      private var §0!p§:MovieClip;
      
      private var §5e§:Boolean;
      
      public function §;#[§(param1:§0"<§, param2:§#!?§)
      {
         super();
         this.§!$§ = param1;
         this.mLevelManager = param2;
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         this.§!#^§ = this.§!$§.getItemByName("Container_PowerUpButtons");
         this.§-"z§ = this.§!$§.getItemByName("Button_PowerUpMenuOpenWhole");
         this.§0!p§ = this.§-"z§.mClip.getChildByName("Movieclip_PowerupFrenzy") as MovieClip;
         this.§2!&§ = this.§!#^§.width - 25;
         this.§`5§ = this.§!#^§.y;
         this.§1!m§ = this.§!$§.getItemByName("Movieclip_PowerupAlert").mClip;
         this.§1!m§.visible = false;
         this.§1!m§.addEventListener(MouseEvent.MOUSE_OVER,this.§8"m§);
         this.§-""§ = new Timer(1000,1);
         this.§-""§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§0#C§);
         if(§=4§ != this.mLevelManager.currentLevel)
         {
            §`!F§ = 0;
            § H§ = false;
         }
         else
         {
            ++§`!F§;
         }
         §=4§ = this.mLevelManager.currentLevel;
         if(§`!F§ >= §[!=§)
         {
            §`!F§ = 0;
            _loc1_ = (AngryBirdsBase.singleton.dataModel as §+3§).serverSynchronizedTime.synchronizedTimeStamp;
            _loc2_ = (_loc1_ - §!!h§) / §8!I§;
            if(_loc2_ >= §@"_§)
            {
               §!!h§ = _loc1_;
               this.§ b§();
            }
         }
         this.§5#-§ = true;
      }
      
      protected function § b§() : void
      {
         var _loc1_:MovieClip = null;
         var _loc2_:int = 0;
         var _loc3_:§-"R§ = null;
         var _loc4_:§@#?§ = null;
         var _loc5_:§'#3§ = null;
         if(this.§<#?§ == §,E§)
         {
            _loc1_ = this.§1!m§.getChildByName("Message_Clip") as MovieClip;
            _loc2_ = Math.floor(Math.random() * _loc1_.totalFrames) + 1;
            _loc1_.gotoAndStop(_loc2_);
            this.§5# § = §'#k§;
            this.§1!m§.alpha = 1;
            this.§1!m§.gotoAndStop("start");
            this.§1!m§.visible = true;
            this.§1!m§.gotoAndPlay("start");
         }
         else if(this.§<#?§ == §;_§)
         {
            if(!this.§>"`§)
            {
               _loc3_ = this.mLevelManager.getLevelForId(this.mLevelManager.currentLevel);
               if(!(_loc4_ = §@#?§(_loc3_)).optimalPowerup || _loc4_.optimalPowerup == "")
               {
                  _loc5_ = !!this.mLevelManager.getCurrentEpisodeModel().isTournament ? §>#u§ : §[q§;
               }
               else
               {
                  _loc5_ = §`j§.§6p§(_loc4_.optimalPowerup);
               }
               this.§>"`§ = new PowerupSuggestionPopup(§[W§.NORMAL,§<d§.DEFAULT,_loc5_,this.mLevelManager.currentLevel);
               this.§>"`§.addEventListener(§ !_§.§?=§,this.§##m§);
               this.§>"`§.addEventListener(§4$#§.§%#l§,this.§-!7§);
               this.§>"`§.addEventListener(§4$#§.§ n§,this.§-"v§);
               AngryBirdsBase.singleton.popupManager.openPopup(this.§>"`§);
            }
         }
         §,"W§.§9"6§(this.mLevelManager.currentLevel);
      }
      
      private function §8"m§(param1:MouseEvent) : void
      {
         if(this.§5# § > 1000)
         {
            this.§5# § = 1000;
         }
      }
      
      public function activate(param1:§4!x§, param2:Boolean = true, param3:Boolean = true) : void
      {
         var _loc4_:§>$$§ = null;
         var _loc5_:§'#3§ = null;
         this.§8j§ = param1;
         this.§8j§.§#""§.§4"w§.addEventListener(§ !_§.§7!P§,this.§>E§);
         if(param2)
         {
            (§>"$§.§3#'§ as §#%§).§4"w§.§]"7§();
         }
         this.§7!-§();
         this.§8"1§(0);
         this.§!#^§.mClip.cacheAsBitmap = true;
         if(param3)
         {
            for each(_loc5_ in §`j§.§1"f§)
            {
               if(_loc4_ = this.§!$§.getItemByName(_loc5_.buttonName))
               {
                  _loc4_.setEnabled(true);
               }
            }
         }
         §%h§.§3!]§.addEventListener(Event.CHANGE,this.§"#f§);
         this.§"!S§ = 0;
         this.§0$5§ = 0;
         this.§5e§ = false;
         this.§0!p§.mouseEnabled = false;
         this.§0!p§.gotoAndStop(1);
      }
      
      public function deActivate() : void
      {
         var _loc1_:int = 0;
         if(this.§-""§)
         {
            this.§-""§.stop();
         }
         §%h§.§3!]§.removeEventListener(Event.CHANGE,this.§"#f§);
         if(this.§1!m§)
         {
            this.§1!m§.removeEventListener(MouseEvent.MOUSE_OVER,this.§8"m§);
         }
         §`"A§ = §^2§;
         this.§8j§.§#""§.§4"w§.removeEventListener(§ !_§.§7!P§,this.§>E§);
         if(this.§>"`§)
         {
            this.§>"`§.removeEventListener(§ !_§.§?=§,this.§##m§);
            this.§>"`§.removeEventListener(§4$#§.§%#l§,this.§-!7§);
            this.§>"`§.removeEventListener(§4$#§.§ n§,this.§-"v§);
            this.§>"`§.close();
            this.§>"`§ = null;
         }
         if(this.§`!u§)
         {
            _loc1_ = 0;
            while(_loc1_ < this.§`!u§.length)
            {
               this.§`!u§[_loc1_].stop();
               this.§`!u§[_loc1_] = null;
               _loc1_++;
            }
            this.§`!u§ = null;
         }
      }
      
      public function run(param1:Number) : void
      {
         if(this.§8j§.§#""§.slingshot.mSlingShotState == §@M§.§!!R§)
         {
            this.§-""§.reset();
            this.§-""§.start();
            this.§!!y§(§`j§.§="-§.eventName,false);
         }
         this.§8"1§(param1);
         if(this.§<#?§ == §,E§)
         {
            this.§7"W§(param1);
         }
         if(§2![§.§9!_§)
         {
            if(!this.§5#-§)
            {
               this.§0#D§(false);
               this.§5#-§ = true;
            }
         }
         else if(this.§5#-§)
         {
            this.§0#D§(true);
            this.§5#-§ = false;
         }
      }
      
      protected function §##m§(param1:§ !_§) : void
      {
         this.§>"`§.removeEventListener(§ !_§.§?=§,this.§##m§);
         this.§'#A§ = this.§?!r§(param1.§&$§);
         dispatchEvent(new § !_§(§ !_§.§?=§,param1.§&$§));
      }
      
      protected function §-!7§(param1:§4$#§) : void
      {
         this.§>"`§.removeEventListener(§ !_§.§?=§,this.§##m§);
         this.§>"`§.removeEventListener(§4$#§.§%#l§,this.§-!7§);
         §`!F§ = 0;
         this.§5# § = §3L§;
         dispatchEvent(new §4$#§(§4$#§.CLOSE,null));
      }
      
      protected function §-"v§(param1:§4$#§) : void
      {
         if(this.§>"`§)
         {
            if(!this.§>"`§.hasEventListener(§ !_§.§?=§))
            {
               this.§>"`§.addEventListener(§ !_§.§?=§,this.§##m§);
            }
            if(!this.§>"`§.hasEventListener(§4$#§.§%#l§))
            {
               this.§>"`§.addEventListener(§4$#§.§%#l§,this.§-!7§);
            }
         }
      }
      
      protected function §7"W§(param1:Number) : void
      {
         if(!this.§1!m§)
         {
            return;
         }
         this.§5# § -= param1;
         if(this.§5# § <= 0)
         {
            this.§1!m§.stop();
            this.§1!m§.visible = false;
         }
         else if(this.§5# § <= 1000)
         {
            this.§1!m§.alpha = this.§5# § / 1000;
         }
      }
      
      public function §0"u§() : void
      {
         if(§^2§)
         {
            §^2§ = false;
         }
         else
         {
            §^2§ = true;
         }
      }
      
      public function §^!r§() : void
      {
         if(!§^2§)
         {
            this.§-""§.reset();
            this.§-""§.start();
            §^2§ = false;
         }
      }
      
      public function §4$-§() : void
      {
         if(§^2§)
         {
            this.§-""§.reset();
            this.§-""§.start();
            §^2§ = false;
         }
      }
      
      private function §0#C§(param1:TimerEvent) : void
      {
         §^2§ = false;
      }
      
      public function get § !h§() : Boolean
      {
         return §^2§;
      }
      
      public function set § !h§(param1:Boolean) : void
      {
         §^2§ = param1;
      }
      
      public function §-g§() : void
      {
         var _loc1_:int = §%h§.§3!]§.§7#S§(§`j§.§@!V§.§"!E§);
         var _loc2_:String = §]#§.§`" §(_loc1_);
         this.§!$§.setText(_loc2_,"TextField_PowerUpCountME");
      }
      
      public function §?!r§(param1:String) : Boolean
      {
         var _loc6_:§=#V§ = null;
         if(§2![§.§9!_§)
         {
            return true;
         }
         var _loc2_:§'#3§ = §`j§.§'"0§(param1);
         if(_loc2_ == null)
         {
            throw new Error("Unknown powerup: " + param1);
         }
         var _loc3_:int = §%h§.§3!]§.§7#S§(_loc2_.§"!E§);
         if(_loc3_ <= 0)
         {
            _loc6_ = (AngryBirdsBase.singleton.dataModel as §+3§).§ ,§.§#!@§(_loc2_.§"!E§);
            this.§?!0§ = new §%F§(this.§!$§.mClip,_loc6_,_loc2_.§["u§);
            this.§?!0§.addEventListener(§2#I§.§-"`§,this.§?!%§);
            this.§?!0§.§2S§();
            return true;
         }
         if(param1 != "POWERUP_WINGMAN")
         {
            §1"T§.§4"m§(param1);
         }
         § H§ = true;
         this.§!!y§(param1,_loc3_ <= 0);
         var _loc4_:String;
         if((_loc4_ = _loc2_.§"!E§) == §`j§.§6#z§.§"!E§ || _loc4_ == §`j§.§-"f§.§"!E§ || _loc4_ == §`j§.§-"5§.§"!E§)
         {
            if(!this.§8j§.§#""§.slingshot.birdsAvailable || _loc4_ == §`j§.§6#z§.§"!E§ && this.§8j§.§#""§.slingshot.getCurrentBirdType() == "BIRD_SARDINE")
            {
               this.§!!y§(§`j§.§6#z§.eventName,false);
               return true;
            }
         }
         this.§8j§.§#""§.§4"w§.§?!r§(_loc4_);
         var _loc5_:Boolean = true;
         if(this.§8j§.§#""§.§-#k§() >= this.§!"X§())
         {
            this.§-""§.reset();
            this.§-""§.start();
            _loc5_ = false;
         }
         this.§7!-§();
         return _loc5_;
      }
      
      protected function §?!%§(param1:§2#I§) : void
      {
         var _loc3_:§'#3§ = §`j§.§6p§(param1.§4$9§);
         var _loc4_:§>$$§;
         var _loc5_:Point = (_loc4_ = this.§!$§.getItemByName(_loc3_.buttonName)).mClip.localToGlobal(new Point(0,0));
         if(_loc3_.§"!E§ == §`j§.§-"5§.§"!E§)
         {
            _loc5_.x -= 4;
         }
         var _loc6_:int = 0;
         while(_loc6_ < 40)
         {
            this.§!$§.mClip.addChild(new GlitterParticle(_loc5_.x + Math.random() * 20,_loc5_.y + 10 - _loc4_.mClip.height / 2 + Math.random() * 20));
            _loc6_++;
         }
      }
      
      protected function §>E§(param1:§ !_§) : void
      {
         var _loc6_:MovieClip = null;
         var _loc2_:String = param1.§&$§;
         this.§`#T§();
         var _loc3_:String = "";
         switch(_loc2_)
         {
            case §`j§.§6#z§.§"!E§:
               _loc3_ = "MovieClip_PowerUp_SuperSeeds";
               break;
            case §`j§.§-"f§.§"!E§:
               _loc3_ = "MovieClip_PowerUp_KingSling";
               break;
            case §`j§.§-"5§.§"!E§:
               _loc3_ = "MovieClip_PowerUp_SlingScope";
               break;
            case §`j§.§5"j§.§"!E§:
               _loc3_ = "MovieClip_PowerUp_Birdquake";
               break;
            case §`j§.§?O§.§"!E§:
               _loc3_ = "MovieClip_PowerUp_TNTDRop";
               break;
            case §`j§.§="-§.§"!E§:
               _loc3_ = "MovieClip_PowerUp_Wingman";
               break;
            case §`j§.§+"4§.§"!E§:
               _loc3_ = "MovieClip_PowerUp_Mushroom";
               break;
            default:
               return;
         }
         var _loc4_:§0"<§;
         (_loc4_ = this.§!$§.getItemByName("Container_PowerUp_Intro2") as §0"<§).visible = true;
         var _loc5_:§="T§;
         (_loc5_ = _loc4_.getItemByName(_loc3_) as §="T§).visible = true;
         _loc5_.mClip.gotoAndPlay(0);
         _loc5_.mClip.addEventListener(Event.ENTER_FRAME,this.§`#k§);
         if(_loc5_.mClip.parent.getChildByName("MovieClip_PowerUp_Empty_Background"))
         {
            _loc5_.mClip.parent.removeChildAt(0);
         }
         if(_loc5_.mClip.name == "MovieClip_PowerUp_Wingman")
         {
            §>"$§.pause();
            (_loc6_ = new MovieClip()).name = "MovieClip_PowerUp_Empty_Background";
            _loc6_.graphics.beginFill(0);
            _loc6_.graphics.drawRect(-§>"$§.§ "+§ * §>"$§.§;!m§,-§>"$§.§&#-§ * §>"$§.§`G§,4000,4000);
            _loc6_.graphics.endFill();
            _loc5_.mClip.parent.addChildAt(_loc6_,0);
         }
      }
      
      private function §`#k§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc2_:MovieClip = param1.currentTarget as MovieClip;
         if(§>"$§.isPaused)
         {
            _loc3_ = AngryBirdsBase.singleton.popupManager.§5"'§();
            if(_loc3_)
            {
               if(_loc2_.isPlaying)
               {
                  _loc2_.prevFrame();
                  _loc2_.stop();
                  this.§%#$§(_loc2_,true);
                  return;
               }
            }
         }
         else if(!_loc2_.isPlaying)
         {
            _loc2_.play();
            this.§%#$§(_loc2_,false);
         }
         if(_loc2_.currentFrame == _loc2_.totalFrames)
         {
            this.§`#T§();
            if(_loc2_.name == "MovieClip_PowerUp_Wingman")
            {
               if(!§1"T§.§4"m§("POWERUP_WINGMAN"))
               {
                  §>"$§.resume();
               }
            }
            this.§5e§ = true;
         }
      }
      
      private function §%#$§(param1:MovieClip, param2:Boolean = false) : void
      {
         var _loc4_:MovieClip = null;
         var _loc3_:int = 0;
         while(_loc3_ < param1.numChildren)
         {
            if(param1.getChildAt(_loc3_) is MovieClip)
            {
               if(_loc4_ = MovieClip(param1.getChildAt(_loc3_)))
               {
                  if(param2)
                  {
                     _loc4_.stop();
                  }
                  else
                  {
                     _loc4_.play();
                  }
                  if(_loc4_.numChildren > 0)
                  {
                     this.§%#$§(_loc4_,param2);
                  }
               }
            }
            _loc3_++;
         }
      }
      
      private function §`#T§() : void
      {
         var _loc2_:§>$$§ = null;
         var _loc1_:§0"<§ = this.§!$§.getItemByName("Container_PowerUp_Intro2") as §0"<§;
         for each(_loc2_ in _loc1_.§5&§)
         {
            _loc2_.mClip.stop();
            _loc2_.mClip.removeEventListener(Event.ENTER_FRAME,this.§`#k§);
            _loc2_.visible = false;
         }
         _loc1_.visible = false;
      }
      
      private function §%!8§(param1:Number) : Boolean
      {
         if(§^2§)
         {
            if(this.§1#"§ < 360)
            {
               this.§1#"§ += 0.6 * param1;
               if(this.§1#"§ > 360)
               {
                  this.§1#"§ = 360;
               }
               return true;
            }
            if(this.§1#"§ > 360)
            {
               this.§1#"§ = 360;
               return true;
            }
         }
         else
         {
            if(this.§1#"§ > 0)
            {
               this.§1#"§ -= 0.6 * param1;
               if(this.§1#"§ < 0)
               {
                  this.§1#"§ = 0;
               }
               return true;
            }
            if(this.§1#"§ < 0)
            {
               this.§1#"§ = 0;
               return true;
            }
         }
         return false;
      }
      
      private function §4!#§(param1:Number) : Boolean
      {
         if(§^2§)
         {
            if(!this.§!#^§.visible)
            {
               this.§!#^§.setVisibility(true);
            }
            if(this.§&#2§ < this.§2!&§ - 20)
            {
               this.§&#2§ += 0.5 * param1;
               if(this.§&#2§ > this.§2!&§ - 20)
               {
                  this.§&#2§ = this.§2!&§ - 20;
               }
               return true;
            }
            if(this.§&#2§ > this.§2!&§ - 20)
            {
               this.§&#2§ = this.§2!&§ - 20;
               if(this.§&#2§ < this.§2!&§ - 20)
               {
                  this.§&#2§ = this.§2!&§ - 20;
               }
               return true;
            }
         }
         else if(this.§&#2§ > 0)
         {
            this.§&#2§ -= 0.5 * param1;
            if(this.§&#2§ <= 0)
            {
               this.§&#2§ = 0;
               if(this.§!#^§.visible)
               {
                  this.§!#^§.setVisibility(false);
               }
               if(!this.§-"z§.visible)
               {
                  this.§-"z§.setVisibility(true);
               }
               if(this.§8j§.§#""§.§-#k§() >= this.§!"X§() && this.§!#^§.visible)
               {
                  this.§!#^§.setVisibility(false);
               }
            }
            return true;
         }
         return false;
      }
      
      private function §8"1§(param1:Number) : void
      {
         var _loc4_:Rectangle = null;
         var _loc2_:Boolean = this.§%!8§(param1);
         var _loc3_:Boolean = this.§4!#§(param1);
         if(_loc2_)
         {
            this.§-"z§.mClip.MovieClip_PowerUpStar.rotation = this.§1#"§;
            this.§-"z§.mClip.MovieClip_PowerUpStarShadow.rotation = this.§1#"§;
            this.§0!p§.gotoAndStop(1);
         }
         if(_loc3_)
         {
            _loc4_ = new Rectangle(this.§2!&§ - this.§&#2§ - 20,0,this.§2!&§ + 30,this.§!#^§.height);
            this.§!#^§.mClip.scrollRect = _loc4_;
         }
         this.§2"p§(param1);
      }
      
      private function §2"p§(param1:Number) : void
      {
         if(!this.§5e§ || this.§"!S§ >= §%I§ && this.§0$5§ >= §`"o§)
         {
            return;
         }
         var _loc2_:int = (§>"$§.§3#'§ as §#%§).§-#k§();
         var _loc3_:int = this.§!"X§();
         if(_loc3_ > 2 && _loc2_ >= 2 && _loc2_ < _loc3_)
         {
            if(this.§"!S§ == 0)
            {
               this.§8"g§();
            }
            this.§"!S§ += param1;
            if(this.§"!S§ >= §%I§)
            {
               this.§8"g§();
            }
            if(this.§0$5§ < §`"o§)
            {
               this.§0$5§ += param1;
               if(this.§0$5§ >= §`"o§)
               {
                  this.§0!p§.gotoAndPlay(1);
               }
            }
         }
         else
         {
            this.§5e§ = false;
         }
      }
      
      private function §8"g§() : void
      {
         var _loc3_:§>$$§ = null;
         var _loc4_:§'#3§ = null;
         var _loc5_:§+,§ = null;
         if(!this.§`!u§)
         {
            this.§`!u§ = new Vector.<§+,§>();
         }
         for each(_loc4_ in §`j§.§1"f§)
         {
            if(§`j§.§3"I§.indexOf(_loc4_.§"!E§) <= -1)
            {
               _loc3_ = this.§!$§.getItemByName(_loc4_.buttonName);
               if(_loc3_ && _loc3_.visible)
               {
                  if(!(§>"$§.§3#'§ as §#%§).§!9§(_loc4_.§"!E§))
                  {
                     (_loc5_ = §""Z§.§3!]§.§[#h§(§""Z§.§3!]§.§5"0§(_loc3_.mClip,{
                        "scaleX":1.3,
                        "scaleY":1.3
                     },{
                        "scaleX":1,
                        "scaleY":1
                     },0.2,§""Z§.§-0§),§""Z§.§3!]§.§5"0§(_loc3_.mClip,{
                        "scaleX":1,
                        "scaleY":1
                     },{
                        "scaleX":1.3,
                        "scaleY":1.3
                     },0.2,§""Z§.§[$1§),§""Z§.§3!]§.§5"0§(_loc3_.mClip,{
                        "scaleX":1.3,
                        "scaleY":1.3
                     },{
                        "scaleX":1,
                        "scaleY":1
                     },0.2,§""Z§.§-0§),§""Z§.§3!]§.§5"0§(_loc3_.mClip,{
                        "scaleX":1,
                        "scaleY":1
                     },{
                        "scaleX":1.3,
                        "scaleY":1.3
                     },0.2,§""Z§.§[$1§),§""Z§.§3!]§.§5"0§(_loc3_.mClip,{
                        "scaleX":1,
                        "scaleY":1
                     },{
                        "scaleX":1,
                        "scaleY":1
                     },1,§""Z§.§[$1§))).play();
                     this.§`!u§.push(_loc5_);
                  }
               }
            }
         }
      }
      
      protected function §7!-§() : void
      {
         this.§ "l§("TextField_PowerUpCount1",§`j§.§6#z§);
         this.§ "l§("TextField_PowerUpCount2",§`j§.§-"f§);
         this.§ "l§("TextField_PowerUpCount3",§`j§.§-"5§);
         this.§ "l§("TextField_PowerUpCount4",§`j§.§5"j§);
         this.§ "l§("TextField_PowerUpCountWM",§`j§.§="-§);
         if((this.mLevelManager as §6^§).§=<§())
         {
            this.§ "l§("TextField_PowerUpCount6",§`j§.§+"4§);
         }
         this.§-g§();
      }
      
      protected function § "l§(param1:String, param2:§'#3§) : void
      {
         var _loc3_:int = §%h§.§3!]§.§7#S§(param2.§"!E§);
         var _loc4_:String = §]#§.§`" §(_loc3_);
         var _loc5_:§]$!§ = this.§!$§.getItemByName("TextField_" + param2.§@d§) as §]$!§;
         var _loc6_:§>$$§ = this.§!$§.getItemByName("Infinite_" + param2.§@d§);
         _loc5_.mClip.mouseEnabled = false;
         if(!param2.§6!u§)
         {
            _loc5_.setVisibility(false);
            if(_loc6_)
            {
               _loc6_.setVisibility(false);
            }
            return;
         }
         if(Number(§%h§.§3!]§.§"#k§(param2.§"!E§)) > 0)
         {
            _loc5_.setVisibility(false);
            if(_loc6_)
            {
               _loc6_.setVisibility(true);
            }
         }
         else
         {
            _loc5_.setVisibility(true);
            if(_loc6_)
            {
               _loc6_.setVisibility(false);
            }
         }
         this.§!$§.setText(_loc4_,param1);
         var _loc8_:Boolean = true;
         if(int(this.§8j§.§#""§.§-#k§()) >= this.§!"X§() && param2.buttonName != §`j§.§="-§.buttonName)
         {
            _loc8_ = false;
         }
         if(this.§8j§.§#""§.§!9§(param2.§"!E§) && _loc3_ > 0)
         {
            _loc8_ = false;
         }
         if(this.§8j§.§#""§.§'"j§ && param2.§"!E§ == §`j§.§6#z§.§"!E§)
         {
            _loc8_ = false;
         }
         this.§!!y§(param2.eventName,_loc8_);
      }
      
      public function §!"X§() : int
      {
         if(§]!m§.§3!]§.§,"K§ && §]!m§.§3!]§.§,"K§.§##_§)
         {
            if((this.mLevelManager as §6^§).§=<§())
            {
               §?!N§.§!s§ = 5;
            }
            else
            {
               §?!N§.§!s§ = 4;
            }
         }
         else
         {
            §?!N§.§!s§ = 2;
         }
         return §?!N§.§!s§;
      }
      
      private function §"#f§(param1:Event) : void
      {
         if(!§2![§.§9!_§)
         {
            this.§7!-§();
         }
      }
      
      public function §!!y§(param1:String, param2:Boolean = true) : void
      {
         this.§#!f§(§`j§.§'"0§(param1),param2);
      }
      
      private function §#!f§(param1:§'#3§, param2:Boolean) : void
      {
         var _loc3_:Number = !!param2 ? Number(1) : Number(0.4);
         var _loc4_:§>$$§;
         if(_loc4_ = this.§!$§.getItemByName(param1.buttonName))
         {
            _loc4_.setEnabled(param2);
            _loc4_.mClip.alpha = _loc3_;
         }
         var _loc5_:§>$$§;
         if(_loc5_ = this.§!$§.getItemByName(param1.§@d§ + "_BG"))
         {
            _loc5_.mClip.alpha = _loc3_;
            _loc5_.mClip.mouseChildren = false;
            _loc5_.mClip.mouseEnabled = false;
         }
      }
      
      public function get §'#A§() : Boolean
      {
         return this.§]!V§;
      }
      
      public function set §'#A§(param1:Boolean) : void
      {
         this.§]!V§ = param1;
      }
      
      public function §=M§() : void
      {
         §`!F§ = 0;
      }
      
      public function §+"k§() : §8!H§
      {
         return this.§>"`§;
      }
      
      private function §0#D§(param1:Boolean) : void
      {
         var _loc2_:§>$$§ = null;
         var _loc3_:§'#3§ = null;
         for each(_loc3_ in §`j§.§1"f§)
         {
            _loc2_ = this.§!$§.getItemByName(_loc3_.buttonName);
            if(_loc2_)
            {
               if((§>"$§.§3#'§ as §#%§).§!9§(_loc3_.§"!E§))
               {
                  this.§#!f§(_loc3_,false);
               }
               else
               {
                  this.§#!f§(_loc3_,param1);
               }
            }
         }
      }
   }
}
