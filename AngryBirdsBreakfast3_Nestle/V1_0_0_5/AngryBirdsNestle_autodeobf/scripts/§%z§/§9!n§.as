package §%z§
{
   import §,!q§.DisplayObject;
   import §2W§.§2E§;
   import §=!`§.§6!-§;
   import §=!`§.§;!j§;
   import §=!`§.§^^§;
   import §]k§.§<S§;
   import com.angrybirds.§6!E§;
   
   public class §9!n§
   {
      
      public static const §>!y§:int = 0;
      
      public static const §,"'§:int = 1;
      
      public static const §"A§:int = 2;
      
      public static const §&!Z§:int = 3;
      
      public static const §7O§:int = 5;
      
      public static const §`!U§:int = 6;
      
      public static const §?!&§:int = 7;
      
      public static const §%!j§:int = 8;
      
      public static const §8L§:int = 9;
       
      
      protected var §@#§:String;
      
      protected var §1R§:int;
      
      protected var §+!C§:§2E§;
      
      protected var §%!C§:String;
      
      protected var §!r§:Number;
      
      protected var §1!a§:Boolean = false;
      
      protected var §7!N§:§-i§;
      
      protected var §"!p§:§3!B§;
      
      protected var §?h§:§;#§;
      
      protected var §?!C§:Number = 1.0;
      
      public function §9!n§(param1:String, param2:int, param3:§3!B§, param4:§;#§, param5:§-i§, param6:int, param7:String, param8:Number, param9:Number = 1.0, param10:Boolean = false)
      {
         super();
         this.§@#§ = param1;
         this.§1R§ = param2;
         this.§"!p§ = param3;
         this.§1!a§ = param10;
         this.§?h§ = param4;
         this.§7!N§ = param5;
         this.§+!C§ = new §2E§(param6);
         this.§%!C§ = param7;
         this.§!r§ = param8;
         this.§?!C§ = param9;
      }
      
      public function get front() : Boolean
      {
         return this.§1!a§;
      }
      
      public function get itemType() : int
      {
         return this.§1R§;
      }
      
      public function get itemName() : String
      {
         return this.§@#§;
      }
      
      public function get category() : String
      {
         return this.§%!C§;
      }
      
      public function get healthMax() : Number
      {
         return this.§!r§;
      }
      
      public function §9!r§() : int
      {
         return this.shape.§0!U§();
      }
      
      public function §&e§() : int
      {
         return this.shape.§!!u§();
      }
      
      public function getItemDensity() : Number
      {
         return this.§"!p§.density;
      }
      
      public function getItemBodyType() : int
      {
         return this.§"!p§.bodyType;
      }
      
      public function §"!a§() : Number
      {
         return this.§"!p§.colors;
      }
      
      public function getItemDefence() : Number
      {
         if(!isNaN(this.§"!p§.defence))
         {
            return this.§"!p§.defence;
         }
         return 0;
      }
      
      public function getItemFriction() : Number
      {
         return this.§"!p§.friction;
      }
      
      public function getItemRestitution() : Number
      {
         return this.§"!p§.restitution;
      }
      
      public function getItemStrength() : Number
      {
         return this.§"!p§.strength;
      }
      
      public function §-[§() : int
      {
         if(this.itemType == §`!U§)
         {
            return 6;
         }
         if(this.front)
         {
            return 100;
         }
         return 20;
      }
      
      public function get shape() : §-i§
      {
         var _loc1_:DisplayObject = null;
         if(!this.§7!N§)
         {
            _loc1_ = §6!E§.§7I§.§-h§.§ !u§(this.§@#§).getFrame(0);
            this.§7!N§ = new §,g§(_loc1_.width * §<S§.§;!Q§ / 2,_loc1_.height * §<S§.§;!Q§ / 2);
         }
         return this.§7!N§;
      }
      
      public function get soundResource() : §;#§
      {
         return this.§?h§;
      }
      
      public function get score() : int
      {
         return this.§+!C§.getValue();
      }
      
      public function get scale() : Number
      {
         return this.§?!C§;
      }
      
      public function get §3!l§() : Boolean
      {
         return this.§"!p§.§,z§();
      }
      
      public function get materialName() : String
      {
         return this.§"!p§.name;
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         return this.§"!p§.getDamageMultiplier(param1);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         return this.§"!p§.getVelocityMultiplier(param1);
      }
      
      public function §#!#§() : Array
      {
         if(this.itemName.indexOf("BIRD") == 0)
         {
            return this.§4z§();
         }
         if(this.itemName.indexOf("PIG") == 0)
         {
            return this.§<&§();
         }
         return this.§@3§();
      }
      
      private function §@3§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]],["3",[this.itemName + "_3"]],["4",[this.itemName + "_4"]]];
         return [[§^^§.§0U§,_loc1_]];
      }
      
      private function §<&§() : Array
      {
         return [[§^^§.§0U§,[["1",[this.itemName + "_01"]],["2",[this.itemName + "_02"]],["3",[this.itemName + "_03"]]]],[§;!j§.§@J§,[["1",[this.itemName + "_01_BLINK"]],["2",[this.itemName + "_02_BLINK"]],["3",[this.itemName + "_03_BLINK"]]]],[§;!j§.§%]§,[["1",[this.itemName + "_01_SMILE"]],["2",[this.itemName + "_02_SMILE"]],["3",[this.itemName + "_03_SMILE"]]]]];
      }
      
      private function §4z§() : Array
      {
         if(this.itemName == "BIRD_SARDINE")
         {
            return [[§^^§.§0U§,[this.itemName]]];
         }
         if(this.itemName == "BIRD_MIGHTY_EAGLE")
         {
            return [[§^^§.§0U§,["BIRD_ME_MOTION","BIRD_ME_RADIAL"]]];
         }
         if(this.itemName == "BIRD_ORANGE")
         {
            return [[§^^§.§0U§,[["1",[this.itemName + "_YELL"]]]],[§;!j§.§@J§,[["1",[this.itemName + "_BLINK"]]]],[§6!-§.§%"'§,[["1",[this.itemName + "_YELL"]]]],[§;!j§.§%]§,[["1",[this.itemName + "_EXCITED"]]]],[§6!-§.§0'§,[["1",[this.itemName + "_EXCITED"]]]],[§6!-§.§7!j§,[["1",[this.itemName + "_BALLOON"]]]]];
         }
         var _loc1_:Array = this.§?!R§();
         var _loc2_:Array = this.§7^§();
         var _loc3_:Array = [[§^^§.§0U§,_loc2_],[§;!j§.§@J§,[["1",[this.itemName + "_BLINK"]]]],[§6!-§.§%"'§,[["1",[this.itemName + "_FLYING"]]]],[§;!j§.§%]§,[["1",[this.itemName + "_YELL"]]]],[§6!-§.§0'§,[["1",[this.itemName + "_FLYING_YELL"]]]]];
         if(_loc1_)
         {
            _loc3_.push([§6!-§.§7!j§,_loc1_]);
         }
         return _loc3_;
      }
      
      private function §7^§() : Array
      {
         if(this.itemName == "BIRD_REDBIG")
         {
            return [["1",[this.itemName + "_1"]]];
         }
         return [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]]];
      }
      
      private function §?!R§() : Array
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
