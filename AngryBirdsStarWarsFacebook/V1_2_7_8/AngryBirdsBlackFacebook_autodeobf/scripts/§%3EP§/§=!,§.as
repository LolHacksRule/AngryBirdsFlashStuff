package §>P§
{
   import §6"R§.§%!0§;
   import §6"R§.§4!w§;
   import §6"R§.§[!Z§;
   import §7A§.§<1§;
   
   public class §=!,§
   {
      
      public static const §,"T§:int = 0;
      
      public static const §00§:int = 1;
      
      public static const § ;§:int = 2;
      
      public static const §1"H§:int = 3;
      
      public static const §="!§:int = 5;
      
      public static const §3!b§:int = 6;
      
      public static const §^K§:int = 7;
      
      public static const § "Z§:int = 8;
      
      public static const §5"Z§:int = 9;
       
      
      protected var §for §:String;
      
      protected var §9#4§:int;
      
      protected var §1"g§:§<1§;
      
      protected var §"K§:String;
      
      protected var §3m§:Number;
      
      protected var §&!i§:Boolean = false;
      
      protected var §%;§:§?"Q§;
      
      protected var §;!n§:§1C§;
      
      protected var §#!B§:§&s§;
      
      protected var §"r§:Number = 1.0;
      
      protected var §82§:String;
      
      protected var §"?§:int;
      
      public function §=!,§(param1:String, param2:int, param3:§1C§, param4:§&s§, param5:§?"Q§, param6:int, param7:String, param8:Number, param9:Number = 1.0, param10:Boolean = false, param11:String = "", param12:int = 1)
      {
         super();
         this.§for § = param1;
         this.§9#4§ = param2;
         this.§;!n§ = param3;
         this.§&!i§ = param10;
         this.§#!B§ = param4;
         this.§%;§ = param5;
         this.§1"g§ = new §<1§(param6);
         this.§"K§ = param7;
         this.§3m§ = param8;
         this.§"r§ = param9;
         this.§82§ = param11;
         this.§"?§ = param12;
      }
      
      public function get front() : Boolean
      {
         return this.§&!i§;
      }
      
      public function get itemType() : int
      {
         return this.§9#4§;
      }
      
      public function get itemName() : String
      {
         return this.§for §;
      }
      
      public function get category() : String
      {
         return this.§"K§;
      }
      
      public function get healthMax() : Number
      {
         return this.§3m§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§82§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§"?§;
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
         return this.§;!n§.density;
      }
      
      public function getItemBodyType() : int
      {
         return this.§;!n§.bodyType;
      }
      
      public function §2r§() : Number
      {
         return this.§;!n§.colors;
      }
      
      public function getItemDefence() : Number
      {
         if(!isNaN(this.§;!n§.defence))
         {
            return this.§;!n§.defence;
         }
         return 0;
      }
      
      public function getItemFriction() : Number
      {
         return this.§;!n§.friction;
      }
      
      public function getItemRestitution() : Number
      {
         return this.§;!n§.restitution;
      }
      
      public function getItemStrength() : Number
      {
         return this.§;!n§.strength;
      }
      
      public function getItemZOrder() : int
      {
         if(this.itemType == §3!b§)
         {
            return 6;
         }
         if(this.front)
         {
            return 100;
         }
         return 20;
      }
      
      public function get shape() : §?"Q§
      {
         return this.§%;§;
      }
      
      public function get soundResource() : §&s§
      {
         return this.§#!B§;
      }
      
      public function get score() : int
      {
         return this.§1"g§.getValue();
      }
      
      public function get scale() : Number
      {
         return this.§"r§;
      }
      
      public function get isMaterialStatic() : Boolean
      {
         return this.§;!n§.§%!m§();
      }
      
      public function get materialName() : String
      {
         return this.§;!n§.name;
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         return this.§;!n§.getDamageMultiplier(param1);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         return this.§;!n§.getVelocityMultiplier(param1);
      }
      
      public function getAnimationDefinitions() : Array
      {
         if(this.itemName.indexOf("BIRD") == 0)
         {
            return this.§51§();
         }
         if(this.itemName.indexOf("PIG") == 0)
         {
            return this.§=#-§();
         }
         if(this.itemName.indexOf("MISC_EASTER_EGG") == 0)
         {
            return this.§?@§();
         }
         return this.§!"+§();
      }
      
      public function get isColliding() : Boolean
      {
         return true;
      }
      
      private function §!"+§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]],["3",[this.itemName + "_3"]],["4",[this.itemName + "_4"]]];
         return [[§4!w§.§-"§,_loc1_]];
      }
      
      private function §?@§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName]]];
         return [[§4!w§.§-"§,_loc1_]];
      }
      
      private function §=#-§() : Array
      {
         return [[§4!w§.§-"§,[["1",[this.itemName + "_01"]],["2",[this.itemName + "_02"]],["3",[this.itemName + "_03"]]]],[§[!Z§.§ !O§,[["1",[this.itemName + "_01_BLINK"]],["2",[this.itemName + "_02_BLINK"]],["3",[this.itemName + "_03_BLINK"]]]],[§[!Z§.§7!;§,[["1",[this.itemName + "_01_SMILE"]],["2",[this.itemName + "_02_SMILE"]],["3",[this.itemName + "_03_SMILE"]]]]];
      }
      
      private function §51§() : Array
      {
         if(this.itemName == "BIRD_SARDINE")
         {
            return [[§4!w§.§-"§,[this.itemName]]];
         }
         if(this.itemName == "BIRD_MIGHTY_EAGLE")
         {
            return [[§4!w§.§-"§,["BIRD_ME_MOTION","BIRD_ME_RADIAL"]]];
         }
         if(this.itemName == "BIRD_ORANGE")
         {
            return [[§4!w§.§-"§,[["1",[this.itemName + "_YELL"]]]],[§[!Z§.§ !O§,[["1",[this.itemName + "_BLINK"]]]],[§%!0§.§4O§,[["1",[this.itemName + "_YELL"]]]],[§[!Z§.§7!;§,[["1",[this.itemName + "_EXCITED"]]]],[§%!0§.§4!?§,[["1",[this.itemName + "_EXCITED"]]]],[§%!0§.§-$§,[["1",[this.itemName + "_BALLOON"]]]]];
         }
         var _loc1_:Array = this.§5!+§();
         var _loc2_:Array = this.§?Y§();
         var _loc3_:Array = [[§4!w§.§-"§,_loc2_],[§[!Z§.§ !O§,[["1",[this.itemName + "_BLINK"]]]],[§%!0§.§4O§,[["1",[this.itemName + "_FLYING"]]]],[§[!Z§.§7!;§,[["1",[this.itemName + "_YELL"]]]],[§%!0§.§4!?§,[["1",[this.itemName + "_FLYING_YELL"]]]]];
         if(_loc1_)
         {
            _loc3_.push([§%!0§.§-$§,_loc1_]);
         }
         return _loc3_;
      }
      
      private function §?Y§() : Array
      {
         if(this.itemName == "BIRD_REDBIG")
         {
            return [["1",[this.itemName + "_1"]]];
         }
         return [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]]];
      }
      
      private function §5!+§() : Array
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
