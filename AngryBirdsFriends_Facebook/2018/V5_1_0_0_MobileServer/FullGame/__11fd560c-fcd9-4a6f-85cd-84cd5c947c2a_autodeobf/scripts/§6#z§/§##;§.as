package §6#z§
{
   import §!#"§.§&"H§;
   import §!#"§.§4[§;
   import §"!!§.§+"0§;
   import §"!!§.§1§;
   import §"$!§.§7#U§;
   import §%#w§.§2#s§;
   import §+$?§.§#"n§;
   import §+$?§.§4!+§;
   import §+$?§.§<"`§;
   import §+$?§.§=#>§;
   import §-!S§.§##>§;
   import §2G§.§4O§;
   import §2G§.§9!m§;
   import §2G§.§;!Y§;
   import §2G§.§@#P§;
   import §3#T§.§@"!§;
   import §;#D§.§3#U§;
   import §<h§.§%M§;
   import §<h§.§@N§;
   import §<h§.§[#K§;
   import §@!M§.§!"p§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §##;§
   {
      
      private static var §@"P§:int = 3;
       
      
      private var §`!H§:§[#K§;
      
      private var §!;§:§+"0§;
      
      private var §=#H§:§4[§;
      
      private var §^"4§:§4[§;
      
      private var §<$9§:§=#>§;
      
      private var §4!h§:§=#>§;
      
      private var §0"Z§:Boolean = false;
      
      private var §]!8§:Boolean;
      
      private var § ##§:Boolean;
      
      private var §?_§:§@#P§;
      
      private var §4##§:int;
      
      private var §#"'§:§@#P§;
      
      private var §@'§:int = -1;
      
      private var §%#J§:Array;
      
      private var §3"=§:String;
      
      private var §^$5§:§@#P§;
      
      private var §%"0§:§9!m§;
      
      protected var §["5§:§[#K§;
      
      protected var §=!l§:§[#K§;
      
      protected var §-!5§:§@"!§;
      
      protected var § #v§:§@N§;
      
      protected var §,r§:§@N§;
      
      protected var §=!=§:§@N§;
      
      protected var §]!>§:§@N§;
      
      protected var §^!"§:§@N§;
      
      protected var §%q§:§@N§;
      
      protected var § #<§:§%M§;
      
      protected var §6!D§:§%M§;
      
      protected var §"!d§:§%M§;
      
      protected var §[!q§:§%M§;
      
      protected var §9!8§:§%M§;
      
      protected var §?!Q§:§%M§;
      
      protected var §6#l§:Array;
      
      private const §^#7§:int = -158;
      
      private const §4!W§:int = -41;
      
      private var §2!,§:Boolean = false;
      
      public function §##;§(param1:§[#K§)
      {
         this.§%#J§ = [];
         this.§6#l§ = [];
         super();
         this.§`!H§ = param1;
         this.§6d§();
      }
      
      protected static function get userProgress() : §##>§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §##>§;
      }
      
      private function §6d§() : void
      {
         this.§=!l§ = this.§`!H§.getItemByName("Container_VsHero") as §[#K§;
         this.§-!5§ = this.§`!H§.getItemByName("Container_VsEnemy") as §[#K§;
         this.§["5§ = this.§`!H§.getItemByName("Container_Vs") as §[#K§;
         this.§ #v§ = this.§`!H§.getItemByName("MovieClip_VsAnimation") as §@N§;
         this.§,r§ = this.§`!H§.getItemByName("MovieClip_Boom") as §@N§;
         this.§=!=§ = this.§`!H§.getItemByName("MovieClip_VsProfilePicHero") as §@N§;
         this.§]!>§ = this.§`!H§.getItemByName("MovieClip_VsProfilePicEnemy") as §@N§;
         this.§^!"§ = this.§`!H§.getItemByName("MovieClip_CrownHero") as §@N§;
         this.§%q§ = this.§`!H§.getItemByName("MovieClip_CrownEnemy") as §@N§;
         this.§ #<§ = this.§`!H§.getItemByName("TextField_VsScore") as §%M§;
         this.§6!D§ = this.§`!H§.getItemByName("TextField_VsScoreEnemy") as §%M§;
         this.§"!d§ = this.§`!H§.getItemByName("TextField_NameHero") as §%M§;
         this.§[!q§ = this.§`!H§.getItemByName("TextField_NameEnemy") as §%M§;
         this.§9!8§ = this.§`!H§.getItemByName("TextField_VsPositionHero") as §%M§;
         this.§?!Q§ = this.§`!H§.getItemByName("TextField_VsPositionEnemy") as §%M§;
         this.§6#l§ = [this.§ #v§,this.§,r§,this.§ #v§];
      }
      
      public function activate() : void
      {
         if(this.§=#H§)
         {
            this.§=#H§.play();
         }
         if(this.§^"4§)
         {
            this.§^"4§.play();
         }
         this.§3"[§();
         if(this.§^$5§)
         {
            this.§-#j§(this.§^$5§.userName,this.§[!q§,this.§`!H§.getItemByName("EnemyNameMask").mClip);
         }
      }
      
      public function deActivate() : void
      {
         if(this.§=#H§)
         {
            this.§=#H§.pause();
            this.§=#H§.§0! § = false;
         }
         if(this.§^"4§)
         {
            this.§^"4§.pause();
            this.§^"4§.§0! § = false;
         }
      }
      
      public function levelStarted(param1:§+"0§, param2:String, param3:Boolean = false) : void
      {
         this.§3"=§ = param2;
         this.§-"7§();
         this.§!!H§();
         this.§-!5§.setVisibility(true);
         this.§["5§.setVisibility(false);
         this.§!;§ = param1;
         this.§0"Z§ = false;
         this.§#"'§ = null;
         this.§@'§ = -1;
         this.§%#J§ = [];
         this.§ #v§.setVisibility(true);
         this.§ #v§.§4#y§("Start");
         this.§ #v§.isPlaying = true;
         if(!this.§]!8§)
         {
            this.§4##§ = -1;
         }
         this.§=!l§.x = this.§^#7§;
         this.§-!5§.y = this.§4!W§;
         if(this.§^"4§)
         {
            this.§^"4§.stop();
            this.§^"4§ = null;
         }
         if(this.§=#H§)
         {
            this.§=#H§.stop();
            this.§=#H§ = null;
         }
         this.§-!5§.mClip.VersusComponent_Background.gotoAndStop((§3#U§.§9#^§ as §,A§).§9"x§.§]#m§());
         this.§=!l§.mClip.VersusComponent_Background.gotoAndStop((§3#U§.§9#^§ as §,A§).§9"x§.§]#m§());
         this.§2!,§ = param3;
         §2#s§.§6!§.removeEventListener(§7#U§.§5$+§,this.§&"5§);
         this.§ "#§();
      }
      
      private function initialize() : void
      {
         var _loc1_:int = 0;
         var _loc4_:int = 0;
         this.§4#c§();
         this.§3"[§();
         if(this.§^"4§)
         {
            this.§^"4§.stop();
            this.§^"4§ = null;
         }
         if(this.§=#H§)
         {
            this.§=#H§.stop();
            this.§=#H§ = null;
         }
         this.§=!l§.x = this.§^#7§;
         this.§#"'§ = null;
         var _loc2_:int = !!this.§]!8§ ? int(this.§4##§) : int(userProgress.getScoreForLevel(this.§3"=§));
         _loc2_ = userProgress.getScoreForLevel(this.§3"=§);
         this.§?_§ = this.§!;§.§2!d§();
         if(this.§]!8§)
         {
            while(this.§?_§ && this.§4##§ > this.§?_§.§'!_§)
            {
               if((_loc4_ = this.§!;§.data.indexOf(this.§?_§) - 1) >= 0)
               {
                  this.§?_§ = this.§!;§.data[_loc4_];
               }
               else
               {
                  this.§?_§ = null;
               }
            }
         }
         if(this.§?_§)
         {
            this.§<!&§(this.§?_§);
            _loc1_ = this.§?_§.rank + 1;
            this.§-!5§.setVisibility(true);
            this.§ #v§.setVisibility(true);
         }
         else
         {
            _loc1_ = 1;
            this.§-!5§.setVisibility(false);
            this.§ #v§.setVisibility(false);
            this.§=!l§.x = this.§-!5§.x;
         }
         this.§9!8§.setText(_loc1_.toString());
         if(_loc2_ > 0)
         {
            userProgress.§>#+§(this.§3"=§,_loc1_);
         }
         var _loc3_:int = userProgress.getEagleScoreForLevel(this.§3"=§);
         this.§^!"§.setVisibility(_loc1_ <= 3 && (_loc2_ > 0 || _loc3_ > 0) && !this.§2!,§);
         if(_loc1_ > 0 && _loc1_ <= 3 && (_loc2_ > 0 || _loc3_ > 0))
         {
            this.§^!"§.§4#y§(["Gold","Silver","Bronze"][_loc1_ - 1]);
         }
         else
         {
            this.§^!"§.§@!X§(1);
         }
         this.§["5§.setVisibility(true);
         §2#s§.§6!§.addEventListener(§7#U§.§5$+§,this.§&"5§);
         this.§0"Z§ = true;
      }
      
      public function run(param1:Number) : Boolean
      {
         if(this.§!;§.§8R§ || this.§ ##§)
         {
            this.§["5§.setVisibility(false);
            return true;
         }
         if(!this.§0"Z§)
         {
            this.initialize();
            if(!this.§]!8§)
            {
               this.§]!8§ = true;
            }
         }
         this.updateAnimations(param1);
         return this.§#"'§ == null;
      }
      
      public function §9[§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(this.§4##§ == param1)
         {
            return;
         }
         this.§4##§ = param1;
         this.§ #<§.setText(this.§+#'§(this.§4##§));
         if(!this.§?_§)
         {
            return;
         }
         if(this.§!;§.§8R§ || this.§ ##§)
         {
            return;
         }
         while(this.§?_§ && this.§4##§ > this.§?_§.§'!_§)
         {
            this.§%#J§.unshift(this.§?_§);
            if((_loc4_ = this.§!;§.data.indexOf(this.§?_§) - 1) >= 0)
            {
               this.§?_§ = this.§!;§.data[_loc4_];
            }
            else
            {
               this.§?_§ = null;
            }
         }
         while(this.§%#J§.length > §@"P§)
         {
            this.§%#J§.pop();
         }
         if(this.§%#J§.length > 0 && !this.§#"'§)
         {
            this.§`"_§();
         }
      }
      
      private function §<!&§(param1:§@#P§) : void
      {
         this.§%q§.setVisibility(param1.rank <= 3 && !this.§2!,§);
         if(param1.rank > 0 && param1.rank <= 3)
         {
            this.§%q§.§4#y§(["Gold","Silver","Bronze"][param1.rank - 1]);
         }
         this.§?!Q§.setText(param1.rank.toString());
         this.§6!D§.setText(this.§+#'§(param1.§'!_§));
         this.§3#'§(param1);
      }
      
      private function updateAnimations(param1:Number) : void
      {
         var _loc2_:§@N§ = null;
         for each(_loc2_ in this.§6#l§)
         {
            this.§<k§(_loc2_,param1,true);
         }
      }
      
      private function §3#'§(param1:§@#P§) : void
      {
         var _loc2_:String = §1#0§.§^y§(param1.userId);
         var _loc3_:String = param1.userId;
         this.§^$5§ = param1;
         this.§-"7§();
         if(param1 is §;!Y§ ? (param1 as §;!Y§).profilePicture : null)
         {
            this.§<$9§ = new §<"`§(param1.userId,null,_loc2_,false,§4!+§.NORMAL,§4!+§.§<!j§);
         }
         else
         {
            this.§<$9§ = new §#"n§(_loc3_,"",false,§4!+§.NORMAL,false,(param1 as §4O§).profileImageURL);
         }
         this.§ X§(this.§]!>§,this.§<$9§);
         this.§-#j§(param1.userName,this.§[!q§,this.§`!H§.getItemByName("EnemyNameMask").mClip);
      }
      
      private function §-#j§(param1:String, param2:§%M§, param3:MovieClip) : String
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
      
      private function § X§(param1:§@N§, param2:MovieClip) : void
      {
         while(param1.mClip.numChildren > 0)
         {
            param1.mClip.removeChildAt(0);
         }
         param1.mClip.addChild(param2);
      }
      
      private function § "#§() : void
      {
         var _loc4_:Object = null;
         var _loc1_:String = userProgress.avatarString;
         var _loc2_:String = userProgress.userID;
         if(this.§2!,§)
         {
            this.§%"0§ = this.§!;§.data[this.§!;§.§#$;§] as §9!m§;
            if(!this.§%"0§)
            {
               _loc4_ = §2#s§.§6!§.§5"Y§();
               _loc4_.ir = _loc4_.i;
               _loc4_.uid = _loc2_;
               if(_loc4_.ir)
               {
                  this.§%"0§ = §9!m§.§+!@§(_loc4_);
               }
            }
         }
         this.§!!H§();
         var _loc3_:String = this.§%"0§ is §9!m§ ? (this.§%"0§ as §9!m§).profilePicture : null;
         if(_loc3_ && this.§2!,§)
         {
            this.§4!h§ = new §<"`§(_loc2_,_loc3_,"",false,§4!+§.NORMAL,§4!+§.§<!j§);
         }
         else
         {
            this.§4!h§ = new §#"n§(_loc2_,"",false,§4!+§.NORMAL);
         }
         this.§ X§(this.§=!=§,this.§4!h§);
      }
      
      private function §-"7§() : void
      {
         if(this.§<$9§)
         {
            this.§<$9§.dispose();
            this.§<$9§ = null;
         }
      }
      
      private function §!!H§() : void
      {
         if(this.§4!h§)
         {
            this.§4!h§.dispose();
            this.§4!h§ = null;
         }
      }
      
      public function set §[!4§(param1:Boolean) : void
      {
         this.§ ##§ = param1;
         this.§["5§.setVisibility(!this.§ ##§);
      }
      
      private function §`"_§() : void
      {
         this.§#"'§ = this.§%#J§.pop();
         this.§^"4§ = §&"H§.§6!§.§6C§(this.§=!l§.mClip,{"x":this.§^#7§ + 15},{"x":this.§^#7§},0.5,§&"H§.§9"Y§);
         this.§^"4§.onComplete = this.§-T§;
         this.§^"4§.play();
         §!"p§.playSound("ui_ingame_scorebox_gain_position","ChannelPowerups");
      }
      
      private function §-T§() : void
      {
         var _loc2_:int = 0;
         if(!this.§#"'§)
         {
            return;
         }
         this.§^"4§ = null;
         this.§,r§.§4#y§("Start");
         this.§,r§.isPlaying = true;
         this.§,r§.setVisibility(true);
         var _loc1_:§@#P§ = this.§%#J§.length > 0 ? this.§%#J§[this.§%#J§.length - 1] : this.§?_§;
         if(this.§#"'§.rank == 1 || _loc1_ == null)
         {
            this.§-!5§.setVisibility(false);
            this.§^"4§ = §&"H§.§6!§.§6C§(this.§=!l§.mClip,{"x":this.§-!5§.mClip.x},null,0.5);
            this.§^"4§.onComplete = this.§!#=§;
            this.§^"4§.play();
            this.§^!"§.§4#y§("Gold");
            this.§9!8§.setText("1");
            this.§^!"§.setVisibility(!this.§2!,§);
         }
         else
         {
            this.§^"4§ = §&"H§.§6!§.§6C§(this.§=!l§.mClip,{"x":this.§^#7§},{"x":this.§^#7§ + 15},0.5);
            this.§^"4§.onComplete = null;
            this.§^"4§.play();
            this.§<!&§(_loc1_);
            _loc2_ = _loc1_.rank + 1;
            this.§^!"§.setVisibility(_loc2_ <= 3 && !this.§2!,§);
            if(_loc2_ > 0 && _loc2_ <= 3)
            {
               this.§^!"§.§4#y§(["Gold","Silver","Bronze"][_loc2_ - 1]);
            }
            this.§9!8§.setText(_loc2_.toString());
            this.§=#H§ = §&"H§.§6!§.§6C§(this.§-!5§.mClip,{"y":this.§4!W§},{"y":-150},2,§&"H§.§9"Y§);
            this.§=#H§.onComplete = this.§[#H§;
            this.§=#H§.play();
         }
      }
      
      private function §[#H§() : void
      {
         this.§=#H§ = null;
         this.§#"'§ = null;
         if(this.§%#J§.length > 0)
         {
            this.§`"_§();
         }
      }
      
      private function §!#=§() : void
      {
         this.§^"4§ = null;
         this.§#"'§ = null;
      }
      
      private function §+#'§(param1:int) : String
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
      
      private function §<k§(param1:§@N§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(param1.isPlaying)
         {
            if((_loc4_ = param1.§4$ §(param2)) == "End")
            {
               param1.isPlaying = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function §4#c§() : void
      {
         var _loc1_:§4O§ = null;
         var _loc2_:§=#>§ = null;
         for each(_loc1_ in this.§!;§.data)
         {
            if(_loc1_ is §@#P§)
            {
               _loc2_ = new §=#>§(_loc1_.userId,"",false,§4!+§.NORMAL,_loc1_.profileImageURL);
               _loc2_.dispose();
            }
         }
      }
      
      private function §3"[§() : void
      {
         var _loc1_:MovieClip = this.§`!H§.getItemByName("PlayerNameMask").mClip;
         var _loc2_:String = userProgress.userName;
         if(this.§2!,§)
         {
            _loc2_ = !!§2#s§.§6!§.§5"Y§().ni ? §2#s§.§6!§.§5"Y§().ni : _loc2_;
         }
         _loc2_ = this.§-#j§(_loc2_,this.§"!d§,_loc1_);
      }
      
      protected function §&"5§(param1:Event) : void
      {
         this.§ "#§();
         this.§3"[§();
      }
   }
}
