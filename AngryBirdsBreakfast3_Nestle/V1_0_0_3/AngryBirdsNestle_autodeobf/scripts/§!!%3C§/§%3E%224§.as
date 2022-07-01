package §!!<§
{
   import §"!-§.§ !§;
   import §"!-§.§8!#§;
   import §"!-§.§[-§;
   import §-!F§.§?!k§;
   import §0!Y§.DisplayObject;
   import §@"1§.§"h§;
   import com.angrybirds.§4!l§;
   
   public class §>"4§
   {
      
      public static const §'!B§:int = 0;
      
      public static const §'!v§:int = 1;
      
      public static const §`A§:int = 2;
      
      public static const §]`§:int = 3;
      
      public static const §1^§:int = 5;
      
      public static const §5!u§:int = 6;
      
      public static const § !T§:int = 7;
      
      public static const §2!8§:int = 8;
      
      public static const §'!-§:int = 9;
       
      
      protected var §+a§:String;
      
      protected var §`?§:int;
      
      protected var §5"#§:§?!k§;
      
      protected var §3!h§:String;
      
      protected var §"!7§:Number;
      
      protected var §4!t§:Boolean = false;
      
      protected var §;! §:§`!J§;
      
      protected var §,!1§:§+!9§;
      
      protected var §!J§:§[!L§;
      
      protected var §>s§:Number = 1.0;
      
      public function §>"4§(param1:String, param2:int, param3:§+!9§, param4:§[!L§, param5:§`!J§, param6:int, param7:String, param8:Number, param9:Number = 1.0, param10:Boolean = false)
      {
         super();
         this.§+a§ = param1;
         this.§`?§ = param2;
         this.§,!1§ = param3;
         this.§4!t§ = param10;
         this.§!J§ = param4;
         this.§;! § = param5;
         this.§5"#§ = new §?!k§(param6);
         this.§3!h§ = param7;
         this.§"!7§ = param8;
         this.§>s§ = param9;
      }
      
      public function get front() : Boolean
      {
         return this.§4!t§;
      }
      
      public function get itemType() : int
      {
         return this.§`?§;
      }
      
      public function get itemName() : String
      {
         return this.§+a§;
      }
      
      public function get category() : String
      {
         return this.§3!h§;
      }
      
      public function get healthMax() : Number
      {
         return this.§"!7§;
      }
      
      public function §'!Z§() : int
      {
         return this.shape.§`!A§();
      }
      
      public function §9!;§() : int
      {
         return this.shape.§#!l§();
      }
      
      public function getItemDensity() : Number
      {
         return this.§,!1§.density;
      }
      
      public function getItemBodyType() : int
      {
         return this.§,!1§.bodyType;
      }
      
      public function §6!n§() : Number
      {
         return this.§,!1§.colors;
      }
      
      public function getItemDefence() : Number
      {
         if(!isNaN(this.§,!1§.defence))
         {
            return this.§,!1§.defence;
         }
         return 0;
      }
      
      public function getItemFriction() : Number
      {
         return this.§,!1§.friction;
      }
      
      public function getItemRestitution() : Number
      {
         return this.§,!1§.restitution;
      }
      
      public function getItemStrength() : Number
      {
         return this.§,!1§.strength;
      }
      
      public function §,c§() : int
      {
         if(this.itemType == §5!u§)
         {
            return 6;
         }
         if(this.front)
         {
            return 100;
         }
         return 20;
      }
      
      public function get shape() : §`!J§
      {
         var _loc1_:DisplayObject = null;
         if(!this.§;! §)
         {
            _loc1_ = §4!l§.§,!8§.§[!c§.§[!q§(this.§+a§).getFrame(0);
            this.§;! § = new §`-§(_loc1_.width * §"h§.§4<§ / 2,_loc1_.height * §"h§.§4<§ / 2);
         }
         return this.§;! §;
      }
      
      public function get soundResource() : §[!L§
      {
         return this.§!J§;
      }
      
      public function get score() : int
      {
         return this.§5"#§.getValue();
      }
      
      public function get scale() : Number
      {
         return this.§>s§;
      }
      
      public function get §`!E§() : Boolean
      {
         return this.§,!1§.§&"$§();
      }
      
      public function get materialName() : String
      {
         return this.§,!1§.name;
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         return this.§,!1§.getDamageMultiplier(param1);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         return this.§,!1§.getVelocityMultiplier(param1);
      }
      
      public function §&!C§() : Array
      {
         if(this.itemName.indexOf("BIRD") == 0)
         {
            return this.§8!N§();
         }
         if(this.itemName.indexOf("PIG") == 0)
         {
            return this.§@!D§();
         }
         return this.§0!?§();
      }
      
      private function §0!?§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]],["3",[this.itemName + "_3"]],["4",[this.itemName + "_4"]]];
         return [[§[-§.§!!6§,_loc1_]];
      }
      
      private function §@!D§() : Array
      {
         return [[§[-§.§!!6§,[["1",[this.itemName + "_01"]],["2",[this.itemName + "_02"]],["3",[this.itemName + "_03"]]]],[§8!#§.§^"+§,[["1",[this.itemName + "_01_BLINK"]],["2",[this.itemName + "_02_BLINK"]],["3",[this.itemName + "_03_BLINK"]]]],[§8!#§.§3"#§,[["1",[this.itemName + "_01_SMILE"]],["2",[this.itemName + "_02_SMILE"]],["3",[this.itemName + "_03_SMILE"]]]]];
      }
      
      private function §8!N§() : Array
      {
         if(this.itemName == "BIRD_SARDINE")
         {
            return [[§[-§.§!!6§,[this.itemName]]];
         }
         if(this.itemName == "BIRD_MIGHTY_EAGLE")
         {
            return [[§[-§.§!!6§,["BIRD_ME_MOTION","BIRD_ME_RADIAL"]]];
         }
         if(this.itemName == "BIRD_ORANGE")
         {
            return [[§[-§.§!!6§,[["1",[this.itemName + "_YELL"]]]],[§8!#§.§^"+§,[["1",[this.itemName + "_BLINK"]]]],[§ !§.§?!a§,[["1",[this.itemName + "_YELL"]]]],[§8!#§.§3"#§,[["1",[this.itemName + "_EXCITED"]]]],[§ !§.§4"+§,[["1",[this.itemName + "_EXCITED"]]]],[§ !§.§>!U§,[["1",[this.itemName + "_BALLOON"]]]]];
         }
         var _loc1_:Array = this.§,!N§();
         var _loc2_:Array = this.§]a§();
         var _loc3_:Array = [[§[-§.§!!6§,_loc2_],[§8!#§.§^"+§,[["1",[this.itemName + "_BLINK"]]]],[§ !§.§?!a§,[["1",[this.itemName + "_FLYING"]]]],[§8!#§.§3"#§,[["1",[this.itemName + "_YELL"]]]],[§ !§.§4"+§,[["1",[this.itemName + "_FLYING_YELL"]]]]];
         if(_loc1_)
         {
            _loc3_.push([§ !§.§>!U§,_loc1_]);
         }
         return _loc3_;
      }
      
      private function §]a§() : Array
      {
         if(this.itemName == "BIRD_REDBIG")
         {
            return [["1",[this.itemName + "_1"]]];
         }
         return [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]]];
      }
      
      private function §,!N§() : Array
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
