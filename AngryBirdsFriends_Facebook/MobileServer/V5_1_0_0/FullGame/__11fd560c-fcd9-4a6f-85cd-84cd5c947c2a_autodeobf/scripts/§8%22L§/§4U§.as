package §8"L§
{
   import §8§.§4!y§;
   import §8§.§?$%§;
   
   public class §4U§
   {
      
      public static const §^"c§:int = 0;
      
      public static const §?#G§:int = 1;
      
      public static const §+"5§:int = 2;
      
      public static const § T§:int = 3;
      
      public static const §6]§:int = 5;
      
      public static const §50§:int = 6;
      
      public static const §`#D§:int = 7;
      
      public static const §8"`§:int = 8;
      
      public static const §?;§:int = 9;
      
      public static const §3#S§:int = 10;
      
      public static const §-!o§:String = "default";
      
      public static const §2"i§:String = "background";
       
      
      protected var §#d§:String;
      
      protected var §9#l§:int;
      
      protected var §!#C§:int;
      
      protected var §+#s§:String;
      
      protected var §+R§:int;
      
      protected var § $&§:int;
      
      protected var §=#s§:String;
      
      protected var §&"6§:Boolean = false;
      
      protected var §`# §:§!!C§;
      
      protected var § !-§:§?"b§;
      
      protected var §%$@§:§+"L§;
      
      protected var §6#h§:Boolean = false;
      
      protected var §^#5§:Number = 1.0;
      
      protected var §#!H§:String;
      
      protected var §8Q§:int;
      
      private var §"!w§:Boolean;
      
      private var §3#K§:Boolean;
      
      private var §9#]§:String;
      
      protected var §`!i§:int;
      
      private var §3$0§:int;
      
      public function §4U§(param1:String, param2:int, param3:§?"b§, param4:§+"L§, param5:§!!C§, param6:int, param7:String, param8:int, param9:String, param10:int, param11:Number = 1.0, param12:Boolean = false, param13:String = "", param14:int = 1, param15:int = -1, param16:Boolean = false, param17:Boolean = false, param18:Boolean = true, param19:String = null, param20:int = 0)
      {
         super();
         this.§#d§ = param1;
         this.§9#l§ = param2;
         this.§ !-§ = param3;
         this.§&"6§ = param12;
         this.§6#h§ = param16;
         this.§%$@§ = param4;
         this.§`# § = param5;
         this.§!#C§ = param6;
         this.§+#s§ = param7;
         this.§`!i§ = param15;
         this.§+R§ = param10;
         if(param8 == -1)
         {
            this.§ $&§ = this.§+R§ > 0 ? int(this.§+R§ * 10) : 0;
         }
         else
         {
            this.§ $&§ = param8;
         }
         this.§=#s§ = param9;
         this.§^#5§ = param11;
         this.§"!w§ = param17;
         this.§#!H§ = param13;
         this.§8Q§ = param14;
         this.§3#K§ = param18;
         this.§9#]§ = param19 == null ? §-!o§ : param19.toLowerCase();
         this.§3$0§ = param20;
      }
      
      public function get front() : Boolean
      {
         return this.§&"6§;
      }
      
      public function get textureType() : String
      {
         return this.§9#]§;
      }
      
      public function get itemType() : int
      {
         return this.§9#l§;
      }
      
      public function get itemName() : String
      {
         return this.§#d§;
      }
      
      public function get category() : String
      {
         return this.§=#s§;
      }
      
      public function get maxStrength() : int
      {
         return this.§+R§;
      }
      
      public function get material() : §?"b§
      {
         return this.§ !-§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§#!H§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§8Q§;
      }
      
      public function get disableBirdPassThrough() : Boolean
      {
         return this.§6#h§;
      }
      
      public function get §<"Q§() : Boolean
      {
         return this.§"!w§;
      }
      
      public function get damageScore() : int
      {
         return this.§ $&§;
      }
      
      public function get bubbleDamage() : int
      {
         return this.§3$0§;
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
         return this.§ !-§.density;
      }
      
      public function getItemBodyType() : int
      {
         return this.§ !-§.bodyType;
      }
      
      public function §'"s§() : Number
      {
         return this.§ !-§.colors;
      }
      
      public function getItemDefence() : Number
      {
         if(!isNaN(this.§ !-§.defence))
         {
            return this.§ !-§.defence;
         }
         return 0;
      }
      
      public function getItemFriction() : Number
      {
         return this.§ !-§.friction;
      }
      
      public function getItemRestitution() : Number
      {
         return this.§ !-§.restitution;
      }
      
      public function getItemStrength() : Number
      {
         return this.§ !-§.strength;
      }
      
      public function getItemZOrder() : int
      {
         if(this.itemType == §50§)
         {
            return 6;
         }
         if(this.itemType == §3#S§)
         {
            return 5;
         }
         if(this.front)
         {
            return §4!y§.§9#C§;
         }
         return §4!y§.§"!l§;
      }
      
      public function get shape() : §!!C§
      {
         return this.§`# §;
      }
      
      public function get soundResource() : §+"L§
      {
         return this.§%$@§;
      }
      
      public function set soundResource(param1:§+"L§) : void
      {
         this.§%$@§ = param1;
      }
      
      public function get destroyedScoreInc() : int
      {
         return this.§!#C§;
      }
      
      public function get floatingScoreFont() : String
      {
         return this.§+#s§;
      }
      
      public function get scale() : Number
      {
         return this.§^#5§;
      }
      
      public function get isMaterialStatic() : Boolean
      {
         return this.§ !-§.§6!%§();
      }
      
      public function get materialName() : String
      {
         return this.§ !-§.name;
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         return this.§ !-§.getDamageMultiplier(param1);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         return this.§ !-§.getVelocityMultiplier(param1);
      }
      
      public function get particleAmount() : int
      {
         return this.§`!i§;
      }
      
      public function getAnimationDefinitions() : Array
      {
         if(this.itemName.indexOf("BIRD") == 0)
         {
            return this.§6!A§();
         }
         if(this.itemName.indexOf("PIG") == 0)
         {
            return this.§9#p§();
         }
         if(this.itemName.indexOf("MISC_EASTER_EGG") == 0)
         {
            return this.§`#I§();
         }
         return this.§7$&§();
      }
      
      public function get isColliding() : Boolean
      {
         return this.§3#K§;
      }
      
      private function §7$&§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]],["3",[this.itemName + "_3"]],["4",[this.itemName + "_4"]]];
         return [[§4!y§.§<#J§,_loc1_]];
      }
      
      private function §`#I§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName]]];
         return [[§4!y§.§<#J§,_loc1_]];
      }
      
      private function §9#p§() : Array
      {
         return [[§4!y§.§<#J§,[["1",[this.itemName + "_01"]],["2",[this.itemName + "_02"]],["3",[this.itemName + "_03"]]]],[§4!y§.§7=§,[["1",[this.itemName + "_01_BLINK"]],["2",[this.itemName + "_02_BLINK"]],["3",[this.itemName + "_03_BLINK"]]]],[§4!y§.§+#8§,[["1",[this.itemName + "_01_SMILE"]],["2",[this.itemName + "_02_SMILE"]],["3",[this.itemName + "_03_SMILE"]]]]];
      }
      
      private function §6!A§() : Array
      {
         if(this.itemName == "BIRD_SARDINE")
         {
            return [[§4!y§.§<#J§,[this.itemName]]];
         }
         if(this.itemName == "BIRD_MIGHTY_EAGLE")
         {
            return [[§4!y§.§<#J§,["BIRD_ME_MOTION","BIRD_ME_RADIAL"]]];
         }
         if(this.itemName == "BIRD_ORANGE")
         {
            return [[§4!y§.§<#J§,[["1",[this.itemName + "_YELL"]]]],[§4!y§.§7=§,[["1",[this.itemName + "_BLINK"]]]],[§?$%§.§#$+§,[["1",[this.itemName + "_YELL"]]]],[§4!y§.§+#8§,[["1",[this.itemName + "_EXCITED"]]]],[§?$%§.§%"C§,[["1",[this.itemName + "_EXCITED"]]]],[§?$%§.§##W§,[["1",[this.itemName + "_BALLOON"]]]]];
         }
         var _loc1_:Array = this.§1#g§();
         var _loc2_:Array = this.§9$@§();
         var _loc3_:Array = [[§4!y§.§<#J§,_loc2_],[§4!y§.§7=§,[["1",[this.itemName + "_BLINK"]]]],[§?$%§.§#$+§,[["1",[this.itemName + "_FLYING"]]]],[§4!y§.§+#8§,[["1",[this.itemName + "_YELL"]]]],[§?$%§.§%"C§,[["1",[this.itemName + "_FLYING_YELL"]]]]];
         if(_loc1_)
         {
            _loc3_.push([§?$%§.§##W§,_loc1_]);
         }
         return _loc3_;
      }
      
      private function §9$@§() : Array
      {
         if(this.itemName == "BIRD_REDBIG")
         {
            return [["1",[this.itemName + "_1"]]];
         }
         return [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]]];
      }
      
      private function §1#g§() : Array
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
         if(this.maxStrength != -1 && this.damageScore > 0)
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
