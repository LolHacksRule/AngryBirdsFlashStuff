package §-!j§
{
   import §^0§.§=Q§;
   import §^0§.§[# §;
   
   public class §-"8§
   {
      
      public static const §>"5§:int = 0;
      
      public static const §8$9§:int = 1;
      
      public static const §]!w§:int = 2;
      
      public static const §""O§:int = 3;
      
      public static const §3"J§:int = 5;
      
      public static const §?#%§:int = 6;
      
      public static const §+!f§:int = 7;
      
      public static const §!!t§:int = 8;
      
      public static const §?#-§:int = 9;
      
      public static const §7"T§:int = 10;
      
      public static const §3"%§:String = "default";
      
      public static const §,V§:String = "background";
       
      
      protected var §2"0§:String;
      
      protected var §=v§:int;
      
      protected var §,"F§:int;
      
      protected var §?T§:String;
      
      protected var §+r§:int;
      
      protected var §2#U§:int;
      
      protected var §7#n§:String;
      
      protected var §'G§:Boolean = false;
      
      protected var §+!5§:§%!a§;
      
      protected var §^!`§:§5!,§;
      
      protected var §^!c§:§&!@§;
      
      protected var §]#X§:Boolean = false;
      
      protected var §6#q§:Number = 1.0;
      
      protected var §#!§:String;
      
      protected var §#`§:int;
      
      private var §,![§:Boolean;
      
      private var §`!O§:Boolean;
      
      private var §8"q§:String;
      
      protected var §0#q§:int;
      
      private var §>"_§:int;
      
      private var §0"'§:Boolean;
      
      private var §^$+§:Boolean;
      
      private var §'"w§:Object;
      
      private var §^!<§:Object;
      
      protected var §[#w§:String;
      
      protected var §>"n§:Number;
      
      protected var §;#1§:Number;
      
      protected var §+!c§:Number;
      
      protected var §4#a§:Number;
      
      public function §-"8§(param1:String, param2:int, param3:§5!,§, param4:§&!@§, param5:§%!a§, param6:int, param7:String, param8:int, param9:String, param10:int, param11:Number = 1.0, param12:Boolean = false, param13:String = "", param14:int = 1, param15:int = -1, param16:Boolean = false, param17:Boolean = false, param18:Boolean = true, param19:String = null, param20:int = 0, param21:Boolean = false)
      {
         super();
         this.§2"0§ = param1;
         this.§=v§ = param2;
         this.§^!`§ = param3;
         this.§'G§ = param12;
         this.§]#X§ = param16;
         this.§^!c§ = param4;
         this.§+!5§ = param5;
         this.§,"F§ = param6;
         this.§?T§ = param7;
         this.§0#q§ = param15;
         this.§+r§ = param10;
         if(param8 == -1)
         {
            this.§2#U§ = this.§+r§ > 0 ? int(this.§+r§ * 10) : 0;
         }
         else
         {
            this.§2#U§ = param8;
         }
         this.§7#n§ = param9;
         this.§6#q§ = param11;
         this.§,![§ = param17;
         this.§#!§ = param13;
         this.§#`§ = param14;
         this.§`!O§ = param18;
         this.§8"q§ = param19 == null ? §3"%§ : param19.toLowerCase();
         this.§>"_§ = param20;
         this.§0"'§ = param21;
         this.§'"w§ = null;
         this.§^!<§ = null;
         this.§^$+§ = false;
      }
      
      public function get front() : Boolean
      {
         return this.§'G§;
      }
      
      public function get textureType() : String
      {
         return this.§8"q§;
      }
      
      public function get itemType() : int
      {
         return this.§=v§;
      }
      
      public function get itemName() : String
      {
         return this.§2"0§;
      }
      
      public function get category() : String
      {
         return this.§7#n§;
      }
      
      public function get maxStrength() : int
      {
         return this.§+r§;
      }
      
      public function get material() : §5!,§
      {
         return this.§^!`§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§#!§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§#`§;
      }
      
      public function get disableBirdPassThrough() : Boolean
      {
         return this.§]#X§;
      }
      
      public function get §"B§() : Boolean
      {
         return this.§,![§;
      }
      
      public function get damageScore() : int
      {
         return this.§2#U§;
      }
      
      public function get bubbleDamage() : int
      {
         return this.§>"_§;
      }
      
      public function get specialtyAvailableAfterCollision() : Boolean
      {
         return this.§0"'§;
      }
      
      public function get §3"r§() : Boolean
      {
         return this.§^$+§;
      }
      
      public function set §3"r§(param1:Boolean) : void
      {
         this.§^$+§ = param1;
      }
      
      public function §8$&§(param1:Object) : void
      {
         this.§'"w§ = param1;
      }
      
      public function §'!A§(param1:Object) : void
      {
         this.§^!<§ = param1;
         if(this.spawnParticlesDefinition.frequencyInSeconds)
         {
            this.spawnParticlesDefinition.frequencyInSeconds *= 1000;
         }
      }
      
      public function get spawnBlockDefinition() : Object
      {
         return this.§'"w§;
      }
      
      public function get spawnParticlesDefinition() : Object
      {
         return this.§^!<§;
      }
      
      public function getItemWidth() : int
      {
         return this.shape.getWidth();
      }
      
      public function getItemHeight() : int
      {
         return this.shape.getHeight();
      }
      
      public function getItemDensity() : Number
      {
         return this.§^!`§.density;
      }
      
      public function getItemBodyType() : int
      {
         return this.§^!`§.bodyType;
      }
      
      public function §30§() : Number
      {
         return this.§^!`§.colors;
      }
      
      public function getItemDefence() : Number
      {
         if(!isNaN(this.§^!`§.defence))
         {
            return this.§^!`§.defence;
         }
         return 0;
      }
      
      public function getItemFriction() : Number
      {
         return this.§^!`§.friction;
      }
      
      public function getItemRestitution() : Number
      {
         return this.§^!`§.restitution;
      }
      
      public function getItemStrength() : Number
      {
         return this.§^!`§.strength;
      }
      
      public function getItemZOrder() : int
      {
         if(this.itemType == §?#%§)
         {
            return 6;
         }
         if(this.itemType == §7"T§)
         {
            return 5;
         }
         if(this.front)
         {
            return §=Q§.§"!h§;
         }
         return §=Q§.§6"c§;
      }
      
      public function get shape() : §%!a§
      {
         return this.§+!5§;
      }
      
      public function get soundResource() : §&!@§
      {
         return this.§^!c§;
      }
      
      public function set soundResource(param1:§&!@§) : void
      {
         this.§^!c§ = param1;
      }
      
      public function get destroyedScoreInc() : int
      {
         return this.§,"F§;
      }
      
      public function get floatingScoreFont() : String
      {
         return this.§?T§;
      }
      
      public function get scale() : Number
      {
         return this.§6#q§;
      }
      
      public function get isMaterialStatic() : Boolean
      {
         return this.§^!`§.§8"g§();
      }
      
      public function get materialName() : String
      {
         return this.§^!`§.name;
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         return this.§^!`§.getDamageMultiplier(param1);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         return this.§^!`§.getVelocityMultiplier(param1);
      }
      
      public function get particleAmount() : int
      {
         return this.§0#q§;
      }
      
      public function getAnimationDefinitions() : Array
      {
         if(this.itemName.indexOf("BIRD") == 0)
         {
            return this.§,$7§();
         }
         if(this.itemName.indexOf("PIG") == 0)
         {
            return this.§9#l§();
         }
         if(this.itemName.indexOf("MISC_EASTER_EGG") == 0)
         {
            return this.§3!L§();
         }
         return this.§7!,§();
      }
      
      public function get isColliding() : Boolean
      {
         return this.§`!O§;
      }
      
      private function §7!,§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]],["3",[this.itemName + "_3"]],["4",[this.itemName + "_4"]]];
         return [[§=Q§.§6!t§,_loc1_]];
      }
      
      private function §3!L§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName]]];
         return [[§=Q§.§6!t§,_loc1_]];
      }
      
      private function §9#l§() : Array
      {
         return [[§=Q§.§6!t§,[["1",[this.itemName + "_01"]],["2",[this.itemName + "_02"]],["3",[this.itemName + "_03"]]]],[§=Q§.§%x§,[["1",[this.itemName + "_01_BLINK"]],["2",[this.itemName + "_02_BLINK"]],["3",[this.itemName + "_03_BLINK"]]]],[§=Q§.§7"Y§,[["1",[this.itemName + "_01_SMILE"]],["2",[this.itemName + "_02_SMILE"]],["3",[this.itemName + "_03_SMILE"]]]]];
      }
      
      private function §,$7§() : Array
      {
         if(this.itemName == "BIRD_SARDINE")
         {
            return [[§=Q§.§6!t§,[this.itemName]]];
         }
         if(this.itemName == "BIRD_MIGHTY_EAGLE")
         {
            return [[§=Q§.§6!t§,["BIRD_ME_MOTION","BIRD_ME_RADIAL"]]];
         }
         if(this.itemName == "BIRD_ORANGE")
         {
            return [[§=Q§.§6!t§,[["1",[this.itemName + "_YELL"]]]],[§=Q§.§%x§,[["1",[this.itemName + "_BLINK"]]]],[§[# §.§]"$§,[["1",[this.itemName + "_YELL"]]]],[§=Q§.§7"Y§,[["1",[this.itemName + "_EXCITED"]]]],[§[# §.§,"U§,[["1",[this.itemName + "_EXCITED"]]]],[§[# §.§^#@§,[["1",[this.itemName + "_BALLOON"]]]]];
         }
         var _loc1_:Array = this.§ "T§();
         var _loc2_:Array = this.§@7§();
         var _loc3_:Array = [[§=Q§.§6!t§,_loc2_],[§=Q§.§%x§,[["1",[this.itemName + "_BLINK"]]]],[§[# §.§]"$§,[["1",[this.itemName + "_FLYING"]]]],[§=Q§.§7"Y§,[["1",[this.itemName + "_YELL"]]]],[§[# §.§,"U§,[["1",[this.itemName + "_FLYING_YELL"]]]]];
         if(_loc1_)
         {
            _loc3_.push([§[# §.§^#@§,_loc1_]);
         }
         return _loc3_;
      }
      
      private function §@7§() : Array
      {
         if(this.itemName == "BIRD_REDBIG")
         {
            return [["1",[this.itemName + "_1"]]];
         }
         return [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]]];
      }
      
      private function § "T§() : Array
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
         if(this.maxStrength != -1 && this.damageScore > 0)
         {
            return true;
         }
         return false;
      }
      
      public function hasGraphics() : Boolean
      {
         return true;
      }
      
      public function get explosionRadius() : Number
      {
         return this.§>"n§;
      }
      
      public function get explosionForce() : Number
      {
         return this.§;#1§;
      }
      
      public function get explosionDamageRadius() : Number
      {
         return this.§+!c§;
      }
      
      public function get explosionDamage() : Number
      {
         return this.§4#a§;
      }
      
      public function get specialty() : String
      {
         return this.§[#w§;
      }
   }
}
