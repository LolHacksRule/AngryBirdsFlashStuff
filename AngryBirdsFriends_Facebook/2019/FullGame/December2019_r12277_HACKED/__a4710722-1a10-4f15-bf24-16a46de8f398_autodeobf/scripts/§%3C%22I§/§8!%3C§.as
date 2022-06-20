package §<"I§
{
   import § h§.§-!S§;
   import § h§.ErrorPopup;
   import §+!n§.§+!p§;
   import §+"Y§.§="d§;
   import §+Z§.§ ![§;
   import §-"e§.§!"=§;
   import §0!>§.§ !b§;
   import §2$;§.§!"e§;
   import §2E§.§'@§;
   import §2E§.§6#T§;
   import §4#$§.§5"L§;
   import §4#l§.§8#E§;
   import §5"l§.§0!b§;
   import §6!J§.§8U§;
   import §9!6§.§## §;
   import §9!6§.§?!y§;
   import §<8§.§6!1§;
   import §<l§.PowerupSuggestionPopup;
   import §>#Y§.§!",§;
   import §>#Y§.§,#b§;
   import §?$#§.§%2§;
   import §?$#§.§2!"§;
   import §?$#§.§]"]§;
   import §?$#§.§^#j§;
   import §?o§.§ ^§;
   import §?o§.§#!P§;
   import §?o§.§4#?§;
   import §?o§.§?"m§;
   import §@!R§.§'O§;
   import §]M§.§=!a§;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class §8!<§ extends EventDispatcher
   {
      
      private static const §2$6§:Number = 3600000;
      
      private static const §0"t§:Number = -130;
      
      private static const §3#$§:int = 5;
      
      private static const §;!W§:Number = 1 / 6;
      
      private static const §?">§:Number = 6000;
      
      protected static const §="g§:§1!^§ = §<$B§.§+"4§;
      
      protected static const §?k§:§1!^§ = §<$B§.§0"s§;
      
      protected static const §`!8§:int = 2000;
      
      private static var §"!m§:String;
      
      private static var § #E§:Number = 0;
      
      private static var §7!A§:int = 0;
      
      private static var §6'§:Boolean = false;
       
      
      protected var §%$5§:PowerupSuggestionPopup;
      
      protected var §="§:Boolean = true;
      
      private var §+F§:int = 0;
      
      protected var §@!D§:§!"e§;
      
      protected var §6#d§:§!"e§;
      
      private var §7y§:Number = 0;
      
      private var §!^§:§ !b§;
      
      private var mLevelManager:§4#?§;
      
      private var §0#Z§:Boolean;
      
      private var §7!7§:§8U§;
      
      private var §<W§:MovieClip;
      
      public function §8!<§(param1:§!"e§, param2:§4#?§)
      {
         super();
         this.§@!D§ = param1;
         this.mLevelManager = param2;
         this.init();
      }
      
      protected function init() : void
      {
         this.§6#d§ = this.§@!D§.getItemByName("Container_Buttons") as §!"e§;
         if(§"!m§ != this.mLevelManager.currentLevel)
         {
            §7!A§ = 0;
            §6'§ = false;
         }
         else
         {
            ++§7!A§;
         }
         §"!m§ = this.mLevelManager.currentLevel;
         this.§0#Z§ = true;
      }
      
      public function §0$-§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         if(§7!A§ >= §3#$§)
         {
            §7!A§ = 0;
            _loc1_ = (AngryBirdsBase.singleton.dataModel as §,#b§).serverSynchronizedTime.synchronizedTimeStamp;
            _loc2_ = (_loc1_ - § #E§) / §2$6§;
            if(_loc2_ >= §;!W§)
            {
               § #E§ = _loc1_;
               this.§;$#§();
            }
         }
      }
      
      protected function §;$#§() : void
      {
         var _loc1_:§ ^§ = null;
         var _loc2_:§#!P§ = null;
         var _loc3_:§1!^§ = null;
         if(!this.§%$5§)
         {
            _loc1_ = this.mLevelManager.getLevelForId(this.mLevelManager.currentLevel);
            _loc2_ = §#!P§(_loc1_);
            if(!_loc2_.optimalPowerup || _loc2_.optimalPowerup == "")
            {
               _loc3_ = !!this.mLevelManager.getCurrentEpisodeModel().isTournament ? §?k§ : §="g§;
            }
            else
            {
               _loc3_ = §<$B§.§-"N§(_loc2_.optimalPowerup);
            }
            this.§%$5§ = new PowerupSuggestionPopup(§-!S§.NORMAL,§## §.DEFAULT,_loc3_,this.mLevelManager.currentLevel);
            this.§%$5§.addEventListener(§#$9§.§-#C§,this.§&$@§);
            this.§%$5§.addEventListener(§0!b§.§9"5§,this.§9#F§);
            this.§%$5§.addEventListener(§0!b§.§#!>§,this.§@a§);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§%$5§);
         }
         §'@§.§]!6§(this.mLevelManager.currentLevel);
      }
      
      public function activate(param1:§ !b§, param2:Boolean = true, param3:Boolean = true) : void
      {
         var _loc4_:§6!1§ = null;
         var _loc5_:§1!^§ = null;
         this.§!^§ = param1;
         this.§!^§.§'"&§.§'#>§.addEventListener(§#$9§.§;U§,this.§["=§);
         if(param2)
         {
            (§+!p§.§`?§ as §^#j§).§'#>§.§5"b§();
         }
         this.§78§();
         if(param3)
         {
            for each(_loc5_ in §<$B§.§6#P§)
            {
               if(_loc4_ = this.§@!D§.getItemByName(_loc5_.buttonName))
               {
                  _loc4_.setEnabled(true);
               }
            }
         }
         §!",§.§3"1§.addEventListener(Event.CHANGE,this.§>!S§);
      }
      
      public function deActivate() : void
      {
         §!",§.§3"1§.removeEventListener(Event.CHANGE,this.§>!S§);
         this.§!^§.§'"&§.§'#>§.removeEventListener(§#$9§.§;U§,this.§["=§);
         if(this.§%$5§)
         {
            this.§%$5§.removeEventListener(§#$9§.§-#C§,this.§&$@§);
            this.§%$5§.removeEventListener(§0!b§.§9"5§,this.§9#F§);
            this.§%$5§.removeEventListener(§0!b§.§#!>§,this.§@a§);
            this.§%$5§.close();
            this.§%$5§ = null;
         }
         this.§!e§();
      }
      
      public function run(param1:Number) : void
      {
         if(§!"=§.§<S§)
         {
            if(!this.§0#Z§)
            {
               this.§?#t§();
               this.§0#Z§ = true;
            }
         }
         else if(this.§0#Z§)
         {
            this.§78§();
            this.§0#Z§ = false;
         }
      }
      
      protected function §&$@§(param1:§#$9§) : void
      {
         this.§%$5§.removeEventListener(§#$9§.§-#C§,this.§&$@§);
         this.§,"9§(param1.§2"7§);
         dispatchEvent(new §#$9§(§#$9§.§-#C§,param1.§2"7§));
      }
      
      protected function §9#F§(param1:§0!b§) : void
      {
         this.§%$5§.removeEventListener(§#$9§.§-#C§,this.§&$@§);
         this.§%$5§.removeEventListener(§0!b§.§9"5§,this.§9#F§);
         §7!A§ = 0;
         dispatchEvent(new §0!b§(§0!b§.CLOSE,null));
      }
      
      protected function §@a§(param1:§0!b§) : void
      {
         if(this.§%$5§)
         {
            if(!this.§%$5§.hasEventListener(§#$9§.§-#C§))
            {
               this.§%$5§.addEventListener(§#$9§.§-#C§,this.§&$@§);
            }
            if(!this.§%$5§.hasEventListener(§0!b§.§9"5§))
            {
               this.§%$5§.addEventListener(§0!b§.§9"5§,this.§9#F§);
            }
         }
      }
      
      public function §,"9§(param1:String) : void
      {
         var _loc4_:§8#E§ = null;
         if(§!"=§.§<S§)
         {
            return;
         }
         var _loc2_:§1!^§ = §<$B§.§2"i§(param1);
         if(_loc2_ == null)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Unknown powerup event: " + param1));
         }
         var _loc3_:int = §!",§.§3"1§.§2![§(_loc2_.§=#@§);
         if(_loc3_ <= 0)
         {
            if(_loc2_.§[#;§)
            {
               _loc4_ = (AngryBirdsBase.singleton.dataModel as §,#b§).§+!J§.§&!g§(_loc2_.§=#@§);
               this.§7!7§ = new §8U§(this.§@!D§.mClip,_loc4_,_loc2_.§[E§);
               this.§7!7§.addEventListener(§ ![§.§=K§,this.§@"%§);
               this.§7!7§.§,5§();
               this.§&!!§(param1,true);
            }
            return;
         }
         if(_loc2_.§=#@§ != §<$B§.§0"s§.§=#@§)
         {
            §="d§.§ S§(_loc2_.eventName);
         }
         §6'§ = true;
         this.§&!!§(param1,false);
         this.§!^§.§'"&§.§'#>§.§,"9§(_loc2_.§=#@§);
      }
      
      protected function §@"%§(param1:§ ![§) : void
      {
         var _loc3_:§1!^§ = §<$B§.§-"N§(param1.§5B§);
         var _loc5_:Point = this.§@!D§.getItemByName(_loc3_.buttonName).mClip.localToGlobal(new Point(0,0));
         var _loc6_:int = 0;
         while(_loc6_ < 40)
         {
            this.§@!D§.mClip.addChild(new GlitterParticle(_loc5_.x + 10 + Math.random() * 20,_loc5_.y + 10 + Math.random() * 20));
            _loc6_++;
         }
      }
      
      protected function §["=§(param1:§#$9§) : void
      {
         var _loc2_:String = param1.§2"7§;
         this.§!e§();
         var _loc3_:String = "";
         switch(_loc2_)
         {
            case §<$B§.§+"4§.§=#@§:
               _loc3_ = "MovieClip_PowerUpUse_SuperSeeds";
               break;
            case §<$B§.§<$§.§=#@§:
               _loc3_ = "MovieClip_PowerUpUse_KingSling";
               break;
            case §<$B§.§ !n§.§=#@§:
               _loc3_ = "MovieClip_PowerUpUse_Sling Scope";
               break;
            case §<$B§.§[D§.§=#@§:
               _loc3_ = "MovieClip_PowerUpUse_Boombox";
               break;
            case §<$B§.§5#J§.§=#@§:
               _loc3_ = "MovieClip_PowerUpUse_Birdquake";
               break;
            case §<$B§.§^!n§.§=#@§:
               _loc3_ = "MovieClip_PowerUpUse_TNTDrop";
               break;
            case §<$B§.§0"s§.§=#@§:
               _loc3_ = "MovieClip_PowerUp_Wingman";
               §+!p§.pause();
               break;
            case §<$B§.§!"C§.§=#@§:
               _loc3_ = "MovieClip_PowerUpUse_Mushroom";
               break;
            default:
               return;
         }
         var _loc4_:String = _loc3_ + "_" + §5"L§.§3"1§.brandedTournamentAssetId;
         if(§=@§.§8!l§(_loc4_))
         {
            _loc3_ = _loc4_;
         }
         var _loc5_:Class = §=@§.§9!x§(_loc3_);
         this.§<W§ = new _loc5_();
         this.§<W§.name = _loc3_;
         this.§<W§.addEventListener(Event.ENTER_FRAME,this.§?#D§);
         this.§@!D§.mClip.addChild(this.§<W§);
         this.§<W§.gotoAndPlay(1);
      }
      
      private function §?#D§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         if(!this.§<W§)
         {
            this.§<W§.removeEventListener(Event.ENTER_FRAME,this.§?#D§);
            return;
         }
         if(§+!p§.isPaused)
         {
            _loc2_ = AngryBirdsBase.singleton.popupManager.§!=§();
            if(_loc2_)
            {
               if(this.§<W§.isPlaying)
               {
                  this.§<W§.prevFrame();
                  this.§<W§.stop();
                  this.§]!'§(this.§<W§,true);
                  return;
               }
            }
         }
         else if(!this.§<W§.isPlaying)
         {
            this.§<W§.play();
            this.§]!'§(this.§<W§,false);
         }
         if((§+!p§.§;"-§ as §^"a§).§&m§())
         {
            if(this.§<W§.name == "MovieClip_PowerUp_Wingman")
            {
               this.§<W§.scaleX = this.§<W§.scaleY = 2;
            }
            else
            {
               this.§<W§.scaleX = this.§<W§.scaleY = 1.5;
               this.§<W§.x = AngryBirdsBase.screenWidth >> 2;
               this.§<W§.y = AngryBirdsBase.screenHeight >> 4;
            }
         }
         else if(this.§<W§.name == "MovieClip_PowerUp_Wingman")
         {
            this.§<W§.scaleX = this.§<W§.scaleY = 1;
         }
         else
         {
            this.§<W§.scaleX = this.§<W§.scaleY = 0.8;
            this.§<W§.x = AngryBirdsBase.screenWidth >> 4;
            this.§<W§.y = AngryBirdsBase.screenHeight >> 5;
         }
         if(this.§<W§.currentFrame == this.§<W§.totalFrames)
         {
            if(this.§<W§.name == "MovieClip_PowerUp_Wingman")
            {
               if(!§="d§.§ S§(§<$B§.§0"s§.eventName))
               {
                  §+!p§.resume();
               }
            }
            this.§!e§();
         }
      }
      
      private function §]!'§(param1:MovieClip, param2:Boolean = false) : void
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
                     this.§]!'§(_loc4_,param2);
                  }
               }
            }
            _loc3_++;
         }
      }
      
      private function §!e§() : void
      {
         if(this.§<W§)
         {
            this.§<W§.removeEventListener(Event.ENTER_FRAME,this.§?#D§);
            this.§<W§.stop();
            if(this.§<W§.parent)
            {
               this.§<W§.parent.removeChild(this.§<W§);
            }
            this.§<W§ = null;
         }
      }
      
      protected function §78§(param1:String = null) : void
      {
         var _loc2_:§1!^§ = null;
         for each(_loc2_ in §<$B§.§7#p§)
         {
            this.§,"M§(_loc2_,param1);
         }
      }
      
      protected function §,"M§(param1:§1!^§, param2:String) : void
      {
         var _loc3_:§6!1§ = this.§6#d§.getItemByName(param1.buttonName);
         var _loc4_:int = §!",§.§3"1§.§2![§(param1.§=#@§);
         var _loc5_:MovieClip = _loc3_.mClip.getChildByName("Infinite_PowerUpCount") as MovieClip;
         var _loc6_:TextField = _loc3_.mClip.getChildByName("TextField_PowerUpCount") as TextField;
         var _loc7_:MovieClip = _loc3_.mClip.getChildByName("MovieClip_GetMore") as MovieClip;
         _loc6_.mouseEnabled = false;
         _loc6_.text = §6#T§.§1$E§(_loc4_);
         _loc7_.visible = false;
         var _loc8_:Number = §!",§.§3"1§.§4#<§(param1.§=#@§);
         _loc6_.visible = _loc8_ <= 0;
         _loc5_.visible = _loc8_ > 0;
         if(_loc4_ == 0)
         {
            this.§&!!§(param1.eventName,true);
            return;
         }
         var _loc9_:Boolean = true;
         if(this.§!^§.§'"&§.§="[§() >= this.§[§() && §<$B§.§,#j§.indexOf(param1.§=#@§) == -1)
         {
            _loc9_ = false;
         }
         else if(this.§!^§.§'"&§.§[!d§(param1.§=#@§) && _loc4_ > 0)
         {
            _loc9_ = false;
         }
         else if(this.§!^§.§'"&§.§+"l§ && (param1.§=#@§ == §<$B§.§+"4§.§=#@§ || param1.§=#@§ == §<$B§.§0"s§.§=#@§ || param1.§=#@§ == §<$B§.§[D§.§=#@§ || param1.§=#@§ == §<$B§.§`"K§.§=#@§))
         {
            _loc9_ = false;
         }
         else if(§+!p§.§`?§.objects.getPigCount() == 0 && param1.§=#@§ == §<$B§.§!"C§.§=#@§)
         {
            _loc9_ = false;
         }
         else if(!§+!p§.§`?§.slingshot.birdsAvailable && §+!p§.§`?§.slingshot.mSlingShotState != §]"]§.§""m§ && param2 != §<$B§.§[D§.§=#@§ && (param1.§=#@§ == §<$B§.§+"4§.§=#@§ || param1.§=#@§ == §<$B§.§<$§.§=#@§ || param1.§=#@§ == §<$B§.§ !n§.§=#@§))
         {
            _loc9_ = false;
         }
         else if(§+!p§.§`?§.slingshot.mSlingShotState == §2!"§.§ "X§)
         {
            _loc9_ = false;
         }
         this.§&!!§(param1.eventName,_loc9_);
      }
      
      public function §[§() : int
      {
         var _loc1_:int = §%2§.§!"^§;
         if((this.mLevelManager as §?"m§).§ "$§())
         {
            _loc1_ += 1;
         }
         if(§=!a§.§3"1§.§@o§())
         {
            _loc1_ += 1;
         }
         return _loc1_;
      }
      
      private function §>!S§(param1:§'O§) : void
      {
         var _loc2_:String = null;
         if(!§!"=§.§<S§)
         {
            _loc2_ = param1 && param1.§ "-§ && param1.§ "-§.length > 0 ? param1.§ "-§[0].i : null;
            this.§78§(_loc2_);
         }
      }
      
      public function §&!!§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:§1!^§ = §<$B§.§2"i§(param1);
         if(!_loc3_.§[#;§ && §!",§.§3"1§.§2![§(_loc3_.§=#@§) <= 0)
         {
            param2 = false;
         }
         var _loc5_:§6!1§;
         if(_loc5_ = this.§@!D§.getItemByName(_loc3_.buttonName))
         {
            _loc5_.setEnabled(param2);
            _loc5_.mClip.alpha = 0.4;
         }
      }
      
      public function §"$9§() : void
      {
         §7!A§ = 0;
      }
      
      public function §0!E§() : §?!y§
      {
         return this.§%$5§;
      }
      
      public function §?#t§() : void
      {
         var _loc1_:§1!^§ = null;
         for each(_loc1_ in §<$B§.§6#P§)
         {
            this.§&!!§(_loc1_.eventName,false);
         }
      }
   }
}
