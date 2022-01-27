package §6!M§
{
   import §'!n§.§??§;
   import §3R§.§1!R§;
   import §4"@§.DisplayObject;
   import §5"D§.§&!v§;
   import §5"D§.§1"G§;
   import §5"D§.§6!!§;
   import §7!C§.§8!w§;
   
   public class §<!r§
   {
      
      public static const §8j§:int = 0;
      
      public static const §<W§:int = 1;
      
      public static const §8""§:int = 2;
      
      public static const §!"<§:int = 3;
      
      public static const §`";§:int = 5;
      
      public static const §4!t§:int = 6;
      
      public static const §^!&§:int = 7;
      
      public static const §@_§:int = 8;
      
      public static const §]$§:int = 9;
       
      
      protected var §9!0§:String;
      
      protected var § var§:int;
      
      protected var §]"=§:§??§;
      
      protected var §?k§:String;
      
      protected var §-=§:Number;
      
      protected var §02§:Boolean = false;
      
      protected var §`u§:§7r§;
      
      protected var §9j§:§8!]§;
      
      protected var §,!2§:§=!P§;
      
      protected var §1!k§:Number = 1.0;
      
      public function §<!r§(param1:String, param2:int, param3:§8!]§, param4:§=!P§, param5:§7r§, param6:int, param7:String, param8:Number, param9:Number = 1.0, param10:Boolean = false)
      {
         super();
         this.§9!0§ = param1;
         this.§ var§ = param2;
         this.§9j§ = param3;
         this.§02§ = param10;
         this.§,!2§ = param4;
         this.§`u§ = param5;
         this.§]"=§ = new §??§(param6);
         this.§?k§ = param7;
         this.§-=§ = param8;
         this.§1!k§ = param9;
      }
      
      public function get front() : Boolean
      {
         return this.§02§;
      }
      
      public function get itemType() : int
      {
         return this.§ var§;
      }
      
      public function get itemName() : String
      {
         return this.§9!0§;
      }
      
      public function get category() : String
      {
         return this.§?k§;
      }
      
      public function get healthMax() : Number
      {
         return this.§-=§;
      }
      
      public function §0!j§() : int
      {
         return this.shape.getWidth();
      }
      
      public function §`J§() : int
      {
         return this.shape.getHeight();
      }
      
      public function getItemDensity() : Number
      {
         return this.§9j§.density;
      }
      
      public function getItemBodyType() : int
      {
         return this.§9j§.bodyType;
      }
      
      public function §@S§() : Number
      {
         return this.§9j§.colors;
      }
      
      public function getItemDefence() : Number
      {
         if(!isNaN(this.§9j§.defence))
         {
            return this.§9j§.defence;
         }
         return 0;
      }
      
      public function getItemFriction() : Number
      {
         return this.§9j§.friction;
      }
      
      public function getItemRestitution() : Number
      {
         return this.§9j§.restitution;
      }
      
      public function getItemStrength() : Number
      {
         return this.§9j§.strength;
      }
      
      public function getItemZOrder() : int
      {
         if(this.itemType == §4!t§)
         {
            return 6;
         }
         if(this.front)
         {
            return 100;
         }
         return 20;
      }
      
      public function get shape() : §7r§
      {
         var _loc1_:DisplayObject = null;
         if(!this.§`u§)
         {
            _loc1_ = §8!w§.§5!V§.animationManager.getAnimation(this.§9!0§).getFrame(0);
            this.§`u§ = new §1!K§(_loc1_.width * §1!R§.§00§ / 2,_loc1_.height * §1!R§.§00§ / 2);
         }
         return this.§`u§;
      }
      
      public function get soundResource() : §=!P§
      {
         return this.§,!2§;
      }
      
      public function get score() : int
      {
         return this.§]"=§.getValue();
      }
      
      public function get scale() : Number
      {
         return this.§1!k§;
      }
      
      public function get isMaterialStatic() : Boolean
      {
         return this.§9j§.§"!2§();
      }
      
      public function get materialName() : String
      {
         return this.§9j§.name;
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         return this.§9j§.getDamageMultiplier(param1);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         return this.§9j§.getVelocityMultiplier(param1);
      }
      
      public function getAnimationDefinitions() : Array
      {
         if(this.itemName.indexOf("BIRD") == 0)
         {
            return this.§?!7§();
         }
         if(this.itemName.indexOf("PIG") == 0)
         {
            return this.§?!o§();
         }
         return this.§?"§();
      }
      
      private function §?"§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]],["3",[this.itemName + "_3"]],["4",[this.itemName + "_4"]]];
         return [[§6!!§.§[!;§,_loc1_]];
      }
      
      private function §?!o§() : Array
      {
         return [[§6!!§.§[!;§,[["1",[this.itemName + "_01"]],["2",[this.itemName + "_02"]],["3",[this.itemName + "_03"]]]],[§&!v§.§1!u§,[["1",[this.itemName + "_01_BLINK"]],["2",[this.itemName + "_02_BLINK"]],["3",[this.itemName + "_03_BLINK"]]]],[§&!v§.§^2§,[["1",[this.itemName + "_01_SMILE"]],["2",[this.itemName + "_02_SMILE"]],["3",[this.itemName + "_03_SMILE"]]]]];
      }
      
      private function §?!7§() : Array
      {
         if(this.itemName == "BIRD_SARDINE")
         {
            return [[§6!!§.§[!;§,[this.itemName]]];
         }
         if(this.itemName == "BIRD_MIGHTY_EAGLE")
         {
            return [[§6!!§.§[!;§,["BIRD_ME_MOTION","BIRD_ME_RADIAL"]]];
         }
         var _loc1_:Array = this.§5!9§();
         var _loc2_:Array = this.§6! §();
         var _loc3_:Array = [[§6!!§.§[!;§,_loc2_],[§&!v§.§1!u§,[["1",[this.itemName + "_BLINK"]]]],[§1"G§.§9!i§,[["1",[this.itemName + "_FLYING"]]]],[§&!v§.§^2§,[["1",[this.itemName + "_YELL"]]]],[§1"G§.§^s§,[["1",[this.itemName + "_FLYING_YELL"]]]]];
         if(_loc1_)
         {
            _loc3_.push([§1"G§.§'!e§,_loc1_]);
         }
         return _loc3_;
      }
      
      private function §6! §() : Array
      {
         if(this.itemName == "BIRD_REDBIG")
         {
            return [["1",[this.itemName + "_1"]]];
         }
         return [["1",[this.itemName + "_1",this.itemName + "_2"]]];
      }
      
      private function §5!9§() : Array
      {
         if(this.itemName == "BIRD_BLACK")
         {
            return [["1",[this.itemName + "_SPECIAL",this.itemName + "_SPECIAL_2",this.itemName + "_SPECIAL_3"]]];
         }
         if(this.itemName == "BIRD_WHITE" || this.itemName == "BIRD_YELLOW" || this.itemName == "BIRD_GREEN")
         {
            return [["1",[this.itemName + "_SPECIAL"]]];
         }
         return null;
      }
   }
}
