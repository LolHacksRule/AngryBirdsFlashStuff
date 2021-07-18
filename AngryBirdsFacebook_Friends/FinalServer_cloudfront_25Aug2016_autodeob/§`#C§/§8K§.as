package §`#C§
{
   import §[#a§.§-k§;
   import §[#a§.§="@§;
   
   public class §8K§
   {
      
      public static const §@!U§:int = 0;
      
      public static const §;"f§:int = 1;
      
      public static const §?"^§:int = 2;
      
      public static const §,"i§:int = 3;
      
      public static const §=l§:int = 5;
      
      public static const §%3§:int = 6;
      
      public static const §0#&§:int = 7;
      
      public static const §!#§:int = 8;
      
      public static const §?#b§:int = 9;
      
      public static const §]v§:int = 10;
      
      public static const §;#U§:String = "default";
      
      public static const §1";§:String = "background";
       
      
      protected var §4!M§:String;
      
      protected var §8!v§:int;
      
      protected var §,#u§:int;
      
      protected var §]$$§:int;
      
      protected var § #%§:int;
      
      protected var §3$1§:String;
      
      protected var §9"%§:Boolean = false;
      
      protected var §@!Q§:§-"L§;
      
      protected var §4#2§:§^#A§;
      
      protected var §<"M§:§0!y§;
      
      protected var §9I§:Boolean = false;
      
      protected var §]"?§:Number = 1.0;
      
      protected var §-#9§:String;
      
      protected var §]#C§:int;
      
      private var §78§:Boolean;
      
      private var §?#P§:Boolean;
      
      private var §`<§:String;
      
      public function §8K§(param1:String, param2:int, param3:§^#A§, param4:§0!y§, param5:§-"L§, param6:int, param7:int, param8:String, param9:int, param10:Number = 1.0, param11:Boolean = false, param12:String = "", param13:int = 1, param14:Boolean = false, param15:Boolean = false, param16:Boolean = true, param17:String = null)
      {
         super();
         this.§4!M§ = param1;
         this.§8!v§ = param2;
         this.§4#2§ = param3;
         this.§9"%§ = param11;
         this.§9I§ = param14;
         this.§<"M§ = param4;
         this.§@!Q§ = param5;
         this.§,#u§ = param6;
         this.§]$$§ = param9;
         if(param7 == -1)
         {
            this.§ #%§ = this.§]$$§ > 0 ? int(this.§]$$§ * 10) : 0;
         }
         else
         {
            this.§ #%§ = param7;
         }
         this.§3$1§ = param8;
         this.§]"?§ = param10;
         this.§78§ = param15;
         this.§-#9§ = param12;
         this.§]#C§ = param13;
         this.§?#P§ = param16;
         this.§`<§ = param17 == null ? §;#U§ : param17.toLowerCase();
      }
      
      public function get front() : Boolean
      {
         return this.§9"%§;
      }
      
      public function get textureType() : String
      {
         return this.§`<§;
      }
      
      public function get itemType() : int
      {
         return this.§8!v§;
      }
      
      public function get itemName() : String
      {
         return this.§4!M§;
      }
      
      public function get category() : String
      {
         return this.§3$1§;
      }
      
      public function get maxStrength() : int
      {
         return this.§]$$§;
      }
      
      public function get material() : §^#A§
      {
         return this.§4#2§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§-#9§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§]#C§;
      }
      
      public function get disableBirdPassThrough() : Boolean
      {
         return this.§9I§;
      }
      
      public function get §"P§() : Boolean
      {
         return this.§78§;
      }
      
      public function get damageScore() : int
      {
         return this.§ #%§;
      }
      
      public function §!$7§() : int
      {
         return this.shape.getWidth();
      }
      
      public function §#!4§() : int
      {
         return this.shape.getHeight();
      }
      
      public function getItemDensity() : Number
      {
         return this.§4#2§.density;
      }
      
      public function getItemBodyType() : int
      {
         return this.§4#2§.bodyType;
      }
      
      public function §8!G§() : Number
      {
         return this.§4#2§.colors;
      }
      
      public function getItemDefence() : Number
      {
         if(!isNaN(this.§4#2§.defence))
         {
            return this.§4#2§.defence;
         }
         return 0;
      }
      
      public function getItemFriction() : Number
      {
         return this.§4#2§.friction;
      }
      
      public function getItemRestitution() : Number
      {
         return this.§4#2§.restitution;
      }
      
      public function getItemStrength() : Number
      {
         return this.§4#2§.strength;
      }
      
      public function getItemZOrder() : int
      {
         if(this.itemType == §%3§)
         {
            return 6;
         }
         if(this.itemType == §]v§)
         {
            return 5;
         }
         if(this.front)
         {
            return §="@§.§3"S§;
         }
         return §="@§.§>#P§;
      }
      
      public function get shape() : §-"L§
      {
         return this.§@!Q§;
      }
      
      public function get soundResource() : §0!y§
      {
         return this.§<"M§;
      }
      
      public function get destroyedScoreInc() : int
      {
         return this.§,#u§;
      }
      
      public function get scale() : Number
      {
         return this.§]"?§;
      }
      
      public function get isMaterialStatic() : Boolean
      {
         return this.§4#2§.§3"&§();
      }
      
      public function get materialName() : String
      {
         return this.§4#2§.name;
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         return this.§4#2§.getDamageMultiplier(param1);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         return this.§4#2§.getVelocityMultiplier(param1);
      }
      
      public function getAnimationDefinitions() : Array
      {
         if(this.itemName.indexOf("BIRD") == 0)
         {
            return this.§'$1§();
         }
         if(this.itemName.indexOf("PIG") == 0)
         {
            return this.§4!u§();
         }
         if(this.itemName.indexOf("MISC_EASTER_EGG") == 0)
         {
            return this.§^T§();
         }
         return this.§?!O§();
      }
      
      public function get isColliding() : Boolean
      {
         return this.§?#P§;
      }
      
      private function §?!O§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]],["3",[this.itemName + "_3"]],["4",[this.itemName + "_4"]]];
         return [[§="@§.§0!V§,_loc1_]];
      }
      
      private function §^T§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName]]];
         return [[§="@§.§0!V§,_loc1_]];
      }
      
      private function §4!u§() : Array
      {
         return [[§="@§.§0!V§,[["1",[this.itemName + "_01"]],["2",[this.itemName + "_02"]],["3",[this.itemName + "_03"]]]],[§="@§.§""8§,[["1",[this.itemName + "_01_BLINK"]],["2",[this.itemName + "_02_BLINK"]],["3",[this.itemName + "_03_BLINK"]]]],[§="@§.§[!k§,[["1",[this.itemName + "_01_SMILE"]],["2",[this.itemName + "_02_SMILE"]],["3",[this.itemName + "_03_SMILE"]]]]];
      }
      
      private function §'$1§() : Array
      {
         if(this.itemName == "BIRD_SARDINE")
         {
            return [[§="@§.§0!V§,[this.itemName]]];
         }
         if(this.itemName == "BIRD_MIGHTY_EAGLE")
         {
            return [[§="@§.§0!V§,["BIRD_ME_MOTION","BIRD_ME_RADIAL"]]];
         }
         if(this.itemName == "BIRD_ORANGE")
         {
            return [[§="@§.§0!V§,[["1",[this.itemName + "_YELL"]]]],[§="@§.§""8§,[["1",[this.itemName + "_BLINK"]]]],[§-k§.§'#;§,[["1",[this.itemName + "_YELL"]]]],[§="@§.§[!k§,[["1",[this.itemName + "_EXCITED"]]]],[§-k§.§?e§,[["1",[this.itemName + "_EXCITED"]]]],[§-k§.§'"<§,[["1",[this.itemName + "_BALLOON"]]]]];
         }
         var _loc1_:Array = this.§<!f§();
         var _loc2_:Array = this.§4%§();
         var _loc3_:Array = [[§="@§.§0!V§,_loc2_],[§="@§.§""8§,[["1",[this.itemName + "_BLINK"]]]],[§-k§.§'#;§,[["1",[this.itemName + "_FLYING"]]]],[§="@§.§[!k§,[["1",[this.itemName + "_YELL"]]]],[§-k§.§?e§,[["1",[this.itemName + "_FLYING_YELL"]]]]];
         if(_loc1_)
         {
            _loc3_.push([§-k§.§'"<§,_loc1_]);
         }
         return _loc3_;
      }
      
      private function §4%§() : Array
      {
         if(this.itemName == "BIRD_REDBIG")
         {
            return [["1",[this.itemName + "_1"]]];
         }
         return [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]]];
      }
      
      private function §<!f§() : Array
      {
         if(this.itemName == "BIRD_BLACK")
         {
            return [["1",[this.itemName + "_SPECIAL",this.itemName + "_SPECIAL_2",this.itemName + "_SPECIAL_3"],[900,900,5000]]];
         }
         if(this.itemName == "BIRD_WHITE" || this.itemName == "BIRD_YELLOW")
         {
            return [["1",[this.itemName + "_SPECIAL"]]];
         }
         if(this.itemName == "BIRD_GREEN")
         {
            return [["1",[this.itemName + "_SPECIAL"]],["2",[this.itemName + "_2"]]];
         }
         return null;
      }
      
      public function isDamageAwardingScore() : Boolean
      {
         if(this.category == "BirdAmmo" || this.category == "Birds")
         {
            return false;
         }
         if(this.maxStrength != -1 && (this.destroyedScoreInc > 0 || this.damageScore > 0))
         {
            return true;
         }
         return false;
      }
      
      public function hasGraphics() : Boolean
      {
         return true;
      }
   }
}
