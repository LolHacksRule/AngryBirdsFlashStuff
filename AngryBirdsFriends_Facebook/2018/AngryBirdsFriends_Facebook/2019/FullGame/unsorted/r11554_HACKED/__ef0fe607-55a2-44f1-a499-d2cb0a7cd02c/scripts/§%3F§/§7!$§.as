package §?§#3
{
   import §+#B§.§4"[§;
   import §8#t§.b2Body;
   
   public class §7!$§
   {
      
      public static const BODY_TYPE_STATIC:int = b2Body.b2_staticBody;
      
      public static const §6+§:int = b2Body.b2_kinematicBody;
      
      public static const §'"n§:int = b2Body.b2_dynamicBody;
       
      
      protected var §-!O§:String;
      
      protected var §'"w§:int;
      
      protected var §'#7§:Number;
      
      protected var §"P§:Number;
      
      protected var §&5§:Number;
      
      protected var §0#6§:Number;
      
      protected var §[#N§:Number;
      
      protected var §@"u§:Number;
      
      protected var §'!;§:§4"[§;
      
      protected var §^#a§:§4"[§;
      
      protected var §>#"§:String;
      
      public function §7!$§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:String = null)
      {
         super();
         this.§-!O§ = param1.toUpperCase();
         this.§'"w§ = param2;
         this.§'#7§ = param3;
         this.§"P§ = param4;
         this.§&5§ = param5;
         this.§0#6§ = param6;
         this.§[#N§ = param7;
         this.§@"u§ = param8;
         this.§>#"§ = param9;
      }
      
      public static function §>#c§(param1:String) : int
      {
         switch(param1.toLowerCase())
         {
            case "kinetic":
               return §6+§;
            case "static":
               return BODY_TYPE_STATIC;
            case "dynamic":
               return §'"n§;
            default:
               throw new Error("Invalid body type \'" + param1 + "\'. Expected \'kinetic\', \'static\' or \'dynamic\'.");
         }
      }
      
      public function get name() : String
      {
         return this.§-!O§;
      }
      
      public function get bodyType() : int
      {
         return this.§'"w§;
      }
      
      public function get density() : Number
      {
         return this.§'#7§;
      }
      
      public function get friction() : Number
      {
         return this.§"P§;
      }
      
      public function get restitution() : Number
      {
         return this.§&5§;
      }
      
      public function get strength() : Number
      {
         return this.§0#6§;
      }
      
      public function get defence() : Number
      {
         return this.§[#N§;
      }
      
      public function get colors() : Number
      {
         return this.§@"u§;
      }
      
      public function get sounds() : String
      {
         return this.§>#"§;
      }
      
      public function §[x§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§'!;§)
         {
            return;
         }
         this.§'!;§ = new §4"[§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§@g§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §@g§(param1:String, param2:Number) : void
      {
         if(this.§'!;§ == null)
         {
            this.§'!;§ = new §4"[§();
         }
         param1 = param1.toUpperCase();
         if(this.§'!;§[param1] == null)
         {
            this.§'!;§[param1] = param2;
         }
      }
      
      public function §8$C§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§^#a§)
         {
            return;
         }
         this.§^#a§ = new §4"[§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§0"^§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §0"^§(param1:String, param2:Number) : void
      {
         if(this.§^#a§ == null)
         {
            this.§^#a§ = new §4"[§();
         }
         param1 = param1.toUpperCase();
         if(this.§^#a§[param1] == null)
         {
            this.§^#a§[param1] = param2;
         }
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         if(this.§'!;§ && this.§'!;§[param1])
         {
            return this.§'!;§[param1];
         }
         return 1;
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         if(this.§^#a§ && this.§^#a§[param1])
         {
            return this.§^#a§[param1];
         }
         return 1;
      }
      
      public function §&"[§() : Boolean
      {
         return this.§'"w§ == §7!$§.BODY_TYPE_STATIC;
      }
   }
}
