package §;P§
{
   import § o§.§%"!§;
   import §#U§.PowerupSuggestionPopup;
   import §%#A§.§'=§;
   import §%#A§.§]!_§;
   import §&"J§.§4"W§;
   import §&"J§.§`]§;
   import §+!C§.§#!L§;
   import §+!C§.§9!b§;
   import §+!C§.§@!^§;
   import §+!C§.§]#b§;
   import §+"E§.§+Q§;
   import §4$<§.§?§;
   import §6!E§.§^!7§;
   import §6"r§.§!#A§;
   import §6V§.§ "b§;
   import §6V§.§`"5§;
   import §7",§.§2#i§;
   import §8!§.§#!%§;
   import §<"1§.§[!K§;
   import §<#m§.§!"<§;
   import §<#m§.§^#o§;
   import §<u§.§ "a§;
   import §=#C§.§1"r§;
   import §@#§.§7!O§;
   import §@#§.§]#B§;
   import §@#§.§^#Q§;
   import §@#§.§`!Q§;
   import §["-§.§3"<§;
   import §["r§.§8`§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class §7;§ extends EventDispatcher
   {
      
      private static const §-#V§:Number = 3600000;
      
      private static const §+#[§:Number = -130;
      
      private static const §<!p§:int = 5;
      
      private static const § "_§:Number = 1 / 6;
      
      private static const §3#!§:Number = 6000;
      
      protected static const §?#o§:§-#b§ = §super§.§@"B§;
      
      protected static const §%#%§:§-#b§ = §super§.§#"[§;
      
      protected static const §"W§:int = 2000;
      
      private static var §`"&§:String;
      
      private static var §#"8§:Number = 0;
      
      private static var §7"2§:int = 0;
      
      private static var §<>§:Boolean = false;
       
      
      protected var §]#v§:PowerupSuggestionPopup;
      
      protected var §,"]§:Boolean = true;
      
      private var §"#Y§:int = 0;
      
      protected var §?Q§:§]!_§;
      
      protected var §"!K§:§]!_§;
      
      private var §1!P§:Number = 0;
      
      private var §+#-§:§3"<§;
      
      private var mLevelManager:§^#Q§;
      
      private var §>!6§:Boolean;
      
      private var §3#m§:§^!7§;
      
      public function §7;§(param1:§]!_§, param2:§^#Q§)
      {
         super();
         this.§?Q§ = param1;
         this.mLevelManager = param2;
         this.init();
      }
      
      protected function init() : void
      {
         this.§"!K§ = this.§?Q§.getItemByName("Container_Buttons") as §]!_§;
         if(§`"&§ != this.mLevelManager.currentLevel)
         {
            §7"2§ = 0;
            §<>§ = false;
         }
         else
         {
            ++§7"2§;
         }
         §`"&§ = this.mLevelManager.currentLevel;
         this.§>!6§ = true;
      }
      
      public function §=#m§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         if(§7"2§ >= §<!p§)
         {
            §7"2§ = 0;
            _loc1_ = (AngryBirdsBase.singleton.dataModel as §`]§).serverSynchronizedTime.synchronizedTimeStamp;
            _loc2_ = (_loc1_ - §#"8§) / §-#V§;
            if(_loc2_ >= § "_§)
            {
               §#"8§ = _loc1_;
               this.§?#X§();
            }
         }
      }
      
      protected function §?#X§() : void
      {
         var _loc1_:§]#B§ = null;
         var _loc2_:§7!O§ = null;
         var _loc3_:§-#b§ = null;
         if(!this.§]#v§)
         {
            _loc1_ = this.mLevelManager.getLevelForId(this.mLevelManager.currentLevel);
            _loc2_ = §7!O§(_loc1_);
            if(!_loc2_.optimalPowerup || _loc2_.optimalPowerup == "")
            {
               _loc3_ = !!this.mLevelManager.getCurrentEpisodeModel().isTournament ? §%#%§ : §?#o§;
            }
            else
            {
               _loc3_ = §super§.§="=§(_loc2_.optimalPowerup);
            }
            this.§]#v§ = new PowerupSuggestionPopup(§%"!§.NORMAL,§^#o§.DEFAULT,_loc3_,this.mLevelManager.currentLevel);
            this.§]#v§.addEventListener(§%!]§.§3#%§,this.§1"m§);
            this.§]#v§.addEventListener(§?#7§.§7#o§,this.§#!-§);
            this.§]#v§.addEventListener(§?#7§.§,!v§,this.§#!a§);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§]#v§);
         }
         §`"5§.§^$>§(this.mLevelManager.currentLevel);
      }
      
      public function activate(param1:§3"<§, param2:Boolean = true, param3:Boolean = true) : void
      {
         var _loc4_:§[!K§ = null;
         var _loc5_:§-#b§ = null;
         this.§+#-§ = param1;
         this.§+#-§.§"!!§.§1"-§.addEventListener(§%!]§.§4<§,this.§@"P§);
         if(param2)
         {
            (§!#A§.§#F§ as §#!L§).§1"-§.§6!Q§();
         }
         this.§`"j§();
         if(param3)
         {
            for each(_loc5_ in §super§.§[#>§)
            {
               if(_loc4_ = this.§?Q§.getItemByName(_loc5_.buttonName))
               {
                  _loc4_.setEnabled(true);
               }
            }
         }
         §4"W§.§ "D§.addEventListener(Event.CHANGE,this.§0#H§);
      }
      
      public function deActivate() : void
      {
         §4"W§.§ "D§.removeEventListener(Event.CHANGE,this.§0#H§);
         this.§+#-§.§"!!§.§1"-§.removeEventListener(§%!]§.§4<§,this.§@"P§);
         if(this.§]#v§)
         {
            this.§]#v§.removeEventListener(§%!]§.§3#%§,this.§1"m§);
            this.§]#v§.removeEventListener(§?#7§.§7#o§,this.§#!-§);
            this.§]#v§.removeEventListener(§?#7§.§,!v§,this.§#!a§);
            this.§]#v§.close();
            this.§]#v§ = null;
         }
      }
      
      public function run(param1:Number) : void
      {
         if(§1"r§.§-!%§)
         {
            if(!this.§>!6§)
            {
               this.§?!k§();
               this.§>!6§ = true;
            }
         }
         else if(this.§>!6§)
         {
            this.§`"j§();
            this.§>!6§ = false;
         }
      }
      
      protected function §1"m§(param1:§%!]§) : void
      {
         this.§]#v§.removeEventListener(§%!]§.§3#%§,this.§1"m§);
         this.§>$7§(param1.§,n§);
         dispatchEvent(new §%!]§(§%!]§.§3#%§,param1.§,n§));
      }
      
      protected function §#!-§(param1:§?#7§) : void
      {
         this.§]#v§.removeEventListener(§%!]§.§3#%§,this.§1"m§);
         this.§]#v§.removeEventListener(§?#7§.§7#o§,this.§#!-§);
         §7"2§ = 0;
         dispatchEvent(new §?#7§(§?#7§.CLOSE,null));
      }
      
      protected function §#!a§(param1:§?#7§) : void
      {
         if(this.§]#v§)
         {
            if(!this.§]#v§.hasEventListener(§%!]§.§3#%§))
            {
               this.§]#v§.addEventListener(§%!]§.§3#%§,this.§1"m§);
            }
            if(!this.§]#v§.hasEventListener(§?#7§.§7#o§))
            {
               this.§]#v§.addEventListener(§?#7§.§7#o§,this.§#!-§);
            }
         }
      }
      
      public function §>$7§(param1:String) : void
      {
         var _loc4_:§2#i§ = null;
         if(§1"r§.§-!%§)
         {
            return;
         }
         var _loc2_:§-#b§ = §super§.§1"Q§(param1);
         if(_loc2_ == null)
         {
            throw new Error("Unknown powerup event: " + param1);
         }
         var _loc3_:int = §4"W§.§ "D§.§04§(_loc2_.§?"9§);
         if(_loc3_ <= 0)
         {
            _loc4_ = (AngryBirdsBase.singleton.dataModel as §`]§).§#"r§.§#X§(_loc2_.§?"9§);
            this.§3#m§ = new §^!7§(this.§?Q§.mClip,_loc4_,_loc2_.§,!&§);
            this.§3#m§.addEventListener(§+Q§.§=<§,this.§-!Y§);
            this.§3#m§.§0"r§();
            this.§;T§(param1,true);
            return;
         }
         if(_loc2_.§?"9§ != §super§.§#"[§.§?"9§)
         {
            §8`§.§="@§(_loc2_.eventName);
         }
         §<>§ = true;
         this.§;T§(param1,false);
         this.§+#-§.§"!!§.§1"-§.§>$7§(_loc2_.§?"9§);
      }
      
      protected function §-!Y§(param1:§+Q§) : void
      {
         var _loc3_:§-#b§ = §super§.§="=§(param1.§3#=§);
         var _loc4_:§[!K§;
         var _loc5_:Point = (_loc4_ = this.§?Q§.getItemByName(_loc3_.buttonName)).mClip.localToGlobal(new Point(0,0));
         var _loc6_:int = 0;
         while(_loc6_ < 40)
         {
            this.§?Q§.mClip.addChild(new GlitterParticle(_loc5_.x + 10 + Math.random() * 20,_loc5_.y + 10 + Math.random() * 20));
            _loc6_++;
         }
      }
      
      protected function §@"P§(param1:§%!]§) : void
      {
         var _loc6_:MovieClip = null;
         var _loc2_:String = param1.§,n§;
         this.§<Z§();
         var _loc3_:String = "";
         switch(_loc2_)
         {
            case §super§.§@"B§.§?"9§:
               _loc3_ = "MovieClip_PowerUp_SuperSeeds";
               break;
            case §super§.§&"l§.§?"9§:
               _loc3_ = "MovieClip_PowerUp_KingSling";
               break;
            case §super§.§!!y§.§?"9§:
               _loc3_ = "MovieClip_PowerUp_SlingScope";
               break;
            case §super§.§+!d§.§?"9§:
               _loc3_ = "MovieClip_PowerUp_Birdquake";
               break;
            case §super§.§%#[§.§?"9§:
               _loc3_ = "MovieClip_PowerUp_TNTDRop";
               break;
            case §super§.§#"[§.§?"9§:
               _loc3_ = "MovieClip_PowerUp_Wingman";
               break;
            case §super§.§9!T§.§?"9§:
               _loc3_ = "MovieClip_PowerUp_Mushroom";
               break;
            default:
               return;
         }
         var _loc4_:§]!_§;
         (_loc4_ = this.§?Q§.getItemByName("Container_PowerUp_Intro2") as §]!_§).visible = true;
         var _loc5_:§'=§;
         (_loc5_ = _loc4_.getItemByName(_loc3_) as §'=§).visible = true;
         _loc5_.mClip.gotoAndPlay(0);
         _loc5_.mClip.addEventListener(Event.ENTER_FRAME,this.§1!h§);
         if(_loc5_.mClip.parent.getChildByName("MovieClip_PowerUp_Empty_Background"))
         {
            _loc5_.mClip.parent.removeChildAt(0);
         }
         if(_loc5_.mClip.name == "MovieClip_PowerUp_Wingman")
         {
            §!#A§.pause();
            (_loc6_ = new MovieClip()).name = "MovieClip_PowerUp_Empty_Background";
            _loc6_.graphics.beginFill(0);
            _loc6_.graphics.drawRect(-§!#A§.§-Y§ * §!#A§.§+K§ - 1000,-§!#A§.§<!q§ * §!#A§.§5O§ - 1000,5000,5000);
            _loc6_.graphics.endFill();
            _loc5_.mClip.parent.addChildAt(_loc6_,0);
         }
      }
      
      private function §1!h§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc2_:MovieClip = param1.currentTarget as MovieClip;
         if(§!#A§.isPaused)
         {
            _loc3_ = AngryBirdsBase.singleton.popupManager.§`$§();
            if(_loc3_)
            {
               if(_loc2_.isPlaying)
               {
                  _loc2_.prevFrame();
                  _loc2_.stop();
                  this.§0!_§(_loc2_,true);
                  return;
               }
            }
         }
         else if(!_loc2_.isPlaying)
         {
            _loc2_.play();
            this.§0!_§(_loc2_,false);
         }
         if(_loc2_.currentFrame == _loc2_.totalFrames)
         {
            this.§<Z§();
            if(_loc2_.name == "MovieClip_PowerUp_Wingman")
            {
               if(!§8`§.§="@§(§super§.§#"[§.eventName))
               {
                  §!#A§.resume();
               }
            }
         }
      }
      
      private function §0!_§(param1:MovieClip, param2:Boolean = false) : void
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
                     this.§0!_§(_loc4_,param2);
                  }
               }
            }
            _loc3_++;
         }
      }
      
      private function §<Z§() : void
      {
         var _loc2_:§[!K§ = null;
         var _loc1_:§]!_§ = this.§?Q§.getItemByName("Container_PowerUp_Intro2") as §]!_§;
         for each(_loc2_ in _loc1_.§+G§)
         {
            _loc2_.mClip.stop();
            _loc2_.mClip.removeEventListener(Event.ENTER_FRAME,this.§1!h§);
            _loc2_.visible = false;
         }
         _loc1_.visible = false;
      }
      
      protected function §`"j§(param1:String = null) : void
      {
         var _loc2_:§-#b§ = null;
         for each(_loc2_ in §super§.§`t§)
         {
            this.§?#s§(_loc2_,param1);
         }
      }
      
      protected function §?#s§(param1:§-#b§, param2:String) : void
      {
         var _loc3_:§[!K§ = this.§"!K§.getItemByName(param1.buttonName);
         var _loc4_:int = §4"W§.§ "D§.§04§(param1.§?"9§);
         var _loc5_:MovieClip = _loc3_.mClip.getChildByName("Infinite_PowerUpCount") as MovieClip;
         var _loc6_:TextField = _loc3_.mClip.getChildByName("TextField_PowerUpCount") as TextField;
         var _loc7_:MovieClip = _loc3_.mClip.getChildByName("MovieClip_GetMore") as MovieClip;
         _loc6_.mouseEnabled = false;
         _loc6_.text = § "b§.§-j§(_loc4_);
         _loc7_.visible = false;
         var _loc8_:Number = §4"W§.§ "D§.§@^§(param1.§?"9§);
         _loc6_.visible = _loc8_ <= 0;
         _loc5_.visible = _loc8_ > 0;
         if(_loc4_ == 0)
         {
            this.§;T§(param1.eventName,true);
            return;
         }
         var _loc9_:Boolean = true;
         if(this.§+#-§.§"!!§.§'n§() >= this.§0#J§() && §super§.§9!h§.indexOf(param1.§?"9§) == -1)
         {
            _loc9_ = false;
         }
         else if(this.§+#-§.§"!!§.§2$$§(param1.§?"9§) && _loc4_ > 0)
         {
            _loc9_ = false;
         }
         else if(this.§+#-§.§"!!§.§]"p§ && (param1.§?"9§ == §super§.§@"B§.§?"9§ || param1.§?"9§ == §super§.§#"[§.§?"9§ || param1.§?"9§ == §super§.§["0§.§?"9§))
         {
            _loc9_ = false;
         }
         else if(§!#A§.§#F§.objects.getPigCount() == 0 && param1.§?"9§ == §super§.§9!T§.§?"9§)
         {
            _loc9_ = false;
         }
         else if(!§!#A§.§#F§.slingshot.birdsAvailable && §!#A§.§#F§.slingshot.mSlingShotState != §9!b§.§`D§ && (param1.§?"9§ == §super§.§@"B§.§?"9§ || param1.§?"9§ == §super§.§&"l§.§?"9§ || param1.§?"9§ == §super§.§!!y§.§?"9§))
         {
            _loc9_ = false;
         }
         else if(§!#A§.§#F§.slingshot.mSlingShotState == §]#b§.§-"1§)
         {
            _loc9_ = false;
         }
         this.§;T§(param1.eventName,_loc9_);
      }
      
      public function §0#J§() : int
      {
         var _loc1_:int = §@!^§.§#"!§;
         if((this.mLevelManager as §`!Q§).§?"X§())
         {
            _loc1_ += 1;
         }
         if(§ "a§.§ "D§.§!#d§())
         {
            _loc1_ += 1;
         }
         return _loc1_;
      }
      
      private function §0#H§(param1:§#!%§) : void
      {
         var _loc2_:String = null;
         if(!§1"r§.§-!%§)
         {
            _loc2_ = param1.§""<§ && param1.§""<§.length > 0 ? param1.§""<§[0].i : null;
            this.§`"j§(_loc2_);
         }
      }
      
      public function §;T§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:§-#b§ = §super§.§1"Q§(param1);
         var _loc4_:Number = !!param2 ? Number(1) : Number(0.4);
         var _loc5_:§[!K§;
         if(_loc5_ = this.§?Q§.getItemByName(_loc3_.buttonName))
         {
            _loc5_.setEnabled(param2);
            _loc5_.mClip.alpha = _loc4_;
         }
      }
      
      public function §3#"§() : void
      {
         §7"2§ = 0;
      }
      
      public function §`!h§() : §!"<§
      {
         return this.§]#v§;
      }
      
      public function §?!k§() : void
      {
         var _loc1_:§-#b§ = null;
         for each(_loc1_ in §super§.§[#>§)
         {
            this.§;T§(_loc1_.eventName,false);
         }
      }
   }
}
