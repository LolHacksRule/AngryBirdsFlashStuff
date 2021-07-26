package §&$!§
{
   import § !_§.§@F§;
   import §!$;§.§8#F§;
   import §%J§.§]i§;
   import §&"`§.§"#x§;
   import §1!=§.§%#;§;
   import §1!=§.§^"U§;
   import §2"5§.§6"^§;
   import §2G§.§#"8§;
   import §2G§.§-#+§;
   import §3#T§.§@"!§;
   import §4"R§.§7"]§;
   import §;!s§.PowerupSuggestionPopup;
   import §;#D§.§3#U§;
   import §;$3§.§-!'§;
   import §;$3§.§8=§;
   import §;$3§.§>f§;
   import §;$3§.§?!0§;
   import §<h§.§@N§;
   import §<h§.§[#K§;
   import §="h§.§`"O§;
   import §=#G§.§<#Z§;
   import §?P§.ErrorPopup;
   import §?P§.§]"$§;
   import §@0§.§ !o§;
   import §@0§.§2$2§;
   import §@0§.§9"^§;
   import §@0§.§<!v§;
   import §@T§.§`!Y§;
   import §`7§.§9U§;
   import §`7§.§`"x§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class §@$6§ extends EventDispatcher
   {
      
      private static const §5"R§:Number = 3600000;
      
      private static const §"!D§:Number = -130;
      
      private static const §!$2§:int = 5;
      
      private static const §?!`§:Number = 1 / 6;
      
      private static const §0#`§:Number = 6000;
      
      protected static const §8-§:§##a§ = §%#k§.§""z§;
      
      protected static const §#!s§:§##a§ = §%#k§.§6"t§;
      
      protected static const §0!0§:int = 2000;
      
      private static var §6H§:String;
      
      private static var §]#w§:Number = 0;
      
      private static var §2#6§:int = 0;
      
      private static var §,O§:Boolean = false;
       
      
      protected var §8"X§:PowerupSuggestionPopup;
      
      protected var §[#"§:Boolean = true;
      
      private var §@!g§:int = 0;
      
      protected var §`!H§:§[#K§;
      
      protected var §^N§:§[#K§;
      
      private var §-!H§:Number = 0;
      
      private var §=!;§:§<#Z§;
      
      private var mLevelManager:§8=§;
      
      private var §0$B§:Boolean;
      
      private var §=p§:§@F§;
      
      public function §@$6§(param1:§[#K§, param2:§8=§)
      {
         super();
         this.§`!H§ = param1;
         this.mLevelManager = param2;
         this.init();
      }
      
      protected function init() : void
      {
         this.§^N§ = this.§`!H§.getItemByName("Container_Buttons") as §[#K§;
         if(§6H§ != this.mLevelManager.currentLevel)
         {
            §2#6§ = 0;
            §,O§ = false;
         }
         else
         {
            ++§2#6§;
         }
         §6H§ = this.mLevelManager.currentLevel;
         this.§0$B§ = true;
      }
      
      public function §!!i§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         if(§2#6§ >= §!$2§)
         {
            §2#6§ = 0;
            _loc1_ = (AngryBirdsBase.singleton.dataModel as §#"8§).serverSynchronizedTime.synchronizedTimeStamp;
            _loc2_ = (_loc1_ - §]#w§) / §5"R§;
            if(_loc2_ >= §?!`§)
            {
               §]#w§ = _loc1_;
               this.§ k§();
            }
         }
      }
      
      protected function § k§() : void
      {
         var _loc1_:§>f§ = null;
         var _loc2_:§-!'§ = null;
         var _loc3_:§##a§ = null;
         if(!this.§8"X§)
         {
            _loc1_ = this.mLevelManager.getLevelForId(this.mLevelManager.currentLevel);
            _loc2_ = §-!'§(_loc1_);
            if(!_loc2_.optimalPowerup || _loc2_.optimalPowerup == "")
            {
               _loc3_ = !!this.mLevelManager.getCurrentEpisodeModel().isTournament ? §#!s§ : §8-§;
            }
            else
            {
               _loc3_ = §%#k§.§62§(_loc2_.optimalPowerup);
            }
            this.§8"X§ = new PowerupSuggestionPopup(§]"$§.NORMAL,§^"U§.DEFAULT,_loc3_,this.mLevelManager.currentLevel);
            this.§8"X§.addEventListener(§^!&§.§8o§,this.§4P§);
            this.§8"X§.addEventListener(§8#F§.§^$4§,this.§%!W§);
            this.§8"X§.addEventListener(§8#F§.§;^§,this.§=$?§);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§8"X§);
         }
         §`"x§.§0#9§(this.mLevelManager.currentLevel);
      }
      
      public function activate(param1:§<#Z§, param2:Boolean = true, param3:Boolean = true) : void
      {
         var _loc4_:§@"!§ = null;
         var _loc5_:§##a§ = null;
         this.§=!;§ = param1;
         this.§=!;§.§'"`§.§2"P§.addEventListener(§^!&§.§?A§,this.§"#4§);
         if(param2)
         {
            (§3#U§.§#$4§ as §2$2§).§2"P§.§`#J§();
         }
         this.§3"l§();
         if(param3)
         {
            for each(_loc5_ in §%#k§.§1"E§)
            {
               if(_loc4_ = this.§`!H§.getItemByName(_loc5_.buttonName))
               {
                  _loc4_.setEnabled(true);
               }
            }
         }
         §-#+§.§6!§.addEventListener(Event.CHANGE,this.§##$§);
      }
      
      public function deActivate() : void
      {
         §-#+§.§6!§.removeEventListener(Event.CHANGE,this.§##$§);
         this.§=!;§.§'"`§.§2"P§.removeEventListener(§^!&§.§?A§,this.§"#4§);
         if(this.§8"X§)
         {
            this.§8"X§.removeEventListener(§^!&§.§8o§,this.§4P§);
            this.§8"X§.removeEventListener(§8#F§.§^$4§,this.§%!W§);
            this.§8"X§.removeEventListener(§8#F§.§;^§,this.§=$?§);
            this.§8"X§.close();
            this.§8"X§ = null;
         }
      }
      
      public function run(param1:Number) : void
      {
         if(§7"]§.§!#x§)
         {
            if(!this.§0$B§)
            {
               this.§!6§();
               this.§0$B§ = true;
            }
         }
         else if(this.§0$B§)
         {
            this.§3"l§();
            this.§0$B§ = false;
         }
      }
      
      protected function §4P§(param1:§^!&§) : void
      {
         this.§8"X§.removeEventListener(§^!&§.§8o§,this.§4P§);
         this.§"t§(param1.§#"1§);
         dispatchEvent(new §^!&§(§^!&§.§8o§,param1.§#"1§));
      }
      
      protected function §%!W§(param1:§8#F§) : void
      {
         this.§8"X§.removeEventListener(§^!&§.§8o§,this.§4P§);
         this.§8"X§.removeEventListener(§8#F§.§^$4§,this.§%!W§);
         §2#6§ = 0;
         dispatchEvent(new §8#F§(§8#F§.CLOSE,null));
      }
      
      protected function §=$?§(param1:§8#F§) : void
      {
         if(this.§8"X§)
         {
            if(!this.§8"X§.hasEventListener(§^!&§.§8o§))
            {
               this.§8"X§.addEventListener(§^!&§.§8o§,this.§4P§);
            }
            if(!this.§8"X§.hasEventListener(§8#F§.§^$4§))
            {
               this.§8"X§.addEventListener(§8#F§.§^$4§,this.§%!W§);
            }
         }
      }
      
      public function §"t§(param1:String) : void
      {
         var _loc4_:§"#x§ = null;
         if(§7"]§.§!#x§)
         {
            return;
         }
         var _loc2_:§##a§ = §%#k§.§"#`§(param1);
         if(_loc2_ == null)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Unknown powerup event: " + param1));
         }
         var _loc3_:int = §-#+§.§6!§.§=b§(_loc2_.§5"g§);
         if(_loc3_ <= 0)
         {
            _loc4_ = (AngryBirdsBase.singleton.dataModel as §#"8§).§-!h§.§&B§(_loc2_.§5"g§);
            this.§=p§ = new §@F§(this.§`!H§.mClip,_loc4_,_loc2_.§9§);
            this.§=p§.addEventListener(§6"^§.§3!<§,this.§8$2§);
            this.§=p§.§%[§();
            this.§?#h§(param1,true);
            return;
         }
         if(_loc2_.§5"g§ != §%#k§.§6"t§.§5"g§)
         {
            §]i§.§"#o§(_loc2_.eventName);
         }
         §,O§ = true;
         this.§?#h§(param1,false);
         this.§=!;§.§'"`§.§2"P§.§"t§(_loc2_.§5"g§);
      }
      
      protected function §8$2§(param1:§6"^§) : void
      {
         var _loc3_:§##a§ = §%#k§.§62§(param1.§!"-§);
         var _loc4_:§@"!§;
         var _loc5_:Point = (_loc4_ = this.§`!H§.getItemByName(_loc3_.buttonName)).mClip.localToGlobal(new Point(0,0));
         var _loc6_:int = 0;
         while(_loc6_ < 40)
         {
            this.§`!H§.mClip.addChild(new GlitterParticle(_loc5_.x + 10 + Math.random() * 20,_loc5_.y + 10 + Math.random() * 20));
            _loc6_++;
         }
      }
      
      protected function §"#4§(param1:§^!&§) : void
      {
         var _loc6_:MovieClip = null;
         var _loc2_:String = param1.§#"1§;
         this.§+2§();
         var _loc3_:String = "";
         switch(_loc2_)
         {
            case §%#k§.§""z§.§5"g§:
               _loc3_ = "MovieClip_PowerUp_SuperSeeds";
               break;
            case §%#k§.§'"!§.§5"g§:
               _loc3_ = "MovieClip_PowerUp_KingSling";
               break;
            case §%#k§.§0"W§.§5"g§:
               _loc3_ = "MovieClip_PowerUp_SlingScope";
               break;
            case §%#k§.§'!N§.§5"g§:
               _loc3_ = "MovieClip_PowerUp_Boombox";
               break;
            case §%#k§.§6`§.§5"g§:
               _loc3_ = "MovieClip_PowerUp_Birdquake";
               break;
            case §%#k§.§>#Z§.§5"g§:
               _loc3_ = "MovieClip_PowerUp_TNTDRop";
               break;
            case §%#k§.§6"t§.§5"g§:
               _loc3_ = "MovieClip_PowerUp_Wingman";
               break;
            case §%#k§.§@#l§.§5"g§:
               _loc3_ = "MovieClip_PowerUp_Mushroom";
               break;
            default:
               return;
         }
         var _loc4_:§[#K§;
         (_loc4_ = this.§`!H§.getItemByName("Container_PowerUp_Intro2") as §[#K§).visible = true;
         var _loc5_:§@N§;
         (_loc5_ = _loc4_.getItemByName(_loc3_) as §@N§).visible = true;
         _loc5_.mClip.gotoAndPlay(0);
         _loc5_.mClip.addEventListener(Event.ENTER_FRAME,this.§,#R§);
         if(_loc5_.mClip.parent.getChildByName("MovieClip_PowerUp_Empty_Background"))
         {
            _loc5_.mClip.parent.removeChildAt(0);
         }
         if(_loc5_.mClip.name == "MovieClip_PowerUp_Wingman")
         {
            §3#U§.pause();
            (_loc6_ = new MovieClip()).name = "MovieClip_PowerUp_Empty_Background";
            _loc6_.graphics.beginFill(0);
            _loc6_.graphics.drawRect(-§3#U§.§,g§ * §3#U§.§<!K§ - 1000,-§3#U§.§2b§ * §3#U§.§>!p§ - 1000,5000,5000);
            _loc6_.graphics.endFill();
            _loc5_.mClip.parent.addChildAt(_loc6_,0);
         }
      }
      
      private function §,#R§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc2_:MovieClip = param1.currentTarget as MovieClip;
         if(§3#U§.isPaused)
         {
            _loc3_ = AngryBirdsBase.singleton.popupManager.§#"q§();
            if(_loc3_)
            {
               if(_loc2_.isPlaying)
               {
                  _loc2_.prevFrame();
                  _loc2_.stop();
                  this.§,$4§(_loc2_,true);
                  return;
               }
            }
         }
         else if(!_loc2_.isPlaying)
         {
            _loc2_.play();
            this.§,$4§(_loc2_,false);
         }
         if(_loc2_.currentFrame == _loc2_.totalFrames)
         {
            this.§+2§();
            if(_loc2_.name == "MovieClip_PowerUp_Wingman")
            {
               if(!§]i§.§"#o§(§%#k§.§6"t§.eventName))
               {
                  §3#U§.resume();
               }
            }
         }
      }
      
      private function §,$4§(param1:MovieClip, param2:Boolean = false) : void
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
                     this.§,$4§(_loc4_,param2);
                  }
               }
            }
            _loc3_++;
         }
      }
      
      private function §+2§() : void
      {
         var _loc2_:§@"!§ = null;
         var _loc1_:§[#K§ = this.§`!H§.getItemByName("Container_PowerUp_Intro2") as §[#K§;
         for each(_loc2_ in _loc1_.§6$!§)
         {
            _loc2_.mClip.stop();
            _loc2_.mClip.removeEventListener(Event.ENTER_FRAME,this.§,#R§);
            _loc2_.visible = false;
         }
         _loc1_.visible = false;
      }
      
      protected function §3"l§(param1:String = null) : void
      {
         var _loc2_:§##a§ = null;
         for each(_loc2_ in §%#k§.§#"J§)
         {
            this.§6"d§(_loc2_,param1);
         }
      }
      
      protected function §6"d§(param1:§##a§, param2:String) : void
      {
         var _loc3_:§@"!§ = this.§^N§.getItemByName(param1.buttonName);
         var _loc4_:int = §-#+§.§6!§.§=b§(param1.§5"g§);
         var _loc5_:MovieClip = _loc3_.mClip.getChildByName("Infinite_PowerUpCount") as MovieClip;
         var _loc6_:TextField = _loc3_.mClip.getChildByName("TextField_PowerUpCount") as TextField;
         var _loc7_:MovieClip = _loc3_.mClip.getChildByName("MovieClip_GetMore") as MovieClip;
         _loc6_.mouseEnabled = false;
         _loc6_.text = §9U§.§7",§(_loc4_);
         _loc7_.visible = false;
         var _loc8_:Number = §-#+§.§6!§.§+o§(param1.§5"g§);
         _loc6_.visible = _loc8_ <= 0;
         _loc5_.visible = _loc8_ > 0;
         if(_loc4_ == 0)
         {
            this.§?#h§(param1.eventName,true);
            return;
         }
         var _loc9_:Boolean = true;
         if(this.§=!;§.§'"`§.§7!'§() >= this.§3#_§() && §%#k§.§7"i§.indexOf(param1.§5"g§) == -1)
         {
            _loc9_ = false;
         }
         else if(this.§=!;§.§'"`§.§;R§(param1.§5"g§) && _loc4_ > 0)
         {
            _loc9_ = false;
         }
         else if(this.§=!;§.§'"`§.§2!R§ && (param1.§5"g§ == §%#k§.§""z§.§5"g§ || param1.§5"g§ == §%#k§.§6"t§.§5"g§ || param1.§5"g§ == §%#k§.§'!N§.§5"g§ || param1.§5"g§ == §%#k§.§]k§.§5"g§))
         {
            _loc9_ = false;
         }
         else if(§3#U§.§#$4§.objects.getPigCount() == 0 && param1.§5"g§ == §%#k§.§@#l§.§5"g§)
         {
            _loc9_ = false;
         }
         else if(!§3#U§.§#$4§.slingshot.birdsAvailable && §3#U§.§#$4§.slingshot.mSlingShotState != §9"^§.§"!a§ && param2 != §%#k§.§'!N§.§5"g§ && (param1.§5"g§ == §%#k§.§""z§.§5"g§ || param1.§5"g§ == §%#k§.§'"!§.§5"g§ || param1.§5"g§ == §%#k§.§0"W§.§5"g§))
         {
            _loc9_ = false;
         }
         else if(§3#U§.§#$4§.slingshot.mSlingShotState == § !o§.§3"'§)
         {
            _loc9_ = false;
         }
         this.§?#h§(param1.eventName,_loc9_);
      }
      
      public function §3#_§() : int
      {
         var _loc1_:int = §<!v§.§ !4§;
         if((this.mLevelManager as §?!0§).§[!f§())
         {
            _loc1_ += 1;
         }
         if(§`"O§.§6!§.§4u§())
         {
            _loc1_ += 1;
         }
         return _loc1_;
      }
      
      private function §##$§(param1:§`!Y§) : void
      {
         var _loc2_:String = null;
         if(!§7"]§.§!#x§)
         {
            _loc2_ = param1 && param1.§^#b§ && param1.§^#b§.length > 0 ? param1.§^#b§[0].i : null;
            this.§3"l§(_loc2_);
         }
      }
      
      public function §?#h§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:§##a§ = §%#k§.§"#`§(param1);
         var _loc4_:Number = !!param2 ? Number(1) : Number(0.4);
         var _loc5_:§@"!§;
         if(_loc5_ = this.§`!H§.getItemByName(_loc3_.buttonName))
         {
            _loc5_.setEnabled(param2);
            _loc5_.mClip.alpha = _loc4_;
         }
      }
      
      public function §8"H§() : void
      {
         §2#6§ = 0;
      }
      
      public function §1U§() : §%#;§
      {
         return this.§8"X§;
      }
      
      public function §!6§() : void
      {
         var _loc1_:§##a§ = null;
         for each(_loc1_ in §%#k§.§1"E§)
         {
            this.§?#h§(_loc1_.eventName,false);
         }
      }
   }
}
