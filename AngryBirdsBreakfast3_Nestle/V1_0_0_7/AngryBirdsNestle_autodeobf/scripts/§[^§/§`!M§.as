package §[^§
{
   import § !=§.DisplayObject;
   import §!!&§.§0!_§;
   import §2!k§.§6",§;
   import §2!k§.§;;§;
   import §2!k§.§>-§;
   import §]A§.§[d§;
   import com.angrybirds.§#Z§;
   
   public class §`!M§
   {
      
      public static const §<-§:int = 0;
      
      public static const §8,§:int = 1;
      
      public static const §"!J§:int = 2;
      
      public static const §`n§:int = 3;
      
      public static const §2i§:int = 5;
      
      public static const §&U§:int = 6;
      
      public static const §;"'§:int = 7;
      
      public static const §9!$§:int = 8;
      
      public static const §,c§:int = 9;
       
      
      protected var §`a§:String;
      
      protected var §;G§:int;
      
      protected var §2R§:§0!_§;
      
      protected var §'!o§:String;
      
      protected var §#!s§:Number;
      
      protected var §8!Y§:Boolean = false;
      
      protected var §@^§:§#!?§;
      
      protected var §"!c§:§["%§;
      
      protected var §0"3§:§>"§;
      
      protected var §6!p§:Number = 1.0;
      
      public function §`!M§(param1:String, param2:int, param3:§["%§, param4:§>"§, param5:§#!?§, param6:int, param7:String, param8:Number, param9:Number = 1.0, param10:Boolean = false)
      {
         super();
         this.§`a§ = param1;
         this.§;G§ = param2;
         this.§"!c§ = param3;
         this.§8!Y§ = param10;
         this.§0"3§ = param4;
         this.§@^§ = param5;
         this.§2R§ = new §0!_§(param6);
         this.§'!o§ = param7;
         this.§#!s§ = param8;
         this.§6!p§ = param9;
      }
      
      public function get front() : Boolean
      {
         return this.§8!Y§;
      }
      
      public function get itemType() : int
      {
         return this.§;G§;
      }
      
      public function get itemName() : String
      {
         return this.§`a§;
      }
      
      public function get category() : String
      {
         return this.§'!o§;
      }
      
      public function get healthMax() : Number
      {
         return this.§#!s§;
      }
      
      public function §9j§() : int
      {
         return this.shape.§'%§();
      }
      
      public function §<!^§() : int
      {
         return this.shape.§!8§();
      }
      
      public function getItemDensity() : Number
      {
         return this.§"!c§.density;
      }
      
      public function getItemBodyType() : int
      {
         return this.§"!c§.bodyType;
      }
      
      public function §>N§() : Number
      {
         return this.§"!c§.colors;
      }
      
      public function getItemDefence() : Number
      {
         if(!isNaN(this.§"!c§.defence))
         {
            return this.§"!c§.defence;
         }
         return 0;
      }
      
      public function getItemFriction() : Number
      {
         return this.§"!c§.friction;
      }
      
      public function getItemRestitution() : Number
      {
         return this.§"!c§.restitution;
      }
      
      public function getItemStrength() : Number
      {
         return this.§"!c§.strength;
      }
      
      public function §4!%§() : int
      {
         if(this.itemType == §&U§)
         {
            return 6;
         }
         if(this.front)
         {
            return 100;
         }
         return 20;
      }
      
      public function get shape() : §#!?§
      {
         var _loc1_:DisplayObject = null;
         if(!this.§@^§)
         {
            _loc1_ = §#Z§.§'0§.§%B§.§[!R§(this.§`a§).getFrame(0);
            this.§@^§ = new §&!2§(_loc1_.width * §[d§.§]!U§ / 2,_loc1_.height * §[d§.§]!U§ / 2);
         }
         return this.§@^§;
      }
      
      public function get soundResource() : §>"§
      {
         return this.§0"3§;
      }
      
      public function get score() : int
      {
         return this.§2R§.getValue();
      }
      
      public function get scale() : Number
      {
         return this.§6!p§;
      }
      
      public function get §9d§() : Boolean
      {
         return this.§"!c§.§<?§();
      }
      
      public function get materialName() : String
      {
         return this.§"!c§.name;
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         return this.§"!c§.getDamageMultiplier(param1);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         return this.§"!c§.getVelocityMultiplier(param1);
      }
      
      public function §=B§() : Array
      {
         if(this.itemName.indexOf("BIRD") == 0)
         {
            return this.§1M§();
         }
         if(this.itemName.indexOf("PIG") == 0)
         {
            return this.§""+§();
         }
         return this.§%[§();
      }
      
      private function §%[§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]],["3",[this.itemName + "_3"]],["4",[this.itemName + "_4"]]];
         return [[§;;§.§-$§,_loc1_]];
      }
      
      private function §""+§() : Array
      {
         return [[§;;§.§-$§,[["1",[this.itemName + "_01"]],["2",[this.itemName + "_02"]],["3",[this.itemName + "_03"]]]],[§>-§.§9!c§,[["1",[this.itemName + "_01_BLINK"]],["2",[this.itemName + "_02_BLINK"]],["3",[this.itemName + "_03_BLINK"]]]],[§>-§.§1!n§,[["1",[this.itemName + "_01_SMILE"]],["2",[this.itemName + "_02_SMILE"]],["3",[this.itemName + "_03_SMILE"]]]]];
      }
      
      private function §1M§() : Array
      {
         if(this.itemName == "BIRD_SARDINE")
         {
            return [[§;;§.§-$§,[this.itemName]]];
         }
         if(this.itemName == "BIRD_MIGHTY_EAGLE")
         {
            return [[§;;§.§-$§,["BIRD_ME_MOTION","BIRD_ME_RADIAL"]]];
         }
         if(this.itemName == "BIRD_ORANGE")
         {
            return [[§;;§.§-$§,[["1",[this.itemName + "_YELL"]]]],[§>-§.§9!c§,[["1",[this.itemName + "_BLINK"]]]],[§6",§.§%R§,[["1",[this.itemName + "_YELL"]]]],[§>-§.§1!n§,[["1",[this.itemName + "_EXCITED"]]]],[§6",§.§?"&§,[["1",[this.itemName + "_EXCITED"]]]],[§6",§.§0!g§,[["1",[this.itemName + "_BALLOON"]]]]];
         }
         var _loc1_:Array = this.§6b§();
         var _loc2_:Array = this.§68§();
         var _loc3_:Array = [[§;;§.§-$§,_loc2_],[§>-§.§9!c§,[["1",[this.itemName + "_BLINK"]]]],[§6",§.§%R§,[["1",[this.itemName + "_FLYING"]]]],[§>-§.§1!n§,[["1",[this.itemName + "_YELL"]]]],[§6",§.§?"&§,[["1",[this.itemName + "_FLYING_YELL"]]]]];
         if(_loc1_)
         {
            _loc3_.push([§6",§.§0!g§,_loc1_]);
         }
         return _loc3_;
      }
      
      private function §68§() : Array
      {
         if(this.itemName == "BIRD_REDBIG")
         {
            return [["1",[this.itemName + "_1"]]];
         }
         return [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]]];
      }
      
      private function §6b§() : Array
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
