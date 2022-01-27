package §3>§
{
   import §&!]§.DisplayObject;
   import §3"#§.§`"8§;
   import §4u§.§1!C§;
   import §9"!§.§!!H§;
   import §9"!§.§,K§;
   import §9"!§.§^"3§;
   import §>"2§.§8k§;
   
   public class §-"8§
   {
      
      public static const §,!#§:int = 0;
      
      public static const §&3§:int = 1;
      
      public static const § !L§:int = 2;
      
      public static const §&!s§:int = 3;
      
      public static const §9!s§:int = 5;
      
      public static const §&!§:int = 6;
      
      public static const §try §:int = 7;
      
      public static const §-X§:int = 8;
      
      public static const § m§:int = 9;
       
      
      protected var §^O§:String;
      
      protected var § !U§:int;
      
      protected var §-o§:§1!C§;
      
      protected var §=!0§:String;
      
      protected var §2"H§:Number;
      
      protected var §3A§:Boolean = false;
      
      protected var §71§:§1!'§;
      
      protected var §=!e§:§!4§;
      
      protected var §<K§:§=!Z§;
      
      protected var §&!A§:Number = 1.0;
      
      public function §-"8§(param1:String, param2:int, param3:§!4§, param4:§=!Z§, param5:§1!'§, param6:int, param7:String, param8:Number, param9:Number = 1.0, param10:Boolean = false)
      {
         super();
         this.§^O§ = param1;
         this.§ !U§ = param2;
         this.§=!e§ = param3;
         this.§3A§ = param10;
         this.§<K§ = param4;
         this.§71§ = param5;
         this.§-o§ = new §1!C§(param6);
         this.§=!0§ = param7;
         this.§2"H§ = param8;
         this.§&!A§ = param9;
      }
      
      public function get front() : Boolean
      {
         return this.§3A§;
      }
      
      public function get itemType() : int
      {
         return this.§ !U§;
      }
      
      public function get itemName() : String
      {
         return this.§^O§;
      }
      
      public function get category() : String
      {
         return this.§=!0§;
      }
      
      public function get healthMax() : Number
      {
         return this.§2"H§;
      }
      
      public function §1!a§() : int
      {
         return this.shape.getWidth();
      }
      
      public function §1!<§() : int
      {
         return this.shape.getHeight();
      }
      
      public function getItemDensity() : Number
      {
         return this.§=!e§.density;
      }
      
      public function getItemBodyType() : int
      {
         return this.§=!e§.bodyType;
      }
      
      public function §&%§() : Number
      {
         return this.§=!e§.colors;
      }
      
      public function getItemDefence() : Number
      {
         if(!isNaN(this.§=!e§.defence))
         {
            return this.§=!e§.defence;
         }
         return 0;
      }
      
      public function getItemFriction() : Number
      {
         return this.§=!e§.friction;
      }
      
      public function getItemRestitution() : Number
      {
         return this.§=!e§.restitution;
      }
      
      public function getItemStrength() : Number
      {
         return this.§=!e§.strength;
      }
      
      public function getItemZOrder() : int
      {
         if(this.itemType == §&!§)
         {
            return 6;
         }
         if(this.front)
         {
            return 100;
         }
         return 20;
      }
      
      public function get shape() : §1!'§
      {
         var _loc1_:DisplayObject = null;
         if(!this.§71§)
         {
            _loc1_ = §8k§.§;!]§.animationManager.getAnimation(this.§^O§).getFrame(0);
            this.§71§ = new §["<§(_loc1_.width * §`"8§.§3!=§ / 2,_loc1_.height * §`"8§.§3!=§ / 2);
         }
         return this.§71§;
      }
      
      public function get soundResource() : §=!Z§
      {
         return this.§<K§;
      }
      
      public function get score() : int
      {
         return this.§-o§.getValue();
      }
      
      public function get scale() : Number
      {
         return this.§&!A§;
      }
      
      public function get isMaterialStatic() : Boolean
      {
         return this.§=!e§.§+k§();
      }
      
      public function get materialName() : String
      {
         return this.§=!e§.name;
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         return this.§=!e§.getDamageMultiplier(param1);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         return this.§=!e§.getVelocityMultiplier(param1);
      }
      
      public function getAnimationDefinitions() : Array
      {
         if(this.itemName.indexOf("BIRD") == 0)
         {
            return this.§+!d§();
         }
         if(this.itemName.indexOf("PIG") == 0)
         {
            return this.§,!B§();
         }
         return this.§%"7§();
      }
      
      private function §%"7§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]],["3",[this.itemName + "_3"]],["4",[this.itemName + "_4"]]];
         return [[§^"3§.§4!Z§,_loc1_]];
      }
      
      private function §,!B§() : Array
      {
         return [[§^"3§.§4!Z§,[["1",[this.itemName + "_01"]],["2",[this.itemName + "_02"]],["3",[this.itemName + "_03"]]]],[§,K§.§6!z§,[["1",[this.itemName + "_01_BLINK"]],["2",[this.itemName + "_02_BLINK"]],["3",[this.itemName + "_03_BLINK"]]]],[§,K§.§;!+§,[["1",[this.itemName + "_01_SMILE"]],["2",[this.itemName + "_02_SMILE"]],["3",[this.itemName + "_03_SMILE"]]]]];
      }
      
      private function §+!d§() : Array
      {
         if(this.itemName == "BIRD_SARDINE")
         {
            return [[§^"3§.§4!Z§,[this.itemName]]];
         }
         if(this.itemName == "BIRD_MIGHTY_EAGLE")
         {
            return [[§^"3§.§4!Z§,["BIRD_ME_MOTION","BIRD_ME_RADIAL"]]];
         }
         var _loc1_:Array = this.§&"D§();
         var _loc2_:Array = this.§`",§();
         var _loc3_:Array = [[§^"3§.§4!Z§,_loc2_],[§,K§.§6!z§,[["1",[this.itemName + "_BLINK"]]]],[§!!H§.§+_§,[["1",[this.itemName + "_FLYING"]]]],[§,K§.§;!+§,[["1",[this.itemName + "_YELL"]]]],[§!!H§.§&"&§,[["1",[this.itemName + "_FLYING_YELL"]]]]];
         if(_loc1_)
         {
            _loc3_.push([§!!H§.§3r§,_loc1_]);
         }
         return _loc3_;
      }
      
      private function §`",§() : Array
      {
         if(this.itemName == "BIRD_REDBIG")
         {
            return [["1",[this.itemName + "_1"]]];
         }
         return [["1",[this.itemName + "_1",this.itemName + "_2"]]];
      }
      
      private function §&"D§() : Array
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
