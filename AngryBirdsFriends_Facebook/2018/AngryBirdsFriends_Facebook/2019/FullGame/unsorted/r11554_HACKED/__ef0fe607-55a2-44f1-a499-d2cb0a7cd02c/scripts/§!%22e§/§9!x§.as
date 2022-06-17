package §!"e§
{
   import § "g§.§%!2§;
   import § "g§.§5"D§;
   import §#!E§.§2#Q§;
   import §4!n§.§#$>§;
   import §5!$§.§-#j§;
   import §5!$§.§<c§;
   import §5!$§.§>§;
   import §6!'§.§@#c§;
   import §6§.§'#n§;
   import §6§.§]%§;
   import §=!2§.§%"T§;
   import §=#§.§%#y§;
   import §=#§.§&!p§;
   import §=#§.§1!"§;
   import §=#§.§1#+§;
   import §>"9§.§[#%§;
   import §>"h§.§?>§;
   import §]"'§.§+!!§;
   import §]"'§.§8!a§;
   import §]"'§.§=!h§;
   import §]"'§.§^"X§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §9!x§
   {
      
      private static var §""l§:int = 3;
       
      
      private var §<"`§:§<c§;
      
      private var §##N§:§5"D§;
      
      private var §0<§:§]%§;
      
      private var §!"c§:§]%§;
      
      private var §`#-§:§%#y§;
      
      private var §2#b§:§%#y§;
      
      private var §?#`§:Boolean = false;
      
      private var §,#s§:Boolean;
      
      private var §>#b§:Boolean;
      
      private var §0n§:§+!!§;
      
      private var §1!$§:int;
      
      private var §4$8§:§+!!§;
      
      private var §["d§:int = -1;
      
      private var §8#o§:Array;
      
      private var §7"E§:String;
      
      private var §,!]§:§+!!§;
      
      private var §`!Y§:§^"X§;
      
      protected var §;"g§:§<c§;
      
      protected var §2$=§:§<c§;
      
      protected var §`"d§:§#$>§;
      
      protected var §=#m§:§>#8§;
      
      protected var §"">§:§>#8§;
      
      protected var §>#J§:§>#8§;
      
      protected var §`"w§:§>#8§;
      
      protected var §""0§:§>#8§;
      
      protected var §`$'§:§>#8§;
      
      protected var §=$#§:§-#j§;
      
      protected var §!!3§:§-#j§;
      
      protected var §]e§:§-#j§;
      
      protected var §+#M§:§-#j§;
      
      protected var §,R§:§-#j§;
      
      protected var §^!u§:§-#j§;
      
      protected var §+"k§:Array;
      
      private const §""h§:int = -158;
      
      private const §^$,§:int = -41;
      
      private var §^d§:Boolean = false;
      
      public function §9!x§(param1:§<c§)
      {
         this.§8#o§ = [];
         this.§+"k§ = [];
         super();
         this.§<"`§ = param1;
         this.§]",§();
      }
      
      protected static function get userProgress() : §2#Q§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §2#Q§;
      }
      
      private function §]",§() : void
      {
         this.§2$=§ = this.§<"`§.getItemByName("Container_VsHero") as §<c§;
         this.§`"d§ = this.§<"`§.getItemByName("Container_VsEnemy") as §<c§;
         this.§;"g§ = this.§<"`§.getItemByName("Container_Vs") as §<c§;
         this.§=#m§ = this.§<"`§.getItemByName("MovieClip_VsAnimation") as §>#8§;
         this.§"">§ = this.§<"`§.getItemByName("MovieClip_Boom") as §>#8§;
         this.§>#J§ = this.§<"`§.getItemByName("MovieClip_VsProfilePicHero") as §>#8§;
         this.§`"w§ = this.§<"`§.getItemByName("MovieClip_VsProfilePicEnemy") as §>#8§;
         this.§""0§ = this.§<"`§.getItemByName("MovieClip_CrownHero") as §>#8§;
         this.§`$'§ = this.§<"`§.getItemByName("MovieClip_CrownEnemy") as §>#8§;
         this.§=$#§ = this.§<"`§.getItemByName("TextField_VsScore") as §-#j§;
         this.§!!3§ = this.§<"`§.getItemByName("TextField_VsScoreEnemy") as §-#j§;
         this.§]e§ = this.§<"`§.getItemByName("TextField_NameHero") as §-#j§;
         this.§+#M§ = this.§<"`§.getItemByName("TextField_NameEnemy") as §-#j§;
         this.§,R§ = this.§<"`§.getItemByName("TextField_VsPositionHero") as §-#j§;
         this.§^!u§ = this.§<"`§.getItemByName("TextField_VsPositionEnemy") as §-#j§;
         this.§+"k§ = [this.§=#m§,this.§"">§,this.§=#m§];
      }
      
      public function activate() : void
      {
         if(this.§0<§)
         {
            this.§0<§.play();
         }
         if(this.§!"c§)
         {
            this.§!"c§.play();
         }
         this.§3"3§();
         if(this.§,!]§)
         {
            this.§8j§(this.§,!]§.userName,this.§+#M§,this.§<"`§.getItemByName("EnemyNameMask").mClip);
         }
      }
      
      public function deActivate() : void
      {
         if(this.§0<§)
         {
            this.§0<§.pause();
            this.§0<§.§-#u§ = false;
         }
         if(this.§!"c§)
         {
            this.§!"c§.pause();
            this.§!"c§.§-#u§ = false;
         }
      }
      
      public function levelStarted(param1:§5"D§, param2:String, param3:Boolean = false) : void
      {
         this.§7"E§ = param2;
         this.§>"u§();
         this.§ #y§();
         this.§`"d§.setVisibility(true);
         this.§;"g§.setVisibility(false);
         this.§##N§ = param1;
         this.§?#`§ = false;
         this.§4$8§ = null;
         this.§["d§ = -1;
         this.§8#o§ = [];
         this.§=#m§.setVisibility(true);
         this.§=#m§.§,#T§("Start");
         this.§=#m§.isPlaying = true;
         if(!this.§,#s§)
         {
            this.§1!$§ = -1;
         }
         this.§2$=§.x = this.§""h§;
         this.§`"d§.y = this.§^$,§;
         if(this.§!"c§)
         {
            this.§!"c§.stop();
            this.§!"c§ = null;
         }
         if(this.§0<§)
         {
            this.§0<§.stop();
            this.§0<§ = null;
         }
         this.§`"d§.mClip.VersusComponent_Background.gotoAndStop((§%"T§.§>$<§ as §'"a§).§1#b§.§1"Z§());
         this.§2$=§.mClip.VersusComponent_Background.gotoAndStop((§%"T§.§>$<§ as §'"a§).§1#b§.§1"Z§());
         this.§^d§ = param3;
         §@#c§.§?q§.removeEventListener(§?>§.§[^§,this.§6$2§);
         this.§6!4§();
      }
      
      private function initialize() : void
      {
         var _loc1_:int = 0;
         var _loc4_:int = 0;
         this.§8!,§();
         this.§3"3§();
         if(this.§!"c§)
         {
            this.§!"c§.stop();
            this.§!"c§ = null;
         }
         if(this.§0<§)
         {
            this.§0<§.stop();
            this.§0<§ = null;
         }
         this.§2$=§.x = this.§""h§;
         this.§4$8§ = null;
         var _loc2_:int = !!this.§,#s§ ? int(this.§1!$§) : int(userProgress.getScoreForLevel(this.§7"E§));
         _loc2_ = userProgress.getScoreForLevel(this.§7"E§);
         this.§0n§ = this.§##N§.§,!i§();
         if(this.§,#s§)
         {
            while(this.§0n§ && this.§1!$§ > this.§0n§.§>"t§)
            {
               if((_loc4_ = this.§##N§.data.indexOf(this.§0n§) - 1) >= 0)
               {
                  this.§0n§ = this.§##N§.data[_loc4_];
               }
               else
               {
                  this.§0n§ = null;
               }
            }
         }
         if(this.§0n§)
         {
            this.§[!H§(this.§0n§);
            _loc1_ = this.§0n§.rank + 1;
            this.§`"d§.setVisibility(true);
            this.§=#m§.setVisibility(true);
         }
         else
         {
            _loc1_ = 1;
            this.§`"d§.setVisibility(false);
            this.§=#m§.setVisibility(false);
            this.§2$=§.x = this.§`"d§.x;
         }
         this.§,R§.setText(_loc1_.toString());
         if(_loc2_ > 0)
         {
            userProgress.§8!S§(this.§7"E§,_loc1_);
         }
         var _loc3_:int = userProgress.getEagleScoreForLevel(this.§7"E§);
         this.§""0§.setVisibility(_loc1_ <= 3 && (_loc2_ > 0 || _loc3_ > 0) && !this.§^d§);
         if(_loc1_ > 0 && _loc1_ <= 3 && (_loc2_ > 0 || _loc3_ > 0))
         {
            this.§""0§.§,#T§(["Gold","Silver","Bronze"][_loc1_ - 1]);
         }
         else
         {
            this.§""0§.§%"v§(1);
         }
         this.§;"g§.setVisibility(true);
         §@#c§.§?q§.addEventListener(§?>§.§[^§,this.§6$2§);
         this.§?#`§ = true;
      }
      
      public function run(param1:Number) : Boolean
      {
         if(this.§##N§.§0"§ || this.§>#b§)
         {
            this.§;"g§.setVisibility(false);
            return true;
         }
         if(!this.§?#`§)
         {
            this.initialize();
            if(!this.§,#s§)
            {
               this.§,#s§ = true;
            }
         }
         this.updateAnimations(param1);
         return this.§4$8§ == null;
      }
      
      public function §5+§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(this.§1!$§ == param1)
         {
            return;
         }
         this.§1!$§ = param1;
         this.§=$#§.setText(this.§%$,§(this.§1!$§));
         if(!this.§0n§)
         {
            return;
         }
         if(this.§##N§.§0"§ || this.§>#b§)
         {
            return;
         }
         while(this.§0n§ && this.§1!$§ > this.§0n§.§>"t§)
         {
            this.§8#o§.unshift(this.§0n§);
            if((_loc4_ = this.§##N§.data.indexOf(this.§0n§) - 1) >= 0)
            {
               this.§0n§ = this.§##N§.data[_loc4_];
            }
            else
            {
               this.§0n§ = null;
            }
         }
         while(this.§8#o§.length > §""l§)
         {
            this.§8#o§.pop();
         }
         if(this.§8#o§.length > 0 && !this.§4$8§)
         {
            this.§8![§();
         }
      }
      
      private function §[!H§(param1:§+!!§) : void
      {
         this.§`$'§.setVisibility(param1.rank <= 3 && !this.§^d§);
         if(param1.rank > 0 && param1.rank <= 3)
         {
            this.§`$'§.§,#T§(["Gold","Silver","Bronze"][param1.rank - 1]);
         }
         this.§^!u§.setText(param1.rank.toString());
         this.§!!3§.setText(this.§%$,§(param1.§>"t§));
         this.§3D§(param1);
      }
      
      private function updateAnimations(param1:Number) : void
      {
         var _loc2_:§>#8§ = null;
         for each(_loc2_ in this.§+"k§)
         {
            this.§'P§(_loc2_,param1,true);
         }
      }
      
      private function §3D§(param1:§+!!§) : void
      {
         var _loc2_:String = §%!2§.§;"A§(param1.userId);
         var _loc3_:String = param1.userId;
         this.§,!]§ = param1;
         this.§>"u§();
         var _loc4_:String;
         if(_loc4_ = param1 is §=!h§ ? (param1 as §=!h§).profilePicture : null)
         {
            this.§`#-§ = new §1#+§(param1.userId,_loc4_,_loc2_,false,§1!"§.NORMAL,§1!"§.§'"O§);
         }
         else
         {
            this.§`#-§ = new §&!p§(_loc3_,"",false,§1!"§.NORMAL,false,(param1 as §8!a§).profileImageURL);
         }
         this.§=$8§(this.§`"w§,this.§`#-§);
         this.§8j§(param1.userName,this.§+#M§,this.§<"`§.getItemByName("EnemyNameMask").mClip);
      }
      
      private function §8j§(param1:String, param2:§-#j§, param3:MovieClip) : String
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
      
      private function §=$8§(param1:§>#8§, param2:MovieClip) : void
      {
         while(param1.mClip.numChildren > 0)
         {
            param1.mClip.removeChildAt(0);
         }
         param1.mClip.addChild(param2);
      }
      
      private function §6!4§() : void
      {
         var _loc4_:Object = null;
         userProgress.avatarString;
         var _loc2_:String = userProgress.userID;
         if(this.§^d§)
         {
            this.§`!Y§ = this.§##N§.data[this.§##N§.§[0§] as §^"X§;
            if(!this.§`!Y§)
            {
               _loc4_ = §@#c§.§?q§.§5k§();
               _loc4_.ir = _loc4_.i;
               _loc4_.uid = _loc2_;
               if(_loc4_.ir)
               {
                  this.§`!Y§ = §^"X§.§]"B§(_loc4_);
               }
            }
         }
         this.§ #y§();
         var _loc3_:String = this.§`!Y§ is §^"X§ ? (this.§`!Y§ as §^"X§).profilePicture : null;
         if(_loc3_ && this.§^d§)
         {
            this.§2#b§ = new §1#+§(_loc2_,_loc3_,"",false,§1!"§.NORMAL,§1!"§.§'"O§);
         }
         else
         {
            this.§2#b§ = new §&!p§(_loc2_,"",false,§1!"§.NORMAL);
         }
         this.§=$8§(this.§>#J§,this.§2#b§);
      }
      
      private function §>"u§() : void
      {
         if(this.§`#-§)
         {
            this.§`#-§.dispose();
            this.§`#-§ = null;
         }
      }
      
      private function § #y§() : void
      {
         if(this.§2#b§)
         {
            this.§2#b§.dispose();
            this.§2#b§ = null;
         }
      }
      
      public function set §1$!§(param1:Boolean) : void
      {
         this.§>#b§ = param1;
         this.§;"g§.setVisibility(!this.§>#b§);
      }
      
      private function §8![§() : void
      {
         this.§4$8§ = this.§8#o§.pop();
         this.§!"c§ = §'#n§.§?q§.§9!N§(this.§2$=§.mClip,{"x":this.§""h§ + 15},{"x":this.§""h§},0.5,§'#n§.§6"o§);
         this.§!"c§.onComplete = this.§<5§;
         this.§!"c§.play();
         §[#%§.playSound("ui_ingame_scorebox_gain_position","ChannelPowerups");
      }
      
      private function §<5§() : void
      {
         var _loc2_:int = 0;
         if(!this.§4$8§)
         {
            return;
         }
         this.§!"c§ = null;
         this.§"">§.§,#T§("Start");
         this.§"">§.isPlaying = true;
         this.§"">§.setVisibility(true);
         var _loc1_:§+!!§ = this.§8#o§.length > 0 ? this.§8#o§[this.§8#o§.length - 1] : this.§0n§;
         if(this.§4$8§.rank == 1 || _loc1_ == null)
         {
            this.§`"d§.setVisibility(false);
            this.§!"c§ = §'#n§.§?q§.§9!N§(this.§2$=§.mClip,{"x":this.§`"d§.mClip.x},null,0.5);
            this.§!"c§.onComplete = this.§<"p§;
            this.§!"c§.play();
            this.§""0§.§,#T§("Gold");
            this.§,R§.setText("1");
            this.§""0§.setVisibility(!this.§^d§);
         }
         else
         {
            this.§!"c§ = §'#n§.§?q§.§9!N§(this.§2$=§.mClip,{"x":this.§""h§},{"x":this.§""h§ + 15},0.5);
            this.§!"c§.onComplete = null;
            this.§!"c§.play();
            this.§[!H§(_loc1_);
            _loc2_ = _loc1_.rank + 1;
            this.§""0§.setVisibility(_loc2_ <= 3 && !this.§^d§);
            if(_loc2_ > 0 && _loc2_ <= 3)
            {
               this.§""0§.§,#T§(["Gold","Silver","Bronze"][_loc2_ - 1]);
            }
            this.§,R§.setText(_loc2_.toString());
            this.§0<§ = §'#n§.§?q§.§9!N§(this.§`"d§.mClip,{"y":this.§^$,§},{"y":-150},2,§'#n§.§6"o§);
            this.§0<§.onComplete = this.§?"X§;
            this.§0<§.play();
         }
      }
      
      private function §?"X§() : void
      {
         this.§0<§ = null;
         this.§4$8§ = null;
         if(this.§8#o§.length > 0)
         {
            this.§8![§();
         }
      }
      
      private function §<"p§() : void
      {
         this.§!"c§ = null;
         this.§4$8§ = null;
      }
      
      private function §%$,§(param1:int) : String
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
      
      private function §'P§(param1:§>#8§, param2:Number, param3:Boolean = false) : void
      {
         if(param1.isPlaying)
         {
            if(param1.§9L§(param2) == "End")
            {
               param1.isPlaying = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function §8!,§() : void
      {
         var _loc1_:§8!a§ = null;
         var _loc2_:§%#y§ = null;
         for each(_loc1_ in this.§##N§.data)
         {
            if(_loc1_ is §+!!§)
            {
               _loc2_ = new §%#y§(_loc1_.userId,"",false,§1!"§.NORMAL,_loc1_.profileImageURL);
               _loc2_.dispose();
            }
         }
      }
      
      private function §3"3§() : void
      {
         var _loc1_:MovieClip = this.§<"`§.getItemByName("PlayerNameMask").mClip;
         var _loc2_:String = userProgress.userName;
         if(this.§^d§)
         {
            _loc2_ = !!§@#c§.§?q§.§5k§().ni ? §@#c§.§?q§.§5k§().ni : _loc2_;
         }
         _loc2_ = this.§8j§(_loc2_,this.§]e§,_loc1_);
      }
      
      protected function §6$2§(param1:Event) : void
      {
         this.§6!4§();
         this.§3"3§();
      }
   }
}
