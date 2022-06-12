package §-;§
{
   import §!#C§.§ $?§;
   import §!#C§.§4!Q§;
   import §!h§.§4#Z§;
   import §#,§.§]$+§;
   import §&!_§.§0I§;
   import §&!_§.§4!H§;
   import §&$@§.§>N§;
   import §'"6§.§,R§;
   import §'M§.§"Z§;
   import §,!Q§.§8#=§;
   import §,"v§.§7!J§;
   import §,"v§.§;"n§;
   import §,"v§.§;#A§;
   import §,"v§.§^!b§;
   import §-$!§.§<U§;
   import §0!s§.§5!-§;
   import §0!s§.§]"Y§;
   import §4§.§;!X§;
   import §5" §.§=n§;
   import §6t§.§^"b§;
   import §7"`§.PowerupSuggestionPopup;
   import §9$2§.§7"L§;
   import §<!r§.§'##§;
   import §>2§.§"§;
   import §>2§.§6#t§;
   import §>2§.§7#;§;
   import §>2§.§?##§;
   import §>z§.§#"l§;
   import §>z§.ErrorPopup;
   import §`#@§.§7n§;
   import com.rovio.assets.§6$A§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class §]$=§ extends EventDispatcher
   {
      
      private static const §;b§:Number = 3600000;
      
      private static const §8"7§:Number = -130;
      
      private static const §6!r§:int = 5;
      
      private static const §`",§:Number = 1 / 6;
      
      private static const §+",§:Number = 6000;
      
      protected static const §`$$§:§<K§ = §+"d§.§1J§;
      
      protected static const §-!_§:§<K§ = §+"d§.§]#_§;
      
      protected static const §&U§:int = 2000;
      
      private static var §+"j§:String;
      
      private static var §8#@§:Number = 0;
      
      private static var §'y§:int = 0;
      
      private static var §@#S§:Boolean = false;
       
      
      protected var §2!4§:PowerupSuggestionPopup;
      
      protected var §5!m§:Boolean = true;
      
      private var §;#Z§:int = 0;
      
      protected var §[$5§:§]$+§;
      
      protected var §[#[§:§]$+§;
      
      private var §0T§:Number = 0;
      
      private var §4"<§:§;!X§;
      
      private var mLevelManager:§;"n§;
      
      private var §>!X§:Boolean;
      
      private var §+i§:§>N§;
      
      private var §@$7§:MovieClip;
      
      public function §]$=§(param1:§]$+§, param2:§;"n§)
      {
         super();
         this.§[$5§ = param1;
         this.mLevelManager = param2;
         this.init();
      }
      
      protected function init() : void
      {
         this.§[#[§ = this.§[$5§.getItemByName("Container_Buttons") as §]$+§;
         if(§+"j§ != this.mLevelManager.currentLevel)
         {
            §'y§ = 0;
            §@#S§ = false;
         }
         else
         {
            ++§'y§;
         }
         §+"j§ = this.mLevelManager.currentLevel;
         this.§>!X§ = true;
      }
      
      public function §[!!§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         if(§'y§ >= §6!r§)
         {
            §'y§ = 0;
            _loc1_ = (AngryBirdsBase.singleton.dataModel as §4!Q§).serverSynchronizedTime.synchronizedTimeStamp;
            _loc2_ = (_loc1_ - §8#@§) / §;b§;
            if(_loc2_ >= §`",§)
            {
               §8#@§ = _loc1_;
               this.§!#Y§();
            }
         }
      }
      
      protected function §!#Y§() : void
      {
         var _loc1_:§7!J§ = null;
         var _loc2_:§^!b§ = null;
         var _loc3_:§<K§ = null;
         if(!this.§2!4§)
         {
            _loc1_ = this.mLevelManager.getLevelForId(this.mLevelManager.currentLevel);
            _loc2_ = §^!b§(_loc1_);
            if(!_loc2_.optimalPowerup || _loc2_.optimalPowerup == "")
            {
               _loc3_ = !!this.mLevelManager.getCurrentEpisodeModel().isTournament ? §-!_§ : §`$$§;
            }
            else
            {
               _loc3_ = §+"d§.§,!c§(_loc2_.optimalPowerup);
            }
            this.§2!4§ = new PowerupSuggestionPopup(§#"l§.NORMAL,§]"Y§.DEFAULT,_loc3_,this.mLevelManager.currentLevel);
            this.§2!4§.addEventListener(§2,§.§@$!§,this.§1,§);
            this.§2!4§.addEventListener(§"Z§.§=#m§,this.§7"e§);
            this.§2!4§.addEventListener(§"Z§.§?!D§,this.§@"f§);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§2!4§);
         }
         §0I§.§1"F§(this.mLevelManager.currentLevel);
      }
      
      public function activate(param1:§;!X§, param2:Boolean = true, param3:Boolean = true) : void
      {
         var _loc4_:§8#=§ = null;
         var _loc5_:§<K§ = null;
         this.§4"<§ = param1;
         this.§4"<§.§1$'§.§=!G§.addEventListener(§2,§.§'#n§,this.§[#§);
         if(param2)
         {
            (§7n§.§6#K§ as §"#1§).§=!G§.§2!+§();
         }
         this.§,!D§();
         if(param3)
         {
            for each(_loc5_ in §+"d§.§]V§)
            {
               if(_loc4_ = this.§[$5§.getItemByName(_loc5_.buttonName))
               {
                  _loc4_.setEnabled(true);
               }
            }
         }
         § $?§.§`"H§.addEventListener(Event.CHANGE,this.§!$ §);
      }
      
      public function deActivate() : void
      {
         § $?§.§`"H§.removeEventListener(Event.CHANGE,this.§!$ §);
         this.§4"<§.§1$'§.§=!G§.removeEventListener(§2,§.§'#n§,this.§[#§);
         if(this.§2!4§)
         {
            this.§2!4§.removeEventListener(§2,§.§@$!§,this.§1,§);
            this.§2!4§.removeEventListener(§"Z§.§=#m§,this.§7"e§);
            this.§2!4§.removeEventListener(§"Z§.§?!D§,this.§@"f§);
            this.§2!4§.close();
            this.§2!4§ = null;
         }
         this.§^"#§();
      }
      
      public function run(param1:Number) : void
      {
         if(§<U§.§7V§)
         {
            if(!this.§>!X§)
            {
               this.§#$&§();
               this.§>!X§ = true;
            }
         }
         else if(this.§>!X§)
         {
            this.§,!D§();
            this.§>!X§ = false;
         }
      }
      
      protected function §1,§(param1:§2,§) : void
      {
         this.§2!4§.removeEventListener(§2,§.§@$!§,this.§1,§);
         this.§@!c§(param1.§1!p§);
         dispatchEvent(new §2,§(§2,§.§@$!§,param1.§1!p§));
      }
      
      protected function §7"e§(param1:§"Z§) : void
      {
         this.§2!4§.removeEventListener(§2,§.§@$!§,this.§1,§);
         this.§2!4§.removeEventListener(§"Z§.§=#m§,this.§7"e§);
         §'y§ = 0;
         dispatchEvent(new §"Z§(§"Z§.CLOSE,null));
      }
      
      protected function §@"f§(param1:§"Z§) : void
      {
         if(this.§2!4§)
         {
            if(!this.§2!4§.hasEventListener(§2,§.§@$!§))
            {
               this.§2!4§.addEventListener(§2,§.§@$!§,this.§1,§);
            }
            if(!this.§2!4§.hasEventListener(§"Z§.§=#m§))
            {
               this.§2!4§.addEventListener(§"Z§.§=#m§,this.§7"e§);
            }
         }
      }
      
      public function §@!c§(param1:String) : void
      {
         var _loc4_:§=n§ = null;
         if(§<U§.§7V§)
         {
            return;
         }
         var _loc2_:§<K§ = §+"d§.§<!9§(param1);
         if(_loc2_ == null)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Unknown powerup event: " + param1));
         }
         var _loc3_:int = § $?§.§`"H§.§0#s§(_loc2_.§1#7§);
         if(_loc3_ <= 0)
         {
            _loc4_ = (AngryBirdsBase.singleton.dataModel as §4!Q§).§="N§.§ #8§(_loc2_.§1#7§);
            this.§+i§ = new §>N§(this.§[$5§.mClip,_loc4_,_loc2_.§ #=§);
            this.§+i§.addEventListener(§^"b§.§"&§,this.§9#j§);
            this.§+i§.§;!K§();
            this.§2L§(param1,true);
            return;
         }
         if(_loc2_.§1#7§ != §+"d§.§]#_§.§1#7§)
         {
            §,R§.§>#?§(_loc2_.eventName);
         }
         §@#S§ = true;
         this.§2L§(param1,false);
         this.§4"<§.§1$'§.§=!G§.§@!c§(_loc2_.§1#7§);
      }
      
      protected function §9#j§(param1:§^"b§) : void
      {
         var _loc3_:§<K§ = §+"d§.§,!c§(param1.§6#l§);
         var _loc4_:§8#=§;
         var _loc5_:Point = (_loc4_ = this.§[$5§.getItemByName(_loc3_.buttonName)).mClip.localToGlobal(new Point(0,0));
         var _loc6_:int = 0;
         while(_loc6_ < 40)
         {
            this.§[$5§.mClip.addChild(new GlitterParticle(_loc5_.x + 10 + Math.random() * 20,_loc5_.y + 10 + Math.random() * 20));
            _loc6_++;
         }
      }
      
      protected function §[#§(param1:§2,§) : void
      {
         var _loc2_:String = param1.§1!p§;
         this.§^"#§();
         var _loc3_:String = "";
         switch(_loc2_)
         {
            case §+"d§.§1J§.§1#7§:
               _loc3_ = "MovieClip_PowerUpUse_SuperSeeds";
               break;
            case §+"d§.§[p§.§1#7§:
               _loc3_ = "MovieClip_PowerUpUse_KingSling";
               break;
            case §+"d§.§#T§.§1#7§:
               _loc3_ = "MovieClip_PowerUpUse_Sling Scope";
               break;
            case §+"d§.§?"$§.§1#7§:
               _loc3_ = "MovieClip_PowerUpUse_Boombox";
               break;
            case §+"d§.§&!w§.§1#7§:
               _loc3_ = "MovieClip_PowerUpUse_Birdquake";
               break;
            case §+"d§.§!"§.§1#7§:
               _loc3_ = "MovieClip_PowerUpUse_TNTDrop";
               break;
            case §+"d§.§]#_§.§1#7§:
               _loc3_ = "MovieClip_PowerUp_Wingman";
               §7n§.pause();
               break;
            case §+"d§.§,!$§.§1#7§:
               _loc3_ = "MovieClip_PowerUpUse_Mushroom";
               break;
            default:
               return;
         }
         var _loc4_:String = _loc3_ + "_" + §'##§.§`"H§.brandedTournamentAssetId;
         if(§6$A§.§9"w§(_loc4_))
         {
            _loc3_ = _loc4_;
         }
         var _loc5_:Class = §6$A§.§1!m§(_loc3_);
         this.§@$7§ = new _loc5_();
         this.§@$7§.name = _loc3_;
         this.§@$7§.addEventListener(Event.ENTER_FRAME,this.§1"L§);
         this.§[$5§.mClip.addChild(this.§@$7§);
         this.§@$7§.gotoAndPlay(1);
      }
      
      private function §1"L§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         if(!this.§@$7§)
         {
            this.§@$7§.removeEventListener(Event.ENTER_FRAME,this.§1"L§);
            return;
         }
         if(§7n§.isPaused)
         {
            _loc2_ = AngryBirdsBase.singleton.popupManager.§?"N§();
            if(_loc2_)
            {
               if(this.§@$7§.isPlaying)
               {
                  this.§@$7§.prevFrame();
                  this.§@$7§.stop();
                  this.§7"K§(this.§@$7§,true);
                  return;
               }
            }
         }
         else if(!this.§@$7§.isPlaying)
         {
            this.§@$7§.play();
            this.§7"K§(this.§@$7§,false);
         }
         if((§7n§.§-$<§ as § #v§).§]#p§())
         {
            if(this.§@$7§.name == "MovieClip_PowerUp_Wingman")
            {
               this.§@$7§.scaleX = this.§@$7§.scaleY = 2;
            }
            else
            {
               this.§@$7§.scaleX = this.§@$7§.scaleY = 1.5;
               this.§@$7§.x = AngryBirdsBase.screenWidth >> 2;
               this.§@$7§.y = AngryBirdsBase.screenHeight >> 4;
            }
         }
         else if(this.§@$7§.name == "MovieClip_PowerUp_Wingman")
         {
            this.§@$7§.scaleX = this.§@$7§.scaleY = 1;
         }
         else
         {
            this.§@$7§.scaleX = this.§@$7§.scaleY = 0.8;
            this.§@$7§.x = AngryBirdsBase.screenWidth >> 4;
            this.§@$7§.y = AngryBirdsBase.screenHeight >> 5;
         }
         if(this.§@$7§.currentFrame == this.§@$7§.totalFrames)
         {
            if(this.§@$7§.name == "MovieClip_PowerUp_Wingman")
            {
               if(!§,R§.§>#?§(§+"d§.§]#_§.eventName))
               {
                  §7n§.resume();
               }
            }
            this.§^"#§();
         }
      }
      
      private function §7"K§(param1:MovieClip, param2:Boolean = false) : void
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
                     this.§7"K§(_loc4_,param2);
                  }
               }
            }
            _loc3_++;
         }
      }
      
      private function §^"#§() : void
      {
         if(this.§@$7§)
         {
            this.§@$7§.removeEventListener(Event.ENTER_FRAME,this.§1"L§);
            this.§@$7§.stop();
            if(this.§@$7§.parent)
            {
               this.§@$7§.parent.removeChild(this.§@$7§);
            }
            this.§@$7§ = null;
         }
      }
      
      protected function §,!D§(param1:String = null) : void
      {
         var _loc2_:§<K§ = null;
         for each(_loc2_ in §+"d§.§8"z§)
         {
            this.§%8§(_loc2_,param1);
         }
      }
      
      protected function §%8§(param1:§<K§, param2:String) : void
      {
         var _loc3_:§8#=§ = this.§[#[§.getItemByName(param1.buttonName);
         var _loc4_:int = § $?§.§`"H§.§0#s§(param1.§1#7§);
         var _loc5_:MovieClip = _loc3_.mClip.getChildByName("Infinite_PowerUpCount") as MovieClip;
         var _loc6_:TextField = _loc3_.mClip.getChildByName("TextField_PowerUpCount") as TextField;
         var _loc7_:MovieClip = _loc3_.mClip.getChildByName("MovieClip_GetMore") as MovieClip;
         _loc6_.mouseEnabled = false;
         _loc6_.text = §4!H§.§9!-§(_loc4_);
         _loc7_.visible = false;
         var _loc8_:Number = § $?§.§`"H§.§2"g§(param1.§1#7§);
         _loc6_.visible = _loc8_ <= 0;
         _loc5_.visible = _loc8_ > 0;
         if(_loc4_ == 0)
         {
            this.§2L§(param1.eventName,true);
            return;
         }
         var _loc9_:Boolean = true;
         if(this.§4"<§.§1$'§.§'E§() >= this.§5#<§() && §+"d§.§="q§.indexOf(param1.§1#7§) == -1)
         {
            _loc9_ = false;
         }
         else if(this.§4"<§.§1$'§.§5#3§(param1.§1#7§) && _loc4_ > 0)
         {
            _loc9_ = false;
         }
         else if(this.§4"<§.§1$'§.§>q§ && (param1.§1#7§ == §+"d§.§1J§.§1#7§ || param1.§1#7§ == §+"d§.§]#_§.§1#7§ || param1.§1#7§ == §+"d§.§?"$§.§1#7§ || param1.§1#7§ == §+"d§.§ !T§.§1#7§))
         {
            _loc9_ = false;
         }
         else if(§7n§.§6#K§.objects.getPigCount() == 0 && param1.§1#7§ == §+"d§.§,!$§.§1#7§)
         {
            _loc9_ = false;
         }
         else if(!§7n§.§6#K§.slingshot.birdsAvailable && §7n§.§6#K§.slingshot.mSlingShotState != §7#;§.§%"d§ && param2 != §+"d§.§?"$§.§1#7§ && (param1.§1#7§ == §+"d§.§1J§.§1#7§ || param1.§1#7§ == §+"d§.§[p§.§1#7§ || param1.§1#7§ == §+"d§.§#T§.§1#7§))
         {
            _loc9_ = false;
         }
         else if(§7n§.§6#K§.slingshot.mSlingShotState == §6#t§.§`!t§)
         {
            _loc9_ = false;
         }
         this.§2L§(param1.eventName,_loc9_);
      }
      
      public function §5#<§() : int
      {
         var _loc1_:int = §?##§.§[!R§;
         if((this.mLevelManager as §;#A§).§[!0§())
         {
            _loc1_ += 1;
         }
         if(§7"L§.§`"H§.§,$1§())
         {
            _loc1_ += 1;
         }
         return _loc1_;
      }
      
      private function §!$ §(param1:§4#Z§) : void
      {
         var _loc2_:String = null;
         if(!§<U§.§7V§)
         {
            _loc2_ = param1 && param1.§38§ && param1.§38§.length > 0 ? param1.§38§[0].i : null;
            this.§,!D§(_loc2_);
         }
      }
      
      public function §2L§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:§<K§ = §+"d§.§<!9§(param1);
         var _loc4_:Number = !!param2 ? Number(1) : Number(0.4);
         var _loc5_:§8#=§;
         if(_loc5_ = this.§[$5§.getItemByName(_loc3_.buttonName))
         {
            _loc5_.setEnabled(param2);
            _loc5_.mClip.alpha = _loc4_;
         }
      }
      
      public function §5m§() : void
      {
         §'y§ = 0;
      }
      
      public function §1$!§() : §5!-§
      {
         return this.§2!4§;
      }
      
      public function §#$&§() : void
      {
         var _loc1_:§<K§ = null;
         for each(_loc1_ in §+"d§.§]V§)
         {
            this.§2L§(_loc1_.eventName,false);
         }
      }
   }
}
