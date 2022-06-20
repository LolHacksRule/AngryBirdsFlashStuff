package §-#R§
{
   import § !D§.§"b§;
   import § !D§.§0$?§;
   import § !D§.§3§;
   import § !D§.§4B§;
   import § O§.§&# §;
   import §!!?§.§,!K§;
   import §!!T§.§1"9§;
   import §!L§.§6!<§;
   import §"$=§.§'![§;
   import §"$=§.§,-§;
   import §"$=§.§=$&§;
   import §"$=§.§>"?§;
   import §%#U§.PowerupSuggestionPopup;
   import §&0§.§^#O§;
   import §+"u§.§^"C§;
   import §+#B§.§2#&§;
   import §+#B§.§5"w§;
   import §4!n§.§#$>§;
   import §5!$§.§<c§;
   import §5"c§.§9"2§;
   import §;$5§.§9§;
   import §;$5§.§@#G§;
   import §;$>§.§^#J§;
   import §;w§.§5"_§;
   import §=!2§.§%"T§;
   import §?!N§.§%#§;
   import §?!N§.ErrorPopup;
   import §[!B§.§&#`§;
   import §]"'§.§#$D§;
   import §]"'§.§@"%§;
   import com.rovio.assets.§2"O§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class §"2§ extends EventDispatcher
   {
      
      private static const §#p§:Number = 3600000;
      
      private static const §^#i§:Number = -130;
      
      private static const §<!C§:int = 5;
      
      private static const §3"z§:Number = 1 / 6;
      
      private static const §9!g§:Number = 6000;
      
      protected static const §4!>§:§4"p§ = §0!w§.§3#D§;
      
      protected static const §@"J§:§4"p§ = §0!w§.§2$?§;
      
      protected static const §6!6§:int = 2000;
      
      private static var §=#`§:String;
      
      private static var §"#D§:Number = 0;
      
      private static var §&!D§:int = 0;
      
      private static var §]#2§:Boolean = false;
       
      
      protected var §@$"§:PowerupSuggestionPopup;
      
      protected var §,!&§:Boolean = true;
      
      private var §]!i§:int = 0;
      
      protected var §<"`§:§<c§;
      
      protected var §#!^§:§<c§;
      
      private var §&#%§:Number = 0;
      
      private var §2#K§:§6!<§;
      
      private var mLevelManager:§'![§;
      
      private var §6!y§:Boolean;
      
      private var §>!A§:§^#O§;
      
      private var §7^§:MovieClip;
      
      public function §"2§(param1:§<c§, param2:§'![§)
      {
         super();
         this.§<"`§ = param1;
         this.mLevelManager = param2;
         this.init();
      }
      
      protected function init() : void
      {
         this.§#!^§ = this.§<"`§.getItemByName("Container_Buttons") as §<c§;
         if(§=#`§ != this.mLevelManager.currentLevel)
         {
            §&!D§ = 0;
            §]#2§ = false;
         }
         else
         {
            ++§&!D§;
         }
         §=#`§ = this.mLevelManager.currentLevel;
         this.§6!y§ = true;
      }
      
      public function §<u§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         if(§&!D§ >= §<!C§)
         {
            §&!D§ = 0;
            _loc1_ = (AngryBirdsBase.singleton.dataModel as §@"%§).serverSynchronizedTime.synchronizedTimeStamp;
            _loc2_ = (_loc1_ - §"#D§) / §#p§;
            if(_loc2_ >= §3"z§)
            {
               §"#D§ = _loc1_;
               this.§%$-§();
            }
         }
      }
      
      protected function §%$-§() : void
      {
         var _loc1_:§=$&§ = null;
         var _loc2_:§>"?§ = null;
         var _loc3_:§4"p§ = null;
         if(!this.§@$"§)
         {
            _loc1_ = this.mLevelManager.getLevelForId(this.mLevelManager.currentLevel);
            _loc2_ = §>"?§(_loc1_);
            if(!_loc2_.optimalPowerup || _loc2_.optimalPowerup == "")
            {
               _loc3_ = !!this.mLevelManager.getCurrentEpisodeModel().isTournament ? §@"J§ : §4!>§;
            }
            else
            {
               _loc3_ = §0!w§.§7$§(_loc2_.optimalPowerup);
            }
            this.§@$"§ = new PowerupSuggestionPopup(§%#§.NORMAL,§9#5§.DEFAULT,_loc3_,this.mLevelManager.currentLevel);
            this.§@$"§.addEventListener(§=u§.§!"m§,this.§4"G§);
            this.§@$"§.addEventListener(§5"_§.§4+§,this.§;"1§);
            this.§@$"§.addEventListener(§5"_§.§<2§,this.§>V§);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§@$"§);
         }
         §5"w§.§0#w§(this.mLevelManager.currentLevel);
      }
      
      public function activate(param1:§6!<§, param2:Boolean = true, param3:Boolean = true) : void
      {
         var _loc4_:§#$>§ = null;
         var _loc5_:§4"p§ = null;
         this.§2#K§ = param1;
         this.§2#K§.§-a§.§##`§.addEventListener(§=u§.§%'§,this.§]!f§);
         if(param2)
         {
            (§%"T§.§;`§ as §4B§).§##`§.§-#4§();
         }
         this.§'!@§();
         if(param3)
         {
            for each(_loc5_ in §0!w§.§'#v§)
            {
               if(_loc4_ = this.§<"`§.getItemByName(_loc5_.buttonName))
               {
                  _loc4_.setEnabled(true);
               }
            }
         }
         §#$D§.§?q§.addEventListener(Event.CHANGE,this.§8!g§);
      }
      
      public function deActivate() : void
      {
         §#$D§.§?q§.removeEventListener(Event.CHANGE,this.§8!g§);
         this.§2#K§.§-a§.§##`§.removeEventListener(§=u§.§%'§,this.§]!f§);
         if(this.§@$"§)
         {
            this.§@$"§.removeEventListener(§=u§.§!"m§,this.§4"G§);
            this.§@$"§.removeEventListener(§5"_§.§4+§,this.§;"1§);
            this.§@$"§.removeEventListener(§5"_§.§<2§,this.§>V§);
            this.§@$"§.close();
            this.§@$"§ = null;
         }
         this.§]"N§();
      }
      
      public function run(param1:Number) : void
      {
         if(§&# §.§-"f§)
         {
            if(!this.§6!y§)
            {
               this.§ $7§();
               this.§6!y§ = true;
            }
         }
         else if(this.§6!y§)
         {
            this.§'!@§();
            this.§6!y§ = false;
         }
      }
      
      protected function §4"G§(param1:§=u§) : void
      {
         this.§@$"§.removeEventListener(§=u§.§!"m§,this.§4"G§);
         this.§?z§(param1.§!!9§);
         dispatchEvent(new §=u§(§=u§.§!"m§,param1.§!!9§));
      }
      
      protected function §;"1§(param1:§5"_§) : void
      {
         this.§@$"§.removeEventListener(§=u§.§!"m§,this.§4"G§);
         this.§@$"§.removeEventListener(§5"_§.§4+§,this.§;"1§);
         §&!D§ = 0;
         dispatchEvent(new §5"_§(§5"_§.CLOSE,null));
      }
      
      protected function §>V§(param1:§5"_§) : void
      {
         if(this.§@$"§)
         {
            if(!this.§@$"§.hasEventListener(§=u§.§!"m§))
            {
               this.§@$"§.addEventListener(§=u§.§!"m§,this.§4"G§);
            }
            if(!this.§@$"§.hasEventListener(§5"_§.§4+§))
            {
               this.§@$"§.addEventListener(§5"_§.§4+§,this.§;"1§);
            }
         }
      }
      
      public function §?z§(param1:String) : void
      {
         var _loc4_:§,!K§ = null;
         if(§&# §.§-"f§)
         {
            return;
         }
         var _loc2_:§4"p§ = §0!w§.§4!-§(param1);
         if(_loc2_ == null)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Unknown powerup event: " + param1));
         }
         var _loc3_:int = §#$D§.§?q§.§<"M§(_loc2_.§]'§);
         if(_loc3_ <= 0)
         {
            _loc4_ = (AngryBirdsBase.singleton.dataModel as §@"%§).§,H§.§]#%§(_loc2_.§]'§);
            this.§>!A§ = new §^#O§(this.§<"`§.mClip,_loc4_,_loc2_.§[L§);
            this.§>!A§.addEventListener(§9"2§.§?"t§,this.§+"`§);
            this.§>!A§.§ "i§();
            this.§7#o§(param1,true);
            return;
         }
         if(_loc2_.§]'§ != §0!w§.§2$?§.§]'§)
         {
            §&#`§.§5"s§(_loc2_.eventName);
         }
         §]#2§ = true;
         this.§7#o§(param1,false);
         this.§2#K§.§-a§.§##`§.§?z§(_loc2_.§]'§);
      }
      
      protected function §+"`§(param1:§9"2§) : void
      {
         var _loc3_:§4"p§ = §0!w§.§7$§(param1.§`"L§);
         var _loc5_:Point = this.§<"`§.getItemByName(_loc3_.buttonName).mClip.localToGlobal(new Point(0,0));
         var _loc6_:int = 0;
         while(_loc6_ < 40)
         {
            this.§<"`§.mClip.addChild(new GlitterParticle(_loc5_.x + 10 + Math.random() * 20,_loc5_.y + 10 + Math.random() * 20));
            _loc6_++;
         }
      }
      
      protected function §]!f§(param1:§=u§) : void
      {
         var _loc2_:String = param1.§!!9§;
         this.§]"N§();
         var _loc3_:String = "";
         switch(_loc2_)
         {
            case §0!w§.§3#D§.§]'§:
               _loc3_ = "MovieClip_PowerUpUse_SuperSeeds";
               break;
            case §0!w§.§ #;§.§]'§:
               _loc3_ = "MovieClip_PowerUpUse_KingSling";
               break;
            case §0!w§.§,"w§.§]'§:
               _loc3_ = "MovieClip_PowerUpUse_Sling Scope";
               break;
            case §0!w§.§<L§.§]'§:
               _loc3_ = "MovieClip_PowerUpUse_Boombox";
               break;
            case §0!w§.§%#p§.§]'§:
               _loc3_ = "MovieClip_PowerUpUse_Birdquake";
               break;
            case §0!w§.§8$B§.§]'§:
               _loc3_ = "MovieClip_PowerUpUse_TNTDrop";
               break;
            case §0!w§.§2$?§.§]'§:
               _loc3_ = "MovieClip_PowerUp_Wingman";
               §%"T§.pause();
               break;
            case §0!w§.§<!y§.§]'§:
               _loc3_ = "MovieClip_PowerUpUse_Mushroom";
               break;
            default:
               return;
         }
         var _loc4_:String = _loc3_ + "_" + §^"C§.§?q§.brandedTournamentAssetId;
         if(§2"O§.§;#m§(_loc4_))
         {
            _loc3_ = _loc4_;
         }
         var _loc5_:Class = §2"O§.§`>§(_loc3_);
         this.§7^§ = new _loc5_();
         this.§7^§.name = _loc3_;
         this.§7^§.addEventListener(Event.ENTER_FRAME,this.§0!q§);
         this.§<"`§.mClip.addChild(this.§7^§);
         this.§7^§.gotoAndPlay(1);
      }
      
      private function §0!q§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         if(!this.§7^§)
         {
            this.§7^§.removeEventListener(Event.ENTER_FRAME,this.§0!q§);
            return;
         }
         if(§%"T§.isPaused)
         {
            _loc2_ = AngryBirdsBase.singleton.popupManager.§`'§();
            if(_loc2_)
            {
               if(this.§7^§.isPlaying)
               {
                  this.§7^§.prevFrame();
                  this.§7^§.stop();
                  this.§-!r§(this.§7^§,true);
                  return;
               }
            }
         }
         else if(!this.§7^§.isPlaying)
         {
            this.§7^§.play();
            this.§-!r§(this.§7^§,false);
         }
         if((§%"T§.§>$<§ as §'"a§).§?$9§())
         {
            if(this.§7^§.name == "MovieClip_PowerUp_Wingman")
            {
               this.§7^§.scaleX = this.§7^§.scaleY = 2;
            }
            else
            {
               this.§7^§.scaleX = this.§7^§.scaleY = 1.5;
               this.§7^§.x = AngryBirdsBase.screenWidth >> 2;
               this.§7^§.y = AngryBirdsBase.screenHeight >> 4;
            }
         }
         else if(this.§7^§.name == "MovieClip_PowerUp_Wingman")
         {
            this.§7^§.scaleX = this.§7^§.scaleY = 1;
         }
         else
         {
            this.§7^§.scaleX = this.§7^§.scaleY = 0.8;
            this.§7^§.x = AngryBirdsBase.screenWidth >> 4;
            this.§7^§.y = AngryBirdsBase.screenHeight >> 5;
         }
         if(this.§7^§.currentFrame == this.§7^§.totalFrames)
         {
            if(this.§7^§.name == "MovieClip_PowerUp_Wingman")
            {
               if(!§&#`§.§5"s§(§0!w§.§2$?§.eventName))
               {
                  §%"T§.resume();
               }
            }
            this.§]"N§();
         }
      }
      
      private function §-!r§(param1:MovieClip, param2:Boolean = false) : void
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
                     this.§-!r§(_loc4_,param2);
                  }
               }
            }
            _loc3_++;
         }
      }
      
      private function §]"N§() : void
      {
         if(this.§7^§)
         {
            this.§7^§.removeEventListener(Event.ENTER_FRAME,this.§0!q§);
            this.§7^§.stop();
            if(this.§7^§.parent)
            {
               this.§7^§.parent.removeChild(this.§7^§);
            }
            this.§7^§ = null;
         }
      }
      
      protected function §'!@§(param1:String = null) : void
      {
         var _loc2_:§4"p§ = null;
         for each(_loc2_ in §0!w§.§+#I§)
         {
            this.§<"-§(_loc2_,param1);
         }
      }
      
      protected function §<"-§(param1:§4"p§, param2:String) : void
      {
         var _loc3_:§#$>§ = this.§#!^§.getItemByName(param1.buttonName);
         var _loc4_:int = §#$D§.§?q§.§<"M§(param1.§]'§);
         var _loc5_:MovieClip = _loc3_.mClip.getChildByName("Infinite_PowerUpCount") as MovieClip;
         var _loc6_:TextField = _loc3_.mClip.getChildByName("TextField_PowerUpCount") as TextField;
         var _loc7_:MovieClip = _loc3_.mClip.getChildByName("MovieClip_GetMore") as MovieClip;
         _loc6_.mouseEnabled = false;
         _loc6_.text = §2#&§.§9"Q§(_loc4_);
         _loc7_.visible = false;
         var _loc8_:Number = §#$D§.§?q§.§if§(param1.§]'§);
         _loc6_.visible = _loc8_ <= 0;
         _loc5_.visible = _loc8_ > 0;
         if(_loc4_ == 0)
         {
            this.§7#o§(param1.eventName,true);
            return;
         }
         var _loc9_:Boolean = true;
         if(this.§2#K§.§-a§.§5"F§() >= this.§3!X§() && §0!w§.§?#D§.indexOf(param1.§]'§) == -1)
         {
            _loc9_ = false;
         }
         else if(this.§2#K§.§-a§.§1#W§(param1.§]'§) && _loc4_ > 0)
         {
            _loc9_ = false;
         }
         else if(this.§2#K§.§-a§.§0!,§ && (param1.§]'§ == §0!w§.§3#D§.§]'§ || param1.§]'§ == §0!w§.§2$?§.§]'§ || param1.§]'§ == §0!w§.§<L§.§]'§ || param1.§]'§ == §0!w§.§'!z§.§]'§))
         {
            _loc9_ = false;
         }
         else if(§%"T§.§;`§.objects.getPigCount() == 0 && param1.§]'§ == §0!w§.§<!y§.§]'§)
         {
            _loc9_ = false;
         }
         else if(!§%"T§.§;`§.slingshot.birdsAvailable && §%"T§.§;`§.slingshot.mSlingShotState != §0$?§.§?P§ && param2 != §0!w§.§<L§.§]'§ && (param1.§]'§ == §0!w§.§3#D§.§]'§ || param1.§]'§ == §0!w§.§ #;§.§]'§ || param1.§]'§ == §0!w§.§,"w§.§]'§))
         {
            _loc9_ = false;
         }
         else if(§%"T§.§;`§.slingshot.mSlingShotState == §"b§.§4#C§)
         {
            _loc9_ = false;
         }
         this.§7#o§(param1.eventName,_loc9_);
      }
      
      public function §3!X§() : int
      {
         var _loc1_:int = §3#1§.§=v§;
         if((this.mLevelManager as §,-§).§88§())
         {
            _loc1_ += 1;
         }
         if(§1"9§.§?q§.§7#h§())
         {
            _loc1_ += 1;
         }
         return _loc1_;
      }
      
      private function §8!g§(param1:§^#J§) : void
      {
         var _loc2_:String = null;
         if(!§&# §.§-"f§)
         {
            _loc2_ = param1 && param1.§>!&§ && param1.§>!&§.length > 0 ? param1.§>!&§[0].i : null;
            this.§'!@§(_loc2_);
         }
      }
      
      public function §7#o§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:§4"p§ = §0!w§.§4!-§(param1);
         var _loc4_:Number = !!param2 ? Number(1) : Number(0.4);
         var _loc5_:§#$>§;
         if(_loc5_ = this.§<"`§.getItemByName(_loc3_.buttonName))
         {
            _loc5_.setEnabled(param2);
            _loc5_.mClip.alpha = _loc4_;
         }
      }
      
      public function §%"j§() : void
      {
         §&!D§ = 0;
      }
      
      public function §4$!§() : §@#G§
      {
         return this.§@$"§;
      }
      
      public function § $7§() : void
      {
         var _loc1_:§4"p§ = null;
         for each(_loc1_ in §0!w§.§'#v§)
         {
            this.§7#o§(_loc1_.eventName,false);
         }
      }
   }
}
