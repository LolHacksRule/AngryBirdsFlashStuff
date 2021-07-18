package §"!&§
{
   import § !Y§.§]!,§;
   import §'4§.§^g§;
   import §,"&§.§9q§;
   import §7!8§.DisplayObject;
   import §]">§.§ 6§;
   import §]">§.§1!0§;
   import §]">§.§5=§;
   
   public class §8X§
   {
      
      public static const §!!K§:int = 0;
      
      public static const §1!Q§:int = 1;
      
      public static const §@+§:int = 2;
      
      public static const §5x§:int = 3;
      
      public static const §<g§:int = 5;
      
      public static const §1!K§:int = 6;
      
      public static const §3!K§:int = 7;
      
      public static const §8G§:int = 8;
      
      public static const §,"4§:int = 9;
       
      
      protected var §@C§:String;
      
      protected var §,S§:int;
      
      protected var §@Q§:§]!,§;
      
      protected var §!Z§:String;
      
      protected var §,L§:Number;
      
      protected var §8!j§:Boolean = false;
      
      protected var §?!g§:set;
      
      protected var §[B§:§<s§;
      
      protected var §'!%§:§=C§;
      
      protected var §=T§:Number = 1.0;
      
      public function §8X§(param1:String, param2:int, param3:§<s§, param4:§=C§, param5:set, param6:int, param7:String, param8:Number, param9:Number = 1.0, param10:Boolean = false)
      {
         super();
         this.§@C§ = param1;
         this.§,S§ = param2;
         this.§[B§ = param3;
         this.§8!j§ = param10;
         this.§'!%§ = param4;
         this.§?!g§ = param5;
         this.§@Q§ = new §]!,§(param6);
         this.§!Z§ = param7;
         this.§,L§ = param8;
         this.§=T§ = param9;
      }
      
      public function get front() : Boolean
      {
         return this.§8!j§;
      }
      
      public function get itemType() : int
      {
         return this.§,S§;
      }
      
      public function get itemName() : String
      {
         return this.§@C§;
      }
      
      public function get category() : String
      {
         return this.§!Z§;
      }
      
      public function get healthMax() : Number
      {
         return this.§,L§;
      }
      
      public function §&&§() : int
      {
         return this.shape.getWidth();
      }
      
      public function §1!V§() : int
      {
         return this.shape.getHeight();
      }
      
      public function getItemDensity() : Number
      {
         return this.§[B§.density;
      }
      
      public function getItemBodyType() : int
      {
         return this.§[B§.bodyType;
      }
      
      public function §9!'§() : Number
      {
         return this.§[B§.colors;
      }
      
      public function getItemDefence() : Number
      {
         if(!isNaN(this.§[B§.defence))
         {
            return this.§[B§.defence;
         }
         return 0;
      }
      
      public function getItemFriction() : Number
      {
         return this.§[B§.friction;
      }
      
      public function getItemRestitution() : Number
      {
         return this.§[B§.restitution;
      }
      
      public function getItemStrength() : Number
      {
         return this.§[B§.strength;
      }
      
      public function getItemZOrder() : int
      {
         if(this.itemType == §1!K§)
         {
            return 6;
         }
         if(this.front)
         {
            return 100;
         }
         return 20;
      }
      
      public function get shape() : set
      {
         var _loc1_:DisplayObject = null;
         if(!this.§?!g§)
         {
            _loc1_ = §9q§.§>!L§.animationManager.getAnimation(this.§@C§).getFrame(0);
            this.§?!g§ = new §>!0§(_loc1_.width * §^g§.§5!-§ / 2,_loc1_.height * §^g§.§5!-§ / 2);
         }
         return this.§?!g§;
      }
      
      public function get soundResource() : §=C§
      {
         return this.§'!%§;
      }
      
      public function get score() : int
      {
         return this.§@Q§.getValue();
      }
      
      public function get scale() : Number
      {
         return this.§=T§;
      }
      
      public function get isMaterialStatic() : Boolean
      {
         return this.§[B§.§@">§();
      }
      
      public function get materialName() : String
      {
         return this.§[B§.name;
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         return this.§[B§.getDamageMultiplier(param1);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         return this.§[B§.getVelocityMultiplier(param1);
      }
      
      public function getAnimationDefinitions() : Array
      {
         if(this.itemName.indexOf("BIRD") == 0)
         {
            return this.§,u§();
         }
         if(this.itemName.indexOf("PIG") == 0)
         {
            return this.§<1§();
         }
         return this.§5!e§();
      }
      
      private function §5!e§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]],["3",[this.itemName + "_3"]],["4",[this.itemName + "_4"]]];
         return [[§1!0§.§,!Y§,_loc1_]];
      }
      
      private function §<1§() : Array
      {
         return [[§1!0§.§,!Y§,[["1",[this.itemName + "_01"]],["2",[this.itemName + "_02"]],["3",[this.itemName + "_03"]]]],[§5=§.§[_§,[["1",[this.itemName + "_01_BLINK"]],["2",[this.itemName + "_02_BLINK"]],["3",[this.itemName + "_03_BLINK"]]]],[§5=§.§3P§,[["1",[this.itemName + "_01_SMILE"]],["2",[this.itemName + "_02_SMILE"]],["3",[this.itemName + "_03_SMILE"]]]]];
      }
      
      private function §,u§() : Array
      {
         if(this.itemName == "BIRD_SARDINE")
         {
            return [[§1!0§.§,!Y§,[this.itemName]]];
         }
         if(this.itemName == "BIRD_MIGHTY_EAGLE")
         {
            return [[§1!0§.§,!Y§,["BIRD_ME_MOTION","BIRD_ME_RADIAL"]]];
         }
         var _loc1_:Array = this.§5Z§();
         var _loc2_:Array = this.§8!=§();
         var _loc3_:Array = [[§1!0§.§,!Y§,_loc2_],[§5=§.§[_§,[["1",[this.itemName + "_BLINK"]]]],[§ 6§.§>E§,[["1",[this.itemName + "_FLYING"]]]],[§5=§.§3P§,[["1",[this.itemName + "_YELL"]]]],[§ 6§.§#D§,[["1",[this.itemName + "_FLYING_YELL"]]]]];
         if(_loc1_)
         {
            _loc3_.push([§ 6§.§]" §,_loc1_]);
         }
         return _loc3_;
      }
      
      private function §8!=§() : Array
      {
         if(this.itemName == "BIRD_REDBIG")
         {
            return [["1",[this.itemName + "_1"]]];
         }
         return [["1",[this.itemName + "_1",this.itemName + "_2"]]];
      }
      
      private function §5Z§() : Array
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
