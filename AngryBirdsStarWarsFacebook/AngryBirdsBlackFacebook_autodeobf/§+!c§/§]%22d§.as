package §+!c§
{
   import § "4§.§7q§;
   import §"a§.§6#!§;
   import §"k§.§%!8§;
   import §"k§.§5"2§;
   import §"k§.§]"V§;
   import §+D§.§ #^§;
   import §+D§.§0"$§;
   import §+D§.§6!D§;
   import §,"N§.§@#B§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §7"a§.§@4§;
   import §="2§.§?!r§;
   import §?m§.§+"2§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §]"d§
   {
       
      
      private var §+!b§:§+"2§;
      
      private var § F§:§6#!§;
      
      private var §?!R§:Boolean = false;
      
      private var §@;§:§ #^§;
      
      private var §-"]§:§%!8§;
      
      private var §6#X§:§[#R§;
      
      private var §=v§:§[#R§;
      
      private var §4">§:Number;
      
      private var §9"D§:Number;
      
      private var §]!B§:§5"$§;
      
      private var §3e§:§?@§;
      
      private var §5!S§:Boolean = false;
      
      private var §,-§:Boolean;
      
      private var §2"%§:§5"2§;
      
      private var §9"d§:int;
      
      private var §]"n§:§5"2§;
      
      private var §'b§:int = -1;
      
      private var §5E§:Vector.<§5"2§>;
      
      private var §7"5§:String;
      
      private var §?J§:§5"2§;
      
      private var §2#>§:§ #^§;
      
      private var §="c§:§ #^§;
      
      private var §0!6§:§ #^§;
      
      private var §0!U§:§0"$§;
      
      private var §-v§:§0"$§;
      
      private var §<!t§:§0"$§;
      
      private var §8!f§:§0"$§;
      
      private var §>! §:§0"$§;
      
      private var §""&§:§0"$§;
      
      private var §;^§:§6!D§;
      
      private var §6!+§:§6!D§;
      
      private var § "a§:§6!D§;
      
      private var §#""§:§6!D§;
      
      private var §;!,§:§6!D§;
      
      private var §;!!§:§6!D§;
      
      private var §,#^§:Boolean;
      
      public function §]"d§(param1:§ #^§, param2:§+"2§, param3:§6#!§)
      {
         super();
         this.§+!b§ = param2;
         this.§ F§ = param3;
         this.§@;§ = param1;
         this.§'!v§();
         this.§4">§ = this.§="c§.x;
         this.§9"D§ = this.§0!6§.y;
      }
      
      public function get §9#F§() : Boolean
      {
         return this.§,-§;
      }
      
      public function get §3#2§() : Boolean
      {
         return this.§,#^§;
      }
      
      private function §'!v§() : void
      {
         this.§2#>§ = this.§@;§.getItemByName("Container_Vs") as § #^§;
         this.§0!U§ = this.§@;§.getItemByName("MovieClip_VsAnimation") as §0"$§;
         this.§-v§ = this.§@;§.getItemByName("MovieClip_Boom") as §0"$§;
         this.§="c§ = this.§@;§.getItemByName("Container_VsHero") as § #^§;
         this.§<!t§ = this.§@;§.getItemByName("MovieClip_VsProfilePicHero") as §0"$§;
         this.§>! § = this.§@;§.getItemByName("MovieClip_CrownHero") as §0"$§;
         this.§;^§ = this.§@;§.getItemByName("TextField_VsScore") as §6!D§;
         this.§ "a§ = this.§@;§.getItemByName("TextField_NameHero") as §6!D§;
         this.§;!,§ = this.§@;§.getItemByName("TextField_VsPositionHero") as §6!D§;
         this.§0!6§ = this.§@;§.getItemByName("Container_VsEnemy") as § #^§;
         this.§8!f§ = this.§@;§.getItemByName("MovieClip_VsProfilePicEnemy") as §0"$§;
         this.§""&§ = this.§@;§.getItemByName("MovieClip_CrownEnemy") as §0"$§;
         this.§6!+§ = this.§@;§.getItemByName("TextField_VsScoreEnemy") as §6!D§;
         this.§#""§ = this.§@;§.getItemByName("TextField_NameEnemy") as §6!D§;
         this.§;!!§ = this.§@;§.getItemByName("TextField_VsPositionEnemy") as §6!D§;
      }
      
      private function initialize() : void
      {
         var _loc4_:int = 0;
         this.§6!u§();
         this.§]"n§ = null;
         var _loc1_:MovieClip = this.§@;§.getItemByName("PlayerNameMask").mClip;
         var _loc2_:String = §@#B§(§4#;§.singleton.dataModel).§9!N§.name;
         this.§46§(_loc2_,this.§ "a§,_loc1_);
         var _loc3_:int = §4#;§.singleton.dataModel.userProgress.getScoreForLevel(this.§7"5§);
         this.§2"%§ = this.§-"]§.§1!N§();
         if(this.§2"%§)
         {
            this.§@"l§(this.§2"%§);
            _loc4_ = this.§2"%§.§9!<§ + 1;
            this.§0!6§.setVisibility(true);
            this.§0!U§.setVisibility(true);
            this.§="c§.setVisibility(true);
         }
         else
         {
            _loc4_ = 1;
            this.§0!6§.setVisibility(false);
            this.§0!U§.setVisibility(false);
            this.§="c§.setVisibility(true);
            this.§="c§.x = this.§0!6§.x;
         }
         this.§;!,§.setText(_loc4_.toString());
         if(_loc3_ > 0)
         {
            §7q§(§4#;§.singleton.dataModel.userProgress).§+!W§(this.§+!b§.currentLevel,_loc4_);
         }
         var _loc5_:int = §4#;§.singleton.dataModel.userProgress.getEagleScoreForLevel(this.§7"5§);
         this.§>! §.setVisibility(_loc4_ <= 3 && (_loc3_ > 0 || _loc5_ > 0));
         if(_loc4_ > 0 && _loc4_ <= 3 && (_loc3_ > 0 || _loc5_ > 0))
         {
            this.§>! §.§-"I§(["Gold","Silver","Bronze"][_loc4_ - 1]);
         }
         else
         {
            this.§>! §.§0#6§(1);
         }
         this.§2#>§.setVisibility(true);
         this.§5!S§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§6#X§)
         {
            this.§6#X§.stop();
            this.§6#X§ = null;
         }
         if(this.§=v§)
         {
            this.§=v§.stop();
            this.§=v§ = null;
         }
         this.§2#>§.setVisibility(true);
         this.§="c§.x = this.§4">§;
         this.§="c§.setVisibility(true);
         this.§0!6§.y = this.§9"D§;
         this.§0!6§.setVisibility(true);
         this.§?!R§ = false;
         this.§5!S§ = false;
         this.§+!C§();
         this.§&1§();
         this.§]"n§ = null;
         this.§5E§ = new Vector.<§5"2§>(0);
         this.§0!U§.§0#6§(1);
      }
      
      public function activate(param1:§6#!§) : void
      {
         this.§?!R§ = true;
         this.§,#^§ = false;
         this.§ F§ = param1;
         if(this.§6#X§)
         {
            this.§6#X§.play();
         }
         if(this.§=v§)
         {
            this.§=v§.play();
         }
         var _loc2_:MovieClip = this.§@;§.getItemByName("PlayerNameMask").mClip;
         var _loc3_:String = §@#B§(§4#;§.singleton.dataModel).§9!N§.name;
         this.§46§(_loc3_,this.§ "a§,_loc2_);
         if(this.§?J§)
         {
            this.§46§(this.§?J§.userName,this.§#""§,this.§@;§.getItemByName("EnemyNameMask").mClip);
         }
      }
      
      public function deActivate() : void
      {
         this.§?!R§ = false;
         if(this.§6#X§)
         {
            this.§6#X§.pause();
         }
         if(this.§=v§)
         {
            this.§=v§.pause();
         }
      }
      
      public function levelStarted(param1:§%!8§, param2:String) : void
      {
         this.§7"5§ = param2;
         this.§+!C§();
         this.§&1§();
         this.§0!6§.setVisibility(true);
         this.§2#>§.setVisibility(false);
         this.§-"]§ = param1;
         this.§5!S§ = false;
         this.§]"n§ = null;
         this.§'b§ = -1;
         this.§5E§ = new Vector.<§5"2§>(0);
         this.§0!U§.setVisibility(true);
         this.§0!U§.§-"I§("Start");
         this.§0!U§.§<"M§ = true;
         this.§9"d§ = -1;
         this.§="c§.x = this.§4">§;
         this.§0!6§.y = this.§9"D§;
         this.§=v§ = null;
         this.§6#X§ = null;
         this.§&"#§();
      }
      
      public function run(param1:Number) : Boolean
      {
         if(!this.§?!R§ || this.§-"]§.isLoading || this.§,-§)
         {
            this.§2#>§.setVisibility(false);
            this.§,#^§ = true;
            return true;
         }
         this.§,#^§ = false;
         if(!this.§5!S§)
         {
            this.initialize();
         }
         this.§[!2§(param1);
         this.§,#^§ = this.§]"n§ == null;
         return this.§]"n§ == null;
      }
      
      public function §0r§(param1:int) : void
      {
         var _loc2_:int = 0;
         if(this.§9"d§ == param1)
         {
            return;
         }
         this.§9"d§ = param1;
         this.§;^§.setText(this.§8"N§(this.§9"d§));
         if(!this.§2"%§)
         {
            return;
         }
         if(this.§-"]§.isLoading || this.§ F§.isGameOverBlocked() || this.§,-§)
         {
            return;
         }
         while(this.§2"%§ && this.§9"d§ > this.§2"%§.§@"0§)
         {
            this.§5E§.unshift(this.§2"%§);
            _loc2_ = this.§-"]§.data.indexOf(this.§2"%§) - 1;
            if(_loc2_ >= 0)
            {
               this.§2"%§ = this.§-"]§.data[_loc2_];
            }
            else
            {
               this.§2"%§ = null;
            }
         }
         while(this.§5E§.length > 1)
         {
            this.§5E§.pop();
         }
         if(this.§5E§.length > 0 && !this.§]"n§)
         {
            this.§[_§();
         }
      }
      
      private function §@"l§(param1:§5"2§) : void
      {
         this.§""&§.setVisibility(param1.§9!<§ <= 3);
         if(param1.§9!<§ > 0 && param1.§9!<§ <= 3)
         {
            this.§""&§.§-"I§(["Gold","Silver","Bronze"][param1.§9!<§ - 1]);
         }
         this.§;!!§.setText(param1.§9!<§.toString());
         this.§6!+§.setText(this.§8"N§(param1.§@"0§));
         this.§?7§(param1);
      }
      
      private function §[!2§(param1:Number) : void
      {
         var _loc2_:§0"$§ = null;
         for each(_loc2_ in [this.§0!U§,this.§-v§,this.§0!U§])
         {
            this.§>"U§(_loc2_,param1,true);
         }
      }
      
      private function §?7§(param1:§5"2§) : void
      {
         var _loc2_:String = param1.userId;
         this.§?J§ = param1;
         this.§+!C§();
         this.§]!B§ = new §?@§(_loc2_,50,50,§@4§.NORMAL);
         this.§%"M§(this.§8!f§,this.§]!B§);
         this.§46§(param1.userName,this.§#""§,this.§@;§.getItemByName("EnemyNameMask").mClip);
      }
      
      private function §46§(param1:String, param2:§6!D§, param3:MovieClip) : String
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
      
      private function §%"M§(param1:§0"$§, param2:DisplayObject) : void
      {
         while(param1.mClip.numChildren > 0)
         {
            param1.mClip.removeChildAt(0);
         }
         param1.mClip.addChild(param2);
      }
      
      private function §&"#§() : void
      {
         var _loc1_:String = §@#B§(§4#;§.singleton.dataModel).§9!N§.id;
         this.§&1§();
         this.§3e§ = new §?@§(_loc1_,50,50,§@4§.NORMAL);
         this.§%"M§(this.§<!t§,this.§3e§);
      }
      
      private function §;!k§(param1:Event) : void
      {
         this.§&"#§();
      }
      
      private function §+!C§() : void
      {
         if(this.§]!B§)
         {
            this.§]!B§.dispose();
            this.§]!B§ = null;
         }
      }
      
      private function §&1§() : void
      {
         if(this.§3e§)
         {
            this.§3e§.dispose();
            this.§3e§ = null;
         }
      }
      
      public function set §#"a§(param1:Boolean) : void
      {
         this.§,-§ = param1;
         this.§2#>§.setVisibility(!this.§,-§ && this.§5!S§);
      }
      
      private function §[_§() : void
      {
         this.§]"n§ = this.§5E§.pop();
         this.§=v§ = §-#C§.§%!E§.§^!H§(this.§="c§.mClip,{"x":this.§4">§ + 15},{"x":this.§4">§},0.5,§-#C§.§ !^§);
         this.§=v§.onComplete = this.§ !C§;
         this.§=v§.play();
         §?!r§.§"#_§("next_to_beat");
      }
      
      private function § !C§() : void
      {
         var _loc2_:int = 0;
         this.§=v§ = null;
         this.§-v§.§-"I§("Start");
         this.§-v§.§<"M§ = true;
         this.§-v§.setVisibility(true);
         var _loc1_:§5"2§ = this.§5E§.length > 0 ? this.§5E§[this.§5E§.length - 1] : this.§2"%§;
         if(this.§]"n§.§9!<§ == 1 || _loc1_ == null)
         {
            this.§0!6§.setVisibility(false);
            this.§=v§ = §-#C§.§%!E§.§^!H§(this.§="c§.mClip,{"x":this.§0!6§.mClip.x},null,0.5);
            this.§=v§.onComplete = this.§9"!§;
            this.§=v§.play();
            this.§>! §.§-"I§("Gold");
            this.§;!,§.setText("1");
            this.§>! §.setVisibility(true);
         }
         else
         {
            this.§=v§ = §-#C§.§%!E§.§^!H§(this.§="c§.mClip,{"x":this.§4">§},null,0.5);
            this.§=v§.onComplete = null;
            this.§=v§.play();
            this.§@"l§(_loc1_);
            _loc2_ = _loc1_.§9!<§ + 1;
            this.§>! §.setVisibility(_loc2_ <= 3);
            if(_loc2_ > 0 && _loc2_ <= 3)
            {
               this.§>! §.§-"I§(["Gold","Silver","Bronze"][_loc2_ - 1]);
            }
            this.§;!,§.setText(_loc2_.toString());
            this.§6#X§ = §-#C§.§%!E§.§^!H§(this.§0!6§.mClip,{"y":this.§9"D§},{"y":-150},2,§-#C§.§ !^§);
            this.§6#X§.onComplete = this.§@6§;
            this.§6#X§.play();
         }
      }
      
      private function §@6§() : void
      {
         this.§6#X§ = null;
         this.§]"n§ = null;
         if(this.§5E§.length > 0)
         {
            this.§[_§();
         }
      }
      
      private function §9"!§() : void
      {
         this.§=v§ = null;
         this.§]"n§ = null;
      }
      
      private function §>"U§(param1:§0"$§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(param1.§<"M§ == true)
         {
            if((_loc4_ = param1.§<U§(param2)) == "End")
            {
               param1.§<"M§ = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function §6!u§() : void
      {
         var _loc1_:§]"V§ = null;
         var _loc2_:§5"$§ = null;
         for each(_loc1_ in this.§-"]§.data)
         {
            if(_loc1_ is §5"2§)
            {
               _loc2_ = new §5"$§(_loc1_.userId,§@4§.NORMAL);
               _loc2_.dispose();
            }
         }
      }
      
      private function §8"N§(param1:int) : String
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
   }
}
