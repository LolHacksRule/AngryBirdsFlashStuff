package §`"]§
{
   import §+&§.§&q§;
   import §0"g§.§%b§;
   import §0"g§.§5!%§;
   import §0"k§.§&L§;
   import §0"k§.§-"[§;
   import §0"k§.§4l§;
   import §9"U§.§7"1§;
   import §=Z§.§0%§;
   import §=Z§.§9!c§;
   import §=Z§.§@!8§;
   import §?"6§.§`!^§;
   import §`"1§.§=Q§;
   import §`"n§.§""r§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import §null §.§5#§;
   
   public class §>"U§
   {
       
      
      private var §'""§:§5#§;
      
      private var §3!d§:§`!^§;
      
      private var §finally§:Boolean = false;
      
      private var §^!b§:§@!8§;
      
      private var §?"1§:§4l§;
      
      private var §6#'§:§%b§;
      
      private var §8!c§:§%b§;
      
      private var §[v§:Number;
      
      private var §^#$§:Number;
      
      private var §[!q§:§ #2§;
      
      private var §6"W§:§[#1§;
      
      private var §&"_§:Boolean = false;
      
      private var §'#%§:Boolean;
      
      private var §3"$§:§-"[§;
      
      private var §"-§:int;
      
      private var §!3§:§-"[§;
      
      private var §-"X§:int = -1;
      
      private var §4"9§:Vector.<§-"[§>;
      
      private var § true§:String;
      
      private var §3>§:§-"[§;
      
      private var §=!R§:§@!8§;
      
      private var §[o§:§@!8§;
      
      private var §,"V§:§@!8§;
      
      private var §#f§:§9!c§;
      
      private var §#!#§:§9!c§;
      
      private var §6!y§:§9!c§;
      
      private var §?!Q§:§9!c§;
      
      private var §=!2§:§9!c§;
      
      private var §8u§:§9!c§;
      
      private var §?!b§:§0%§;
      
      private var §,"Z§:§0%§;
      
      private var §'!E§:§0%§;
      
      private var §3!Q§:§0%§;
      
      private var §;"e§:§0%§;
      
      private var §+`§:§0%§;
      
      private var §?#7§:Boolean;
      
      public function §>"U§(param1:§@!8§, param2:§5#§, param3:§`!^§)
      {
         super();
         this.§'""§ = param2;
         this.§3!d§ = param3;
         this.§^!b§ = param1;
         this.§&o§();
         this.§[v§ = this.§[o§.x;
         this.§^#$§ = this.§,"V§.y;
      }
      
      public function get §5!p§() : Boolean
      {
         return this.§'#%§;
      }
      
      public function get §4!7§() : Boolean
      {
         return this.§?#7§;
      }
      
      private function §&o§() : void
      {
         this.§=!R§ = this.§^!b§.getItemByName("Container_Vs") as §@!8§;
         this.§#f§ = this.§^!b§.getItemByName("MovieClip_VsAnimation") as §9!c§;
         this.§#!#§ = this.§^!b§.getItemByName("MovieClip_Boom") as §9!c§;
         this.§[o§ = this.§^!b§.getItemByName("Container_VsHero") as §@!8§;
         this.§6!y§ = this.§^!b§.getItemByName("MovieClip_VsProfilePicHero") as §9!c§;
         this.§=!2§ = this.§^!b§.getItemByName("MovieClip_CrownHero") as §9!c§;
         this.§?!b§ = this.§^!b§.getItemByName("TextField_VsScore") as §0%§;
         this.§'!E§ = this.§^!b§.getItemByName("TextField_NameHero") as §0%§;
         this.§;"e§ = this.§^!b§.getItemByName("TextField_VsPositionHero") as §0%§;
         this.§,"V§ = this.§^!b§.getItemByName("Container_VsEnemy") as §@!8§;
         this.§?!Q§ = this.§^!b§.getItemByName("MovieClip_VsProfilePicEnemy") as §9!c§;
         this.§8u§ = this.§^!b§.getItemByName("MovieClip_CrownEnemy") as §9!c§;
         this.§,"Z§ = this.§^!b§.getItemByName("TextField_VsScoreEnemy") as §0%§;
         this.§3!Q§ = this.§^!b§.getItemByName("TextField_NameEnemy") as §0%§;
         this.§+`§ = this.§^!b§.getItemByName("TextField_VsPositionEnemy") as §0%§;
      }
      
      private function initialize() : void
      {
         var _loc4_:int = 0;
         this.§!"X§();
         this.§!3§ = null;
         var _loc1_:MovieClip = this.§^!b§.getItemByName("PlayerNameMask").mClip;
         var _loc2_:String = §7"1§(§4"#§.singleton.dataModel).§#"_§.name;
         this.§5"h§(_loc2_,this.§'!E§,_loc1_);
         var _loc3_:int = §4"#§.singleton.dataModel.userProgress.getScoreForLevel(this.§ true§);
         this.§3"$§ = this.§?"1§.§+!c§();
         if(this.§3"$§)
         {
            this.§4!z§(this.§3"$§);
            _loc4_ = this.§3"$§.§5!b§ + 1;
            this.§,"V§.setVisibility(true);
            this.§#f§.setVisibility(true);
            this.§[o§.setVisibility(true);
         }
         else
         {
            _loc4_ = 1;
            this.§,"V§.setVisibility(false);
            this.§#f§.setVisibility(false);
            this.§[o§.setVisibility(true);
            this.§[o§.x = this.§,"V§.x;
         }
         this.§;"e§.setText(_loc4_.toString());
         if(_loc3_ > 0)
         {
            §""r§(§4"#§.singleton.dataModel.userProgress).§ "C§(this.§'""§.currentLevel,_loc4_);
         }
         var _loc5_:int = §4"#§.singleton.dataModel.userProgress.getEagleScoreForLevel(this.§ true§);
         this.§=!2§.setVisibility(_loc4_ <= 3 && (_loc3_ > 0 || _loc5_ > 0));
         if(_loc4_ > 0 && _loc4_ <= 3 && (_loc3_ > 0 || _loc5_ > 0))
         {
            this.§=!2§.§ g§(["Gold","Silver","Bronze"][_loc4_ - 1]);
         }
         else
         {
            this.§=!2§.§8!"§(1);
         }
         this.§=!R§.setVisibility(true);
         this.§&"_§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§6#'§)
         {
            this.§6#'§.stop();
            this.§6#'§ = null;
         }
         if(this.§8!c§)
         {
            this.§8!c§.stop();
            this.§8!c§ = null;
         }
         this.§=!R§.setVisibility(true);
         this.§[o§.x = this.§[v§;
         this.§[o§.setVisibility(true);
         this.§,"V§.y = this.§^#$§;
         this.§,"V§.setVisibility(true);
         this.§finally§ = false;
         this.§&"_§ = false;
         this.§6"h§();
         this.§8!V§();
         this.§!3§ = null;
         this.§4"9§ = new Vector.<§-"[§>(0);
         this.§#f§.§8!"§(1);
      }
      
      public function activate(param1:§`!^§) : void
      {
         this.§finally§ = true;
         this.§?#7§ = false;
         this.§3!d§ = param1;
         if(this.§6#'§)
         {
            this.§6#'§.play();
         }
         if(this.§8!c§)
         {
            this.§8!c§.play();
         }
         var _loc2_:MovieClip = this.§^!b§.getItemByName("PlayerNameMask").mClip;
         var _loc3_:String = §7"1§(§4"#§.singleton.dataModel).§#"_§.name;
         this.§5"h§(_loc3_,this.§'!E§,_loc2_);
         if(this.§3>§)
         {
            this.§5"h§(this.§3>§.userName,this.§3!Q§,this.§^!b§.getItemByName("EnemyNameMask").mClip);
         }
      }
      
      public function deActivate() : void
      {
         this.§finally§ = false;
         if(this.§6#'§)
         {
            this.§6#'§.pause();
         }
         if(this.§8!c§)
         {
            this.§8!c§.pause();
         }
      }
      
      public function levelStarted(param1:§4l§, param2:String) : void
      {
         this.§ true§ = param2;
         this.§6"h§();
         this.§8!V§();
         this.§,"V§.setVisibility(true);
         this.§=!R§.setVisibility(false);
         this.§?"1§ = param1;
         this.§&"_§ = false;
         this.§!3§ = null;
         this.§-"X§ = -1;
         this.§4"9§ = new Vector.<§-"[§>(0);
         this.§#f§.setVisibility(true);
         this.§#f§.§ g§("Start");
         this.§#f§.§["z§ = true;
         this.§"-§ = -1;
         this.§[o§.x = this.§[v§;
         this.§,"V§.y = this.§^#$§;
         this.§8!c§ = null;
         this.§6#'§ = null;
         this.§0!s§();
      }
      
      public function run(param1:Number) : Boolean
      {
         if(!this.§finally§ || this.§?"1§.isLoading || this.§'#%§)
         {
            this.§=!R§.setVisibility(false);
            this.§?#7§ = true;
            return true;
         }
         this.§?#7§ = false;
         if(!this.§&"_§)
         {
            this.initialize();
         }
         this.§9G§(param1);
         this.§?#7§ = this.§!3§ == null;
         return this.§!3§ == null;
      }
      
      public function §#e§(param1:int) : void
      {
         var _loc2_:int = 0;
         if(this.§"-§ == param1)
         {
            return;
         }
         this.§"-§ = param1;
         this.§?!b§.setText(this.§<r§(this.§"-§));
         if(!this.§3"$§)
         {
            return;
         }
         if(this.§?"1§.isLoading || this.§3!d§.isGameOverBlocked() || this.§'#%§)
         {
            return;
         }
         while(this.§3"$§ && this.§"-§ > this.§3"$§.§2!2§)
         {
            this.§4"9§.unshift(this.§3"$§);
            _loc2_ = this.§?"1§.data.indexOf(this.§3"$§) - 1;
            if(_loc2_ >= 0)
            {
               this.§3"$§ = this.§?"1§.data[_loc2_];
            }
            else
            {
               this.§3"$§ = null;
            }
         }
         while(this.§4"9§.length > 1)
         {
            this.§4"9§.pop();
         }
         if(this.§4"9§.length > 0 && !this.§!3§)
         {
            this.§6"r§();
         }
      }
      
      private function §4!z§(param1:§-"[§) : void
      {
         this.§8u§.setVisibility(param1.§5!b§ <= 3);
         if(param1.§5!b§ > 0 && param1.§5!b§ <= 3)
         {
            this.§8u§.§ g§(["Gold","Silver","Bronze"][param1.§5!b§ - 1]);
         }
         this.§+`§.setText(param1.§5!b§.toString());
         this.§,"Z§.setText(this.§<r§(param1.§2!2§));
         this.§8#5§(param1);
      }
      
      private function §9G§(param1:Number) : void
      {
         var _loc2_:§9!c§ = null;
         for each(_loc2_ in [this.§#f§,this.§#!#§,this.§#f§])
         {
            this.§8!!§(_loc2_,param1,true);
         }
      }
      
      private function §8#5§(param1:§-"[§) : void
      {
         var _loc2_:String = param1.userId;
         this.§3>§ = param1;
         this.§6"h§();
         this.§[!q§ = new §[#1§(_loc2_,50,50,§&q§.NORMAL);
         this.§<A§(this.§?!Q§,this.§[!q§);
         this.§5"h§(param1.userName,this.§3!Q§,this.§^!b§.getItemByName("EnemyNameMask").mClip);
      }
      
      private function §5"h§(param1:String, param2:§0%§, param3:MovieClip) : String
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
      
      private function §<A§(param1:§9!c§, param2:DisplayObject) : void
      {
         while(param1.mClip.numChildren > 0)
         {
            param1.mClip.removeChildAt(0);
         }
         param1.mClip.addChild(param2);
      }
      
      private function §0!s§() : void
      {
         var _loc1_:String = §7"1§(§4"#§.singleton.dataModel).§#"_§.id;
         this.§8!V§();
         this.§6"W§ = new §[#1§(_loc1_,50,50,§&q§.NORMAL);
         this.§<A§(this.§6!y§,this.§6"W§);
      }
      
      private function §0!i§(param1:Event) : void
      {
         this.§0!s§();
      }
      
      private function §6"h§() : void
      {
         if(this.§[!q§)
         {
            this.§[!q§.dispose();
            this.§[!q§ = null;
         }
      }
      
      private function §8!V§() : void
      {
         if(this.§6"W§)
         {
            this.§6"W§.dispose();
            this.§6"W§ = null;
         }
      }
      
      public function set §2"$§(param1:Boolean) : void
      {
         this.§'#%§ = param1;
         this.§=!R§.setVisibility(!this.§'#%§ && this.§&"_§);
      }
      
      private function §6"r§() : void
      {
         this.§!3§ = this.§4"9§.pop();
         this.§8!c§ = §5!%§.§!6§.§4!M§(this.§[o§.mClip,{"x":this.§[v§ + 15},{"x":this.§[v§},0.5,§5!%§.§7v§);
         this.§8!c§.onComplete = this.§&3§;
         this.§8!c§.play();
         §=Q§.§`!A§("next_to_beat");
      }
      
      private function §&3§() : void
      {
         var _loc2_:int = 0;
         this.§8!c§ = null;
         this.§#!#§.§ g§("Start");
         this.§#!#§.§["z§ = true;
         this.§#!#§.setVisibility(true);
         var _loc1_:§-"[§ = this.§4"9§.length > 0 ? this.§4"9§[this.§4"9§.length - 1] : this.§3"$§;
         if(this.§!3§.§5!b§ == 1 || _loc1_ == null)
         {
            this.§,"V§.setVisibility(false);
            this.§8!c§ = §5!%§.§!6§.§4!M§(this.§[o§.mClip,{"x":this.§,"V§.mClip.x},null,0.5);
            this.§8!c§.onComplete = this.§8"l§;
            this.§8!c§.play();
            this.§=!2§.§ g§("Gold");
            this.§;"e§.setText("1");
            this.§=!2§.setVisibility(true);
         }
         else
         {
            this.§8!c§ = §5!%§.§!6§.§4!M§(this.§[o§.mClip,{"x":this.§[v§},null,0.5);
            this.§8!c§.onComplete = null;
            this.§8!c§.play();
            this.§4!z§(_loc1_);
            _loc2_ = _loc1_.§5!b§ + 1;
            this.§=!2§.setVisibility(_loc2_ <= 3);
            if(_loc2_ > 0 && _loc2_ <= 3)
            {
               this.§=!2§.§ g§(["Gold","Silver","Bronze"][_loc2_ - 1]);
            }
            this.§;"e§.setText(_loc2_.toString());
            this.§6#'§ = §5!%§.§!6§.§4!M§(this.§,"V§.mClip,{"y":this.§^#$§},{"y":-150},2,§5!%§.§7v§);
            this.§6#'§.onComplete = this.§+!^§;
            this.§6#'§.play();
         }
      }
      
      private function §+!^§() : void
      {
         this.§6#'§ = null;
         this.§!3§ = null;
         if(this.§4"9§.length > 0)
         {
            this.§6"r§();
         }
      }
      
      private function §8"l§() : void
      {
         this.§8!c§ = null;
         this.§!3§ = null;
      }
      
      private function §8!!§(param1:§9!c§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(param1.§["z§ == true)
         {
            if((_loc4_ = param1.§=D§(param2)) == "End")
            {
               param1.§["z§ = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function §!"X§() : void
      {
         var _loc1_:§&L§ = null;
         var _loc2_:§ #2§ = null;
         for each(_loc1_ in this.§?"1§.data)
         {
            if(_loc1_ is §-"[§)
            {
               _loc2_ = new § #2§(_loc1_.userId,§&q§.NORMAL);
               _loc2_.dispose();
            }
         }
      }
      
      private function §<r§(param1:int) : String
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
