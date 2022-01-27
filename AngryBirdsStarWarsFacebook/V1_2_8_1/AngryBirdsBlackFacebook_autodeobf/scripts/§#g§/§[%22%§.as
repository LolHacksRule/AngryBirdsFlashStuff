package §#g§
{
   import §!r§.§0N§;
   import §!r§.§;!T§;
   import §!r§.§<"R§;
   import §+d§.§0#&§;
   
   public class §["%§
   {
      
      public static const §6#-§:int = 0;
      
      public static const § !c§:int = 1;
      
      public static const §^!v§:int = 2;
      
      public static const §9!y§:int = 3;
      
      public static const §7##§:int = 5;
      
      public static const §8!w§:int = 6;
      
      public static const §3"b§:int = 7;
      
      public static const §"A§:int = 8;
      
      public static const §%"v§:int = 9;
       
      
      protected var § !S§:String;
      
      protected var §@!0§:int;
      
      protected var §5!B§:§0#&§;
      
      protected var §?q§:String;
      
      protected var §>! §:Number;
      
      protected var §2"W§:Boolean = false;
      
      protected var §04§:§'<§;
      
      protected var §0!D§:§!+§;
      
      protected var §`P§:§^i§;
      
      protected var §#"5§:Number = 1.0;
      
      protected var §@!9§:String;
      
      protected var §"m§:int;
      
      public function §["%§(param1:String, param2:int, param3:§!+§, param4:§^i§, param5:§'<§, param6:int, param7:String, param8:Number, param9:Number = 1.0, param10:Boolean = false, param11:String = "", param12:int = 1)
      {
         super();
         this.§ !S§ = param1;
         this.§@!0§ = param2;
         this.§0!D§ = param3;
         this.§2"W§ = param10;
         this.§`P§ = param4;
         this.§04§ = param5;
         this.§5!B§ = new §0#&§(param6);
         this.§?q§ = param7;
         this.§>! § = param8;
         this.§#"5§ = param9;
         this.§@!9§ = param11;
         this.§"m§ = param12;
      }
      
      public function get front() : Boolean
      {
         return this.§2"W§;
      }
      
      public function get itemType() : int
      {
         return this.§@!0§;
      }
      
      public function get itemName() : String
      {
         return this.§ !S§;
      }
      
      public function get category() : String
      {
         return this.§?q§;
      }
      
      public function get healthMax() : Number
      {
         return this.§>! §;
      }
      
      public function get particleJSONId() : String
      {
         return this.§@!9§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§"m§;
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
         return this.§0!D§.density;
      }
      
      public function getItemBodyType() : int
      {
         return this.§0!D§.bodyType;
      }
      
      public function §'"F§() : Number
      {
         return this.§0!D§.colors;
      }
      
      public function getItemDefence() : Number
      {
         if(!isNaN(this.§0!D§.defence))
         {
            return this.§0!D§.defence;
         }
         return 0;
      }
      
      public function getItemFriction() : Number
      {
         return this.§0!D§.friction;
      }
      
      public function getItemRestitution() : Number
      {
         return this.§0!D§.restitution;
      }
      
      public function getItemStrength() : Number
      {
         return this.§0!D§.strength;
      }
      
      public function getItemZOrder() : int
      {
         if(this.itemType == §8!w§)
         {
            return 6;
         }
         if(this.front)
         {
            return 100;
         }
         return 20;
      }
      
      public function get shape() : §'<§
      {
         return this.§04§;
      }
      
      public function get soundResource() : §^i§
      {
         return this.§`P§;
      }
      
      public function get score() : int
      {
         return this.§5!B§.getValue();
      }
      
      public function get scale() : Number
      {
         return this.§#"5§;
      }
      
      public function get isMaterialStatic() : Boolean
      {
         return this.§0!D§.§8#6§();
      }
      
      public function get materialName() : String
      {
         return this.§0!D§.name;
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         return this.§0!D§.getDamageMultiplier(param1);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         return this.§0!D§.getVelocityMultiplier(param1);
      }
      
      public function getAnimationDefinitions() : Array
      {
         if(this.itemName.indexOf("BIRD") == 0)
         {
            return this.§<!A§();
         }
         if(this.itemName.indexOf("PIG") == 0)
         {
            return this.§>!5§();
         }
         if(this.itemName.indexOf("MISC_EASTER_EGG") == 0)
         {
            return this.§@#!§();
         }
         return this.§!"Y§();
      }
      
      public function get isColliding() : Boolean
      {
         return true;
      }
      
      private function §!"Y§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]],["3",[this.itemName + "_3"]],["4",[this.itemName + "_4"]]];
         return [[§0N§.§'"T§,_loc1_]];
      }
      
      private function §@#!§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName]]];
         return [[§0N§.§'"T§,_loc1_]];
      }
      
      private function §>!5§() : Array
      {
         return [[§0N§.§'"T§,[["1",[this.itemName + "_01"]],["2",[this.itemName + "_02"]],["3",[this.itemName + "_03"]]]],[§<"R§.§@#0§,[["1",[this.itemName + "_01_BLINK"]],["2",[this.itemName + "_02_BLINK"]],["3",[this.itemName + "_03_BLINK"]]]],[§<"R§.§ Q§,[["1",[this.itemName + "_01_SMILE"]],["2",[this.itemName + "_02_SMILE"]],["3",[this.itemName + "_03_SMILE"]]]]];
      }
      
      private function §<!A§() : Array
      {
         if(this.itemName == "BIRD_SARDINE")
         {
            return [[§0N§.§'"T§,[this.itemName]]];
         }
         if(this.itemName == "BIRD_MIGHTY_EAGLE")
         {
            return [[§0N§.§'"T§,["BIRD_ME_MOTION","BIRD_ME_RADIAL"]]];
         }
         if(this.itemName == "BIRD_ORANGE")
         {
            return [[§0N§.§'"T§,[["1",[this.itemName + "_YELL"]]]],[§<"R§.§@#0§,[["1",[this.itemName + "_BLINK"]]]],[§;!T§.§@T§,[["1",[this.itemName + "_YELL"]]]],[§<"R§.§ Q§,[["1",[this.itemName + "_EXCITED"]]]],[§;!T§.§9z§,[["1",[this.itemName + "_EXCITED"]]]],[§;!T§.§3_§,[["1",[this.itemName + "_BALLOON"]]]]];
         }
         var _loc1_:Array = this.§-"#§();
         var _loc2_:Array = this.§]!@§();
         var _loc3_:Array = [[§0N§.§'"T§,_loc2_],[§<"R§.§@#0§,[["1",[this.itemName + "_BLINK"]]]],[§;!T§.§@T§,[["1",[this.itemName + "_FLYING"]]]],[§<"R§.§ Q§,[["1",[this.itemName + "_YELL"]]]],[§;!T§.§9z§,[["1",[this.itemName + "_FLYING_YELL"]]]]];
         if(_loc1_)
         {
            _loc3_.push([§;!T§.§3_§,_loc1_]);
         }
         return _loc3_;
      }
      
      private function §]!@§() : Array
      {
         if(this.itemName == "BIRD_REDBIG")
         {
            return [["1",[this.itemName + "_1"]]];
         }
         return [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]]];
      }
      
      private function §-"#§() : Array
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
