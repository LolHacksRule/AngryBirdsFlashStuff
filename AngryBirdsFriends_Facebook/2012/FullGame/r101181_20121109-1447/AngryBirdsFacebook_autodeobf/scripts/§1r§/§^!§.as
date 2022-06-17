package §1r§
{
   import § " §.§+!p§;
   import § " §.§2!!§;
   import § " §.§3"2§;
   import §!!C§.§!H§;
   import §!!C§.§]!;§;
   import §#!e§.LevelManager;
   import §#^§.§7!A§;
   import §%!v§.§[<§;
   import §2!i§.§7'§;
   import §4!e§.§-"E§;
   import §4!e§.§08§;
   import §4!e§.§7"-§;
   import §6!B§.§>!E§;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import §]!>§.§#"1§;
   import §]!>§.§2!W§;
   import §]!A§.;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §^!§
   {
       
      
      private var §6w§:§7!A§;
      
      private var §3s§:§]!;§;
      
      private var §2U§:§"m§;
      
      private var §?P§:§"m§;
      
      private var §#'§:Number;
      
      private var §@K§:Number;
      
      private var §0!B§:§2!!§;
      
      private var §@q§:§3"2§;
      
      private var § !^§:Boolean = false;
      
      private var §1e§:Boolean;
      
      private var §"E§:§2!W§;
      
      private var §,!F§:int;
      
      private var §6!4§:§2!W§;
      
      private var §<!>§:int = -1;
      
      private var §&!D§:Array;
      
      private var §5"1§:String;
      
      private var §,!S§:§2!W§;
      
      private var §8M§:§08§;
      
      private var §<]§:§08§;
      
      private var §^G§:§7'§;
      
      private var §1K§:§7"-§;
      
      private var §#!u§:§7"-§;
      
      private var §,8§:§7"-§;
      
      private var §]=§:§7"-§;
      
      private var §9I§:§7"-§;
      
      private var §'!@§:§7"-§;
      
      private var §throw§:§-"E§;
      
      private var §=g§:§-"E§;
      
      private var §8;§:§-"E§;
      
      private var §9!l§:§-"E§;
      
      private var §5!"§:§-"E§;
      
      private var §[!1§:§-"E§;
      
      public function §^!§(param1:§7!A§)
      {
         this.§&!D§ = [];
         super();
         this.§6w§ = param1;
         this.§"!j§();
         this.§#'§ = this.§<]§.x;
         this.§@K§ = this.§^G§.y;
      }
      
      private function §"!j§() : void
      {
         this.§<]§ = this.§6w§.getItemByName("Container_VsHero") as §08§;
         this.§^G§ = this.§6w§.getItemByName("Container_VsEnemy") as §08§;
         this.§8M§ = this.§6w§.getItemByName("Container_Vs") as §08§;
         this.§1K§ = this.§6w§.getItemByName("MovieClip_VsAnimation") as §7"-§;
         this.§#!u§ = this.§6w§.getItemByName("MovieClip_Boom") as §7"-§;
         this.§,8§ = this.§6w§.getItemByName("MovieClip_VsProfilePicHero") as §7"-§;
         this.§]=§ = this.§6w§.getItemByName("MovieClip_VsProfilePicEnemy") as §7"-§;
         this.§9I§ = this.§6w§.getItemByName("MovieClip_CrownHero") as §7"-§;
         this.§'!@§ = this.§6w§.getItemByName("MovieClip_CrownEnemy") as §7"-§;
         this.§throw§ = this.§6w§.getItemByName("TextField_VsScore") as §-"E§;
         this.§=g§ = this.§6w§.getItemByName("TextField_VsScoreEnemy") as §-"E§;
         this.§8;§ = this.§6w§.getItemByName("TextField_NameHero") as §-"E§;
         this.§9!l§ = this.§6w§.getItemByName("TextField_NameEnemy") as §-"E§;
         this.§5!"§ = this.§6w§.getItemByName("TextField_VsPositionHero") as §-"E§;
         this.§[!1§ = this.§6w§.getItemByName("TextField_VsPositionEnemy") as §-"E§;
      }
      
      public function activate() : void
      {
         if(this.§2U§)
         {
            this.§2U§.play();
         }
         if(this.§?P§)
         {
            this.§?P§.play();
         }
         var _loc1_:MovieClip = this.§6w§.getItemByName("PlayerNameMask").mClip;
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §[<§).userName;
         this.§0D§(_loc2_,this.§8;§,_loc1_);
         if(this.§,!S§)
         {
            this.§0D§(this.§,!S§.userName,this.§9!l§,this.§6w§.getItemByName("EnemyNameMask").mClip);
         }
      }
      
      public function deActivate() : void
      {
         if(this.§2U§)
         {
            this.§2U§.pause();
            this.§2U§.§'l§ = false;
         }
         if(this.§?P§)
         {
            this.§?P§.pause();
            this.§?P§.§'l§ = false;
         }
      }
      
      public function levelStarted(param1:§]!;§, param2:String) : void
      {
         this.§5"1§ = param2;
         this.§-"F§();
         this.§;""§();
         this.§^G§.setVisibility(true);
         this.§8M§.setVisibility(false);
         this.§3s§ = param1;
         this.§ !^§ = false;
         this.§6!4§ = null;
         this.§<!>§ = -1;
         this.§&!D§ = [];
         this.§1K§.setVisibility(true);
         this.§1K§.§2!H§("Start");
         this.§1K§.§5%§ = true;
         this.§,!F§ = -1;
         this.§<]§.x = this.§#'§;
         this.§^G§.y = this.§@K§;
         this.§?P§ = null;
         this.§2U§ = null;
         this.§+">§();
      }
      
      private function initialize() : void
      {
         var _loc3_:int = 0;
         this.§++§();
         var _loc1_:MovieClip = this.§6w§.getItemByName("PlayerNameMask").mClip;
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §[<§).userName;
         _loc2_ = this.§0D§(_loc2_,this.§8;§,_loc1_);
         this.§6!4§ = null;
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(this.§5"1§);
         this.§"E§ = this.§3s§.§3"=§();
         if(this.§"E§)
         {
            this.§@0§(this.§"E§);
            _loc3_ = this.§"E§.§9!Y§ + 1;
            this.§^G§.setVisibility(true);
            this.§1K§.setVisibility(true);
         }
         else
         {
            _loc3_ = 1;
            this.§^G§.setVisibility(false);
            this.§1K§.setVisibility(false);
            this.§<]§.x = this.§^G§.x;
         }
         this.§5!"§.setText(_loc3_.toString());
         if(_loc4_ > 0)
         {
            (AngryBirdsFP11.sUserProgress as §[<§).§%"2§(LevelManager.§'!O§,_loc3_);
         }
         var _loc5_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(this.§5"1§);
         this.§9I§.setVisibility(_loc3_ <= 3 && (_loc4_ > 0 || _loc5_ > 0));
         if(_loc3_ > 0 && _loc3_ <= 3 && (_loc4_ > 0 || _loc5_ > 0))
         {
            this.§9I§.§2!H§(["Gold","Silver","Bronze"][_loc3_ - 1]);
         }
         else
         {
            this.§9I§.§-Q§(1);
         }
         this.§8M§.setVisibility(true);
         this.§ !^§ = true;
      }
      
      public function run(param1:Number) : Boolean
      {
         if(this.§3s§.§6I§ || §#6§.§6!z§.objects.mSardineCanAdded || this.§1e§)
         {
            this.§8M§.setVisibility(false);
            return true;
         }
         if(!this.§ !^§)
         {
            this.initialize();
         }
         this.updateAnimations(param1);
         return this.§6!4§ == null;
      }
      
      public function updateCurrentScore(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(this.§,!F§ == param1)
         {
            return;
         }
         this.§,!F§ = param1;
         this.§throw§.setText(this.§[@§(this.§,!F§));
         if(!this.§"E§)
         {
            return;
         }
         if(this.§3s§.§6I§ || §#6§.§6!z§.objects.mSardineCanAdded || this.§1e§)
         {
            return;
         }
         while(this.§"E§ && this.§,!F§ > this.§"E§.§ "3§)
         {
            this.§&!D§.unshift(this.§"E§);
            if((_loc4_ = this.§3s§.data.indexOf(this.§"E§) - 1) >= 0)
            {
               this.§"E§ = this.§3s§.data[_loc4_];
            }
            else
            {
               this.§"E§ = null;
            }
         }
         while(this.§&!D§.length > 5)
         {
            this.§&!D§.pop();
         }
         if(this.§&!D§.length > 0 && !this.§6!4§)
         {
            this.§ 9§();
         }
      }
      
      private function §@0§(param1:§2!W§) : void
      {
         this.§'!@§.setVisibility(param1.§9!Y§ <= 3);
         if(param1.§9!Y§ > 0 && param1.§9!Y§ <= 3)
         {
            this.§'!@§.§2!H§(["Gold","Silver","Bronze"][param1.§9!Y§ - 1]);
         }
         this.§[!1§.setText(param1.§9!Y§.toString());
         this.§=g§.setText(this.§[@§(param1.§ "3§));
         this.§,!J§(param1);
      }
      
      private function updateAnimations(param1:Number) : void
      {
         var _loc2_:§7"-§ = null;
         for each(_loc2_ in [this.§1K§,this.§#!u§,this.§1K§])
         {
            this.§]!J§(_loc2_,param1,true);
         }
      }
      
      private function §,!J§(param1:§2!W§) : void
      {
         var _loc2_:String = §!H§.§,!6§(param1.userId);
         var _loc3_:String = param1.userId;
         this.§,!S§ = param1;
         this.§-"F§();
         this.§0!B§ = new §3"2§(_loc3_,"",false,§+!p§.NORMAL);
         this.§6!T§(this.§]=§,this.§0!B§);
         this.§0D§(param1.userName,this.§9!l§,this.§6w§.getItemByName("EnemyNameMask").mClip);
      }
      
      private function §0D§(param1:String, param2:§-"E§, param3:MovieClip) : String
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
      
      private function §6!T§(param1:§7"-§, param2:MovieClip) : void
      {
         while(param1.mClip.numChildren > 0)
         {
            param1.mClip.removeChildAt(0);
         }
         param1.mClip.addChild(param2);
      }
      
      private function §+">§() : void
      {
         var _loc1_:String = (AngryBirdsFP11.sUserProgress as §[<§).avatarString;
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §[<§).§4v§;
         this.§;""§();
         this.§@q§ = new §3"2§(_loc2_,"",false,§+!p§.NORMAL);
         this.§6!T§(this.§,8§,this.§@q§);
      }
      
      private function §+O§(param1:Event) : void
      {
         this.§+">§();
      }
      
      private function §-"F§() : void
      {
         if(this.§0!B§)
         {
            this.§0!B§.dispose();
            this.§0!B§ = null;
         }
      }
      
      private function §;""§() : void
      {
         if(this.§@q§)
         {
            this.§@q§.dispose();
            this.§@q§ = null;
         }
      }
      
      public function set §64§(param1:Boolean) : void
      {
         this.§1e§ = param1;
         this.§8M§.setVisibility(!this.§1e§);
      }
      
      private function § 9§() : void
      {
         this.§6!4§ = this.§&!D§.pop();
         this.§?P§ = §>!+§.§;"§.§^!K§(this.§<]§.mClip,{"x":this.§#'§ + 15},{"x":this.§#'§},0.5,§>!+§.§%%§);
         this.§?P§.onComplete = this.§,!q§;
         this.§?P§.play();
         §>!E§.§7N§("NextToBeat_Sound","ChannelPowerups");
      }
      
      private function §,!q§() : void
      {
         var _loc2_:int = 0;
         this.§?P§ = null;
         this.§#!u§.§2!H§("Start");
         this.§#!u§.§5%§ = true;
         this.§#!u§.setVisibility(true);
         var _loc1_:§2!W§ = this.§&!D§.length > 0 ? this.§&!D§[this.§&!D§.length - 1] : this.§"E§;
         if(this.§6!4§.§9!Y§ == 1 || _loc1_ == null)
         {
            this.§^G§.setVisibility(false);
            this.§?P§ = §>!+§.§;"§.§^!K§(this.§<]§.mClip,{"x":this.§^G§.mClip.x},null,0.5);
            this.§?P§.onComplete = this.§#$§;
            this.§?P§.play();
            this.§9I§.§2!H§("Gold");
            this.§5!"§.setText("1");
            this.§9I§.setVisibility(true);
         }
         else
         {
            this.§?P§ = §>!+§.§;"§.§^!K§(this.§<]§.mClip,{"x":this.§#'§},null,0.5);
            this.§?P§.onComplete = null;
            this.§?P§.play();
            this.§@0§(_loc1_);
            _loc2_ = _loc1_.§9!Y§ + 1;
            this.§9I§.setVisibility(_loc2_ <= 3);
            if(_loc2_ > 0 && _loc2_ <= 3)
            {
               this.§9I§.§2!H§(["Gold","Silver","Bronze"][_loc2_ - 1]);
            }
            this.§5!"§.setText(_loc2_.toString());
            this.§2U§ = §>!+§.§;"§.§^!K§(this.§^G§.mClip,{"y":this.§@K§},{"y":-150},2,§>!+§.§%%§);
            this.§2U§.onComplete = this.§`!,§;
            this.§2U§.play();
         }
      }
      
      private function §`!,§() : void
      {
         this.§2U§ = null;
         this.§6!4§ = null;
         if(this.§&!D§.length > 0)
         {
            this.§ 9§();
         }
      }
      
      private function §#$§() : void
      {
         this.§?P§ = null;
         this.§6!4§ = null;
      }
      
      private function §[@§(param1:int) : String
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
      
      private function §]!J§(param1:§7"-§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(param1.§5%§ == true)
         {
            if((_loc4_ = param1.§&!q§(param2)) == "End")
            {
               param1.§5%§ = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function §++§() : void
      {
         var _loc1_:§#"1§ = null;
         var _loc2_:§2!!§ = null;
         for each(_loc1_ in this.§3s§.data)
         {
            if(_loc1_ is §2!W§)
            {
               _loc2_ = new §2!!§(_loc1_.userId,"",false,§+!p§.NORMAL);
               _loc2_.dispose();
            }
         }
      }
   }
}
