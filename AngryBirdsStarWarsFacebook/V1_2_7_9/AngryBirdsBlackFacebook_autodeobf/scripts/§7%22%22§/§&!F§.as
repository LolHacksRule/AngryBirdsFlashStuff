package §7""§
{
   import § "I§.§?!%§;
   import §"!P§.§3G§;
   import §""d§.§+">§;
   import §""d§.§,m§;
   import §""d§.§<`§;
   import §'! §.§4!Q§;
   import §'! §.§41§;
   import §,"v§.§@§;
   import §,#+§.§7!m§;
   import §]!=§.§;"I§;
   import §`!b§.§"§;
   import §`!b§.§9!=§;
   import §`!b§.§>"h§;
   import §`"8§.§-!w§;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §&!F§
   {
       
      
      private var § !p§:§7!m§;
      
      private var §^!!§:§;"I§;
      
      private var §3"Q§:Boolean = false;
      
      private var §>I§:§,m§;
      
      private var §,W§:§9!=§;
      
      private var §?!1§:§4!Q§;
      
      private var §]!p§:§4!Q§;
      
      private var §+!4§:Number;
      
      private var §'U§:Number;
      
      private var §-"0§:§4!z§;
      
      private var §?"!§:§'"y§;
      
      private var §]!c§:Boolean = false;
      
      private var §<d§:Boolean;
      
      private var §""%§:§>"h§;
      
      private var §1"o§:int;
      
      private var §&!D§:§>"h§;
      
      private var §9[§:int = -1;
      
      private var §+!@§:Vector.<§>"h§>;
      
      private var §'"!§:String;
      
      private var §+8§:§>"h§;
      
      private var §2!j§:§,m§;
      
      private var §7Y§:§,m§;
      
      private var § !D§:§,m§;
      
      private var §!"H§:§<`§;
      
      private var §9"`§:§<`§;
      
      private var §=!q§:§<`§;
      
      private var §6!V§:§<`§;
      
      private var §#!S§:§<`§;
      
      private var §,U§:§<`§;
      
      private var §,!=§:§+">§;
      
      private var §!!b§:§+">§;
      
      private var §9,§:§+">§;
      
      private var §2&§:§+">§;
      
      private var §^!^§:§+">§;
      
      private var §>5§:§+">§;
      
      private var §4"L§:Boolean;
      
      public function §&!F§(param1:§,m§, param2:§7!m§, param3:§;"I§)
      {
         super();
         this.§ !p§ = param2;
         this.§^!!§ = param3;
         this.§>I§ = param1;
         this.§'!x§();
         this.§+!4§ = this.§7Y§.x;
         this.§'U§ = this.§ !D§.y;
      }
      
      public function get §6;§() : Boolean
      {
         return this.§<d§;
      }
      
      public function get §[!2§() : Boolean
      {
         return this.§4"L§;
      }
      
      private function §'!x§() : void
      {
         this.§2!j§ = this.§>I§.getItemByName("Container_Vs") as §,m§;
         this.§!"H§ = this.§>I§.getItemByName("MovieClip_VsAnimation") as §<`§;
         this.§9"`§ = this.§>I§.getItemByName("MovieClip_Boom") as §<`§;
         this.§7Y§ = this.§>I§.getItemByName("Container_VsHero") as §,m§;
         this.§=!q§ = this.§>I§.getItemByName("MovieClip_VsProfilePicHero") as §<`§;
         this.§#!S§ = this.§>I§.getItemByName("MovieClip_CrownHero") as §<`§;
         this.§,!=§ = this.§>I§.getItemByName("TextField_VsScore") as §+">§;
         this.§9,§ = this.§>I§.getItemByName("TextField_NameHero") as §+">§;
         this.§^!^§ = this.§>I§.getItemByName("TextField_VsPositionHero") as §+">§;
         this.§ !D§ = this.§>I§.getItemByName("Container_VsEnemy") as §,m§;
         this.§6!V§ = this.§>I§.getItemByName("MovieClip_VsProfilePicEnemy") as §<`§;
         this.§,U§ = this.§>I§.getItemByName("MovieClip_CrownEnemy") as §<`§;
         this.§!!b§ = this.§>I§.getItemByName("TextField_VsScoreEnemy") as §+">§;
         this.§2&§ = this.§>I§.getItemByName("TextField_NameEnemy") as §+">§;
         this.§>5§ = this.§>I§.getItemByName("TextField_VsPositionEnemy") as §+">§;
      }
      
      private function initialize() : void
      {
         var _loc4_:int = 0;
         this.§3"]§();
         this.§&!D§ = null;
         var _loc1_:MovieClip = this.§>I§.getItemByName("PlayerNameMask").mClip;
         var _loc2_:String = §-!w§(§;"@§.singleton.dataModel).§0!;§.name;
         this.§-B§(_loc2_,this.§9,§,_loc1_);
         var _loc3_:int = §;"@§.singleton.dataModel.userProgress.getScoreForLevel(this.§'"!§);
         this.§""%§ = this.§,W§.§7#1§();
         if(this.§""%§)
         {
            this.§'!M§(this.§""%§);
            _loc4_ = this.§""%§.§["Q§ + 1;
            this.§ !D§.setVisibility(true);
            this.§!"H§.setVisibility(true);
            this.§7Y§.setVisibility(true);
         }
         else
         {
            _loc4_ = 1;
            this.§ !D§.setVisibility(false);
            this.§!"H§.setVisibility(false);
            this.§7Y§.setVisibility(true);
            this.§7Y§.x = this.§ !D§.x;
         }
         this.§^!^§.setText(_loc4_.toString());
         if(_loc3_ > 0)
         {
            §3G§(§;"@§.singleton.dataModel.userProgress).§2"z§(this.§ !p§.currentLevel,_loc4_);
         }
         var _loc5_:int = §;"@§.singleton.dataModel.userProgress.getEagleScoreForLevel(this.§'"!§);
         this.§#!S§.setVisibility(_loc4_ <= 3 && (_loc3_ > 0 || _loc5_ > 0));
         if(_loc4_ > 0 && _loc4_ <= 3 && (_loc3_ > 0 || _loc5_ > 0))
         {
            this.§#!S§.§%"Y§(["Gold","Silver","Bronze"][_loc4_ - 1]);
         }
         else
         {
            this.§#!S§.§-!j§(1);
         }
         this.§2!j§.setVisibility(true);
         this.§]!c§ = true;
      }
      
      public function dispose() : void
      {
         if(this.§?!1§)
         {
            this.§?!1§.stop();
            this.§?!1§ = null;
         }
         if(this.§]!p§)
         {
            this.§]!p§.stop();
            this.§]!p§ = null;
         }
         this.§2!j§.setVisibility(true);
         this.§7Y§.x = this.§+!4§;
         this.§7Y§.setVisibility(true);
         this.§ !D§.y = this.§'U§;
         this.§ !D§.setVisibility(true);
         this.§3"Q§ = false;
         this.§]!c§ = false;
         this.§[#0§();
         this.§5c§();
         this.§&!D§ = null;
         this.§+!@§ = new Vector.<§>"h§>(0);
         this.§!"H§.§-!j§(1);
      }
      
      public function activate(param1:§;"I§) : void
      {
         this.§3"Q§ = true;
         this.§4"L§ = false;
         this.§^!!§ = param1;
         if(this.§?!1§)
         {
            this.§?!1§.play();
         }
         if(this.§]!p§)
         {
            this.§]!p§.play();
         }
         var _loc2_:MovieClip = this.§>I§.getItemByName("PlayerNameMask").mClip;
         var _loc3_:String = §-!w§(§;"@§.singleton.dataModel).§0!;§.name;
         this.§-B§(_loc3_,this.§9,§,_loc2_);
         if(this.§+8§)
         {
            this.§-B§(this.§+8§.userName,this.§2&§,this.§>I§.getItemByName("EnemyNameMask").mClip);
         }
      }
      
      public function deActivate() : void
      {
         this.§3"Q§ = false;
         if(this.§?!1§)
         {
            this.§?!1§.pause();
         }
         if(this.§]!p§)
         {
            this.§]!p§.pause();
         }
      }
      
      public function levelStarted(param1:§9!=§, param2:String) : void
      {
         this.§'"!§ = param2;
         this.§[#0§();
         this.§5c§();
         this.§ !D§.setVisibility(true);
         this.§2!j§.setVisibility(false);
         this.§,W§ = param1;
         this.§]!c§ = false;
         this.§&!D§ = null;
         this.§9[§ = -1;
         this.§+!@§ = new Vector.<§>"h§>(0);
         this.§!"H§.setVisibility(true);
         this.§!"H§.§%"Y§("Start");
         this.§!"H§.§^"h§ = true;
         this.§1"o§ = -1;
         this.§7Y§.x = this.§+!4§;
         this.§ !D§.y = this.§'U§;
         this.§]!p§ = null;
         this.§?!1§ = null;
         this.§<"3§();
      }
      
      public function run(param1:Number) : Boolean
      {
         if(!this.§3"Q§ || this.§,W§.isLoading || this.§<d§)
         {
            this.§2!j§.setVisibility(false);
            this.§4"L§ = true;
            return true;
         }
         this.§4"L§ = false;
         if(!this.§]!c§)
         {
            this.initialize();
         }
         this.§;!4§(param1);
         this.§4"L§ = this.§&!D§ == null;
         return this.§&!D§ == null;
      }
      
      public function §7"'§(param1:int) : void
      {
         var _loc2_:int = 0;
         if(this.§1"o§ == param1)
         {
            return;
         }
         this.§1"o§ = param1;
         this.§,!=§.setText(this.§4"<§(this.§1"o§));
         if(!this.§""%§)
         {
            return;
         }
         if(this.§,W§.isLoading || this.§^!!§.isGameOverBlocked() || this.§<d§)
         {
            return;
         }
         while(this.§""%§ && this.§1"o§ > this.§""%§.§#!W§)
         {
            this.§+!@§.unshift(this.§""%§);
            _loc2_ = this.§,W§.data.indexOf(this.§""%§) - 1;
            if(_loc2_ >= 0)
            {
               this.§""%§ = this.§,W§.data[_loc2_];
            }
            else
            {
               this.§""%§ = null;
            }
         }
         while(this.§+!@§.length > 1)
         {
            this.§+!@§.pop();
         }
         if(this.§+!@§.length > 0 && !this.§&!D§)
         {
            this.§2!f§();
         }
      }
      
      private function §'!M§(param1:§>"h§) : void
      {
         this.§,U§.setVisibility(param1.§["Q§ <= 3);
         if(param1.§["Q§ > 0 && param1.§["Q§ <= 3)
         {
            this.§,U§.§%"Y§(["Gold","Silver","Bronze"][param1.§["Q§ - 1]);
         }
         this.§>5§.setText(param1.§["Q§.toString());
         this.§!!b§.setText(this.§4"<§(param1.§#!W§));
         this.§5" §(param1);
      }
      
      private function §;!4§(param1:Number) : void
      {
         var _loc2_:§<`§ = null;
         for each(_loc2_ in [this.§!"H§,this.§9"`§,this.§!"H§])
         {
            this.§%!q§(_loc2_,param1,true);
         }
      }
      
      private function §5" §(param1:§>"h§) : void
      {
         var _loc2_:String = param1.userId;
         this.§+8§ = param1;
         this.§[#0§();
         this.§-"0§ = new §'"y§(_loc2_,50,50,§?!%§.NORMAL);
         this.§""7§(this.§6!V§,this.§-"0§);
         this.§-B§(param1.userName,this.§2&§,this.§>I§.getItemByName("EnemyNameMask").mClip);
      }
      
      private function §-B§(param1:String, param2:§+">§, param3:MovieClip) : String
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
      
      private function §""7§(param1:§<`§, param2:DisplayObject) : void
      {
         while(param1.mClip.numChildren > 0)
         {
            param1.mClip.removeChildAt(0);
         }
         param1.mClip.addChild(param2);
      }
      
      private function §<"3§() : void
      {
         var _loc1_:String = §-!w§(§;"@§.singleton.dataModel).§0!;§.id;
         this.§5c§();
         this.§?"!§ = new §'"y§(_loc1_,50,50,§?!%§.NORMAL);
         this.§""7§(this.§=!q§,this.§?"!§);
      }
      
      private function § !o§(param1:Event) : void
      {
         this.§<"3§();
      }
      
      private function §[#0§() : void
      {
         if(this.§-"0§)
         {
            this.§-"0§.dispose();
            this.§-"0§ = null;
         }
      }
      
      private function §5c§() : void
      {
         if(this.§?"!§)
         {
            this.§?"!§.dispose();
            this.§?"!§ = null;
         }
      }
      
      public function set § Z§(param1:Boolean) : void
      {
         this.§<d§ = param1;
         this.§2!j§.setVisibility(!this.§<d§ && this.§]!c§);
      }
      
      private function §2!f§() : void
      {
         this.§&!D§ = this.§+!@§.pop();
         this.§]!p§ = §41§.§-G§.§&#'§(this.§7Y§.mClip,{"x":this.§+!4§ + 15},{"x":this.§+!4§},0.5,§41§.§%-§);
         this.§]!p§.onComplete = this.§=J§;
         this.§]!p§.play();
         §@§.§=Y§("next_to_beat");
      }
      
      private function §=J§() : void
      {
         var _loc2_:int = 0;
         this.§]!p§ = null;
         this.§9"`§.§%"Y§("Start");
         this.§9"`§.§^"h§ = true;
         this.§9"`§.setVisibility(true);
         var _loc1_:§>"h§ = this.§+!@§.length > 0 ? this.§+!@§[this.§+!@§.length - 1] : this.§""%§;
         if(this.§&!D§.§["Q§ == 1 || _loc1_ == null)
         {
            this.§ !D§.setVisibility(false);
            this.§]!p§ = §41§.§-G§.§&#'§(this.§7Y§.mClip,{"x":this.§ !D§.mClip.x},null,0.5);
            this.§]!p§.onComplete = this.§!!T§;
            this.§]!p§.play();
            this.§#!S§.§%"Y§("Gold");
            this.§^!^§.setText("1");
            this.§#!S§.setVisibility(true);
         }
         else
         {
            this.§]!p§ = §41§.§-G§.§&#'§(this.§7Y§.mClip,{"x":this.§+!4§},null,0.5);
            this.§]!p§.onComplete = null;
            this.§]!p§.play();
            this.§'!M§(_loc1_);
            _loc2_ = _loc1_.§["Q§ + 1;
            this.§#!S§.setVisibility(_loc2_ <= 3);
            if(_loc2_ > 0 && _loc2_ <= 3)
            {
               this.§#!S§.§%"Y§(["Gold","Silver","Bronze"][_loc2_ - 1]);
            }
            this.§^!^§.setText(_loc2_.toString());
            this.§?!1§ = §41§.§-G§.§&#'§(this.§ !D§.mClip,{"y":this.§'U§},{"y":-150},2,§41§.§%-§);
            this.§?!1§.onComplete = this.§!"M§;
            this.§?!1§.play();
         }
      }
      
      private function §!"M§() : void
      {
         this.§?!1§ = null;
         this.§&!D§ = null;
         if(this.§+!@§.length > 0)
         {
            this.§2!f§();
         }
      }
      
      private function §!!T§() : void
      {
         this.§]!p§ = null;
         this.§&!D§ = null;
      }
      
      private function §%!q§(param1:§<`§, param2:Number, param3:Boolean = false) : void
      {
         var _loc4_:String = null;
         if(param1.§^"h§ == true)
         {
            if((_loc4_ = param1.§6V§(param2)) == "End")
            {
               param1.§^"h§ = false;
               if(param3)
               {
                  param1.setVisibility(false);
               }
            }
         }
      }
      
      private function §3"]§() : void
      {
         var _loc1_:§"#6§ = null;
         var _loc2_:§4!z§ = null;
         for each(_loc1_ in this.§,W§.data)
         {
            if(_loc1_ is §>"h§)
            {
               _loc2_ = new §4!z§(_loc1_.userId,§?!%§.NORMAL);
               _loc2_.dispose();
            }
         }
      }
      
      private function §4"<§(param1:int) : String
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
