package § P§
{
   import §%$!§.§%!2§;
   import §%$!§.§9$6§;
   import §%$!§.§?i§;
   import §%$!§.§[!6§;
   import §&#S§.§""Z§;
   import §&#S§.§+,§;
   import §'!U§.§>$$§;
   import §,n§.§!";§;
   import §,n§.§+!f§;
   import §,n§.§3I§;
   import §,n§.§?#!§;
   import §4q§.§!#Q§;
   import §6"r§.§0"<§;
   import §6"r§.§="T§;
   import §6"r§.§]$!§;
   import §7g§.§4!q§;
   import §8§.§#$+§;
   import §;4§.§-#a§;
   import §;4§.§2!]§;
   import §<!g§.§&$1§;
   import §?§.§>"$§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §'!`§
   {
      
      private static var §1"x§:int = 3;
       
      
      private var §!$§:§0"<§;
      
      private var §7"O§:§2!]§;
      
      private var §+"`§:§+,§;
      
      private var §0#T§:§+,§;
      
      private var §!!M§:§3I§;
      
      private var §^!x§:§3I§;
      
      private var §#";§:Boolean = false;
      
      private var §]#K§:Boolean;
      
      private var §>j§:Boolean;
      
      private var §^#3§:§?i§;
      
      private var §##<§:int;
      
      private var §4"g§:§?i§;
      
      private var §9G§:int = -1;
      
      private var §5"F§:Array;
      
      private var §3"D§:String;
      
      private var §9q§:§?i§;
      
      private var §`!4§:§%!2§;
      
      protected var §]g§:§0"<§;
      
      protected var §>!o§:§0"<§;
      
      protected var §9!i§:§>$$§;
      
      protected var §;!E§:§="T§;
      
      protected var §^+§:§="T§;
      
      protected var §8"!§:§="T§;
      
      protected var §2#&§:§="T§;
      
      protected var §"!1§:§="T§;
      
      protected var §@!u§:§="T§;
      
      protected var §@"@§:§]$!§;
      
      protected var §-!G§:§]$!§;
      
      protected var §%!;§:§]$!§;
      
      protected var §'!2§:§]$!§;
      
      protected var §#"Q§:§]$!§;
      
      protected var §&!F§:§]$!§;
      
      protected var §;$9§:Array;
      
      private const §]!&§:int = -158;
      
      private const §@7§:int = -41;
      
      private var §'$$§:Boolean = false;
      
      public function §'!`§(param1:§0"<§)
      {
         this.§5"F§ = [];
         this.§;$9§ = [];
         super();
         this.§!$§ = param1;
         this.§9!Q§();
      }
      
      protected static function get userProgress() : §!#Q§
      {
         return AngryBirdsBase.singleton.dataModel.userProgress as §!#Q§;
      }
      
      private function §9!Q§() : void
      {
         this.§>!o§ = this.§!$§.getItemByName("Container_VsHero") as §0"<§;
         this.§9!i§ = this.§!$§.getItemByName("Container_VsEnemy") as §0"<§;
         this.§]g§ = this.§!$§.getItemByName("Container_Vs") as §0"<§;
         this.§;!E§ = this.§!$§.getItemByName("MovieClip_VsAnimation") as §="T§;
         this.§^+§ = this.§!$§.getItemByName("MovieClip_Boom") as §="T§;
         this.§8"!§ = this.§!$§.getItemByName("MovieClip_VsProfilePicHero") as §="T§;
         this.§2#&§ = this.§!$§.getItemByName("MovieClip_VsProfilePicEnemy") as §="T§;
         this.§"!1§ = this.§!$§.getItemByName("MovieClip_CrownHero") as §="T§;
         this.§@!u§ = this.§!$§.getItemByName("MovieClip_CrownEnemy") as §="T§;
         this.§@"@§ = this.§!$§.getItemByName("TextField_VsScore") as §]$!§;
         this.§-!G§ = this.§!$§.getItemByName("TextField_VsScoreEnemy") as §]$!§;
         this.§%!;§ = this.§!$§.getItemByName("TextField_NameHero") as §]$!§;
         this.§'!2§ = this.§!$§.getItemByName("TextField_NameEnemy") as §]$!§;
         this.§#"Q§ = this.§!$§.getItemByName("TextField_VsPositionHero") as §]$!§;
         this.§&!F§ = this.§!$§.getItemByName("TextField_VsPositionEnemy") as §]$!§;
         this.§;$9§ = [this.§;!E§,this.§^+§,this.§;!E§];
      }
      
      public function activate() : void
      {
         if(this.§+"`§)
         {
            this.§+"`§.play();
         }
         if(this.§0#T§)
         {
            this.§0#T§.play();
         }
         this.§>"X§();
         if(this.§9q§)
         {
            this.§%"Y§(this.§9q§.userName,this.§'!2§,this.§!$§.getItemByName("EnemyNameMask").mClip);
         }
      }
      
      public function deActivate() : void
      {
         if(this.§+"`§)
         {
            this.§+"`§.pause();
            this.§+"`§.§#"V§ = false;
         }
         if(this.§0#T§)
         {
            this.§0#T§.pause();
            this.§0#T§.§#"V§ = false;
         }
      }
      
      public function levelStarted(param1:§2!]§, param2:String, param3:Boolean = false) : void
      {
         this.§3"D§ = param2;
         this.§,#<§();
         this.§ #;§();
         this.§9!i§.setVisibility(true);
         this.§]g§.setVisibility(false);
         this.§7"O§ = param1;
         this.§#";§ = false;
         this.§4"g§ = null;
         this.§9G§ = -1;
         this.§5"F§ = [];
         this.§;!E§.setVisibility(true);
         this.§;!E§.§9!,§("Start");
         this.§;!E§.isPlaying = true;
         if(!this.§]#K§)
         {
            this.§##<§ = -1;
         }
         this.§>!o§.x = this.§]!&§;
         this.§9!i§.y = this.§@7§;
         if(this.§0#T§)
         {
            this.§0#T§.stop();
            this.§0#T§ = null;
         }
         if(this.§+"`§)
         {
            this.§+"`§.stop();
            this.§+"`§ = null;
         }
         this.§9!i§.mClip.VersusComponent_Background.gotoAndStop((§>"$§.§<_§ as §8G§).§&#§.§4#Z§());
         this.§>!o§.mClip.VersusComponent_Background.gotoAndStop((§>"$§.§<_§ as §8G§).§&#§.§4#Z§());
         this.§'$$§ = param3;
         §4!q§.§3!]§.removeEventListener(§&$1§.§@K§,this.§6#_§);
         this.§8!§();
      }
      
      private function initialize() : void
      {
         var _loc1_:int = 0;
         var _loc4_:int = 0;
         this.§0$4§();
         this.§>"X§();
         this.§4"g§ = null;
         var _loc2_:int = !!this.§]#K§ ? int(this.§##<§) : int(userProgress.getScoreForLevel(this.§3"D§));
         _loc2_ = userProgress.getScoreForLevel(this.§3"D§);
         this.§^#3§ = this.§7"O§.§?"p§();
         if(this.§]#K§)
         {
            while(this.§^#3§ && this.§##<§ > this.§^#3§.levelScore)
            {
               if((_loc4_ = this.§7"O§.data.indexOf(this.§^#3§) - 1) >= 0)
               {
                  this.§^#3§ = this.§7"O§.data[_loc4_];
               }
               else
               {
                  this.§^#3§ = null;
               }
            }
         }
         if(this.§^#3§)
         {
            this.§["a§(this.§^#3§);
            _loc1_ = this.§^#3§.rank + 1;
            this.§9!i§.setVisibility(true);
            this.§;!E§.setVisibility(true);
         }
         else
         {
            _loc1_ = 1;
            this.§9!i§.setVisibility(false);
            this.§;!E§.setVisibility(false);
            this.§>!o§.x = this.§9!i§.x;
         }
         this.§#"Q§.setText(_loc1_.toString());
         if(_loc2_ > 0)
         {
            userProgress.§%w§(this.§3"D§,_loc1_);
         }
         var _loc3_:int = userProgress.getEagleScoreForLevel(this.§3"D§);
         this.§"!1§.setVisibility(_loc1_ <= 3 && (_loc2_ > 0 || _loc3_ > 0) && !this.§'$$§);
         if(_loc1_ > 0 && _loc1_ <= 3 && (_loc2_ > 0 || _loc3_ > 0))
         {
            this.§"!1§.§9!,§(["Gold","Silver","Bronze"][_loc1_ - 1]);
         }
         else
         {
            this.§"!1§.§"$&§(1);
         }
         this.§]g§.setVisibility(true);
         §4!q§.§3!]§.addEventListener(§&$1§.§@K§,this.§6#_§);
         this.§#";§ = true;
      }
      
      public function run(param1:Number) : Boolean
      {
         if(this.§7"O§.§-#!§ || this.§>j§)
         {
            this.§]g§.setVisibility(false);
            return true;
         }
         if(!this.§#";§)
         {
            this.initialize();
            if(!this.§]#K§)
            {
               this.§]#K§ = true;
            }
         }
         this.updateAnimations(param1);
         return this.§4"g§ == null;
      }
      
      public function §0!8§(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:int = 0;
         if(this.§##<§ == param1)
         {
            return;
         }
         this.§##<§ = param1;
         this.§@"@§.setText(this.§7#x§(this.§##<§));
         if(!this.§^#3§)
         {
            return;
         }
         if(this.§7"O§.§-#!§ || this.§>j§)
         {
            return;
         }
         while(this.§^#3§ && this.§##<§ > this.§^#3§.levelScore)
         {
            this.§5"F§.unshift(this.§^#3§);
            if((_loc4_ = this.§7"O§.data.indexOf(this.§^#3§) - 1) >= 0)
            {
               this.§^#3§ = this.§7"O§.data[_loc4_];
            }
            else
            {
               this.§^#3§ = null;
            }
         }
         while(this.§5"F§.length > §1"x§)
         {
            this.§5"F§.pop();
         }
         if(this.§5"F§.length > 0 && !this.§4"g§)
         {
            this.§8#0§();
         }
      }
      
      private function §["a§(param1:§?i§) : void
      {
         this.§@!u§.setVisibility(param1.rank <= 3 && !this.§'$$§);
         if(param1.rank > 0 && param1.rank <= 3)
         {
            this.§@!u§.§9!,§(["Gold","Silver","Bronze"][param1.rank - 1]);
         }
         this.§&!F§.setText(param1.rank.toString());
         this.§-!G§.setText(this.§7#x§(param1.levelScore));
         this.§8Z§(param1);
      }
      
      private function updateAnimations(param1:Number) : void
      {
         var _loc2_:§="T§ = null;
         for each(_loc2_ in this.§;$9§)
         {
            this.§2"P§(_loc2_,param1,true);
         }
      }
      
      private function §8Z§(param1:§?i§) : void
      {
         var _loc2_:String = §-#a§.§;"h§(param1.userId);
         var _loc3_:String = param1.userId;
         this.§9q§ = param1;
         this.§,#<§();
         var _loc4_:String;
         if(_loc4_ = param1 is §[!6§ ? (param1 as §[!6§).profilePicture : null)
         {
            this.§!!M§ = new §?#!§(param1.userId,_loc4_,_loc2_,false,§+!f§.NORMAL,§+!f§.§`#Q§);
         }
         else
         {
            this.§!!M§ = new §!";§(_loc3_,"",false,§+!f§.NORMAL,false,(param1 as §9$6§).profileImageURL);
         }
         this.§<#z§(this.§2#&§,this.§!!M§);
         this.§%"Y§(param1.userName,this.§'!2§,this.§!$§.getItemByName("EnemyNameMask").mClip);
      }
      
      private function §%"Y§(param1:String, param2:§]$!§, param3:MovieClip) : String
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
      
      private function §<#z§(param1:§="T§, param2:MovieClip) : void
      {
         while(param1.mClip.numChildren > 0)
         {
            param1.mClip.removeChildAt(0);
         }
         param1.mClip.addChild(param2);
      }
      
      private function §8!§() : void
      {
         var _loc4_:Object = null;
         userProgress.avatarString;
         var _loc2_:String = userProgress.userID;
         if(this.§'$$§)
         {
            this.§`!4§ = this.§7"O§.data[this.§7"O§.§["j§] as §%!2§;
            if(!this.§`!4§)
            {
               _loc4_ = §4!q§.§3!]§.§5"9§();
               _loc4_.ir = _loc4_.i;
               _loc4_.uid = _loc2_;
               if(_loc4_.ir)
               {
                  this.§`!4§ = §%!2§.§>!§(_loc4_);
               }
            }
         }
         this.§ #;§();
         var _loc3_:String = this.§`!4§ is §%!2§ ? (this.§`!4§ as §%!2§).profilePicture : null;
         if(_loc3_ && this.§'$$§)
         {
            this.§^!x§ = new §?#!§(_loc2_,_loc3_,"",false,§+!f§.NORMAL,§+!f§.§`#Q§);
         }
         else
         {
            this.§^!x§ = new §!";§(_loc2_,"",false,§+!f§.NORMAL);
         }
         this.§<#z§(this.§8"!§,this.§^!x§);
      }
      
      private function §[#^§(param1:Event) : void
      {
         this.§8!§();
      }
      
      private function §,#<§() : void
      {
         if(this.§!!M§)
         {
            this.§!!M§.dispose();
            this.§!!M§ = null;
         }
      }
      
      private function § #;§() : void
      {
         if(this.§^!x§)
         {
            this.§^!x§.dispose();
            this.§^!x§ = null;
         }
      }
      
      public function set §-#?§(param1:Boolean) : void
      {
         this.§>j§ = param1;
         this.§]g§.setVisibility(!this.§>j§);
      }
      
      private function §8#0§() : void
      {
         this.§4"g§ = this.§5"F§.pop();
         this.§0#T§ = §""Z§.§3!]§.§5"0§(this.§>!o§.mClip,{"x":this.§]!&§ + 15},{"x":this.§]!&§},0.5,§""Z§.§+!O§);
         this.§0#T§.onComplete = this.§8!+§;
         this.§0#T§.play();
         §#$+§.playSound("NextToBeat_Sound","ChannelPowerups");
      }
      
      private function §8!+§() : void
      {
         var _loc2_:int = 0;
         if(!this.§4"g§)
         {
            return;
         }
         this.§0#T§ = null;
         this.§^+§.§9!,§("Start");
         this.§^+§.isPlaying = true;
         this.§^+§.setVisibility(true);
         var _loc1_:§?i§ = this.§5"F§.length > 0 ? this.§5"F§[this.§5"F§.length - 1] : this.§^#3§;
         if(this.§4"g§.rank == 1 || _loc1_ == null)
         {
            this.§9!i§.setVisibility(false);
            this.§0#T§ = §""Z§.§3!]§.§5"0§(this.§>!o§.mClip,{"x":this.§9!i§.mClip.x},null,0.5);
            this.§0#T§.onComplete = this.§?J§;
            this.§0#T§.play();
            this.§"!1§.§9!,§("Gold");
            this.§#"Q§.setText("1");
            this.§"!1§.setVisibility(!this.§'$$§);
         }
         else
         {
            this.§0#T§ = §""Z§.§3!]§.§5"0§(this.§>!o§.mClip,{"x":this.§]!&§},null,0.5);
            this.§0#T§.onComplete = null;
            this.§0#T§.play();
            this.§["a§(_loc1_);
            _loc2_ = _loc1_.rank + 1;
            this.§"!1§.setVisibility(_loc2_ <= 3 && !this.§'$$§);
            if(_loc2_ > 0 && _loc2_ <= 3)
            {
               this.§"!1§.§9!,§(["Gold","Silver","Bronze"][_loc2_ - 1]);
            }
            this.§#"Q§.setText(_loc2_.toString());
            this.§+"`§ = §""Z§.§3!]§.§5"0§(this.§9!i§.mClip,{"y":this.§@7§},{"y":-150},2,§""Z§.§+!O§);
            this.§+"`§.onComplete = this.§4!n§;
            this.§+"`§.play();
         }
      }
      
      private function §4!n§() : void
      {
         this.§+"`§ = null;
         this.§4"g§ = null;
         if(this.§5"F§.length > 0)
         {
            this.§8#0§();
         }
      }
      
      private function §?J§() : void
      {
         this.§0#T§ = null;
         this.§4"g§ = null;
      }
      
      private function §7#x§(param1:int) : String
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
      
      private function §2"P§(param1:§="T§, param2:Number, param3:Boolean = false) : void
      {
         null;
         if(param1.isPlaying)
         {
            if(param1.§`!I§(param2) == "End")
            {
               param1.isPlaying = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function §0$4§() : void
      {
         var _loc1_:§9$6§ = null;
         var _loc2_:§3I§ = null;
         for each(_loc1_ in this.§7"O§.data)
         {
            if(_loc1_ is §?i§)
            {
               _loc2_ = new §3I§(_loc1_.userId,"",false,§+!f§.NORMAL,_loc1_.profileImageURL);
               _loc2_.dispose();
            }
         }
      }
      
      private function §>"X§() : void
      {
         var _loc1_:MovieClip = this.§!$§.getItemByName("PlayerNameMask").mClip;
         var _loc2_:String = userProgress.userName;
         if(this.§'$$§)
         {
            _loc2_ = !!§4!q§.§3!]§.§5"9§().ni ? §4!q§.§3!]§.§5"9§().ni : _loc2_;
         }
         _loc2_ = this.§%"Y§(_loc2_,this.§%!;§,_loc1_);
      }
      
      protected function §6#_§(param1:Event) : void
      {
         this.§8!§();
         this.§>"X§();
      }
   }
}
