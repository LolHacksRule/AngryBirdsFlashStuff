package §5!7§
{
   import §-!f§.DisplayObject;
   import §0I§.§!!p§;
   import §]!q§.§,6§;
   import §]!q§.§,[§;
   import §]!q§.§7=§;
   import §`6§.§-!j§;
   import com.angrybirds.§6U§;
   
   public class §3!Y§
   {
      
      public static const §!+§:int = 0;
      
      public static const §1!V§:int = 1;
      
      public static const §&!Z§:int = 2;
      
      public static const §'!r§:int = 3;
      
      public static const §?k§:int = 5;
      
      public static const §9!6§:int = 6;
      
      public static const § "#§:int = 7;
      
      public static const §;!=§:int = 8;
      
      public static const §1!#§:int = 9;
       
      
      protected var §]!@§:String;
      
      protected var §@!+§:int;
      
      protected var §[#§:§-!j§;
      
      protected var §%"#§:String;
      
      protected var §]1§:Number;
      
      protected var §2[§:Boolean = false;
      
      protected var §9!_§:§[2§;
      
      protected var §,F§:§3@§;
      
      protected var §6F§:§7!R§;
      
      protected var §79§:Number = 1.0;
      
      public function §3!Y§(param1:String, param2:int, param3:§3@§, param4:§7!R§, param5:§[2§, param6:int, param7:String, param8:Number, param9:Number = 1.0, param10:Boolean = false)
      {
         super();
         this.§]!@§ = param1;
         this.§@!+§ = param2;
         this.§,F§ = param3;
         this.§2[§ = param10;
         this.§6F§ = param4;
         this.§9!_§ = param5;
         this.§[#§ = new §-!j§(param6);
         this.§%"#§ = param7;
         this.§]1§ = param8;
         this.§79§ = param9;
      }
      
      public function get front() : Boolean
      {
         return this.§2[§;
      }
      
      public function get itemType() : int
      {
         return this.§@!+§;
      }
      
      public function get itemName() : String
      {
         return this.§]!@§;
      }
      
      public function get category() : String
      {
         return this.§%"#§;
      }
      
      public function get healthMax() : Number
      {
         return this.§]1§;
      }
      
      public function §%!u§() : int
      {
         return this.shape.§5!z§();
      }
      
      public function §1!O§() : int
      {
         return this.shape.§1P§();
      }
      
      public function getItemDensity() : Number
      {
         return this.§,F§.density;
      }
      
      public function getItemBodyType() : int
      {
         return this.§,F§.bodyType;
      }
      
      public function §=b§() : Number
      {
         return this.§,F§.colors;
      }
      
      public function getItemDefence() : Number
      {
         if(!isNaN(this.§,F§.defence))
         {
            return this.§,F§.defence;
         }
         return 0;
      }
      
      public function getItemFriction() : Number
      {
         return this.§,F§.friction;
      }
      
      public function getItemRestitution() : Number
      {
         return this.§,F§.restitution;
      }
      
      public function getItemStrength() : Number
      {
         return this.§,F§.strength;
      }
      
      public function §9M§() : int
      {
         if(this.itemType == §9!6§)
         {
            return 6;
         }
         if(this.front)
         {
            return 100;
         }
         return 20;
      }
      
      public function get shape() : §[2§
      {
         var _loc1_:DisplayObject = null;
         if(!this.§9!_§)
         {
            _loc1_ = §6U§.§+_§.§8!3§.§@!P§(this.§]!@§).getFrame(0);
            this.§9!_§ = new §3!>§(_loc1_.width * §!!p§.§6L§ / 2,_loc1_.height * §!!p§.§6L§ / 2);
         }
         return this.§9!_§;
      }
      
      public function get soundResource() : §7!R§
      {
         return this.§6F§;
      }
      
      public function get score() : int
      {
         return this.§[#§.getValue();
      }
      
      public function get scale() : Number
      {
         return this.§79§;
      }
      
      public function get §]!K§() : Boolean
      {
         return this.§,F§.§,!]§();
      }
      
      public function get materialName() : String
      {
         return this.§,F§.name;
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         return this.§,F§.getDamageMultiplier(param1);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         return this.§,F§.getVelocityMultiplier(param1);
      }
      
      public function §5!n§() : Array
      {
         if(this.itemName.indexOf("BIRD") == 0)
         {
            return this.§1!l§();
         }
         if(this.itemName.indexOf("PIG") == 0)
         {
            return this.§>!o§();
         }
         return this.§&!5§();
      }
      
      private function §&!5§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]],["3",[this.itemName + "_3"]],["4",[this.itemName + "_4"]]];
         return [[§,[§.§0h§,_loc1_]];
      }
      
      private function §>!o§() : Array
      {
         return [[§,[§.§0h§,[["1",[this.itemName + "_01"]],["2",[this.itemName + "_02"]],["3",[this.itemName + "_03"]]]],[§7=§.§""$§,[["1",[this.itemName + "_01_BLINK"]],["2",[this.itemName + "_02_BLINK"]],["3",[this.itemName + "_03_BLINK"]]]],[§7=§.§7"§,[["1",[this.itemName + "_01_SMILE"]],["2",[this.itemName + "_02_SMILE"]],["3",[this.itemName + "_03_SMILE"]]]]];
      }
      
      private function §1!l§() : Array
      {
         if(this.itemName == "BIRD_SARDINE")
         {
            return [[§,[§.§0h§,[this.itemName]]];
         }
         if(this.itemName == "BIRD_MIGHTY_EAGLE")
         {
            return [[§,[§.§0h§,["BIRD_ME_MOTION","BIRD_ME_RADIAL"]]];
         }
         if(this.itemName == "BIRD_ORANGE")
         {
            return [[§,[§.§0h§,[["1",[this.itemName + "_YELL"]]]],[§7=§.§""$§,[["1",[this.itemName + "_BLINK"]]]],[§,6§.§]!g§,[["1",[this.itemName + "_YELL"]]]],[§7=§.§7"§,[["1",[this.itemName + "_EXCITED"]]]],[§,6§.§^!7§,[["1",[this.itemName + "_EXCITED"]]]],[§,6§.§>l§,[["1",[this.itemName + "_BALLOON"]]]]];
         }
         var _loc1_:Array = this.§true§();
         var _loc2_:Array = this.§>P§();
         var _loc3_:Array = [[§,[§.§0h§,_loc2_],[§7=§.§""$§,[["1",[this.itemName + "_BLINK"]]]],[§,6§.§]!g§,[["1",[this.itemName + "_FLYING"]]]],[§7=§.§7"§,[["1",[this.itemName + "_YELL"]]]],[§,6§.§^!7§,[["1",[this.itemName + "_FLYING_YELL"]]]]];
         if(_loc1_)
         {
            _loc3_.push([§,6§.§>l§,_loc1_]);
         }
         return _loc3_;
      }
      
      private function §>P§() : Array
      {
         if(this.itemName == "BIRD_REDBIG")
         {
            return [["1",[this.itemName + "_1"]]];
         }
         return [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]]];
      }
      
      private function §true§() : Array
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
