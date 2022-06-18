package §7"&§
{
   import §>!5§.§"7§;
   import §>!5§.§^"9§;
   
   public class §!"v§
   {
      
      public static const §<#X§:int = 0;
      
      public static const §!A§:int = 1;
      
      public static const §+!t§:int = 2;
      
      public static const §;!-§:int = 3;
      
      public static const §3"$§:int = 5;
      
      public static const §"#^§:int = 6;
      
      public static const §`!Y§:int = 7;
      
      public static const §'$§:int = 8;
      
      public static const §8#G§:int = 9;
      
      public static const §8"P§:int = 10;
      
      public static const §4;§:String = "default";
      
      public static const §#"u§:String = "background";
       
      
      protected var §>!Z§:String;
      
      protected var §9t§:int;
      
      protected var §#"O§:int;
      
      protected var §"",§:String;
      
      protected var §]!6§:int;
      
      protected var §;@§:int;
      
      protected var §8!G§:String;
      
      protected var §"!1§:Boolean = false;
      
      protected var §@"u§:§]"k§;
      
      protected var §2!M§:§^"Q§;
      
      protected var §'"@§:§>"f§;
      
      protected var §;#i§:Boolean = false;
      
      protected var § "A§:Number = 1.0;
      
      protected var §#"6§:String;
      
      protected var §##H§:int;
      
      private var §3"B§:Boolean;
      
      private var §-#t§:Boolean;
      
      private var §[A§:String;
      
      protected var §!#p§:int;
      
      public function §!"v§(param1:String, param2:int, param3:§^"Q§, param4:§>"f§, param5:§]"k§, param6:int, param7:String, param8:int, param9:String, param10:int, param11:Number = 1.0, param12:Boolean = false, param13:String = "", param14:int = 1, param15:int = -1, param16:Boolean = false, param17:Boolean = false, param18:Boolean = true, param19:String = null)
      {
         super();
         this.§>!Z§ = param1;
         this.§9t§ = param2;
         this.§2!M§ = param3;
         this.§"!1§ = param12;
         this.§;#i§ = param16;
         this.§'"@§ = param4;
         this.§@"u§ = param5;
         this.§#"O§ = param6;
         this.§"",§ = param7;
         this.§!#p§ = param15;
         this.§]!6§ = param10;
         if(param8 == -1)
         {
            this.§;@§ = this.§]!6§ > 0 ? int(this.§]!6§ * 10) : 0;
         }
         else
         {
            this.§;@§ = param8;
         }
         this.§8!G§ = param9;
         this.§ "A§ = param11;
         this.§3"B§ = param17;
         this.§#"6§ = param13;
         this.§##H§ = param14;
         this.§-#t§ = param18;
         this.§[A§ = param19 == null ? §4;§ : param19.toLowerCase();
      }
      
      public function get front() : Boolean
      {
         return this.§"!1§;
      }
      
      public function get textureType() : String
      {
         return this.§[A§;
      }
      
      public function get itemType() : int
      {
         return this.§9t§;
      }
      
      public function get itemName() : String
      {
         return this.§>!Z§;
      }
      
      public function get category() : String
      {
         return this.§8!G§;
      }
      
      public function get maxStrength() : int
      {
         return this.§]!6§;
      }
      
      public function get material() : §^"Q§
      {
         return this.§2!M§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§#"6§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§##H§;
      }
      
      public function get disableBirdPassThrough() : Boolean
      {
         return this.§;#i§;
      }
      
      public function get §^0§() : Boolean
      {
         return this.§3"B§;
      }
      
      public function get damageScore() : int
      {
         return this.§;@§;
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
         return this.§2!M§.density;
      }
      
      public function getItemBodyType() : int
      {
         return this.§2!M§.bodyType;
      }
      
      public function §=!K§() : Number
      {
         return this.§2!M§.colors;
      }
      
      public function getItemDefence() : Number
      {
         if(!isNaN(this.§2!M§.defence))
         {
            return this.§2!M§.defence;
         }
         return 0;
      }
      
      public function getItemFriction() : Number
      {
         return this.§2!M§.friction;
      }
      
      public function getItemRestitution() : Number
      {
         return this.§2!M§.restitution;
      }
      
      public function getItemStrength() : Number
      {
         return this.§2!M§.strength;
      }
      
      public function getItemZOrder() : int
      {
         if(this.itemType == §"#^§)
         {
            return 6;
         }
         if(this.itemType == §8"P§)
         {
            return 5;
         }
         if(this.front)
         {
            return §^"9§.§6F§;
         }
         return §^"9§.§%!5§;
      }
      
      public function get shape() : §]"k§
      {
         return this.§@"u§;
      }
      
      public function get soundResource() : §>"f§
      {
         return this.§'"@§;
      }
      
      public function set soundResource(param1:§>"f§) : void
      {
         this.§'"@§ = param1;
      }
      
      public function get destroyedScoreInc() : int
      {
         return this.§#"O§;
      }
      
      public function get floatingScoreFont() : String
      {
         return this.§"",§;
      }
      
      public function get scale() : Number
      {
         return this.§ "A§;
      }
      
      public function get isMaterialStatic() : Boolean
      {
         return this.§2!M§.§[!n§();
      }
      
      public function get materialName() : String
      {
         return this.§2!M§.name;
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         return this.§2!M§.getDamageMultiplier(param1);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         return this.§2!M§.getVelocityMultiplier(param1);
      }
      
      public function get particleAmount() : int
      {
         return this.§!#p§;
      }
      
      public function getAnimationDefinitions() : Array
      {
         if(this.itemName.indexOf("BIRD") == 0)
         {
            return this.§]#C§();
         }
         if(this.itemName.indexOf("PIG") == 0)
         {
            return this.§ !N§();
         }
         if(this.itemName.indexOf("MISC_EASTER_EGG") == 0)
         {
            return this.§@#+§();
         }
         return this.§1!V§();
      }
      
      public function get isColliding() : Boolean
      {
         return this.§-#t§;
      }
      
      private function §1!V§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]],["3",[this.itemName + "_3"]],["4",[this.itemName + "_4"]]];
         return [[§^"9§.§5!G§,_loc1_]];
      }
      
      private function §@#+§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName]]];
         return [[§^"9§.§5!G§,_loc1_]];
      }
      
      private function § !N§() : Array
      {
         return [[§^"9§.§5!G§,[["1",[this.itemName + "_01"]],["2",[this.itemName + "_02"]],["3",[this.itemName + "_03"]]]],[§^"9§.§2"W§,[["1",[this.itemName + "_01_BLINK"]],["2",[this.itemName + "_02_BLINK"]],["3",[this.itemName + "_03_BLINK"]]]],[§^"9§.§'$"§,[["1",[this.itemName + "_01_SMILE"]],["2",[this.itemName + "_02_SMILE"]],["3",[this.itemName + "_03_SMILE"]]]]];
      }
      
      private function §]#C§() : Array
      {
         if(this.itemName == "BIRD_SARDINE")
         {
            return [[§^"9§.§5!G§,[this.itemName]]];
         }
         if(this.itemName == "BIRD_MIGHTY_EAGLE")
         {
            return [[§^"9§.§5!G§,["BIRD_ME_MOTION","BIRD_ME_RADIAL"]]];
         }
         if(this.itemName == "BIRD_ORANGE")
         {
            return [[§^"9§.§5!G§,[["1",[this.itemName + "_YELL"]]]],[§^"9§.§2"W§,[["1",[this.itemName + "_BLINK"]]]],[§"7§.§?#r§,[["1",[this.itemName + "_YELL"]]]],[§^"9§.§'$"§,[["1",[this.itemName + "_EXCITED"]]]],[§"7§.§@$2§,[["1",[this.itemName + "_EXCITED"]]]],[§"7§.§3#N§,[["1",[this.itemName + "_BALLOON"]]]]];
         }
         var _loc1_:Array = this.§%!a§();
         var _loc2_:Array = this.§7# §();
         var _loc3_:Array = [[§^"9§.§5!G§,_loc2_],[§^"9§.§2"W§,[["1",[this.itemName + "_BLINK"]]]],[§"7§.§?#r§,[["1",[this.itemName + "_FLYING"]]]],[§^"9§.§'$"§,[["1",[this.itemName + "_YELL"]]]],[§"7§.§@$2§,[["1",[this.itemName + "_FLYING_YELL"]]]]];
         if(_loc1_)
         {
            _loc3_.push([§"7§.§3#N§,_loc1_]);
         }
         return _loc3_;
      }
      
      private function §7# §() : Array
      {
         if(this.itemName == "BIRD_REDBIG")
         {
            return [["1",[this.itemName + "_1"]]];
         }
         return [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]]];
      }
      
      private function §%!a§() : Array
      {
         if(this.itemName == "BIRD_BLACK")
         {
            return [["1",[this.itemName + "_SPECIAL",this.itemName + "_SPECIAL_2",this.itemName + "_SPECIAL_3"],[900,900,5000]]];
         }
         if(this.itemName == "BIRD_WHITE" || this.itemName == "BIRD_YELLOW")
         {
            return [["1",[this.itemName + "_SPECIAL"]]];
         }
         if(this.itemName == "BIRD_GREEN")
         {
            return [["1",[this.itemName + "_SPECIAL"]],["2",[this.itemName + "_2"]]];
         }
         return null;
      }
      
      public function isDamageAwardingScore() : Boolean
      {
         if(this.category == "BirdAmmo" || this.category == "Birds")
         {
            return false;
         }
         if(this.maxStrength != -1 && (this.destroyedScoreInc > 0 || this.damageScore > 0))
         {
            return true;
         }
         return false;
      }
      
      public function hasGraphics() : Boolean
      {
         return true;
      }
   }
}
