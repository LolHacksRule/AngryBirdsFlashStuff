package §9T§
{
   import § "L§.§23§;
   import § $0§.§,#@§;
   import § $0§.§5R§;
   import § $E§.PowerupSuggestionPopup;
   import §#"4§.§<"G§;
   import §#"4§.§>0§;
   import §#g§.§!P§;
   import §#g§.§+!C§;
   import §#g§.§<!N§;
   import §#g§.§^"R§;
   import §'"b§.§ #F§;
   import §+!Y§.§="S§;
   import §,"5§.§ r§;
   import §,#,§.§=#o§;
   import §,#,§.§]§;
   import §5!g§.§;#G§;
   import §6#h§.§5#&§;
   import §7#$§.§8$%§;
   import §7#$§.§?# §;
   import §7#$§.§["5§;
   import §7#$§.§]#q§;
   import §;#>§.§7!^§;
   import §?#z§.§]$?§;
   import §?Q§.§@#D§;
   import §?Q§.ErrorPopup;
   import §[#V§.§%#O§;
   import §]"y§.§3"@§;
   import §^"3§.§^"C§;
   import §`,§.§7!$§;
   import §`D§.§2_§;
   import com.rovio.assets.§[a§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class §@"R§ extends EventDispatcher
   {
      
      private static const §3" §:Number = 3600000;
      
      private static const §&$#§:Number = -130;
      
      private static const §,Q§:int = 5;
      
      private static const §-"$§:Number = 1 / 6;
      
      private static const §"#Y§:Number = 6000;
      
      protected static const §'#]§:§!#;§ = § "T§.§&!C§;
      
      protected static const §true§:§!#;§ = § "T§.§7z§;
      
      protected static const §0#'§:int = 2000;
      
      private static var §[g§:String;
      
      private static var §9#x§:Number = 0;
      
      private static var §?!§:int = 0;
      
      private static var §<#i§:Boolean = false;
       
      
      protected var §4!A§:PowerupSuggestionPopup;
      
      protected var §1!Q§:Boolean = true;
      
      private var §-S§:int = 0;
      
      protected var §;!w§:§23§;
      
      protected var §`# §:§23§;
      
      private var §<"Q§:Number = 0;
      
      private var §'9§:§5#&§;
      
      private var mLevelManager:§]#q§;
      
      private var §@"p§:Boolean;
      
      private var §%$5§:§3"@§;
      
      private var §?!K§:MovieClip;
      
      public function §@"R§(param1:§23§, param2:§]#q§)
      {
         super();
         this.§;!w§ = param1;
         this.mLevelManager = param2;
         this.init();
      }
      
      protected function init() : void
      {
         this.§`# § = this.§;!w§.getItemByName("Container_Buttons") as §23§;
         if(§[g§ != this.mLevelManager.currentLevel)
         {
            §?!§ = 0;
            §<#i§ = false;
         }
         else
         {
            ++§?!§;
         }
         §[g§ = this.mLevelManager.currentLevel;
         this.§@"p§ = true;
      }
      
      public function §4#&§() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         if(§?!§ >= §,Q§)
         {
            §?!§ = 0;
            _loc1_ = (AngryBirdsBase.singleton.dataModel as §=#o§).serverSynchronizedTime.synchronizedTimeStamp;
            _loc2_ = (_loc1_ - §9#x§) / §3" §;
            if(_loc2_ >= §-"$§)
            {
               §9#x§ = _loc1_;
               this.§7""§();
            }
         }
      }
      
      protected function §7""§() : void
      {
         var _loc1_:§?# § = null;
         var _loc2_:§["5§ = null;
         var _loc3_:§!#;§ = null;
         if(!this.§4!A§)
         {
            _loc1_ = this.mLevelManager.getLevelForId(this.mLevelManager.currentLevel);
            _loc2_ = §["5§(_loc1_);
            if(!_loc2_.optimalPowerup || _loc2_.optimalPowerup == "")
            {
               _loc3_ = !!this.mLevelManager.getCurrentEpisodeModel().isTournament ? §true§ : §'#]§;
            }
            else
            {
               _loc3_ = § "T§.§7#?§(_loc2_.optimalPowerup);
            }
            this.§4!A§ = new PowerupSuggestionPopup(§@#D§.NORMAL,§5R§.DEFAULT,_loc3_,this.mLevelManager.currentLevel);
            this.§4!A§.addEventListener(§@#d§.§8p§,this.§4i§);
            this.§4!A§.addEventListener(§7!^§.§;""§,this.§%#b§);
            this.§4!A§.addEventListener(§7!^§.§&""§,this.§05§);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§4!A§);
         }
         §<"G§.§'X§(this.mLevelManager.currentLevel);
      }
      
      public function activate(param1:§5#&§, param2:Boolean = true, param3:Boolean = true) : void
      {
         var _loc4_:§^"C§ = null;
         var _loc5_:§!#;§ = null;
         this.§'9§ = param1;
         this.§'9§.§,!M§.§]!_§.addEventListener(§@#d§.§?"^§,this.§"6§);
         if(param2)
         {
            (§]$?§.§2#§ as §!P§).§]!_§.§?#I§();
         }
         this.§="R§();
         if(param3)
         {
            for each(_loc5_ in § "T§.§"!K§)
            {
               if(_loc4_ = this.§;!w§.getItemByName(_loc5_.buttonName))
               {
                  _loc4_.setEnabled(true);
               }
            }
         }
         §]#0§.§+!,§.addEventListener(Event.CHANGE,this.§-$B§);
      }
      
      public function deActivate() : void
      {
         §]#0§.§+!,§.removeEventListener(Event.CHANGE,this.§-$B§);
         this.§'9§.§,!M§.§]!_§.removeEventListener(§@#d§.§?"^§,this.§"6§);
         if(this.§4!A§)
         {
            this.§4!A§.removeEventListener(§@#d§.§8p§,this.§4i§);
            this.§4!A§.removeEventListener(§7!^§.§;""§,this.§%#b§);
            this.§4!A§.removeEventListener(§7!^§.§&""§,this.§05§);
            this.§4!A§.close();
            this.§4!A§ = null;
         }
         this.§1v§();
      }
      
      public function run(param1:Number) : void
      {
         if(§="S§.§=#V§)
         {
            if(!this.§@"p§)
            {
               this.§>! §();
               this.§@"p§ = true;
            }
         }
         else if(this.§@"p§)
         {
            this.§="R§();
            this.§@"p§ = false;
         }
      }
      
      protected function §4i§(param1:§@#d§) : void
      {
         this.§4!A§.removeEventListener(§@#d§.§8p§,this.§4i§);
         this.§"#u§(param1.§[!W§);
         dispatchEvent(new §@#d§(§@#d§.§8p§,param1.§[!W§));
      }
      
      protected function §%#b§(param1:§7!^§) : void
      {
         this.§4!A§.removeEventListener(§@#d§.§8p§,this.§4i§);
         this.§4!A§.removeEventListener(§7!^§.§;""§,this.§%#b§);
         §?!§ = 0;
         dispatchEvent(new §7!^§(§7!^§.CLOSE,null));
      }
      
      protected function §05§(param1:§7!^§) : void
      {
         if(this.§4!A§)
         {
            if(!this.§4!A§.hasEventListener(§@#d§.§8p§))
            {
               this.§4!A§.addEventListener(§@#d§.§8p§,this.§4i§);
            }
            if(!this.§4!A§.hasEventListener(§7!^§.§;""§))
            {
               this.§4!A§.addEventListener(§7!^§.§;""§,this.§%#b§);
            }
         }
      }
      
      public function §"#u§(param1:String) : void
      {
         var _loc4_:§2_§ = null;
         if(§="S§.§=#V§)
         {
            return;
         }
         var _loc2_:§!#;§ = § "T§.§"#V§(param1);
         if(_loc2_ == null)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Unknown powerup event: " + param1));
         }
         var _loc3_:int = §]#0§.§+!,§.§,#k§(_loc2_.§8t§);
         if(_loc3_ <= 0)
         {
            if(_loc2_.§]!^§)
            {
               _loc4_ = (AngryBirdsBase.singleton.dataModel as §=#o§).§[h§.§'"k§(_loc2_.§8t§);
               this.§%$5§ = new §3"@§(this.§;!w§.mClip,_loc4_,_loc2_.§"l§);
               this.§%$5§.addEventListener(§%#O§.§!"m§,this.§ "M§);
               this.§%$5§.§`!w§();
               this.§`!A§(param1,true);
            }
            return;
         }
         if(_loc2_.§8t§ != § "T§.§7z§.§8t§)
         {
            §;#G§.§?!g§(_loc2_.eventName);
         }
         §<#i§ = true;
         this.§`!A§(param1,false);
         this.§'9§.§,!M§.§]!_§.§"#u§(_loc2_.§8t§);
      }
      
      protected function § "M§(param1:§%#O§) : void
      {
         var _loc3_:§!#;§ = § "T§.§7#?§(param1.§^#z§);
         var _loc4_:§^"C§;
         var _loc5_:Point = (_loc4_ = this.§;!w§.getItemByName(_loc3_.buttonName)).mClip.localToGlobal(new Point(0,0));
         var _loc6_:int = 0;
         while(_loc6_ < 40)
         {
            this.§;!w§.mClip.addChild(new GlitterParticle(_loc5_.x + 10 + Math.random() * 20,_loc5_.y + 10 + Math.random() * 20));
            _loc6_++;
         }
      }
      
      protected function §"6§(param1:§@#d§) : void
      {
         var _loc2_:String = param1.§[!W§;
         this.§1v§();
         var _loc3_:String = "";
         switch(_loc2_)
         {
            case § "T§.§&!C§.§8t§:
               _loc3_ = "MovieClip_PowerUpUse_SuperSeeds";
               break;
            case § "T§.§=#x§.§8t§:
               _loc3_ = "MovieClip_PowerUpUse_KingSling";
               break;
            case § "T§.§4@§.§8t§:
               _loc3_ = "MovieClip_PowerUpUse_Sling Scope";
               break;
            case § "T§.§#"9§.§8t§:
               _loc3_ = "MovieClip_PowerUpUse_Boombox";
               break;
            case § "T§.§8"8§.§8t§:
               _loc3_ = "MovieClip_PowerUpUse_Birdquake";
               break;
            case § "T§.§,",§.§8t§:
               _loc3_ = "MovieClip_PowerUpUse_TNTDrop";
               break;
            case § "T§.§7z§.§8t§:
               _loc3_ = "MovieClip_PowerUp_Wingman";
               §]$?§.pause();
               break;
            case § "T§.§=$%§.§8t§:
               _loc3_ = "MovieClip_PowerUpUse_Mushroom";
               break;
            default:
               return;
         }
         var _loc4_:String = _loc3_ + "_" + §7!$§.§+!,§.brandedTournamentAssetId;
         if(§[a§.§]$'§(_loc4_))
         {
            _loc3_ = _loc4_;
         }
         var _loc5_:Class = §[a§.§8#k§(_loc3_);
         this.§?!K§ = new _loc5_();
         this.§?!K§.name = _loc3_;
         this.§?!K§.addEventListener(Event.ENTER_FRAME,this.§0l§);
         this.§;!w§.mClip.addChild(this.§?!K§);
         this.§?!K§.gotoAndPlay(1);
      }
      
      private function §0l§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         if(!this.§?!K§)
         {
            this.§?!K§.removeEventListener(Event.ENTER_FRAME,this.§0l§);
            return;
         }
         if(§]$?§.isPaused)
         {
            _loc2_ = AngryBirdsBase.singleton.popupManager.§[#a§();
            if(_loc2_)
            {
               if(this.§?!K§.isPlaying)
               {
                  this.§?!K§.prevFrame();
                  this.§?!K§.stop();
                  this.§?1§(this.§?!K§,true);
                  return;
               }
            }
         }
         else if(!this.§?!K§.isPlaying)
         {
            this.§?!K§.play();
            this.§?1§(this.§?!K§,false);
         }
         if((§]$?§.§;u§ as §@z§).§ >§())
         {
            if(this.§?!K§.name == "MovieClip_PowerUp_Wingman")
            {
               this.§?!K§.scaleX = this.§?!K§.scaleY = 2;
            }
            else
            {
               this.§?!K§.scaleX = this.§?!K§.scaleY = 1.5;
               this.§?!K§.x = AngryBirdsBase.screenWidth >> 2;
               this.§?!K§.y = AngryBirdsBase.screenHeight >> 4;
            }
         }
         else if(this.§?!K§.name == "MovieClip_PowerUp_Wingman")
         {
            this.§?!K§.scaleX = this.§?!K§.scaleY = 1;
         }
         else
         {
            this.§?!K§.scaleX = this.§?!K§.scaleY = 0.8;
            this.§?!K§.x = AngryBirdsBase.screenWidth >> 4;
            this.§?!K§.y = AngryBirdsBase.screenHeight >> 5;
         }
         if(this.§?!K§.currentFrame == this.§?!K§.totalFrames)
         {
            if(this.§?!K§.name == "MovieClip_PowerUp_Wingman")
            {
               if(!§;#G§.§?!g§(§ "T§.§7z§.eventName))
               {
                  §]$?§.resume();
               }
            }
            this.§1v§();
         }
      }
      
      private function §?1§(param1:MovieClip, param2:Boolean = false) : void
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
                     this.§?1§(_loc4_,param2);
                  }
               }
            }
            _loc3_++;
         }
      }
      
      private function §1v§() : void
      {
         if(this.§?!K§)
         {
            this.§?!K§.removeEventListener(Event.ENTER_FRAME,this.§0l§);
            this.§?!K§.stop();
            if(this.§?!K§.parent)
            {
               this.§?!K§.parent.removeChild(this.§?!K§);
            }
            this.§?!K§ = null;
         }
      }
      
      protected function §="R§(param1:String = null) : void
      {
         var _loc2_:§!#;§ = null;
         for each(_loc2_ in § "T§.§<!B§)
         {
            this.§7#3§(_loc2_,param1);
         }
      }
      
      protected function §7#3§(param1:§!#;§, param2:String) : void
      {
         var _loc3_:§^"C§ = this.§`# §.getItemByName(param1.buttonName);
         var _loc4_:int = §]#0§.§+!,§.§,#k§(param1.§8t§);
         var _loc5_:MovieClip = _loc3_.mClip.getChildByName("Infinite_PowerUpCount") as MovieClip;
         var _loc6_:TextField = _loc3_.mClip.getChildByName("TextField_PowerUpCount") as TextField;
         var _loc7_:MovieClip = _loc3_.mClip.getChildByName("MovieClip_GetMore") as MovieClip;
         _loc6_.mouseEnabled = false;
         _loc6_.text = §>0§.§9#9§(_loc4_);
         _loc7_.visible = false;
         var _loc8_:Number = §]#0§.§+!,§.§9n§(param1.§8t§);
         _loc6_.visible = _loc8_ <= 0;
         _loc5_.visible = _loc8_ > 0;
         if(_loc4_ == 0)
         {
            this.§`!A§(param1.eventName,true);
            return;
         }
         var _loc9_:Boolean = true;
         if(this.§'9§.§,!M§.§"#@§() >= this.§?!%§() && § "T§.§'#U§.indexOf(param1.§8t§) == -1)
         {
            _loc9_ = false;
         }
         else if(this.§'9§.§,!M§.§&R§(param1.§8t§) && _loc4_ > 0)
         {
            _loc9_ = false;
         }
         else if(this.§'9§.§,!M§.§6"_§ && (param1.§8t§ == § "T§.§&!C§.§8t§ || param1.§8t§ == § "T§.§7z§.§8t§ || param1.§8t§ == § "T§.§#"9§.§8t§ || param1.§8t§ == § "T§.§="E§.§8t§))
         {
            _loc9_ = false;
         }
         else if(§]$?§.§2#§.objects.getPigCount() == 0 && param1.§8t§ == § "T§.§=$%§.§8t§)
         {
            _loc9_ = false;
         }
         else if(!§]$?§.§2#§.slingshot.birdsAvailable && §]$?§.§2#§.slingshot.mSlingShotState != §+!C§.§&"#§ && param2 != § "T§.§#"9§.§8t§ && (param1.§8t§ == § "T§.§&!C§.§8t§ || param1.§8t§ == § "T§.§=#x§.§8t§ || param1.§8t§ == § "T§.§4@§.§8t§))
         {
            _loc9_ = false;
         }
         else if(§]$?§.§2#§.slingshot.mSlingShotState == §^"R§.§@#+§)
         {
            _loc9_ = false;
         }
         this.§`!A§(param1.eventName,_loc9_);
      }
      
      public function §?!%§() : int
      {
         var _loc1_:int = §<!N§.§9"]§;
         if((this.mLevelManager as §8$%§).§0$!§())
         {
            _loc1_ += 1;
         }
         if(§ #F§.§+!,§.§'"B§())
         {
            _loc1_ += 1;
         }
         return _loc1_;
      }
      
      private function §-$B§(param1:§ r§) : void
      {
         var _loc2_:String = null;
         if(!§="S§.§=#V§)
         {
            _loc2_ = param1 && param1.§07§ && param1.§07§.length > 0 ? param1.§07§[0].i : null;
            this.§="R§(_loc2_);
         }
      }
      
      public function §`!A§(param1:String, param2:Boolean = true) : void
      {
         var _loc3_:§!#;§ = § "T§.§"#V§(param1);
         if(!_loc3_.§]!^§ && §]#0§.§+!,§.§,#k§(_loc3_.§8t§) <= 0)
         {
            param2 = false;
         }
         var _loc4_:Number = !!param2 ? Number(1) : Number(0.4);
         var _loc5_:§^"C§;
         if(_loc5_ = this.§;!w§.getItemByName(_loc3_.buttonName))
         {
            _loc5_.setEnabled(param2);
            _loc5_.mClip.alpha = _loc4_;
         }
      }
      
      public function §5!z§() : void
      {
         §?!§ = 0;
      }
      
      public function §4"`§() : §,#@§
      {
         return this.§4!A§;
      }
      
      public function §>! §() : void
      {
         var _loc1_:§!#;§ = null;
         for each(_loc1_ in § "T§.§"!K§)
         {
            this.§`!A§(_loc1_.eventName,false);
         }
      }
   }
}
