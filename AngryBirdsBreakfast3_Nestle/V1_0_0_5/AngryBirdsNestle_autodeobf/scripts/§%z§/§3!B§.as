package §%z§
{
   import §,v§.b2Body;
   import §2W§.§`!v§;
   
   public class §3!B§
   {
      
      public static const §5w§:int = b2Body.b2_staticBody;
      
      public static const §<C§:int = b2Body.b2_kinematicBody;
      
      public static const §@!7§:int = b2Body.b2_dynamicBody;
       
      
      protected var mName:String;
      
      protected var §?<§:int;
      
      protected var § !&§:Number;
      
      protected var §0"%§:Number;
      
      protected var §+!0§:Number;
      
      protected var §,!s§:Number;
      
      protected var §5O§:Number;
      
      protected var §9X§:Number;
      
      protected var §6G§:§`!v§;
      
      protected var §@!+§:§`!v§;
      
      public function §3!B§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1.toUpperCase();
         this.§?<§ = param2;
         this.§ !&§ = param3;
         this.§0"%§ = param4;
         this.§+!0§ = param5;
         this.§,!s§ = param6;
         this.§5O§ = param7;
         this.§9X§ = param8;
      }
      
      public static function §4,§(param1:String) : int
      {
         switch(param1.toLowerCase())
         {
            case "kinetic":
               return §<C§;
            case "static":
               return §5w§;
            case "dynamic":
               return §@!7§;
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
         return this.§?<§;
      }
      
      public function get density() : Number
      {
         return this.§ !&§;
      }
      
      public function get friction() : Number
      {
         return this.§0"%§;
      }
      
      public function get restitution() : Number
      {
         return this.§+!0§;
      }
      
      public function get strength() : Number
      {
         return this.§,!s§;
      }
      
      public function get defence() : Number
      {
         return this.§5O§;
      }
      
      public function get colors() : Number
      {
         return this.§9X§;
      }
      
      public function §+!c§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§6G§)
         {
            return;
         }
         this.§6G§ = new §`!v§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§6!7§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §6!7§(param1:String, param2:Number) : void
      {
         if(this.§6G§ == null)
         {
            this.§6G§ = new §`!v§();
         }
         param1 = param1.toUpperCase();
         if(this.§6G§[param1] == null)
         {
            this.§6G§[param1] = param2;
         }
      }
      
      public function §1"2§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§@!+§)
         {
            return;
         }
         this.§@!+§ = new §`!v§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§?L§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §?L§(param1:String, param2:Number) : void
      {
         if(this.§@!+§ == null)
         {
            this.§@!+§ = new §`!v§();
         }
         param1 = param1.toUpperCase();
         if(this.§@!+§[param1] == null)
         {
            this.§@!+§[param1] = param2;
         }
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         if(this.§6G§ && this.§6G§[param1])
         {
            return this.§6G§[param1];
         }
         return 1;
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         if(this.§@!+§ && this.§@!+§[param1])
         {
            return this.§@!+§[param1];
         }
         return 1;
      }
      
      public function §,z§() : Boolean
      {
         return this.§?<§ == §3!B§.§5w§;
      }
   }
}
