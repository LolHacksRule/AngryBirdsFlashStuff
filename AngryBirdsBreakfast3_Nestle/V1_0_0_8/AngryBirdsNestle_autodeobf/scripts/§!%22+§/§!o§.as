package §!"+§
{
   import §"P§.§2!5§;
   import §"P§.§?!§;
   import §"P§.§^!x§;
   import §%f§.§[o§;
   
   public class §!o§
   {
      
      public static const §+o§:int = 0;
      
      public static const §3L§:int = 1;
      
      public static const §4!<§:int = 2;
      
      public static const §14§:int = 3;
      
      public static const §6!$§:int = 5;
      
      public static const §7!4§:int = 6;
      
      public static const §6A§:int = 7;
      
      public static const §]!r§:int = 8;
      
      public static const §?c§:int = 9;
       
      
      protected var §]!M§:String;
      
      protected var §0<§:int;
      
      protected var §3!p§:§[o§;
      
      protected var §09§:String;
      
      protected var §2!F§:Number;
      
      protected var §#$§:Boolean = false;
      
      protected var §-!t§:§ !S§;
      
      protected var § !C§:§,D§;
      
      protected var §`P§:§'!7§;
      
      protected var §1+§:Number = 1.0;
      
      protected var §95§:String;
      
      protected var §5"7§:int;
      
      public function §!o§(param1:String, param2:int, param3:§,D§, param4:§'!7§, param5:§ !S§, param6:int, param7:String, param8:Number, param9:Number = 1.0, param10:Boolean = false, param11:String = "", param12:int = 1)
      {
         super();
         this.§]!M§ = param1;
         this.§0<§ = param2;
         this.§ !C§ = param3;
         this.§#$§ = param10;
         this.§`P§ = param4;
         this.§-!t§ = param5;
         this.§3!p§ = new §[o§(param6);
         this.§09§ = param7;
         this.§2!F§ = param8;
         this.§1+§ = param9;
         this.§95§ = param11;
         this.§5"7§ = param12;
      }
      
      public function get front() : Boolean
      {
         return this.§#$§;
      }
      
      public function get itemType() : int
      {
         return this.§0<§;
      }
      
      public function get itemName() : String
      {
         return this.§]!M§;
      }
      
      public function get category() : String
      {
         return this.§09§;
      }
      
      public function get healthMax() : Number
      {
         return this.§2!F§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§95§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§5"7§;
      }
      
      public function §0!-§() : int
      {
         return this.shape.§8!I§();
      }
      
      public function §]x§() : int
      {
         return this.shape.§]!$§();
      }
      
      public function getItemDensity() : Number
      {
         return this.§ !C§.density;
      }
      
      public function getItemBodyType() : int
      {
         return this.§ !C§.bodyType;
      }
      
      public function §2!q§() : Number
      {
         return this.§ !C§.colors;
      }
      
      public function getItemDefence() : Number
      {
         if(!isNaN(this.§ !C§.defence))
         {
            return this.§ !C§.defence;
         }
         return 0;
      }
      
      public function getItemFriction() : Number
      {
         return this.§ !C§.friction;
      }
      
      public function getItemRestitution() : Number
      {
         return this.§ !C§.restitution;
      }
      
      public function getItemStrength() : Number
      {
         return this.§ !C§.strength;
      }
      
      public function §+k§() : int
      {
         if(this.itemType == §7!4§)
         {
            return 6;
         }
         if(this.front)
         {
            return 100;
         }
         return 20;
      }
      
      public function get shape() : § !S§
      {
         return this.§-!t§;
      }
      
      public function get soundResource() : §'!7§
      {
         return this.§`P§;
      }
      
      public function get score() : int
      {
         return this.§3!p§.getValue();
      }
      
      public function get scale() : Number
      {
         return this.§1+§;
      }
      
      public function get §8-§() : Boolean
      {
         return this.§ !C§.§@s§();
      }
      
      public function get materialName() : String
      {
         return this.§ !C§.name;
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         return this.§ !C§.getDamageMultiplier(param1);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         return this.§ !C§.getVelocityMultiplier(param1);
      }
      
      public function §>"6§() : Array
      {
         if(this.itemName.indexOf("BIRD") == 0)
         {
            return this.§^O§();
         }
         if(this.itemName.indexOf("PIG") == 0)
         {
            return this.§-"'§();
         }
         return this.§]o§();
      }
      
      public function get isColliding() : Boolean
      {
         return true;
      }
      
      private function §]o§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]],["3",[this.itemName + "_3"]],["4",[this.itemName + "_4"]]];
         return [[§^!x§.§!#§,_loc1_]];
      }
      
      private function §-"'§() : Array
      {
         return [[§^!x§.§!#§,[["1",[this.itemName + "_01"]],["2",[this.itemName + "_02"]],["3",[this.itemName + "_03"]]]],[§2!5§.§-!5§,[["1",[this.itemName + "_01_BLINK"]],["2",[this.itemName + "_02_BLINK"]],["3",[this.itemName + "_03_BLINK"]]]],[§2!5§.§,s§,[["1",[this.itemName + "_01_SMILE"]],["2",[this.itemName + "_02_SMILE"]],["3",[this.itemName + "_03_SMILE"]]]]];
      }
      
      private function §^O§() : Array
      {
         if(this.itemName == "BIRD_SARDINE")
         {
            return [[§^!x§.§!#§,[this.itemName]]];
         }
         if(this.itemName == "BIRD_MIGHTY_EAGLE")
         {
            return [[§^!x§.§!#§,["BIRD_ME_MOTION","BIRD_ME_RADIAL"]]];
         }
         if(this.itemName == "BIRD_ORANGE")
         {
            return [[§^!x§.§!#§,[["1",[this.itemName + "_YELL"]]]],[§2!5§.§-!5§,[["1",[this.itemName + "_BLINK"]]]],[§?!§.§6,§,[["1",[this.itemName + "_YELL"]]]],[§2!5§.§,s§,[["1",[this.itemName + "_EXCITED"]]]],[§?!§.§=;§,[["1",[this.itemName + "_EXCITED"]]]],[§?!§.§%k§,[["1",[this.itemName + "_BALLOON"]]]]];
         }
         var _loc1_:Array = this.§-!O§();
         var _loc2_:Array = this.§8j§();
         var _loc3_:Array = [[§^!x§.§!#§,_loc2_],[§2!5§.§-!5§,[["1",[this.itemName + "_BLINK"]]]],[§?!§.§6,§,[["1",[this.itemName + "_FLYING"]]]],[§2!5§.§,s§,[["1",[this.itemName + "_YELL"]]]],[§?!§.§=;§,[["1",[this.itemName + "_FLYING_YELL"]]]]];
         if(_loc1_)
         {
            _loc3_.push([§?!§.§%k§,_loc1_]);
         }
         return _loc3_;
      }
      
      private function §8j§() : Array
      {
         if(this.itemName == "BIRD_REDBIG")
         {
            return [["1",[this.itemName + "_1"]]];
         }
         return [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]]];
      }
      
      private function §-!O§() : Array
      {
         if(this.itemName == "BIRD_BLACK")
         {
            return [["1",[this.itemName + "_SPECIAL",this.itemName + "_SPECIAL_2",this.itemName + "_SPECIAL_3"],[900,900,5000]]];
         }
         if(this.itemName == "BIRD_WHITE" || this.itemName == "BIRD_YELLOW" || this.itemName == "BIRD_GREEN")
         {
            return [["1",[this.itemName + "_SPECIAL"]]];
         }
         return null;
      }
   }
}
