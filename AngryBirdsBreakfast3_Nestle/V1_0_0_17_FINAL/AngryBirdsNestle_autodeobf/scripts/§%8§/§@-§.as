package §%8§
{
   import §4!i§.§@t§;
   import §@!"§.§5!;§;
   import §@!"§.§@_§;
   import §@!"§.§^"2§;
   
   public class §@-§
   {
      
      public static const §4!w§:int = 0;
      
      public static const §9!r§:int = 1;
      
      public static const §0?§:int = 2;
      
      public static const §=6§:int = 3;
      
      public static const §[$§:int = 5;
      
      public static const §6!@§:int = 6;
      
      public static const §;-§:int = 7;
      
      public static const §2![§:int = 8;
      
      public static const §@Z§:int = 9;
       
      
      protected var §"!r§:String;
      
      protected var §;!`§:int;
      
      protected var §8O§:§@t§;
      
      protected var §9!8§:String;
      
      protected var §0!N§:Number;
      
      protected var §'j§:Boolean = false;
      
      protected var §]"!§:§[_§;
      
      protected var §+_§:§^f§;
      
      protected var §+>§:§89§;
      
      protected var §"P§:Boolean = false;
      
      protected var §2c§:Number = 1.0;
      
      protected var §@"%§:String;
      
      protected var §8W§:int;
      
      public function §@-§(param1:String, param2:int, param3:§^f§, param4:§89§, param5:§[_§, param6:int, param7:String, param8:Number, param9:Number = 1.0, param10:Boolean = false, param11:String = "", param12:int = 1, param13:Boolean = false)
      {
         super();
         this.§"!r§ = param1;
         this.§;!`§ = param2;
         this.§+_§ = param3;
         this.§'j§ = param10;
         this.§"P§ = param13;
         this.§+>§ = param4;
         this.§]"!§ = param5;
         this.§8O§ = new §@t§(param6);
         this.§9!8§ = param7;
         this.§0!N§ = param8;
         this.§2c§ = param9;
         this.§@"%§ = param11;
         this.§8W§ = param12;
      }
      
      public function get front() : Boolean
      {
         return this.§'j§;
      }
      
      public function get itemType() : int
      {
         return this.§;!`§;
      }
      
      public function get itemName() : String
      {
         return this.§"!r§;
      }
      
      public function get category() : String
      {
         return this.§9!8§;
      }
      
      public function get healthMax() : Number
      {
         return this.§0!N§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§@"%§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§8W§;
      }
      
      public function get disableBirdPassThrough() : Boolean
      {
         return this.§"P§;
      }
      
      public function §"!R§() : int
      {
         return this.shape.§=!q§();
      }
      
      public function §[!Y§() : int
      {
         return this.shape.§%!r§();
      }
      
      public function getItemDensity() : Number
      {
         return this.§+_§.density;
      }
      
      public function getItemBodyType() : int
      {
         return this.§+_§.bodyType;
      }
      
      public function §;!X§() : Number
      {
         return this.§+_§.colors;
      }
      
      public function getItemDefence() : Number
      {
         if(!isNaN(this.§+_§.defence))
         {
            return this.§+_§.defence;
         }
         return 0;
      }
      
      public function getItemFriction() : Number
      {
         return this.§+_§.friction;
      }
      
      public function getItemRestitution() : Number
      {
         return this.§+_§.restitution;
      }
      
      public function getItemStrength() : Number
      {
         return this.§+_§.strength;
      }
      
      public function §8!D§() : int
      {
         if(this.itemType == §6!@§)
         {
            return 6;
         }
         if(this.front)
         {
            return 100;
         }
         return 20;
      }
      
      public function get shape() : §[_§
      {
         return this.§]"!§;
      }
      
      public function get soundResource() : §89§
      {
         return this.§+>§;
      }
      
      public function get score() : int
      {
         return this.§8O§.getValue();
      }
      
      public function get scale() : Number
      {
         return this.§2c§;
      }
      
      public function get §'!p§() : Boolean
      {
         return this.§+_§.§4X§();
      }
      
      public function get materialName() : String
      {
         return this.§+_§.name;
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         return this.§+_§.getDamageMultiplier(param1);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         return this.§+_§.getVelocityMultiplier(param1);
      }
      
      public function §7"!§() : Array
      {
         if(this.itemName.indexOf("BIRD") == 0)
         {
            return this.§+!N§();
         }
         if(this.itemName.indexOf("PIG") == 0)
         {
            return this.§-!5§();
         }
         if(this.itemName.indexOf("MISC_EASTER_EGG") == 0)
         {
            return this.§,!q§();
         }
         return this.§0q§();
      }
      
      public function get isColliding() : Boolean
      {
         return true;
      }
      
      private function §0q§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]],["3",[this.itemName + "_3"]],["4",[this.itemName + "_4"]]];
         return [[§@_§.§&P§,_loc1_]];
      }
      
      private function §,!q§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName]]];
         return [[§@_§.§&P§,_loc1_]];
      }
      
      private function §-!5§() : Array
      {
         return [[§@_§.§&P§,[["1",[this.itemName + "_01"]],["2",[this.itemName + "_02"]],["3",[this.itemName + "_03"]]]],[§5!;§.§>!d§,[["1",[this.itemName + "_01_BLINK"]],["2",[this.itemName + "_02_BLINK"]],["3",[this.itemName + "_03_BLINK"]]]],[§5!;§.§;1§,[["1",[this.itemName + "_01_SMILE"]],["2",[this.itemName + "_02_SMILE"]],["3",[this.itemName + "_03_SMILE"]]]]];
      }
      
      private function §+!N§() : Array
      {
         if(this.itemName == "BIRD_SARDINE")
         {
            return [[§@_§.§&P§,[this.itemName]]];
         }
         if(this.itemName == "BIRD_MIGHTY_EAGLE")
         {
            return [[§@_§.§&P§,["BIRD_ME_MOTION","BIRD_ME_RADIAL"]]];
         }
         if(this.itemName == "BIRD_ORANGE")
         {
            return [[§@_§.§&P§,[["1",[this.itemName + "_YELL"]]]],[§5!;§.§>!d§,[["1",[this.itemName + "_BLINK"]]]],[§^"2§.§;_§,[["1",[this.itemName + "_YELL"]]]],[§5!;§.§;1§,[["1",[this.itemName + "_EXCITED"]]]],[§^"2§.§!s§,[["1",[this.itemName + "_EXCITED"]]]],[§^"2§.§=!_§,[["1",[this.itemName + "_BALLOON"]]]]];
         }
         var _loc1_:Array = this.§]!G§();
         var _loc2_:Array = this.§`!W§();
         var _loc3_:Array = [[§@_§.§&P§,_loc2_],[§5!;§.§>!d§,[["1",[this.itemName + "_BLINK"]]]],[§^"2§.§;_§,[["1",[this.itemName + "_FLYING"]]]],[§5!;§.§;1§,[["1",[this.itemName + "_YELL"]]]],[§^"2§.§!s§,[["1",[this.itemName + "_FLYING_YELL"]]]]];
         if(_loc1_)
         {
            _loc3_.push([§^"2§.§=!_§,_loc1_]);
         }
         return _loc3_;
      }
      
      private function §`!W§() : Array
      {
         if(this.itemName == "BIRD_REDBIG")
         {
            return [["1",[this.itemName + "_1"]]];
         }
         return [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]]];
      }
      
      private function §]!G§() : Array
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
