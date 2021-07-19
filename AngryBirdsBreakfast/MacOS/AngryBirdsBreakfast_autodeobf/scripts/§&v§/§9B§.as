package §&v§
{
   import §"n§.§<!e§;
   import §,z§.§ !o§;
   import §,z§.§"_§;
   import §,z§.§?!z§;
   
   public class §9B§
   {
      
      public static const §&!R§:int = 0;
      
      public static const §,7§:int = 1;
      
      public static const §>!?§:int = 2;
      
      public static const §6,§:int = 3;
      
      public static const §;!b§:int = 5;
      
      public static const §[""§:int = 6;
      
      public static const §[c§:int = 7;
      
      public static const §#!a§:int = 8;
      
      public static const §^!?§:int = 9;
       
      
      protected var § !B§:String;
      
      protected var §5!J§:int;
      
      protected var §5T§:§<!e§;
      
      protected var §8v§:String;
      
      protected var §;F§:Number;
      
      protected var §1>§:Boolean = false;
      
      protected var §^]§:§each §;
      
      protected var §<!n§:§#c§;
      
      protected var §<!3§:§,4§;
      
      protected var §6!r§:Number = 1.0;
      
      protected var §`,§:String;
      
      protected var §1!3§:int;
      
      public function §9B§(param1:String, param2:int, param3:§#c§, param4:§,4§, param5:§each §, param6:int, param7:String, param8:Number, param9:Number = 1.0, param10:Boolean = false, param11:String = "", param12:int = 1)
      {
         super();
         this.§ !B§ = param1;
         this.§5!J§ = param2;
         this.§<!n§ = param3;
         this.§1>§ = param10;
         this.§<!3§ = param4;
         this.§^]§ = param5;
         this.§5T§ = new §<!e§(param6);
         this.§8v§ = param7;
         this.§;F§ = param8;
         this.§6!r§ = param9;
         this.§`,§ = param11;
         this.§1!3§ = param12;
      }
      
      public function get front() : Boolean
      {
         return this.§1>§;
      }
      
      public function get itemType() : int
      {
         return this.§5!J§;
      }
      
      public function get itemName() : String
      {
         return this.§ !B§;
      }
      
      public function get category() : String
      {
         return this.§8v§;
      }
      
      public function get healthMax() : Number
      {
         return this.§;F§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§`,§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§1!3§;
      }
      
      public function §-1§() : int
      {
         return this.shape.§"!j§();
      }
      
      public function §>y§() : int
      {
         return this.shape.§?!L§();
      }
      
      public function getItemDensity() : Number
      {
         return this.§<!n§.density;
      }
      
      public function getItemBodyType() : int
      {
         return this.§<!n§.bodyType;
      }
      
      public function §@!x§() : Number
      {
         return this.§<!n§.colors;
      }
      
      public function getItemDefence() : Number
      {
         if(!isNaN(this.§<!n§.defence))
         {
            return this.§<!n§.defence;
         }
         return 0;
      }
      
      public function getItemFriction() : Number
      {
         return this.§<!n§.friction;
      }
      
      public function getItemRestitution() : Number
      {
         return this.§<!n§.restitution;
      }
      
      public function getItemStrength() : Number
      {
         return this.§<!n§.strength;
      }
      
      public function §&!9§() : int
      {
         if(this.itemType == §[""§)
         {
            return 6;
         }
         if(this.front)
         {
            return 100;
         }
         return 20;
      }
      
      public function get shape() : §each §
      {
         return this.§^]§;
      }
      
      public function get soundResource() : §,4§
      {
         return this.§<!3§;
      }
      
      public function get score() : int
      {
         return this.§5T§.getValue();
      }
      
      public function get scale() : Number
      {
         return this.§6!r§;
      }
      
      public function get §%x§() : Boolean
      {
         return this.§<!n§.§!!2§();
      }
      
      public function get materialName() : String
      {
         return this.§<!n§.name;
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         return this.§<!n§.getDamageMultiplier(param1);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         return this.§<!n§.getVelocityMultiplier(param1);
      }
      
      public function §;!^§() : Array
      {
         if(this.itemName.indexOf("BIRD") == 0)
         {
            return this.§9"!§();
         }
         if(this.itemName.indexOf("PIG") == 0)
         {
            return this.§!!0§();
         }
         return this.§?"'§();
      }
      
      public function get isColliding() : Boolean
      {
         return true;
      }
      
      private function §?"'§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]],["3",[this.itemName + "_3"]],["4",[this.itemName + "_4"]]];
         return [[§"_§.§=!4§,_loc1_]];
      }
      
      private function §!!0§() : Array
      {
         return [[§"_§.§=!4§,[["1",[this.itemName + "_01"]],["2",[this.itemName + "_02"]],["3",[this.itemName + "_03"]]]],[§ !o§.§ E§,[["1",[this.itemName + "_01_BLINK"]],["2",[this.itemName + "_02_BLINK"]],["3",[this.itemName + "_03_BLINK"]]]],[§ !o§.§," §,[["1",[this.itemName + "_01_SMILE"]],["2",[this.itemName + "_02_SMILE"]],["3",[this.itemName + "_03_SMILE"]]]]];
      }
      
      private function §9"!§() : Array
      {
         if(this.itemName == "BIRD_SARDINE")
         {
            return [[§"_§.§=!4§,[this.itemName]]];
         }
         if(this.itemName == "BIRD_MIGHTY_EAGLE")
         {
            return [[§"_§.§=!4§,["BIRD_ME_MOTION","BIRD_ME_RADIAL"]]];
         }
         if(this.itemName == "BIRD_ORANGE")
         {
            return [[§"_§.§=!4§,[["1",[this.itemName + "_YELL"]]]],[§ !o§.§ E§,[["1",[this.itemName + "_BLINK"]]]],[§?!z§.§15§,[["1",[this.itemName + "_YELL"]]]],[§ !o§.§," §,[["1",[this.itemName + "_EXCITED"]]]],[§?!z§.§`;§,[["1",[this.itemName + "_EXCITED"]]]],[§?!z§.§-"§,[["1",[this.itemName + "_BALLOON"]]]]];
         }
         var _loc1_:Array = this.§1d§();
         var _loc2_:Array = this.§7!0§();
         var _loc3_:Array = [[§"_§.§=!4§,_loc2_],[§ !o§.§ E§,[["1",[this.itemName + "_BLINK"]]]],[§?!z§.§15§,[["1",[this.itemName + "_FLYING"]]]],[§ !o§.§," §,[["1",[this.itemName + "_YELL"]]]],[§?!z§.§`;§,[["1",[this.itemName + "_FLYING_YELL"]]]]];
         if(_loc1_)
         {
            _loc3_.push([§?!z§.§-"§,_loc1_]);
         }
         return _loc3_;
      }
      
      private function §7!0§() : Array
      {
         if(this.itemName == "BIRD_REDBIG")
         {
            return [["1",[this.itemName + "_1"]]];
         }
         return [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]]];
      }
      
      private function §1d§() : Array
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
