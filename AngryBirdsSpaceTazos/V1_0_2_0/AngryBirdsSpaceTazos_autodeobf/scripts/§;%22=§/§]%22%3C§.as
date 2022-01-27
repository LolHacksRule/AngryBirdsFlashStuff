package §;"=§
{
   import §'!&§.DisplayObject;
   import §'#§.§4!!§;
   import §+!9§.§;0§;
   import §?!<§.§'!1§;
   import §[,§.§#!v§;
   import §[,§.§'y§;
   import §[,§.§5,§;
   
   public class §]"<§
   {
      
      public static const §#!&§:int = 0;
      
      public static const §8"3§:int = 1;
      
      public static const §6!_§:int = 2;
      
      public static const §^"0§:int = 3;
      
      public static const §?![§:int = 5;
      
      public static const §[8§:int = 6;
      
      public static const §6"2§:int = 7;
      
      public static const §8!w§:int = 8;
      
      public static const §3!c§:int = 9;
       
      
      protected var §&![§:String;
      
      protected var §]"!§:int;
      
      protected var §?!X§:§4!!§;
      
      protected var §;"D§:String;
      
      protected var §5!7§:Number;
      
      protected var §=H§:Boolean = false;
      
      protected var §<"7§:§3!R§;
      
      protected var §7!u§:§"!=§;
      
      protected var §&i§:§"!Y§;
      
      protected var §-!Y§:Number = 1.0;
      
      public function §]"<§(param1:String, param2:int, param3:§"!=§, param4:§"!Y§, param5:§3!R§, param6:int, param7:String, param8:Number, param9:Number = 1.0, param10:Boolean = false)
      {
         super();
         this.§&![§ = param1;
         this.§]"!§ = param2;
         this.§7!u§ = param3;
         this.§=H§ = param10;
         this.§&i§ = param4;
         this.§<"7§ = param5;
         this.§?!X§ = new §4!!§(param6);
         this.§;"D§ = param7;
         this.§5!7§ = param8;
         this.§-!Y§ = param9;
      }
      
      public function get front() : Boolean
      {
         return this.§=H§;
      }
      
      public function get itemType() : int
      {
         return this.§]"!§;
      }
      
      public function get itemName() : String
      {
         return this.§&![§;
      }
      
      public function get category() : String
      {
         return this.§;"D§;
      }
      
      public function get healthMax() : Number
      {
         return this.§5!7§;
      }
      
      public function §4"0§() : int
      {
         return this.shape.getWidth();
      }
      
      public function §8!8§() : int
      {
         return this.shape.getHeight();
      }
      
      public function getItemDensity() : Number
      {
         return this.§7!u§.density;
      }
      
      public function getItemBodyType() : int
      {
         return this.§7!u§.bodyType;
      }
      
      public function §7'§() : Number
      {
         return this.§7!u§.colors;
      }
      
      public function getItemDefence() : Number
      {
         if(!isNaN(this.§7!u§.defence))
         {
            return this.§7!u§.defence;
         }
         return 0;
      }
      
      public function getItemFriction() : Number
      {
         return this.§7!u§.friction;
      }
      
      public function getItemRestitution() : Number
      {
         return this.§7!u§.restitution;
      }
      
      public function getItemStrength() : Number
      {
         return this.§7!u§.strength;
      }
      
      public function getItemZOrder() : int
      {
         if(this.itemType == §[8§)
         {
            return 6;
         }
         if(this.front)
         {
            return 100;
         }
         return 20;
      }
      
      public function get shape() : §3!R§
      {
         var _loc1_:DisplayObject = null;
         if(!this.§<"7§)
         {
            _loc1_ = §;0§.§@!^§.animationManager.getAnimation(this.§&![§).getFrame(0);
            this.§<"7§ = new §5"5§(_loc1_.width * §'!1§.§<!@§ / 2,_loc1_.height * §'!1§.§<!@§ / 2);
         }
         return this.§<"7§;
      }
      
      public function get soundResource() : §"!Y§
      {
         return this.§&i§;
      }
      
      public function get score() : int
      {
         return this.§?!X§.getValue();
      }
      
      public function get scale() : Number
      {
         return this.§-!Y§;
      }
      
      public function get isMaterialStatic() : Boolean
      {
         return this.§7!u§.§4"%§();
      }
      
      public function get materialName() : String
      {
         return this.§7!u§.name;
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         return this.§7!u§.getDamageMultiplier(param1);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         return this.§7!u§.getVelocityMultiplier(param1);
      }
      
      public function getAnimationDefinitions() : Array
      {
         if(this.itemName.indexOf("BIRD") == 0)
         {
            return this.§2$§();
         }
         if(this.itemName.indexOf("PIG") == 0)
         {
            return this.§6!V§();
         }
         return this.§]!i§();
      }
      
      private function §]!i§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]],["3",[this.itemName + "_3"]],["4",[this.itemName + "_4"]]];
         return [[§5,§.§+!d§,_loc1_]];
      }
      
      private function §6!V§() : Array
      {
         return [[§5,§.§+!d§,[["1",[this.itemName + "_01"]],["2",[this.itemName + "_02"]],["3",[this.itemName + "_03"]]]],[§'y§.§`u§,[["1",[this.itemName + "_01_BLINK"]],["2",[this.itemName + "_02_BLINK"]],["3",[this.itemName + "_03_BLINK"]]]],[§'y§.§+_§,[["1",[this.itemName + "_01_SMILE"]],["2",[this.itemName + "_02_SMILE"]],["3",[this.itemName + "_03_SMILE"]]]]];
      }
      
      private function §2$§() : Array
      {
         if(this.itemName == "BIRD_SARDINE")
         {
            return [[§5,§.§+!d§,[this.itemName]]];
         }
         if(this.itemName == "BIRD_MIGHTY_EAGLE")
         {
            return [[§5,§.§+!d§,["BIRD_ME_MOTION","BIRD_ME_RADIAL"]]];
         }
         var _loc1_:Array = this.§1!J§();
         var _loc2_:Array = this.§8!B§();
         var _loc3_:Array = [[§5,§.§+!d§,_loc2_],[§'y§.§`u§,[["1",[this.itemName + "_BLINK"]]]],[§#!v§.§3!Q§,[["1",[this.itemName + "_FLYING"]]]],[§'y§.§+_§,[["1",[this.itemName + "_YELL"]]]],[§#!v§.§,E§,[["1",[this.itemName + "_FLYING_YELL"]]]]];
         if(_loc1_)
         {
            _loc3_.push([§#!v§.§%$§,_loc1_]);
         }
         return _loc3_;
      }
      
      private function §8!B§() : Array
      {
         if(this.itemName == "BIRD_REDBIG")
         {
            return [["1",[this.itemName + "_1"]]];
         }
         return [["1",[this.itemName + "_1",this.itemName + "_2"]]];
      }
      
      private function §1!J§() : Array
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
