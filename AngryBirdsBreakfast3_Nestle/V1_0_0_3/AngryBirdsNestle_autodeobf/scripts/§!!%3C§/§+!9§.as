package §!!<§
{
   import §-!F§.§^!k§;
   import §;'§.b2Body;
   
   public class §+!9§
   {
      
      public static const §,8§:int = b2Body.b2_staticBody;
      
      public static const §6!v§:int = b2Body.b2_kinematicBody;
      
      public static const §1e§:int = b2Body.b2_dynamicBody;
       
      
      protected var mName:String;
      
      protected var §[!U§:int;
      
      protected var §,1§:Number;
      
      protected var §3Z§:Number;
      
      protected var §@!<§:Number;
      
      protected var §,N§:Number;
      
      protected var §,!G§:Number;
      
      protected var §9!#§:Number;
      
      protected var §3!w§:§^!k§;
      
      protected var §8j§:§^!k§;
      
      public function §+!9§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1.toUpperCase();
         this.§[!U§ = param2;
         this.§,1§ = param3;
         this.§3Z§ = param4;
         this.§@!<§ = param5;
         this.§,N§ = param6;
         this.§,!G§ = param7;
         this.§9!#§ = param8;
      }
      
      public static function §1!-§(param1:String) : int
      {
         switch(param1.toLowerCase())
         {
            case "kinetic":
               return §6!v§;
            case "static":
               return §,8§;
            case "dynamic":
               return §1e§;
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
         return this.§[!U§;
      }
      
      public function get density() : Number
      {
         return this.§,1§;
      }
      
      public function get friction() : Number
      {
         return this.§3Z§;
      }
      
      public function get restitution() : Number
      {
         return this.§@!<§;
      }
      
      public function get strength() : Number
      {
         return this.§,N§;
      }
      
      public function get defence() : Number
      {
         return this.§,!G§;
      }
      
      public function get colors() : Number
      {
         return this.§9!#§;
      }
      
      public function §5!f§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§3!w§)
         {
            return;
         }
         this.§3!w§ = new §^!k§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§8",§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §8",§(param1:String, param2:Number) : void
      {
         if(this.§3!w§ == null)
         {
            this.§3!w§ = new §^!k§();
         }
         param1 = param1.toUpperCase();
         if(this.§3!w§[param1] == null)
         {
            this.§3!w§[param1] = param2;
         }
      }
      
      public function §2!D§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§8j§)
         {
            return;
         }
         this.§8j§ = new §^!k§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§<!F§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §<!F§(param1:String, param2:Number) : void
      {
         if(this.§8j§ == null)
         {
            this.§8j§ = new §^!k§();
         }
         param1 = param1.toUpperCase();
         if(this.§8j§[param1] == null)
         {
            this.§8j§[param1] = param2;
         }
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         if(this.§3!w§ && this.§3!w§[param1])
         {
            return this.§3!w§[param1];
         }
         return 1;
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         if(this.§8j§ && this.§8j§[param1])
         {
            return this.§8j§[param1];
         }
         return 1;
      }
      
      public function §&"$§() : Boolean
      {
         return this.§[!U§ == §+!9§.§,8§;
      }
   }
}
