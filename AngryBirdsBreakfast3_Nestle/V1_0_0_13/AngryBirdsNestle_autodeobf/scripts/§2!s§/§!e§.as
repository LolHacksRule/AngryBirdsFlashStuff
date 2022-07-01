package §2!s§
{
   import §%Z§.§"K§;
   import §%Z§.§&!-§;
   import §%Z§.§=!V§;
   import §`!s§.§9!i§;
   
   public class §!e§
   {
      
      public static const get:int = 0;
      
      public static const §+!`§:int = 1;
      
      public static const §?M§:int = 2;
      
      public static const §;'§:int = 3;
      
      public static const §<!t§:int = 5;
      
      public static const §=!M§:int = 6;
      
      public static const §8!7§:int = 7;
      
      public static const §9n§:int = 8;
      
      public static const §93§:int = 9;
       
      
      protected var §@!%§:String;
      
      protected var §!!`§:int;
      
      protected var §!!?§:§9!i§;
      
      protected var §`S§:String;
      
      protected var §8!Y§:Number;
      
      protected var §]!u§:Boolean = false;
      
      protected var §8!y§:§4"1§;
      
      protected var §<i§:§+f§;
      
      protected var §-!Q§:§2!_§;
      
      protected var §[_§:Boolean = false;
      
      protected var §0y§:Number = 1.0;
      
      protected var §%H§:String;
      
      protected var §+G§:int;
      
      public function §!e§(param1:String, param2:int, param3:§+f§, param4:§2!_§, param5:§4"1§, param6:int, param7:String, param8:Number, param9:Number = 1.0, param10:Boolean = false, param11:String = "", param12:int = 1, param13:Boolean = false)
      {
         super();
         this.§@!%§ = param1;
         this.§!!`§ = param2;
         this.§<i§ = param3;
         this.§]!u§ = param10;
         this.§[_§ = param13;
         this.§-!Q§ = param4;
         this.§8!y§ = param5;
         this.§!!?§ = new §9!i§(param6);
         this.§`S§ = param7;
         this.§8!Y§ = param8;
         this.§0y§ = param9;
         this.§%H§ = param11;
         this.§+G§ = param12;
      }
      
      public function get front() : Boolean
      {
         return this.§]!u§;
      }
      
      public function get itemType() : int
      {
         return this.§!!`§;
      }
      
      public function get itemName() : String
      {
         return this.§@!%§;
      }
      
      public function get category() : String
      {
         return this.§`S§;
      }
      
      public function get healthMax() : Number
      {
         return this.§8!Y§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§%H§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§+G§;
      }
      
      public function get disableBirdPassThrough() : Boolean
      {
         return this.§[_§;
      }
      
      public function §2!F§() : int
      {
         return this.shape.§3!s§();
      }
      
      public function §<!0§() : int
      {
         return this.shape.§]!D§();
      }
      
      public function getItemDensity() : Number
      {
         return this.§<i§.density;
      }
      
      public function getItemBodyType() : int
      {
         return this.§<i§.bodyType;
      }
      
      public function §+D§() : Number
      {
         return this.§<i§.colors;
      }
      
      public function getItemDefence() : Number
      {
         if(!isNaN(this.§<i§.defence))
         {
            return this.§<i§.defence;
         }
         return 0;
      }
      
      public function getItemFriction() : Number
      {
         return this.§<i§.friction;
      }
      
      public function getItemRestitution() : Number
      {
         return this.§<i§.restitution;
      }
      
      public function getItemStrength() : Number
      {
         return this.§<i§.strength;
      }
      
      public function §#"!§() : int
      {
         if(this.itemType == §=!M§)
         {
            return 6;
         }
         if(this.front)
         {
            return 100;
         }
         return 20;
      }
      
      public function get shape() : §4"1§
      {
         return this.§8!y§;
      }
      
      public function get soundResource() : §2!_§
      {
         return this.§-!Q§;
      }
      
      public function get score() : int
      {
         return this.§!!?§.getValue();
      }
      
      public function get scale() : Number
      {
         return this.§0y§;
      }
      
      public function get §8!&§() : Boolean
      {
         return this.§<i§.§<!Y§();
      }
      
      public function get materialName() : String
      {
         return this.§<i§.name;
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         return this.§<i§.getDamageMultiplier(param1);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         return this.§<i§.getVelocityMultiplier(param1);
      }
      
      public function §&u§() : Array
      {
         if(this.itemName.indexOf("BIRD") == 0)
         {
            return this.§;!L§();
         }
         if(this.itemName.indexOf("PIG") == 0)
         {
            return this.§34§();
         }
         if(this.itemName.indexOf("MISC_EASTER_EGG") == 0)
         {
            return this.§#!H§();
         }
         return this.§9!P§();
      }
      
      public function get isColliding() : Boolean
      {
         return true;
      }
      
      private function §9!P§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]],["3",[this.itemName + "_3"]],["4",[this.itemName + "_4"]]];
         return [[§&!-§.§ !N§,_loc1_]];
      }
      
      private function §#!H§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName]]];
         return [[§&!-§.§ !N§,_loc1_]];
      }
      
      private function §34§() : Array
      {
         return [[§&!-§.§ !N§,[["1",[this.itemName + "_01"]],["2",[this.itemName + "_02"]],["3",[this.itemName + "_03"]]]],[§"K§.§1!L§,[["1",[this.itemName + "_01_BLINK"]],["2",[this.itemName + "_02_BLINK"]],["3",[this.itemName + "_03_BLINK"]]]],[§"K§.§%![§,[["1",[this.itemName + "_01_SMILE"]],["2",[this.itemName + "_02_SMILE"]],["3",[this.itemName + "_03_SMILE"]]]]];
      }
      
      private function §;!L§() : Array
      {
         if(this.itemName == "BIRD_SARDINE")
         {
            return [[§&!-§.§ !N§,[this.itemName]]];
         }
         if(this.itemName == "BIRD_MIGHTY_EAGLE")
         {
            return [[§&!-§.§ !N§,["BIRD_ME_MOTION","BIRD_ME_RADIAL"]]];
         }
         if(this.itemName == "BIRD_ORANGE")
         {
            return [[§&!-§.§ !N§,[["1",[this.itemName + "_YELL"]]]],[§"K§.§1!L§,[["1",[this.itemName + "_BLINK"]]]],[§=!V§.§5!B§,[["1",[this.itemName + "_YELL"]]]],[§"K§.§%![§,[["1",[this.itemName + "_EXCITED"]]]],[§=!V§.§=!N§,[["1",[this.itemName + "_EXCITED"]]]],[§=!V§.§'!=§,[["1",[this.itemName + "_BALLOON"]]]]];
         }
         var _loc1_:Array = this.§+!$§();
         var _loc2_:Array = this.§8"!§();
         var _loc3_:Array = [[§&!-§.§ !N§,_loc2_],[§"K§.§1!L§,[["1",[this.itemName + "_BLINK"]]]],[§=!V§.§5!B§,[["1",[this.itemName + "_FLYING"]]]],[§"K§.§%![§,[["1",[this.itemName + "_YELL"]]]],[§=!V§.§=!N§,[["1",[this.itemName + "_FLYING_YELL"]]]]];
         if(_loc1_)
         {
            _loc3_.push([§=!V§.§'!=§,_loc1_]);
         }
         return _loc3_;
      }
      
      private function §8"!§() : Array
      {
         if(this.itemName == "BIRD_REDBIG")
         {
            return [["1",[this.itemName + "_1"]]];
         }
         return [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]]];
      }
      
      private function §+!$§() : Array
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
