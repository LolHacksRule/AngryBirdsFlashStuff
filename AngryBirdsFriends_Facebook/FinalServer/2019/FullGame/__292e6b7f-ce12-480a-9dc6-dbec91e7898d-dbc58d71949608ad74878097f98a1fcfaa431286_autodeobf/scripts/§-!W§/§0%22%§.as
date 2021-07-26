package §-!W§
{
   import § "L§.§"!A§;
   import § "L§.§23§;
   import § "L§.§7`§;
   import §!L§.§`#u§;
   import §'n§.§+"g§;
   import §,#,§.§0!u§;
   import §,#,§.§3!R§;
   import §,#,§.§[!V§;
   import §,#,§.§^#<§;
   import §2!Y§.§"$=§;
   import §2!Y§.§4!h§;
   import §2G§.§##W§;
   import §2G§.§+#]§;
   import §2G§.§?!s§;
   import §2G§.§?$3§;
   import §3"V§.§ b§;
   import §;"5§.§6"W§;
   import §;"5§.§@$-§;
   import §?#z§.§]$?§;
   import §]#'§.§4"s§;
   import §^"3§.§^"C§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §0"%§
   {
      
      private static var §1"T§:int = 3;
       
      
      private var §;!w§:§23§;
      
      private var §"!&§:§4!h§;
      
      private var §2!6§:§@$-§;
      
      private var §'"a§:§@$-§;
      
      private var §9z§:§?$3§;
      
      private var §8_§:§?$3§;
      
      private var §?#;§:Boolean = false;
      
      private var §6!H§:Boolean;
      
      private var §,!5§:Boolean;
      
      private var §-!k§:§[!V§;
      
      private var §1!F§:int;
      
      private var §8!p§:§[!V§;
      
      private var §>#f§:int = -1;
      
      private var §8#+§:Array;
      
      private var §8";§:String;
      
      private var §`n§:§[!V§;
      
      private var §#"`§:§3!R§;
      
      protected var §%'§:§23§;
      
      protected var §'"&§:§23§;
      
      protected var §`#+§:§^"C§;
      
      protected var §4#^§:§"!A§;
      
      protected var §4!p§:§"!A§;
      
      protected var §1#3§:§"!A§;
      
      protected var §2";§:§"!A§;
      
      protected var §7f§:§"!A§;
      
      protected var §2"O§:§"!A§;
      
      protected var §`f§:§7`§;
      
      protected var §4#J§:§7`§;
      
      protected var §0!$§:§7`§;
      
      protected var §3#l§:§7`§;
      
      protected var §8#m§:§7`§;
      
      protected var §+"D§:§7`§;
      
      protected var §"$§:Array;
      
      private const §>"5§:int = -158;
      
      private const §^"f§:int = -41;
      
      private var §=#k§:Boolean = false;
      
      public function §0"%§(param1:§23§)
      {
         this.§8#+§ = [];
         this.§"$§ = [];
         super();
         this.§;!w§ = param1;
         this.§;#V§();
      }
      
      protected static function get userProgress() : §`#u§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §`#u§;
      }
      
      private function §;#V§() : void
      {
         this.§'"&§ = this.§;!w§.getItemByName("Container_VsHero") as §23§;
         this.§`#+§ = this.§;!w§.getItemByName("Container_VsEnemy") as §23§;
         this.§%'§ = this.§;!w§.getItemByName("Container_Vs") as §23§;
         this.§4#^§ = this.§;!w§.getItemByName("MovieClip_VsAnimation") as §"!A§;
         this.§4!p§ = this.§;!w§.getItemByName("MovieClip_Boom") as §"!A§;
         this.§1#3§ = this.§;!w§.getItemByName("MovieClip_VsProfilePicHero") as §"!A§;
         this.§2";§ = this.§;!w§.getItemByName("MovieClip_VsProfilePicEnemy") as §"!A§;
         this.§7f§ = this.§;!w§.getItemByName("MovieClip_CrownHero") as §"!A§;
         this.§2"O§ = this.§;!w§.getItemByName("MovieClip_CrownEnemy") as §"!A§;
         this.§`f§ = this.§;!w§.getItemByName("TextField_VsScore") as §7`§;
         this.§4#J§ = this.§;!w§.getItemByName("TextField_VsScoreEnemy") as §7`§;
         this.§0!$§ = this.§;!w§.getItemByName("TextField_NameHero") as §7`§;
         this.§3#l§ = this.§;!w§.getItemByName("TextField_NameEnemy") as §7`§;
         this.§8#m§ = this.§;!w§.getItemByName("TextField_VsPositionHero") as §7`§;
         this.§+"D§ = this.§;!w§.getItemByName("TextField_VsPositionEnemy") as §7`§;
         this.§"$§ = [this.§4#^§,this.§4!p§,this.§4#^§];
      }
      
      public function activate() : void
      {
         if(this.§2!6§)
         {
            this.§2!6§.play();
         }
         if(this.§'"a§)
         {
            this.§'"a§.play();
         }
         this.§1"D§();
         if(this.§`n§)
         {
            this.§[#-§(this.§`n§.userName,this.§3#l§,this.§;!w§.getItemByName("EnemyNameMask").mClip);
         }
      }
      
      public function deActivate() : void
      {
         if(this.§2!6§)
         {
            this.§2!6§.pause();
            this.§2!6§.§5z§ = false;
         }
         if(this.§'"a§)
         {
            this.§'"a§.pause();
            this.§'"a§.§5z§ = false;
         }
      }
      
      public function levelStarted(param1:§4!h§, param2:String, param3:Boolean = false) : void
      {
         this.§8";§ = param2;
         this.§#A§();
         this.§%y§();
         this.§`#+§.setVisibility(true);
         this.§%'§.setVisibility(false);
         this.§"!&§ = param1;
         this.§?#;§ = false;
         this.§8!p§ = null;
         this.§>#f§ = -1;
         this.§8#+§ = [];
         this.§4#^§.setVisibility(true);
         this.§4#^§.§&";§("Start");
         this.§4#^§.isPlaying = true;
         if(!this.§6!H§)
         {
            this.§1!F§ = -1;
         }
         this.§'"&§.x = this.§>"5§;
         this.§`#+§.y = this.§^"f§;
         if(this.§'"a§)
         {
            this.§'"a§.stop();
            this.§'"a§ = null;
         }
         if(this.§2!6§)
         {
            this.§2!6§.stop();
            this.§2!6§ = null;
         }
         this.§`#+§.mClip.VersusComponent_Background.gotoAndStop((§]$?§.§;u§ as §@z§).§8!;§.§="m§());
         this.§'"&§.mClip.VersusComponent_Background.gotoAndStop((§]$?§.§;u§ as §@z§).§8!;§.§="m§());
         this.§=#k§ = param3;
         §4"s§.§+!,§.removeEventListener(§+"g§.§[$8§,this.§@!;§);
         this.§ !U§();
      }
      
      private function initialize() : void
      {
         var _loc1_:int = 0;
         var _loc4_:int = 0;
         this.§["2§();
         this.§1"D§();
         if(this.§'"a§)
         {
            this.§'"a§.stop();
            this.§'"a§ = null;
         }
         if(this.§2!6§)
         {
            this.§2!6§.stop();
            this.§2!6§ = null;
         }
         this.§'"&§.x = this.§>"5§;
         this.§8!p§ = null;
         var _loc2_:int = !!this.§6!H§ ? int(this.§1!F§) : int(userProgress.getScoreForLevel(this.§8";§));
         _loc2_ = userProgress.getScoreForLevel(this.§8";§);
         this.§-!k§ = this.§"!&§.§1#'§();
         if(this.§6!H§)
         {
            while(this.§-!k§ && this.§1!F§ > this.§-!k§.§0#y§)
            {
               if((_loc4_ = this.§"!&§.data.indexOf(this.§-!k§) - 1) >= 0)
               {
                  this.§-!k§ = this.§"!&§.data[_loc4_];
               }
               else
               {
                  this.§-!k§ = null;
               }
            }
         }
         if(this.§-!k§)
         {
            this.§0`§(this.§-!k§);
            _loc1_ = this.§-!k§.rank + 1;
            this.§`#+§.setVisibility(true);
            this.§4#^§.setVisibility(true);
         }
         else
         {
            _loc1_ = 1;
            this.§`#+§.setVisibility(false);
            this.§4#^§.setVisibility(false);
            this.§'"&§.x = this.§`#+§.x;
         }
         this.§8#m§.setText(_loc1_.toString());
         if(_loc2_ > 0)
         {
            userProgress.§=l§(this.§8";§,_loc1_);
         }
         var _loc3_:int = userProgress.getEagleScoreForLevel(this.§8";§);
         this.§7f§.setVisibility(_loc1_ <= 3 && (_loc2_ > 0 || _loc3_ > 0) && !this.§=#k§);
         if(_loc1_ > 0 && _loc1_ <= 3 && (_loc2_ > 0 || _loc3_ > 0))
         {
            this.§7f§.§&";§(["Gold","Silver","Bronze"][_loc1_ - 1]);
         }
         else
         {
            this.§7f§.§+" §(1);
         }
         this.§%'§.setVisibility(true);
         §4"s§.§+!,§.addEventListener(§+"g§.§[$8§,this.§@!;§);
         this.§?#;§ = true;
      }
      
      public function run(param1:Number) : Boolean
      {
         if(this.§"!&§.§9$$§ || this.§,!5§)
         {
            this.§%'§.setVisibility(false);
            return true;
         }
         if(!this.§?#;§)
         {
            this.initialize();
            if(!this.§6!H§)
            {
               this.§6!H§ = true;
            }
         }
         this.updateAnimations(param1);
         return this.§8!p§ == null;
      }
      
      public function §@!E§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(this.§1!F§ == param1)
         {
            return;
         }
         this.§1!F§ = param1;
         this.§`f§.setText(this.§[w§(this.§1!F§));
         if(!this.§-!k§)
         {
            return;
         }
         if(this.§"!&§.§9$$§ || this.§,!5§)
         {
            return;
         }
         while(this.§-!k§ && this.§1!F§ > this.§-!k§.§0#y§)
         {
            this.§8#+§.unshift(this.§-!k§);
            if((_loc4_ = this.§"!&§.data.indexOf(this.§-!k§) - 1) >= 0)
            {
               this.§-!k§ = this.§"!&§.data[_loc4_];
            }
            else
            {
               this.§-!k§ = null;
            }
         }
         while(this.§8#+§.length > §1"T§)
         {
            this.§8#+§.pop();
         }
         if(this.§8#+§.length > 0 && !this.§8!p§)
         {
            this.§!!z§();
         }
      }
      
      private function §0`§(param1:§[!V§) : void
      {
         this.§2"O§.setVisibility(param1.rank <= 3 && !this.§=#k§);
         if(param1.rank > 0 && param1.rank <= 3)
         {
            this.§2"O§.§&";§(["Gold","Silver","Bronze"][param1.rank - 1]);
         }
         this.§+"D§.setText(param1.rank.toString());
         this.§4#J§.setText(this.§[w§(param1.§0#y§));
         this.§0"x§(param1);
      }
      
      private function updateAnimations(param1:Number) : void
      {
         var _loc2_:§"!A§ = null;
         for each(_loc2_ in this.§"$§)
         {
            this.§-3§(_loc2_,param1,true);
         }
      }
      
      private function §0"x§(param1:§[!V§) : void
      {
         var _loc2_:String = §"$=§.§ $8§(param1.userId);
         var _loc3_:String = param1.userId;
         this.§`n§ = param1;
         this.§#A§();
         if(param1 is §^#<§ ? (param1 as §^#<§).profilePicture : null)
         {
            this.§9z§ = new §##W§(param1.userId,null,_loc2_,false,§?!s§.NORMAL,§?!s§.§<"-§);
         }
         else
         {
            this.§9z§ = new §+#]§(_loc3_,"",false,§?!s§.NORMAL,false,(param1 as §0!u§).profileImageURL);
         }
         this.§=6§(this.§2";§,this.§9z§);
         this.§[#-§(param1.userName,this.§3#l§,this.§;!w§.getItemByName("EnemyNameMask").mClip);
      }
      
      private function §[#-§(param1:String, param2:§7`§, param3:MovieClip) : String
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
      
      private function §=6§(param1:§"!A§, param2:MovieClip) : void
      {
         while(param1.mClip.numChildren > 0)
         {
            param1.mClip.removeChildAt(0);
         }
         param1.mClip.addChild(param2);
      }
      
      private function § !U§() : void
      {
         var _loc4_:Object = null;
         var _loc1_:String = userProgress.avatarString;
         var _loc2_:String = userProgress.userID;
         if(this.§=#k§)
         {
            this.§#"`§ = this.§"!&§.data[this.§"!&§.§0"@§] as §3!R§;
            if(!this.§#"`§)
            {
               _loc4_ = §4"s§.§+!,§.§+S§();
               _loc4_.ir = _loc4_.i;
               _loc4_.uid = _loc2_;
               if(_loc4_.ir)
               {
                  this.§#"`§ = §3!R§.§"!U§(_loc4_);
               }
            }
         }
         this.§%y§();
         var _loc3_:String = this.§#"`§ is §3!R§ ? (this.§#"`§ as §3!R§).profilePicture : null;
         if(_loc3_ && this.§=#k§)
         {
            this.§8_§ = new §##W§(_loc2_,_loc3_,"",false,§?!s§.NORMAL,§?!s§.§<"-§);
         }
         else
         {
            this.§8_§ = new §+#]§(_loc2_,"",false,§?!s§.NORMAL);
         }
         this.§=6§(this.§1#3§,this.§8_§);
      }
      
      private function §#A§() : void
      {
         if(this.§9z§)
         {
            this.§9z§.dispose();
            this.§9z§ = null;
         }
      }
      
      private function §%y§() : void
      {
         if(this.§8_§)
         {
            this.§8_§.dispose();
            this.§8_§ = null;
         }
      }
      
      public function set §1$>§(param1:Boolean) : void
      {
         this.§,!5§ = param1;
         this.§%'§.setVisibility(!this.§,!5§);
      }
      
      private function §!!z§() : void
      {
         this.§8!p§ = this.§8#+§.pop();
         this.§'"a§ = §6"W§.§+!,§.§9!n§(this.§'"&§.mClip,{"x":this.§>"5§ + 15},{"x":this.§>"5§},0.5,§6"W§.§>#B§);
         this.§'"a§.onComplete = this.§-$<§;
         this.§'"a§.play();
         § b§.playSound("ui_ingame_scorebox_gain_position","ChannelPowerups");
      }
      
      private function §-$<§() : void
      {
         var _loc2_:int = 0;
         if(!this.§8!p§)
         {
            return;
         }
         this.§'"a§ = null;
         this.§4!p§.§&";§("Start");
         this.§4!p§.isPlaying = true;
         this.§4!p§.setVisibility(true);
         var _loc1_:§[!V§ = this.§8#+§.length > 0 ? this.§8#+§[this.§8#+§.length - 1] : this.§-!k§;
         if(this.§8!p§.rank == 1 || _loc1_ == null)
         {
            this.§`#+§.setVisibility(false);
            this.§'"a§ = §6"W§.§+!,§.§9!n§(this.§'"&§.mClip,{"x":this.§`#+§.mClip.x},null,0.5);
            this.§'"a§.onComplete = this.§?@§;
            this.§'"a§.play();
            this.§7f§.§&";§("Gold");
            this.§8#m§.setText("1");
            this.§7f§.setVisibility(!this.§=#k§);
         }
         else
         {
            this.§'"a§ = §6"W§.§+!,§.§9!n§(this.§'"&§.mClip,{"x":this.§>"5§},{"x":this.§>"5§ + 15},0.5);
            this.§'"a§.onComplete = null;
            this.§'"a§.play();
            this.§0`§(_loc1_);
            _loc2_ = _loc1_.rank + 1;
            this.§7f§.setVisibility(_loc2_ <= 3 && !this.§=#k§);
            if(_loc2_ > 0 && _loc2_ <= 3)
            {
               this.§7f§.§&";§(["Gold","Silver","Bronze"][_loc2_ - 1]);
            }
            this.§8#m§.setText(_loc2_.toString());
            this.§2!6§ = §6"W§.§+!,§.§9!n§(this.§`#+§.mClip,{"y":this.§^"f§},{"y":-150},2,§6"W§.§>#B§);
            this.§2!6§.onComplete = this.§`J§;
            this.§2!6§.play();
         }
      }
      
      private function §`J§() : void
      {
         this.§2!6§ = null;
         this.§8!p§ = null;
         if(this.§8#+§.length > 0)
         {
            this.§!!z§();
         }
      }
      
      private function §?@§() : void
      {
         this.§'"a§ = null;
         this.§8!p§ = null;
      }
      
      private function §[w§(param1:int) : String
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
      
      private function §-3§(param1:§"!A§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(param1.isPlaying)
         {
            if((_loc4_ = param1.§ $§(param2)) == "End")
            {
               param1.isPlaying = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function §["2§() : void
      {
         var _loc1_:§0!u§ = null;
         var _loc2_:§?$3§ = null;
         for each(_loc1_ in this.§"!&§.data)
         {
            if(_loc1_ is §[!V§)
            {
               _loc2_ = new §?$3§(_loc1_.userId,"",false,§?!s§.NORMAL,_loc1_.profileImageURL);
               _loc2_.dispose();
            }
         }
      }
      
      private function §1"D§() : void
      {
         var _loc1_:MovieClip = this.§;!w§.getItemByName("PlayerNameMask").mClip;
         var _loc2_:String = userProgress.userName;
         if(this.§=#k§)
         {
            _loc2_ = !!§4"s§.§+!,§.§+S§().ni ? §4"s§.§+!,§.§+S§().ni : _loc2_;
         }
         _loc2_ = this.§[#-§(_loc2_,this.§0!$§,_loc1_);
      }
      
      protected function §@!;§(param1:Event) : void
      {
         this.§ !U§();
         this.§1"D§();
      }
   }
}
