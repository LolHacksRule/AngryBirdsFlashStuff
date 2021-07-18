package §`!6§
{
   import § "!§.§ ! §;
   import § "!§.§!"O§;
   import § "!§.§8!0§;
   import §%i§.§0!Y§;
   import §%i§.§4"9§;
   import §%i§.§^n§;
   import §,l§.§#!>§;
   import §,l§.§<"W§;
   import §1!t§.§!>§;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §8m§.§@"M§;
   import §9!n§.LevelManager;
   import §<w§.§8p§;
   import §<w§.§9"?§;
   import §@!"§.§?l§;
   import §@!%§.§#!$§;
   import §`"%§.§`_§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §>i§
   {
       
      
      private var §2"@§:§`_§;
      
      private var §`g§:§8p§;
      
      private var §%$§:§6!K§;
      
      private var §4A§:§6!K§;
      
      private var §'!"§:Number;
      
      private var §6!p§:Number;
      
      private var §'!p§:§ ! §;
      
      private var §?!d§:§8!0§;
      
      private var §="7§:Boolean = false;
      
      private var §9!h§:Boolean;
      
      private var §+H§:§<"W§;
      
      private var §4?§:int;
      
      private var §54§:§<"W§;
      
      private var §>!B§:int = -1;
      
      private var §>"6§:Array;
      
      private var §[K§:String;
      
      private var §6"V§:§<"W§;
      
      private var §1"H§:§0!Y§;
      
      private var §="%§:§0!Y§;
      
      private var §`!u§:§!>§;
      
      private var §[F§:§^n§;
      
      private var §8!P§:§^n§;
      
      private var §9[§:§^n§;
      
      private var §`9§:§^n§;
      
      private var § !6§:§^n§;
      
      private var §2!Q§:§^n§;
      
      private var §#!q§:§4"9§;
      
      private var §=!H§:§4"9§;
      
      private var §7"V§:§4"9§;
      
      private var § F§:§4"9§;
      
      private var §"!L§:§4"9§;
      
      private var §8"A§:§4"9§;
      
      public function §>i§(param1:§`_§)
      {
         this.§>"6§ = [];
         super();
         this.§2"@§ = param1;
         this.§?!^§();
         this.§'!"§ = this.§="%§.x;
         this.§6!p§ = this.§`!u§.y;
      }
      
      private function §?!^§() : void
      {
         this.§="%§ = this.§2"@§.getItemByName("Container_VsHero") as §0!Y§;
         this.§`!u§ = this.§2"@§.getItemByName("Container_VsEnemy") as §0!Y§;
         this.§1"H§ = this.§2"@§.getItemByName("Container_Vs") as §0!Y§;
         this.§[F§ = this.§2"@§.getItemByName("MovieClip_VsAnimation") as §^n§;
         this.§8!P§ = this.§2"@§.getItemByName("MovieClip_Boom") as §^n§;
         this.§9[§ = this.§2"@§.getItemByName("MovieClip_VsProfilePicHero") as §^n§;
         this.§`9§ = this.§2"@§.getItemByName("MovieClip_VsProfilePicEnemy") as §^n§;
         this.§ !6§ = this.§2"@§.getItemByName("MovieClip_CrownHero") as §^n§;
         this.§2!Q§ = this.§2"@§.getItemByName("MovieClip_CrownEnemy") as §^n§;
         this.§#!q§ = this.§2"@§.getItemByName("TextField_VsScore") as §4"9§;
         this.§=!H§ = this.§2"@§.getItemByName("TextField_VsScoreEnemy") as §4"9§;
         this.§7"V§ = this.§2"@§.getItemByName("TextField_NameHero") as §4"9§;
         this.§ F§ = this.§2"@§.getItemByName("TextField_NameEnemy") as §4"9§;
         this.§"!L§ = this.§2"@§.getItemByName("TextField_VsPositionHero") as §4"9§;
         this.§8"A§ = this.§2"@§.getItemByName("TextField_VsPositionEnemy") as §4"9§;
      }
      
      public function activate() : void
      {
         if(this.§%$§)
         {
            this.§%$§.play();
         }
         if(this.§4A§)
         {
            this.§4A§.play();
         }
         var _loc1_:MovieClip = this.§2"@§.getItemByName("PlayerNameMask").mClip;
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §#!$§).userName;
         this.§@!@§(_loc2_,this.§7"V§,_loc1_);
         if(this.§6"V§)
         {
            this.§@!@§(this.§6"V§.userName,this.§ F§,this.§2"@§.getItemByName("EnemyNameMask").mClip);
         }
      }
      
      public function deActivate() : void
      {
         if(this.§%$§)
         {
            this.§%$§.pause();
            this.§%$§.§="6§ = false;
         }
         if(this.§4A§)
         {
            this.§4A§.pause();
            this.§4A§.§="6§ = false;
         }
      }
      
      public function levelStarted(param1:§8p§, param2:String) : void
      {
         this.§[K§ = param2;
         this.§=!A§();
         this.§07§();
         this.§`!u§.setVisibility(true);
         this.§1"H§.setVisibility(false);
         this.§`g§ = param1;
         this.§="7§ = false;
         this.§54§ = null;
         this.§>!B§ = -1;
         this.§>"6§ = [];
         this.§[F§.setVisibility(true);
         this.§[F§.§!!a§("Start");
         this.§[F§.§6",§ = true;
         this.§4?§ = -1;
         this.§="%§.x = this.§'!"§;
         this.§`!u§.y = this.§6!p§;
         this.§4A§ = null;
         this.§%$§ = null;
         this.§&!1§();
      }
      
      private function initialize() : void
      {
         var _loc3_:int = 0;
         this.§+y§();
         var _loc1_:MovieClip = this.§2"@§.getItemByName("PlayerNameMask").mClip;
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §#!$§).userName;
         _loc2_ = this.§@!@§(_loc2_,this.§7"V§,_loc1_);
         this.§54§ = null;
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(this.§[K§);
         this.§+H§ = this.§`g§.§!_§();
         if(this.§+H§)
         {
            this.§@!i§(this.§+H§);
            _loc3_ = this.§+H§.§'Q§ + 1;
            this.§`!u§.setVisibility(true);
            this.§[F§.setVisibility(true);
         }
         else
         {
            _loc3_ = 1;
            this.§`!u§.setVisibility(false);
            this.§[F§.setVisibility(false);
            this.§="%§.x = this.§`!u§.x;
         }
         this.§"!L§.setText(_loc3_.toString());
         if(_loc4_ > 0)
         {
            (AngryBirdsFP11.sUserProgress as §#!$§).§'!y§(LevelManager.§ T§,_loc3_);
         }
         var _loc5_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(this.§[K§);
         this.§ !6§.setVisibility(_loc3_ <= 3 && (_loc4_ > 0 || _loc5_ > 0));
         if(_loc3_ > 0 && _loc3_ <= 3 && (_loc4_ > 0 || _loc5_ > 0))
         {
            this.§ !6§.§!!a§(["Gold","Silver","Bronze"][_loc3_ - 1]);
         }
         else
         {
            this.§ !6§.§%"C§(1);
         }
         this.§1"H§.setVisibility(true);
         this.§="7§ = true;
      }
      
      public function run(param1:Number) : Boolean
      {
         if(this.§`g§.§each § || §?l§.§'h§.objects.mSardineCanAdded || this.§9!h§)
         {
            this.§1"H§.setVisibility(false);
            return true;
         }
         if(!this.§="7§)
         {
            this.initialize();
         }
         this.updateAnimations(param1);
         return this.§54§ == null;
      }
      
      public function updateCurrentScore(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(this.§4?§ == param1)
         {
            return;
         }
         this.§4?§ = param1;
         this.§#!q§.setText(this.§?_§(this.§4?§));
         if(!this.§+H§)
         {
            return;
         }
         if(this.§`g§.§each § || §?l§.§'h§.objects.mSardineCanAdded || this.§9!h§)
         {
            return;
         }
         while(this.§+H§ && this.§4?§ > this.§+H§.§,y§)
         {
            this.§>"6§.unshift(this.§+H§);
            if((_loc4_ = this.§`g§.data.indexOf(this.§+H§) - 1) >= 0)
            {
               this.§+H§ = this.§`g§.data[_loc4_];
            }
            else
            {
               this.§+H§ = null;
            }
         }
         while(this.§>"6§.length > 5)
         {
            this.§>"6§.pop();
         }
         if(this.§>"6§.length > 0 && !this.§54§)
         {
            this.§?!5§();
         }
      }
      
      private function §@!i§(param1:§<"W§) : void
      {
         this.§2!Q§.setVisibility(param1.§'Q§ <= 3);
         if(param1.§'Q§ > 0 && param1.§'Q§ <= 3)
         {
            this.§2!Q§.§!!a§(["Gold","Silver","Bronze"][param1.§'Q§ - 1]);
         }
         this.§8"A§.setText(param1.§'Q§.toString());
         this.§=!H§.setText(this.§?_§(param1.§,y§));
         this.§%;§(param1);
      }
      
      private function updateAnimations(param1:Number) : void
      {
         var _loc2_:§^n§ = null;
         for each(_loc2_ in [this.§[F§,this.§8!P§,this.§[F§])
         {
            this.§77§(_loc2_,param1,true);
         }
      }
      
      private function §%;§(param1:§<"W§) : void
      {
         var _loc2_:String = §9"?§.§%!h§(param1.userId);
         var _loc3_:String = param1.userId;
         this.§6"V§ = param1;
         this.§=!A§();
         this.§'!p§ = new §8!0§(_loc3_,"",false,§!"O§.NORMAL);
         this.§^Q§(this.§`9§,this.§'!p§);
         this.§@!@§(param1.userName,this.§ F§,this.§2"@§.getItemByName("EnemyNameMask").mClip);
      }
      
      private function §@!@§(param1:String, param2:§4"9§, param3:MovieClip) : String
      {
         if(param1.length > 6)
         {
            param2.mClip.mask = param3;
            param3.visible = true;
         }
         else
         {
            param2.mClip.mask = null;
            param3.visible = false;
         }
         param2.setText(param1);
         return param1;
      }
      
      private function §^Q§(param1:§^n§, param2:MovieClip) : void
      {
         while(param1.mClip.numChildren > 0)
         {
            param1.mClip.removeChildAt(0);
         }
         param1.mClip.addChild(param2);
      }
      
      private function §&!1§() : void
      {
         var _loc1_:String = (AngryBirdsFP11.sUserProgress as §#!$§).avatarString;
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §#!$§).§5!0§;
         this.§07§();
         this.§?!d§ = new §8!0§(_loc2_,"",false,§!"O§.NORMAL);
         this.§^Q§(this.§9[§,this.§?!d§);
      }
      
      private function §7S§(param1:Event) : void
      {
         this.§&!1§();
      }
      
      private function §=!A§() : void
      {
         if(this.§'!p§)
         {
            this.§'!p§.dispose();
            this.§'!p§ = null;
         }
      }
      
      private function §07§() : void
      {
         if(this.§?!d§)
         {
            this.§?!d§.dispose();
            this.§?!d§ = null;
         }
      }
      
      public function set §+;§(param1:Boolean) : void
      {
         this.§9!h§ = param1;
         this.§1"H§.setVisibility(!this.§9!h§);
      }
      
      private function §?!5§() : void
      {
         this.§54§ = this.§>"6§.pop();
         this.§4A§ = §0W§.§&"5§.§]!r§(this.§="%§.mClip,{"x":this.§'!"§ + 15},{"x":this.§'!"§},0.5,§0W§.§8!s§);
         this.§4A§.onComplete = this.§?"Y§;
         this.§4A§.play();
         §@"M§.§3"C§("NextToBeat_Sound","ChannelPowerups");
      }
      
      private function §?"Y§() : void
      {
         var _loc2_:int = 0;
         this.§4A§ = null;
         this.§8!P§.§!!a§("Start");
         this.§8!P§.§6",§ = true;
         this.§8!P§.setVisibility(true);
         var _loc1_:§<"W§ = this.§>"6§.length > 0 ? this.§>"6§[this.§>"6§.length - 1] : this.§+H§;
         if(this.§54§.§'Q§ == 1 || _loc1_ == null)
         {
            this.§`!u§.setVisibility(false);
            this.§4A§ = §0W§.§&"5§.§]!r§(this.§="%§.mClip,{"x":this.§`!u§.mClip.x},null,0.5);
            this.§4A§.onComplete = this.§,!9§;
            this.§4A§.play();
            this.§ !6§.§!!a§("Gold");
            this.§"!L§.setText("1");
            this.§ !6§.setVisibility(true);
         }
         else
         {
            this.§4A§ = §0W§.§&"5§.§]!r§(this.§="%§.mClip,{"x":this.§'!"§},null,0.5);
            this.§4A§.onComplete = null;
            this.§4A§.play();
            this.§@!i§(_loc1_);
            _loc2_ = _loc1_.§'Q§ + 1;
            this.§ !6§.setVisibility(_loc2_ <= 3);
            if(_loc2_ > 0 && _loc2_ <= 3)
            {
               this.§ !6§.§!!a§(["Gold","Silver","Bronze"][_loc2_ - 1]);
            }
            this.§"!L§.setText(_loc2_.toString());
            this.§%$§ = §0W§.§&"5§.§]!r§(this.§`!u§.mClip,{"y":this.§6!p§},{"y":-150},2,§0W§.§8!s§);
            this.§%$§.onComplete = this.§!""§;
            this.§%$§.play();
         }
      }
      
      private function §!""§() : void
      {
         this.§%$§ = null;
         this.§54§ = null;
         if(this.§>"6§.length > 0)
         {
            this.§?!5§();
         }
      }
      
      private function §,!9§() : void
      {
         this.§4A§ = null;
         this.§54§ = null;
      }
      
      private function §?_§(param1:int) : String
      {
         var _loc4_:String = null;
         var _loc2_:String = param1.toString();
         var _loc3_:Array = [];
         if(_loc2_.length % 3 > 0)
         {
            _loc3_.push(_loc2_.substr(0,_loc2_.length % 3));
            _loc2_ = _loc2_.slice(_loc2_.length % 3);
         }
         while(_loc2_.length > 0)
         {
            _loc3_.push(_loc2_.substr(0,3));
            _loc2_ = _loc2_.substr(3);
         }
         for each(_loc4_ in _loc3_)
         {
            _loc2_ += _loc4_ + ",";
         }
         return _loc2_.substr(0,_loc2_.length - 1);
      }
      
      private function §77§(param1:§^n§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(param1.§6",§ == true)
         {
            if((_loc4_ = param1.§=;§(param2)) == "End")
            {
               param1.§6",§ = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function §+y§() : void
      {
         var _loc1_:§#!>§ = null;
         var _loc2_:§ ! § = null;
         for each(_loc1_ in this.§`g§.data)
         {
            if(_loc1_ is §<"W§)
            {
               _loc2_ = new § ! §(_loc1_.userId,"",false,§!"O§.NORMAL);
               _loc2_.dispose();
            }
         }
      }
   }
}
