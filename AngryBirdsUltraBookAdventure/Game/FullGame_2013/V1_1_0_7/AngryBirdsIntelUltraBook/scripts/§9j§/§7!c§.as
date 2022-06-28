package §9j§
{
   import §"!i§.LevelManager;
   import §,@§.§'!6§;
   import §,@§.§8@§;
   import §2y§.§54§;
   import §2y§.§7!p§;
   import §2y§.§^! §;
   import §4H§.§4!R§;
   import §4H§.§9?§;
   import §;!y§.§,!s§;
   import §>f§.§&!G§;
   import §@!&§.§7!>§;
   import §[!b§.§-!Q§;
   import §[;§.§#!6§;
   import §]F§.§^v§;
   import §]F§.§`!G§;
   import §^`§.§%j§;
   import §^`§.§,!K§;
   import §^`§.§14§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §7!c§
   {
       
      
      private var §'!Q§:§&!G§;
      
      private var §[!+§:§'!6§;
      
      private var §#n§:§^v§;
      
      private var §0!b§:§^v§;
      
      private var §@]§:Number;
      
      private var §7!A§:Number;
      
      private var §'7§:§,!K§;
      
      private var §8D§:§%j§;
      
      private var §@0§:Boolean = false;
      
      private var §<5§:Boolean;
      
      private var §!!O§:§9?§;
      
      private var §`!i§:int;
      
      private var §`e§:§9?§;
      
      private var §6!m§:int = -1;
      
      private var §;!b§:Array;
      
      private var §9!W§:String;
      
      private var §8!U§:§9?§;
      
      private var §'!=§:§^! §;
      
      private var §'b§:§^! §;
      
      private var §#"§:§7!>§;
      
      private var §"!C§:§7!p§;
      
      private var §`!&§:§7!p§;
      
      private var §"!a§:§7!p§;
      
      private var §9n§:§7!p§;
      
      private var §=8§:§7!p§;
      
      private var §=l§:§7!p§;
      
      private var §!`§:§54§;
      
      private var §2o§:§54§;
      
      private var §^!r§:§54§;
      
      private var §#P§:§54§;
      
      private var §^N§:§54§;
      
      private var §=^§:§54§;
      
      public function §7!c§(param1:§&!G§)
      {
         this.§;!b§ = [];
         super();
         this.§'!Q§ = param1;
         this.§3$§();
         this.§@]§ = this.§'b§.x;
         this.§7!A§ = this.§#"§.y;
      }
      
      private function §3$§() : void
      {
         this.§'b§ = this.§'!Q§.getItemByName("Container_VsHero") as §^! §;
         this.§#"§ = this.§'!Q§.getItemByName("Container_VsEnemy") as §^! §;
         this.§'!=§ = this.§'!Q§.getItemByName("Container_Vs") as §^! §;
         this.§"!C§ = this.§'!Q§.getItemByName("MovieClip_VsAnimation") as §7!p§;
         this.§`!&§ = this.§'!Q§.getItemByName("MovieClip_Boom") as §7!p§;
         this.§"!a§ = this.§'!Q§.getItemByName("MovieClip_VsProfilePicHero") as §7!p§;
         this.§9n§ = this.§'!Q§.getItemByName("MovieClip_VsProfilePicEnemy") as §7!p§;
         this.§=8§ = this.§'!Q§.getItemByName("MovieClip_CrownHero") as §7!p§;
         this.§=l§ = this.§'!Q§.getItemByName("MovieClip_CrownEnemy") as §7!p§;
         this.§!`§ = this.§'!Q§.getItemByName("TextField_VsScore") as §54§;
         this.§2o§ = this.§'!Q§.getItemByName("TextField_VsScoreEnemy") as §54§;
         this.§^!r§ = this.§'!Q§.getItemByName("TextField_NameHero") as §54§;
         this.§#P§ = this.§'!Q§.getItemByName("TextField_NameEnemy") as §54§;
         this.§^N§ = this.§'!Q§.getItemByName("TextField_VsPositionHero") as §54§;
         this.§=^§ = this.§'!Q§.getItemByName("TextField_VsPositionEnemy") as §54§;
      }
      
      public function activate() : void
      {
         if(this.§#n§)
         {
            this.§#n§.play();
         }
         if(this.§0!b§)
         {
            this.§0!b§.play();
         }
         var _loc1_:MovieClip = this.§'!Q§.getItemByName("PlayerNameMask").mClip;
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §#!6§).userName;
         this.§6!$§(_loc2_,this.§^!r§,_loc1_);
         if(this.§8!U§)
         {
            this.§6!$§(this.§8!U§.userName,this.§#P§,this.§'!Q§.getItemByName("EnemyNameMask").mClip);
         }
      }
      
      public function deActivate() : void
      {
         if(this.§#n§)
         {
            this.§#n§.pause();
            this.§#n§.§^!5§ = false;
         }
         if(this.§0!b§)
         {
            this.§0!b§.pause();
            this.§0!b§.§^!5§ = false;
         }
      }
      
      public function levelStarted(param1:§'!6§, param2:String) : void
      {
         this.§9!W§ = param2;
         this.§&S§();
         this.§7!z§();
         this.§#"§.setVisibility(true);
         this.§'!=§.setVisibility(false);
         this.§[!+§ = param1;
         this.§@0§ = false;
         this.§`e§ = null;
         this.§6!m§ = -1;
         this.§;!b§ = [];
         this.§"!C§.setVisibility(true);
         this.§"!C§.§>Z§("Start");
         this.§"!C§.§!!#§ = true;
         this.§`!i§ = -1;
         this.§'b§.x = this.§@]§;
         this.§#"§.y = this.§7!A§;
         this.§0!b§ = null;
         this.§#n§ = null;
         this.§[!A§();
      }
      
      private function initialize() : void
      {
         var _loc3_:int = 0;
         this.§@!9§();
         var _loc1_:MovieClip = this.§'!Q§.getItemByName("PlayerNameMask").mClip;
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §#!6§).userName;
         _loc2_ = this.§6!$§(_loc2_,this.§^!r§,_loc1_);
         this.§`e§ = null;
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(this.§9!W§);
         this.§!!O§ = this.§[!+§.§=!0§();
         if(this.§!!O§)
         {
            this.§7!e§(this.§!!O§);
            _loc3_ = this.§!!O§.§1<§ + 1;
            this.§#"§.setVisibility(true);
            this.§"!C§.setVisibility(true);
         }
         else
         {
            _loc3_ = 1;
            this.§#"§.setVisibility(false);
            this.§"!C§.setVisibility(false);
            this.§'b§.x = this.§#"§.x;
         }
         this.§^N§.setText(_loc3_.toString());
         if(_loc4_ > 0)
         {
            (AngryBirdsFP11.sUserProgress as §#!6§).§%N§(LevelManager.§"L§,_loc3_);
         }
         var _loc5_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(this.§9!W§);
         this.§=8§.setVisibility(_loc3_ <= 3 && (_loc4_ > 0 || _loc5_ > 0));
         if(_loc3_ > 0 && _loc3_ <= 3 && (_loc4_ > 0 || _loc5_ > 0))
         {
            this.§=8§.§>Z§(["Gold","Silver","Bronze"][_loc3_ - 1]);
         }
         else
         {
            this.§=8§.§=0§(1);
         }
         this.§'!=§.setVisibility(true);
         this.§@0§ = true;
      }
      
      public function run(param1:Number) : Boolean
      {
         if(this.§[!+§.§6;§ || §,!s§.§=!I§.objects.mSardineCanAdded || this.§<5§)
         {
            this.§'!=§.setVisibility(false);
            return true;
         }
         if(!this.§@0§)
         {
            this.initialize();
         }
         this.updateAnimations(param1);
         return this.§`e§ == null;
      }
      
      public function updateCurrentScore(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(this.§`!i§ == param1)
         {
            return;
         }
         this.§`!i§ = param1;
         this.§!`§.setText(this.§4!1§(this.§`!i§));
         if(!this.§!!O§)
         {
            return;
         }
         if(this.§[!+§.§6;§ || §,!s§.§=!I§.objects.mSardineCanAdded || this.§<5§)
         {
            return;
         }
         while(this.§!!O§ && this.§`!i§ > this.§!!O§.§;!u§)
         {
            this.§;!b§.unshift(this.§!!O§);
            if((_loc4_ = this.§[!+§.data.indexOf(this.§!!O§) - 1) >= 0)
            {
               this.§!!O§ = this.§[!+§.data[_loc4_];
            }
            else
            {
               this.§!!O§ = null;
            }
         }
         while(this.§;!b§.length > 5)
         {
            this.§;!b§.pop();
         }
         if(this.§;!b§.length > 0 && !this.§`e§)
         {
            this.§ p§();
         }
      }
      
      private function §7!e§(param1:§9?§) : void
      {
         this.§=l§.setVisibility(param1.§1<§ <= 3);
         if(param1.§1<§ > 0 && param1.§1<§ <= 3)
         {
            this.§=l§.§>Z§(["Gold","Silver","Bronze"][param1.§1<§ - 1]);
         }
         this.§=^§.setText(param1.§1<§.toString());
         this.§2o§.setText(this.§4!1§(param1.§;!u§));
         this.§3!X§(param1);
      }
      
      private function updateAnimations(param1:Number) : void
      {
         var _loc2_:§7!p§ = null;
         for each(_loc2_ in [this.§"!C§,this.§`!&§,this.§"!C§])
         {
            this.§"y§(_loc2_,param1,true);
         }
      }
      
      private function §3!X§(param1:§9?§) : void
      {
         var _loc2_:String = §8@§.§<!u§(param1.userId);
         var _loc3_:String = param1.userId;
         this.§8!U§ = param1;
         this.§&S§();
         this.§'7§ = new §%j§(_loc3_,"",false,§14§.NORMAL);
         this.§ !E§(this.§9n§,this.§'7§);
         this.§6!$§(param1.userName,this.§#P§,this.§'!Q§.getItemByName("EnemyNameMask").mClip);
      }
      
      private function §6!$§(param1:String, param2:§54§, param3:MovieClip) : String
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
      
      private function § !E§(param1:§7!p§, param2:MovieClip) : void
      {
         while(param1.mClip.numChildren > 0)
         {
            param1.mClip.removeChildAt(0);
         }
         param1.mClip.addChild(param2);
      }
      
      private function §[!A§() : void
      {
         var _loc1_:String = (AngryBirdsFP11.sUserProgress as §#!6§).avatarString;
         var _loc2_:String = (AngryBirdsFP11.sUserProgress as §#!6§).§ z§;
         this.§7!z§();
         this.§8D§ = new §%j§(_loc2_,"",false,§14§.NORMAL);
         this.§ !E§(this.§"!a§,this.§8D§);
      }
      
      private function § !p§(param1:Event) : void
      {
         this.§[!A§();
      }
      
      private function §&S§() : void
      {
         if(this.§'7§)
         {
            this.§'7§.dispose();
            this.§'7§ = null;
         }
      }
      
      private function §7!z§() : void
      {
         if(this.§8D§)
         {
            this.§8D§.dispose();
            this.§8D§ = null;
         }
      }
      
      public function set §9"§(param1:Boolean) : void
      {
         this.§<5§ = param1;
         this.§'!=§.setVisibility(!this.§<5§);
      }
      
      private function § p§() : void
      {
         this.§`e§ = this.§;!b§.pop();
         this.§0!b§ = §`!G§.§[U§.§-]§(this.§'b§.mClip,{"x":this.§@]§ + 15},{"x":this.§@]§},0.5,§`!G§.§<W§);
         this.§0!b§.onComplete = this.§"!Q§;
         this.§0!b§.play();
         §-!Q§.§#3§("NextToBeat_Sound","ChannelPowerups");
      }
      
      private function §"!Q§() : void
      {
         var _loc2_:int = 0;
         this.§0!b§ = null;
         this.§`!&§.§>Z§("Start");
         this.§`!&§.§!!#§ = true;
         this.§`!&§.setVisibility(true);
         var _loc1_:§9?§ = this.§;!b§.length > 0 ? this.§;!b§[this.§;!b§.length - 1] : this.§!!O§;
         if(this.§`e§.§1<§ == 1 || _loc1_ == null)
         {
            this.§#"§.setVisibility(false);
            this.§0!b§ = §`!G§.§[U§.§-]§(this.§'b§.mClip,{"x":this.§#"§.mClip.x},null,0.5);
            this.§0!b§.onComplete = this.§`!§;
            this.§0!b§.play();
            this.§=8§.§>Z§("Gold");
            this.§^N§.setText("1");
            this.§=8§.setVisibility(true);
         }
         else
         {
            this.§0!b§ = §`!G§.§[U§.§-]§(this.§'b§.mClip,{"x":this.§@]§},null,0.5);
            this.§0!b§.onComplete = null;
            this.§0!b§.play();
            this.§7!e§(_loc1_);
            _loc2_ = _loc1_.§1<§ + 1;
            this.§=8§.setVisibility(_loc2_ <= 3);
            if(_loc2_ > 0 && _loc2_ <= 3)
            {
               this.§=8§.§>Z§(["Gold","Silver","Bronze"][_loc2_ - 1]);
            }
            this.§^N§.setText(_loc2_.toString());
            this.§#n§ = §`!G§.§[U§.§-]§(this.§#"§.mClip,{"y":this.§7!A§},{"y":-150},2,§`!G§.§<W§);
            this.§#n§.onComplete = this.§ 2§;
            this.§#n§.play();
         }
      }
      
      private function § 2§() : void
      {
         this.§#n§ = null;
         this.§`e§ = null;
         if(this.§;!b§.length > 0)
         {
            this.§ p§();
         }
      }
      
      private function §`!§() : void
      {
         this.§0!b§ = null;
         this.§`e§ = null;
      }
      
      private function §4!1§(param1:int) : String
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
      
      private function §"y§(param1:§7!p§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(param1.§!!#§ == true)
         {
            if((_loc4_ = param1.§@$§(param2)) == "End")
            {
               param1.§!!#§ = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function §@!9§() : void
      {
         var _loc1_:§4!R§ = null;
         var _loc2_:§,!K§ = null;
         for each(_loc1_ in this.§[!+§.data)
         {
            if(_loc1_ is §9?§)
            {
               _loc2_ = new §,!K§(_loc1_.userId,"",false,§14§.NORMAL);
               _loc2_.dispose();
            }
         }
      }
   }
}
