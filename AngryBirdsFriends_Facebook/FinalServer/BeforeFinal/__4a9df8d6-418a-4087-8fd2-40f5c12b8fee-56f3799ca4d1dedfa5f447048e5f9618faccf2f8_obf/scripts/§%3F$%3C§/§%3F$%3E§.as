package §?$<§
{
   import §6!3§.§,s§;
   import §6!3§.§;!U§;
   
   public class §?$>§
   {
      
      public static const §!#A§:int = 0;
      
      public static const §&h§:int = 1;
      
      public static const §3!B§:int = 2;
      
      public static const §0#Q§:int = 3;
      
      public static const §1!f§:int = 5;
      
      public static const § "j§:int = 6;
      
      public static const § H§:int = 7;
      
      public static const §5"u§:int = 8;
      
      public static const §"#§:int = 9;
      
      public static const §@1§:int = 10;
      
      public static const §0!$§:String = "default";
      
      public static const §;$8§:String = "background";
       
      
      protected var §?"B§:String;
      
      protected var §@I§:int;
      
      protected var §?R§:int;
      
      protected var §6J§:String;
      
      protected var §@!F§:int;
      
      protected var §4"U§:int;
      
      protected var §>"r§:String;
      
      protected var §-[§:Boolean = false;
      
      protected var §8#;§:§4"F§;
      
      protected var §]$4§:§;<§;
      
      protected var §6#d§:§9!V§;
      
      protected var §8"p§:Boolean = false;
      
      protected var §5>§:Number = 1.0;
      
      protected var §6$C§:String;
      
      protected var §8#`§:int;
      
      private var §'"K§:Boolean;
      
      private var §4#4§:Boolean;
      
      private var §1"S§:String;
      
      protected var §'#+§:int;
      
      private var §,!T§:int;
      
      private var §>Y§:Boolean;
      
      private var §8#w§:Boolean;
      
      private var §""T§:Object;
      
      private var §4!8§:Object;
      
      protected var §8!c§:String;
      
      protected var §<C§:Number;
      
      protected var §-##§:Number;
      
      protected var §6#L§:Number;
      
      protected var §`Y§:Number;
      
      public function §?$>§(param1:String, param2:int, param3:§;<§, param4:§9!V§, param5:§4"F§, param6:int, param7:String, param8:int, param9:String, param10:int, param11:Number = 1.0, param12:Boolean = false, param13:String = "", param14:int = 1, param15:int = -1, param16:Boolean = false, param17:Boolean = false, param18:Boolean = true, param19:String = null, param20:int = 0, param21:Boolean = false)
      {
         super();
         this.§?"B§ = param1;
         this.§@I§ = param2;
         this.§]$4§ = param3;
         this.§-[§ = param12;
         this.§8"p§ = param16;
         this.§6#d§ = param4;
         this.§8#;§ = param5;
         this.§?R§ = param6;
         this.§6J§ = param7;
         this.§'#+§ = param15;
         this.§@!F§ = param10;
         if(param8 == -1)
         {
            this.§4"U§ = this.§@!F§ > 0 ? int(this.§@!F§ * 10) : 0;
         }
         else
         {
            this.§4"U§ = param8;
         }
         this.§>"r§ = param9;
         this.§5>§ = param11;
         this.§'"K§ = param17;
         this.§6$C§ = param13;
         this.§8#`§ = param14;
         this.§4#4§ = param18;
         this.§1"S§ = param19 == null ? §0!$§ : param19.toLowerCase();
         this.§,!T§ = param20;
         this.§>Y§ = param21;
         this.§""T§ = null;
         this.§4!8§ = null;
         this.§8#w§ = false;
      }
      
      public function get front() : Boolean
      {
         return this.§-[§;
      }
      
      public function get textureType() : String
      {
         return this.§1"S§;
      }
      
      public function get itemType() : int
      {
         return this.§@I§;
      }
      
      public function get itemName() : String
      {
         return this.§?"B§;
      }
      
      public function get category() : String
      {
         return this.§>"r§;
      }
      
      public function get maxStrength() : int
      {
         return this.§@!F§;
      }
      
      public function get material() : §;<§
      {
         return this.§]$4§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§6$C§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§8#`§;
      }
      
      public function get disableBirdPassThrough() : Boolean
      {
         return this.§8"p§;
      }
      
      public function get §]!4§() : Boolean
      {
         return this.§'"K§;
      }
      
      public function get damageScore() : int
      {
         return this.§4"U§;
      }
      
      public function get bubbleDamage() : int
      {
         return this.§,!T§;
      }
      
      public function get specialtyAvailableAfterCollision() : Boolean
      {
         return this.§>Y§;
      }
      
      public function get §+#9§() : Boolean
      {
         return this.§8#w§;
      }
      
      public function set §+#9§(param1:Boolean) : void
      {
         this.§8#w§ = param1;
      }
      
      public function §3!g§(param1:Object) : void
      {
         this.§""T§ = param1;
      }
      
      public function §="z§(param1:Object) : void
      {
         this.§4!8§ = param1;
         if(this.spawnParticlesDefinition.frequencyInSeconds)
         {
            this.spawnParticlesDefinition.frequencyInSeconds *= 1000;
         }
      }
      
      public function get spawnBlockDefinition() : Object
      {
         return this.§""T§;
      }
      
      public function get spawnParticlesDefinition() : Object
      {
         return this.§4!8§;
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
         return this.§]$4§.density;
      }
      
      public function getItemBodyType() : int
      {
         return this.§]$4§.bodyType;
      }
      
      public function §;$2§() : Number
      {
         return this.§]$4§.colors;
      }
      
      public function getItemDefence() : Number
      {
         if(!isNaN(this.§]$4§.defence))
         {
            return this.§]$4§.defence;
         }
         return 0;
      }
      
      public function getItemFriction() : Number
      {
         return this.§]$4§.friction;
      }
      
      public function getItemRestitution() : Number
      {
         return this.§]$4§.restitution;
      }
      
      public function getItemStrength() : Number
      {
         return this.§]$4§.strength;
      }
      
      public function getItemZOrder() : int
      {
         if(this.itemType == § "j§)
         {
            return 6;
         }
         if(this.itemType == §@1§)
         {
            return 5;
         }
         if(this.front)
         {
            return §;!U§.§>!c§;
         }
         return §;!U§.§8D§;
      }
      
      public function get shape() : §4"F§
      {
         return this.§8#;§;
      }
      
      public function get soundResource() : §9!V§
      {
         return this.§6#d§;
      }
      
      public function set soundResource(param1:§9!V§) : void
      {
         this.§6#d§ = param1;
      }
      
      public function get destroyedScoreInc() : int
      {
         return this.§?R§;
      }
      
      public function get floatingScoreFont() : String
      {
         return this.§6J§;
      }
      
      public function get scale() : Number
      {
         return this.§5>§;
      }
      
      public function get isMaterialStatic() : Boolean
      {
         return this.§]$4§.§"#d§();
      }
      
      public function get materialName() : String
      {
         return this.§]$4§.name;
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         return this.§]$4§.getDamageMultiplier(param1);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         return this.§]$4§.getVelocityMultiplier(param1);
      }
      
      public function get particleAmount() : int
      {
         return this.§'#+§;
      }
      
      public function getAnimationDefinitions() : Array
      {
         if(this.itemName.indexOf("BIRD") == 0)
         {
            return this.§ #y§();
         }
         if(this.itemName.indexOf("PIG") == 0)
         {
            return this.§&!?§();
         }
         if(this.itemName.indexOf("MISC_EASTER_EGG") == 0)
         {
            return this.§4u§();
         }
         return this.§6!0§();
      }
      
      public function get isColliding() : Boolean
      {
         return this.§4#4§;
      }
      
      private function §6!0§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]],["3",[this.itemName + "_3"]],["4",[this.itemName + "_4"]]];
         return [[§;!U§.§,#c§,_loc1_]];
      }
      
      private function §4u§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName]]];
         return [[§;!U§.§,#c§,_loc1_]];
      }
      
      private function §&!?§() : Array
      {
         return [[§;!U§.§,#c§,[["1",[this.itemName + "_01"]],["2",[this.itemName + "_02"]],["3",[this.itemName + "_03"]]]],[§;!U§.§;8§,[["1",[this.itemName + "_01_BLINK"]],["2",[this.itemName + "_02_BLINK"]],["3",[this.itemName + "_03_BLINK"]]]],[§;!U§.§<#M§,[["1",[this.itemName + "_01_SMILE"]],["2",[this.itemName + "_02_SMILE"]],["3",[this.itemName + "_03_SMILE"]]]]];
      }
      
      private function § #y§() : Array
      {
         if(this.itemName == "BIRD_SARDINE")
         {
            return [[§;!U§.§,#c§,[this.itemName]]];
         }
         if(this.itemName == "BIRD_MIGHTY_EAGLE")
         {
            return [[§;!U§.§,#c§,["BIRD_ME_MOTION","BIRD_ME_RADIAL"]]];
         }
         if(this.itemName == "BIRD_ORANGE")
         {
            return [[§;!U§.§,#c§,[["1",[this.itemName + "_YELL"]]]],[§;!U§.§;8§,[["1",[this.itemName + "_BLINK"]]]],[§,s§.§#!h§,[["1",[this.itemName + "_YELL"]]]],[§;!U§.§<#M§,[["1",[this.itemName + "_EXCITED"]]]],[§,s§.§!"3§,[["1",[this.itemName + "_EXCITED"]]]],[§,s§.§'![§,[["1",[this.itemName + "_BALLOON"]]]]];
         }
         var _loc1_:Array = this.§5!;§();
         var _loc2_:Array = this.§ "d§();
         var _loc3_:Array = [[§;!U§.§,#c§,_loc2_],[§;!U§.§;8§,[["1",[this.itemName + "_BLINK"]]]],[§,s§.§#!h§,[["1",[this.itemName + "_FLYING"]]]],[§;!U§.§<#M§,[["1",[this.itemName + "_YELL"]]]],[§,s§.§!"3§,[["1",[this.itemName + "_FLYING_YELL"]]]]];
         if(_loc1_)
         {
            _loc3_.push([§,s§.§'![§,_loc1_]);
         }
         return _loc3_;
      }
      
      private function § "d§() : Array
      {
         if(this.itemName == "BIRD_REDBIG")
         {
            return [["1",[this.itemName + "_1"]]];
         }
         return [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]]];
      }
      
      private function §5!;§() : Array
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
         return this.§<C§;
      }
      
      public function get explosionForce() : Number
      {
         return this.§-##§;
      }
      
      public function get explosionDamageRadius() : Number
      {
         return this.§6#L§;
      }
      
      public function get explosionDamage() : Number
      {
         return this.§`Y§;
      }
      
      public function get specialty() : String
      {
         return this.§8!c§;
      }
   }
}
