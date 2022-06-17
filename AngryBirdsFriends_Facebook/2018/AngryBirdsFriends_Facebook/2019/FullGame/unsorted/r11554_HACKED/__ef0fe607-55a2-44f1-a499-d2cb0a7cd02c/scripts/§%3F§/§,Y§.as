package §?§#3
{
   import §-!!§.§5"W§;
   import §-!!§.§8"J§;
   
   public class §,Y§
   {
      
      public static const §^B§:int = 0;
      
      public static const §-$B§:int = 1;
      
      public static const §##$§:int = 2;
      
      public static const §^N§:int = 3;
      
      public static const §^O§:int = 5;
      
      public static const §=#s§:int = 6;
      
      public static const §=#k§:int = 7;
      
      public static const §,!k§:int = 8;
      
      public static const §2q§:int = 9;
      
      public static const §[d§:int = 10;
      
      public static const §8w§:String = "default";
      
      public static const §0"Q§:String = "background";
       
      
      protected var §7$+§:String;
      
      protected var §3!O§:int;
      
      protected var §3#c§:int;
      
      protected var §@#0§:String;
      
      protected var §@#%§:int;
      
      protected var §3m§:int;
      
      protected var §1! §:String;
      
      protected var §?",§:Boolean = false;
      
      protected var §3"R§:§+#c§;
      
      protected var §@#=§:§7!$§;
      
      protected var §>#"§:§4I§;
      
      protected var §,#,§:Boolean = false;
      
      protected var §6z§:Number = 1.0;
      
      protected var §`#,§:String;
      
      protected var §^"5§:int;
      
      private var §5G§:Boolean;
      
      private var §>#'§:Boolean;
      
      private var §0!"§:String;
      
      protected var §while§:int;
      
      private var §^^§:int;
      
      private var §<C§:Boolean;
      
      private var §?#+§:Boolean;
      
      private var §%$;§:Object;
      
      private var §4$?§:Object;
      
      protected var §=#!§:String;
      
      protected var §3N§:Number;
      
      protected var §%"<§:Number;
      
      protected var §4#'§:Number;
      
      protected var §&!7§:Number;
      
      public function §,Y§(param1:String, param2:int, param3:§7!$§, param4:§4I§, param5:§+#c§, param6:int, param7:String, param8:int, param9:String, param10:int, param11:Number = 1.0, param12:Boolean = false, param13:String = "", param14:int = 1, param15:int = -1, param16:Boolean = false, param17:Boolean = false, param18:Boolean = true, param19:String = null, param20:int = 0, param21:Boolean = false)
      {
         super();
         this.§7$+§ = param1;
         this.§3!O§ = param2;
         this.§@#=§ = param3;
         this.§?",§ = param12;
         this.§,#,§ = param16;
         this.§>#"§ = param4;
         this.§3"R§ = param5;
         this.§3#c§ = param6;
         this.§@#0§ = param7;
         this.§while§ = param15;
         this.§@#%§ = param10;
         if(param8 == -1)
         {
            this.§3m§ = this.§@#%§ > 0 ? int(this.§@#%§ * 10) : 0;
         }
         else
         {
            this.§3m§ = param8;
         }
         this.§1! § = param9;
         this.§6z§ = param11;
         this.§5G§ = param17;
         this.§`#,§ = param13;
         this.§^"5§ = param14;
         this.§>#'§ = param18;
         this.§0!"§ = param19 == null ? §8w§ : param19.toLowerCase();
         this.§^^§ = param20;
         this.§<C§ = param21;
         this.§%$;§ = null;
         this.§4$?§ = null;
         this.§?#+§ = false;
      }
      
      public function get front() : Boolean
      {
         return this.§?",§;
      }
      
      public function get textureType() : String
      {
         return this.§0!"§;
      }
      
      public function get itemType() : int
      {
         return this.§3!O§;
      }
      
      public function get itemName() : String
      {
         return this.§7$+§;
      }
      
      public function get category() : String
      {
         return this.§1! §;
      }
      
      public function get maxStrength() : int
      {
         return this.§@#%§;
      }
      
      public function get material() : §7!$§
      {
         return this.§@#=§;
      }
      
      public function get particleJSONId() : String
      {
         return this.§`#,§;
      }
      
      public function get particleVariationCount() : int
      {
         return this.§^"5§;
      }
      
      public function get disableBirdPassThrough() : Boolean
      {
         return this.§,#,§;
      }
      
      public function get §#$3§() : Boolean
      {
         return this.§5G§;
      }
      
      public function get damageScore() : int
      {
         return this.§3m§;
      }
      
      public function get bubbleDamage() : int
      {
         return this.§^^§;
      }
      
      public function get specialtyAvailableAfterCollision() : Boolean
      {
         return this.§<C§;
      }
      
      public function get §^"8§() : Boolean
      {
         return this.§?#+§;
      }
      
      public function set §^"8§(param1:Boolean) : void
      {
         this.§?#+§ = param1;
      }
      
      public function §#!R§(param1:Object) : void
      {
         this.§%$;§ = param1;
      }
      
      public function §@"R§(param1:Object) : void
      {
         this.§4$?§ = param1;
         if(this.spawnParticlesDefinition.frequencyInSeconds)
         {
            this.spawnParticlesDefinition.frequencyInSeconds *= 1000;
         }
      }
      
      public function get spawnBlockDefinition() : Object
      {
         return this.§%$;§;
      }
      
      public function get spawnParticlesDefinition() : Object
      {
         return this.§4$?§;
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
         return this.§@#=§.density;
      }
      
      public function getItemBodyType() : int
      {
         return this.§@#=§.bodyType;
      }
      
      public function §'!0§() : Number
      {
         return this.§@#=§.colors;
      }
      
      public function getItemDefence() : Number
      {
         if(!isNaN(this.§@#=§.defence))
         {
            return this.§@#=§.defence;
         }
         return 0;
      }
      
      public function getItemFriction() : Number
      {
         return this.§@#=§.friction;
      }
      
      public function getItemRestitution() : Number
      {
         return this.§@#=§.restitution;
      }
      
      public function getItemStrength() : Number
      {
         return this.§@#=§.strength;
      }
      
      public function getItemZOrder() : int
      {
         if(this.itemType == §=#s§)
         {
            return 6;
         }
         if(this.itemType == §[d§)
         {
            return 5;
         }
         if(this.front)
         {
            return §8"J§.§>!i§;
         }
         return §8"J§.§9!=§;
      }
      
      public function get shape() : §+#c§
      {
         return this.§3"R§;
      }
      
      public function get soundResource() : §4I§
      {
         return this.§>#"§;
      }
      
      public function set soundResource(param1:§4I§) : void
      {
         this.§>#"§ = param1;
      }
      
      public function get destroyedScoreInc() : int
      {
         return this.§3#c§;
      }
      
      public function get floatingScoreFont() : String
      {
         return this.§@#0§;
      }
      
      public function get scale() : Number
      {
         return this.§6z§;
      }
      
      public function get isMaterialStatic() : Boolean
      {
         return this.§@#=§.§&"[§();
      }
      
      public function get materialName() : String
      {
         return this.§@#=§.name;
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         return this.§@#=§.getDamageMultiplier(param1);
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         return this.§@#=§.getVelocityMultiplier(param1);
      }
      
      public function get particleAmount() : int
      {
         return this.§while§;
      }
      
      public function getAnimationDefinitions() : Array
      {
         if(this.itemName.indexOf("BIRD") == 0)
         {
            return this.§2%§();
         }
         if(this.itemName.indexOf("PIG") == 0)
         {
            return this.§'#5§();
         }
         if(this.itemName.indexOf("MISC_EASTER_EGG") == 0)
         {
            return this.§<#%§();
         }
         return this.§^"7§();
      }
      
      public function get isColliding() : Boolean
      {
         return this.§>#'§;
      }
      
      private function §^"7§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]],["3",[this.itemName + "_3"]],["4",[this.itemName + "_4"]]];
         return [[§8"J§.§>!N§,_loc1_]];
      }
      
      private function §<#%§() : Array
      {
         var _loc1_:Array = [["1",[this.itemName]]];
         return [[§8"J§.§>!N§,_loc1_]];
      }
      
      private function §'#5§() : Array
      {
         return [[§8"J§.§>!N§,[["1",[this.itemName + "_01"]],["2",[this.itemName + "_02"]],["3",[this.itemName + "_03"]]]],[§8"J§.§9#N§,[["1",[this.itemName + "_01_BLINK"]],["2",[this.itemName + "_02_BLINK"]],["3",[this.itemName + "_03_BLINK"]]]],[§8"J§.§6$$§,[["1",[this.itemName + "_01_SMILE"]],["2",[this.itemName + "_02_SMILE"]],["3",[this.itemName + "_03_SMILE"]]]]];
      }
      
      private function §2%§() : Array
      {
         if(this.itemName == "BIRD_SARDINE")
         {
            return [[§8"J§.§>!N§,[this.itemName]]];
         }
         if(this.itemName == "BIRD_MIGHTY_EAGLE")
         {
            return [[§8"J§.§>!N§,["BIRD_ME_MOTION","BIRD_ME_RADIAL"]]];
         }
         if(this.itemName == "BIRD_ORANGE")
         {
            return [[§8"J§.§>!N§,[["1",[this.itemName + "_YELL"]]]],[§8"J§.§9#N§,[["1",[this.itemName + "_BLINK"]]]],[§5"W§.§1"F§,[["1",[this.itemName + "_YELL"]]]],[§8"J§.§6$$§,[["1",[this.itemName + "_EXCITED"]]]],[§5"W§.§4#Z§,[["1",[this.itemName + "_EXCITED"]]]],[§5"W§.§5S§,[["1",[this.itemName + "_BALLOON"]]]]];
         }
         var _loc1_:Array = this.§6$6§();
         var _loc2_:Array = this.§@!G§();
         var _loc3_:Array = [[§8"J§.§>!N§,_loc2_],[§8"J§.§9#N§,[["1",[this.itemName + "_BLINK"]]]],[§5"W§.§1"F§,[["1",[this.itemName + "_FLYING"]]]],[§8"J§.§6$$§,[["1",[this.itemName + "_YELL"]]]],[§5"W§.§4#Z§,[["1",[this.itemName + "_FLYING_YELL"]]]]];
         if(_loc1_)
         {
            _loc3_.push([§5"W§.§5S§,_loc1_]);
         }
         return _loc3_;
      }
      
      private function §@!G§() : Array
      {
         if(this.itemName == "BIRD_REDBIG")
         {
            return [["1",[this.itemName + "_1"]]];
         }
         return [["1",[this.itemName + "_1"]],["2",[this.itemName + "_2"]]];
      }
      
      private function §6$6§() : Array
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
         return this.§3N§;
      }
      
      public function get explosionForce() : Number
      {
         return this.§%"<§;
      }
      
      public function get explosionDamageRadius() : Number
      {
         return this.§4#'§;
      }
      
      public function get explosionDamage() : Number
      {
         return this.§&!7§;
      }
      
      public function get specialty() : String
      {
         return this.§=#!§;
      }
   }
}
