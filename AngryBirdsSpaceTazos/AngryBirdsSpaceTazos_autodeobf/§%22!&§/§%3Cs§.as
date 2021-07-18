package §"!&§
{
   import § !Y§.§[!%§;
   import §'!&§.b2Body;
   
   public class §<s§
   {
      
      public static const §%!2§:int = b2Body.b2_staticBody;
      
      public static const §5!P§:int = b2Body.b2_kinematicBody;
      
      public static const §6x§:int = b2Body.b2_dynamicBody;
       
      
      protected var mName:String;
      
      protected var §!"+§:int;
      
      protected var §9!C§:Number;
      
      protected var §0!%§:Number;
      
      protected var §>!5§:Number;
      
      protected var §6$§:Number;
      
      protected var §`!2§:Number;
      
      protected var §,!-§:Number;
      
      protected var §'9§:§[!%§;
      
      protected var §6!j§:§[!%§;
      
      public function §<s§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1.toUpperCase();
         this.§!"+§ = param2;
         this.§9!C§ = param3;
         this.§0!%§ = param4;
         this.§>!5§ = param5;
         this.§6$§ = param6;
         this.§`!2§ = param7;
         this.§,!-§ = param8;
      }
      
      public static function §`!k§(param1:String) : int
      {
         switch(param1.toLowerCase())
         {
            case "kinetic":
               return §5!P§;
            case "static":
               return §%!2§;
            case "dynamic":
               return §6x§;
            default:
               throw new Error("Invalid body type \'" + param1 + "\'. Expected \'kinetic\', \'static\' or \'dynamic\'.");
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get bodyType() : int
      {
         return this.§!"+§;
      }
      
      public function get density() : Number
      {
         return this.§9!C§;
      }
      
      public function get friction() : Number
      {
         return this.§0!%§;
      }
      
      public function get restitution() : Number
      {
         return this.§>!5§;
      }
      
      public function get strength() : Number
      {
         return this.§6$§;
      }
      
      public function get defence() : Number
      {
         return this.§`!2§;
      }
      
      public function get colors() : Number
      {
         return this.§,!-§;
      }
      
      public function §0!o§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§'9§)
         {
            return;
         }
         this.§'9§ = new §[!%§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§+!;§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §+!;§(param1:String, param2:Number) : void
      {
         if(this.§'9§ == null)
         {
            this.§'9§ = new §[!%§();
         }
         param1 = param1.toUpperCase();
         if(this.§'9§[param1] == null)
         {
            this.§'9§[param1] = param2;
         }
      }
      
      public function § "$§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§6!j§)
         {
            return;
         }
         this.§6!j§ = new §[!%§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§@" §(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §@" §(param1:String, param2:Number) : void
      {
         if(this.§6!j§ == null)
         {
            this.§6!j§ = new §[!%§();
         }
         param1 = param1.toUpperCase();
         if(this.§6!j§[param1] == null)
         {
            this.§6!j§[param1] = param2;
         }
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         if(this.§'9§ && this.§'9§[param1])
         {
            return this.§'9§[param1];
         }
         return 1;
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         if(this.§6!j§ && this.§6!j§[param1])
         {
            return this.§6!j§[param1];
         }
         return 1;
      }
      
      public function §@">§() : Boolean
      {
         return this.§!"+§ == §<s§.§%!2§;
      }
   }
}
