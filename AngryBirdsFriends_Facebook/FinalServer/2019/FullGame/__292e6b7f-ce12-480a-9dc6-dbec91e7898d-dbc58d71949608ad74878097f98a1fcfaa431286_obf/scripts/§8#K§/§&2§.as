package §8#K§
{
   import §;!=§.§>"G§;
   import §;!=§.§[!k§;
   
   public class §&2§
   {
      
      public static const §],§:int = 0;
      
      public static const §6"!§:int = 1;
      
      public static const §1M§:int = 2;
      
      public static const §]!i§:int = 3;
      
      public static const §0!D§:int = 5;
      
      public static const §&$5§:int = 6;
      
      public static const §?#L§:int = 7;
      
      public static const §]"1§:int = 8;
      
      public static const §;"=§:int = 9;
      
      public static const § !I§:int = 10;
      
      public static const §!"[§:String = "default";
      
      public static const §<"u§:String = "background";
       
      
      protected var § 4§:String;
      
      protected var §!"q§:int;
      
      protected var §]#t§:int;
      
      protected var §^"s§:String;
      
      protected var §try§:int;
      
      protected var §2!N§:int;
      
      protected var §'!P§:String;
      
      protected var §`"@§:Boolean = false;
      
      protected var §"!e§:§46§;
      
      protected var §"§:§+#y§;
      
      protected var §;$7§:§8$-§;
      
      protected var §2!p§:Boolean = false;
      
      protected var §#!1§:Number = 1.0;
      
      protected var §?"&§:String;
      
      protected var §6$7§:int;
      
      private var §="0§:Boolean;
      
      private var §;!a§:Boolean;
      
      private var §^#R§:String;
      
      protected var §?"U§:int;
      
      private var §?I§:int;
      
      private var §17§:Boolean;
      
      private var §`&§:Boolean;
      
      private var §>!r§:Object;
      
      private var §+"G§:Object;
      
      protected var §6!E§:String;
      
      protected var §!G§:Number;
      
      protected var §4$§:Number;
      
      protected var §#%§:Number;
      
      protected var §9!l§:Number;
      
      public function §&2§(param1:String, param2:int, param3:§+#y§, param4:§8$-§, param5:§46§, param6:int, param7:String, param8:int, param9:String, param10:int, param11:Number = 1.0, param12:Boolean = false, param13:String = "", param14:int = 1, param15:int = -1, param16:Boolean = false, param17:Boolean = false, param18:Boolean = true, param19:String = null, param20:int = 0, param21:Boolean = false)
      {
         super();
         this.§ 4§ = param1;
         this.§!"q§ = param2;
         this.§"§ = param3;
         this.§`"@§ = param12;
         this.§2!p§ = param16;
         this.§;$7§ = param4;
         this.§"!e§ = param5;
         this.§]#t§ = param6;
         this.§^"s§ = param7;
         this.§?"U§ = param15;
         this.§try§ = param10;
         if(param8 == -1)
         {
            this.§2!N§ = this.§try§ > 0 ? int(this.§try§ * 10) : 0;
         }
         else
         {
            this.§2!N§ = param8;
         }
         this.§'!P§ = param9;
         this.§#!1§ = param11;
         this.§="0§ = param17;
         this.§?"&§ = param13;
         this.§6$7§ = param14;
         this.§;!a§ = param18;
         this.§^#R§ = param19 == null ? §!"[§ : param19.toLowerCase();
         this.§?I§ = param20;
         this.§17§ = param21;
         this.§>!r§ = null;
         this.§+"G§ = null;
         this.§`&§ = false;
      }
      
      public function get front() : Boolean
      {
         return this.§`"@§;
      }
      
      public function get textureType() : String
      {
         return this.§^#R§;
      }
      
      public function get itemType() : int
      {
         return this.§!"q§;
      }
      
      public function get itemName() : String
      {
         return this.§ 4§;
      }
      
      public function get category() : String
      {
         return this.§'!P§;
      }
      
      public function get maxStrength() : int
      {
         return this.§try§;
      }
      
      public function get material() : §+#y§
      {
         return this.§"§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§?"&§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§6$7§;
      }
      
      public function get disableBirdPassThrough() : Boolean
      {
         return this.§2!p§;
      }
      
      public function get §%#%§() : Boolean
      {
         return this.§="0§;
      }
      
      public function get damageScore() : int
      {
         return this.§2!N§;
      }
      
      public function get bubbleDamage() : int
      {
         return this.§?I§;
      }
      
      public function get specialtyAvailableAfterCollision() : Boolean
      {
         return this.§17§;
      }
      
      public function get §#"c§() : Boolean
      {
         return this.§`&§;
      }
      
      public function set §#"c§(param1:Boolean) : void
      {
         this.§`&§ = param1;
      }
      
      public function §;s§(param1:Object) : void
      {
         this.§>!r§ = param1;
      }
      
      public function §2$§(param1:Object) : void
      {
         this.§+"G§ = param1;
         if(this.spawnParticlesDefinition.frequencyInSeconds)
         {
            this.spawnParticlesDefinition.frequencyInSeconds *= 1000;
         }
      }
      
      public function get spawnBlockDefinition() : Object
      {
         return this.§>!r§;
      }
      
      public function get spawnParticlesDefinition() : Object
      {
         return this.§+"G§;
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
         return this.§"§.density;
      }
      
      public function getItemBodyType() : int
      {
         return this.§"§.bodyType;
      }
      
      public function §1Y§() : Number
      {
         return this.§"§.colors;
      }
      
      public function getItemDefence() : Number
      {
         if(!isNaN(this.§"§.defence))
         {
            return this.§"§.defence;
         }
         return 0;
      }
      
      public function getItemFriction() : Number
      {
         return this.§"§.friction;
      }
      
      public function getItemRestitution() : Number
      {
         return this.§"§.restitution;
      }
      
      public function getItemStrength() : Number
      {
         return this.§"§.strength;
      }
      
      public function getItemZOrder() : int
      {
         if(this.itemType == §&$5§)
         {
            return 6;
         }
         if(this.itemType == § !I§)
         {
            return 5;
         }
         if(this.front)
         {
            return §>"G§.§6l§;
         }
         return §>"G§.§="[§;
      }
      
      public function get shape() : §46§
      {
         return this.§"!e§;
      }
      
      public function get soundResource() : §8$-§
      {
         return this.§;$7§;
      }
      
      public function set soundResource(param1:§8$-§) : void
      {
         this.§;$7§ = param1;
      }
      
      public function get destroyedScoreInc() : int
      {
         return this.§]#t§;
      }
      
      public function get floatingScoreFont() : String
      {
         return this.§^"s§;
      }
      
      public function get scale() : Number
      {
         return this.§#!1§;
      }
      
      public function get isMaterialStatic() : Boolean
      {
         return this.§"§.§+",§();
      }
      
      public function get materialName() : String
      {
         return this.§"§.name;
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         return this.§"§.getDamageMultiplier(param1);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         return this.§"§.getVelocityMultiplier(param1);
      }
      
      public function get particleAmount() : int
      {
         return this.§?"U§;
      }
      
      public function getAnimationDefinitions() : Array
      {
         if(this.itemName.indexOf("BIRD") == 0)
         {
            return this.§4$8§();
         }
         if(this.itemName.indexOf("PIG") == 0)
         {
            return this.§&#5§();
         }
         if(this.itemName.indexOf("MISC_EASTER_EGG") == 0)
         {
            return this.§?2§();
         }
         return this.§2y§();
      }
      
      public function get isColliding() : Boolean
      {
         return this.§;!a§;
      }
      
      private function §2y§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]],["3",[this.itemName + "_3"]],["4",[this.itemName + "_4"]]];
         return [[§>"G§.§+$=§,_loc1_]];
      }
      
      private function §?2§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName]]];
         return [[§>"G§.§+$=§,_loc1_]];
      }
      
      private function §&#5§() : Array
      {
         return [[§>"G§.§+$=§,[["1",[this.itemName + "_01"]],["2",[this.itemName + "_02"]],["3",[this.itemName + "_03"]]]],[§>"G§.§-"e§,[["1",[this.itemName + "_01_BLINK"]],["2",[this.itemName + "_02_BLINK"]],["3",[this.itemName + "_03_BLINK"]]]],[§>"G§.§"9§,[["1",[this.itemName + "_01_SMILE"]],["2",[this.itemName + "_02_SMILE"]],["3",[this.itemName + "_03_SMILE"]]]]];
      }
      
      private function §4$8§() : Array
      {
         if(this.itemName == "BIRD_SARDINE")
         {
            return [[§>"G§.§+$=§,[this.itemName]]];
         }
         if(this.itemName == "BIRD_MIGHTY_EAGLE")
         {
            return [[§>"G§.§+$=§,["BIRD_ME_MOTION","BIRD_ME_RADIAL"]]];
         }
         if(this.itemName == "BIRD_ORANGE")
         {
            return [[§>"G§.§+$=§,[["1",[this.itemName + "_YELL"]]]],[§>"G§.§-"e§,[["1",[this.itemName + "_BLINK"]]]],[§[!k§.§&!V§,[["1",[this.itemName + "_YELL"]]]],[§>"G§.§"9§,[["1",[this.itemName + "_EXCITED"]]]],[§[!k§.§5"-§,[["1",[this.itemName + "_EXCITED"]]]],[§[!k§.§-#h§,[["1",[this.itemName + "_BALLOON"]]]]];
         }
         var _loc1_:Array = this.§5x§();
         var _loc2_:Array = this.§'"0§();
         var _loc3_:Array = [[§>"G§.§+$=§,_loc2_],[§>"G§.§-"e§,[["1",[this.itemName + "_BLINK"]]]],[§[!k§.§&!V§,[["1",[this.itemName + "_FLYING"]]]],[§>"G§.§"9§,[["1",[this.itemName + "_YELL"]]]],[§[!k§.§5"-§,[["1",[this.itemName + "_FLYING_YELL"]]]]];
         if(_loc1_)
         {
            _loc3_.push([§[!k§.§-#h§,_loc1_]);
         }
         return _loc3_;
      }
      
      private function §'"0§() : Array
      {
         if(this.itemName == "BIRD_REDBIG")
         {
            return [["1",[this.itemName + "_1"]]];
         }
         return [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]]];
      }
      
      private function §5x§() : Array
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
      
      public function get explosionRadius() : Number
      {
         return this.§!G§;
      }
      
      public function get explosionForce() : Number
      {
         return this.§4$§;
      }
      
      public function get explosionDamageRadius() : Number
      {
         return this.§#%§;
      }
      
      public function get explosionDamage() : Number
      {
         return this.§9!l§;
      }
      
      public function get specialty() : String
      {
         return this.§6!E§;
      }
   }
}
