package §2"Y§
{
   import §1!i§.§;7§;
   import §7P§.§&#=§;
   import §7P§.§?"N§;
   import §7P§.§^#$§;
   
   public class §"t§
   {
      
      public static const §1"A§:int = 0;
      
      public static const §5k§:int = 1;
      
      public static const §6!9§:int = 2;
      
      public static const §;"e§:int = 3;
      
      public static const §5s§:int = 5;
      
      public static const §&#F§:int = 6;
      
      public static const §"!x§:int = 7;
      
      public static const §<!Y§:int = 8;
      
      public static const § 4§:int = 9;
       
      
      protected var §<"d§:String;
      
      protected var §[!-§:int;
      
      protected var §,!D§:§;7§;
      
      protected var §&!w§:String;
      
      protected var § B§:Number;
      
      protected var §<!v§:Boolean = false;
      
      protected var §&"5§:§?#^§;
      
      protected var §`!=§:§&!x§;
      
      protected var §@! §:§'#2§;
      
      protected var §8"2§:Number = 1.0;
      
      protected var §@t§:String;
      
      protected var §2"7§:int;
      
      public function §"t§(param1:String, param2:int, param3:§&!x§, param4:§'#2§, param5:§?#^§, param6:int, param7:String, param8:Number, param9:Number = 1.0, param10:Boolean = false, param11:String = "", param12:int = 1)
      {
         super();
         this.§<"d§ = param1;
         this.§[!-§ = param2;
         this.§`!=§ = param3;
         this.§<!v§ = param10;
         this.§@! § = param4;
         this.§&"5§ = param5;
         this.§,!D§ = new §;7§(param6);
         this.§&!w§ = param7;
         this.§ B§ = param8;
         this.§8"2§ = param9;
         this.§@t§ = param11;
         this.§2"7§ = param12;
      }
      
      public function get front() : Boolean
      {
         return this.§<!v§;
      }
      
      public function get itemType() : int
      {
         return this.§[!-§;
      }
      
      public function get itemName() : String
      {
         return this.§<"d§;
      }
      
      public function get category() : String
      {
         return this.§&!w§;
      }
      
      public function get healthMax() : Number
      {
         return this.§ B§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§@t§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§2"7§;
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
         return this.§`!=§.density;
      }
      
      public function getItemBodyType() : int
      {
         return this.§`!=§.bodyType;
      }
      
      public function §%"k§() : Number
      {
         return this.§`!=§.colors;
      }
      
      public function getItemDefence() : Number
      {
         if(!isNaN(this.§`!=§.defence))
         {
            return this.§`!=§.defence;
         }
         return 0;
      }
      
      public function getItemFriction() : Number
      {
         return this.§`!=§.friction;
      }
      
      public function getItemRestitution() : Number
      {
         return this.§`!=§.restitution;
      }
      
      public function getItemStrength() : Number
      {
         return this.§`!=§.strength;
      }
      
      public function getItemZOrder() : int
      {
         if(this.itemType == §&#F§)
         {
            return 6;
         }
         if(this.front)
         {
            return 100;
         }
         return 20;
      }
      
      public function get shape() : §?#^§
      {
         return this.§&"5§;
      }
      
      public function get soundResource() : §'#2§
      {
         return this.§@! §;
      }
      
      public function get score() : int
      {
         return this.§,!D§.getValue();
      }
      
      public function get scale() : Number
      {
         return this.§8"2§;
      }
      
      public function get isMaterialStatic() : Boolean
      {
         return this.§`!=§.§]"7§();
      }
      
      public function get materialName() : String
      {
         return this.§`!=§.name;
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         return this.§`!=§.getDamageMultiplier(param1);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         return this.§`!=§.getVelocityMultiplier(param1);
      }
      
      public function getAnimationDefinitions() : Array
      {
         if(this.itemName.indexOf("BIRD") == 0)
         {
            return this.§5#+§();
         }
         if(this.itemName.indexOf("PIG") == 0)
         {
            return this.§'"1§();
         }
         if(this.itemName.indexOf("MISC_EASTER_EGG") == 0)
         {
            return this.§7#T§();
         }
         return this.§@Y§();
      }
      
      public function get isColliding() : Boolean
      {
         return true;
      }
      
      private function §@Y§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]],["3",[this.itemName + "_3"]],["4",[this.itemName + "_4"]]];
         return [[§&#=§.§'%§,_loc1_]];
      }
      
      private function §7#T§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName]]];
         return [[§&#=§.§'%§,_loc1_]];
      }
      
      private function §'"1§() : Array
      {
         return [[§&#=§.§'%§,[["1",[this.itemName + "_01"]],["2",[this.itemName + "_02"]],["3",[this.itemName + "_03"]]]],[§^#$§.§^?§,[["1",[this.itemName + "_01_BLINK"]],["2",[this.itemName + "_02_BLINK"]],["3",[this.itemName + "_03_BLINK"]]]],[§^#$§.§3"=§,[["1",[this.itemName + "_01_SMILE"]],["2",[this.itemName + "_02_SMILE"]],["3",[this.itemName + "_03_SMILE"]]]]];
      }
      
      private function §5#+§() : Array
      {
         if(this.itemName == "BIRD_SARDINE")
         {
            return [[§&#=§.§'%§,[this.itemName]]];
         }
         if(this.itemName == "BIRD_MIGHTY_EAGLE")
         {
            return [[§&#=§.§'%§,["BIRD_ME_MOTION","BIRD_ME_RADIAL"]]];
         }
         if(this.itemName == "BIRD_ORANGE")
         {
            return [[§&#=§.§'%§,[["1",[this.itemName + "_YELL"]]]],[§^#$§.§^?§,[["1",[this.itemName + "_BLINK"]]]],[§?"N§.§;!U§,[["1",[this.itemName + "_YELL"]]]],[§^#$§.§3"=§,[["1",[this.itemName + "_EXCITED"]]]],[§?"N§.§-"[§,[["1",[this.itemName + "_EXCITED"]]]],[§?"N§.§4!8§,[["1",[this.itemName + "_BALLOON"]]]]];
         }
         var _loc1_:Array = this.§=!c§();
         var _loc2_:Array = this.§>"r§();
         var _loc3_:Array = [[§&#=§.§'%§,_loc2_],[§^#$§.§^?§,[["1",[this.itemName + "_BLINK"]]]],[§?"N§.§;!U§,[["1",[this.itemName + "_FLYING"]]]],[§^#$§.§3"=§,[["1",[this.itemName + "_YELL"]]]],[§?"N§.§-"[§,[["1",[this.itemName + "_FLYING_YELL"]]]]];
         if(_loc1_)
         {
            _loc3_.push([§?"N§.§4!8§,_loc1_]);
         }
         return _loc3_;
      }
      
      private function §>"r§() : Array
      {
         if(this.itemName == "BIRD_REDBIG")
         {
            return [["1",[this.itemName + "_1"]]];
         }
         return [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]]];
      }
      
      private function §=!c§() : Array
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
