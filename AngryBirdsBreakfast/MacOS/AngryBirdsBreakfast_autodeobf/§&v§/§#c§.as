package §&v§
{
   import §"n§.§<!Z§;
   import §3!`§.b2Body;
   
   public class §#c§
   {
      
      public static const §9&§:int = b2Body.b2_staticBody;
      
      public static const §-!I§:int = b2Body.b2_kinematicBody;
      
      public static const §5!n§:int = b2Body.b2_dynamicBody;
       
      
      protected var mName:String;
      
      protected var §!!-§:int;
      
      protected var §<!T§:Number;
      
      protected var §38§:Number;
      
      protected var §#'§:Number;
      
      protected var §;!0§:Number;
      
      protected var § 8§:Number;
      
      protected var §5D§:Number;
      
      protected var §"!J§:§<!Z§;
      
      protected var §?!p§:§<!Z§;
      
      public function §#c§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1.toUpperCase();
         this.§!!-§ = param2;
         this.§<!T§ = param3;
         this.§38§ = param4;
         this.§#'§ = param5;
         this.§;!0§ = param6;
         this.§ 8§ = param7;
         this.§5D§ = param8;
      }
      
      public static function §8c§(param1:String) : int
      {
         switch(param1.toLowerCase())
         {
            case "kinetic":
               return §-!I§;
            case "static":
               return §9&§;
            case "dynamic":
               return §5!n§;
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
         return this.§!!-§;
      }
      
      public function get density() : Number
      {
         return this.§<!T§;
      }
      
      public function get friction() : Number
      {
         return this.§38§;
      }
      
      public function get restitution() : Number
      {
         return this.§#'§;
      }
      
      public function get strength() : Number
      {
         return this.§;!0§;
      }
      
      public function get defence() : Number
      {
         return this.§ 8§;
      }
      
      public function get colors() : Number
      {
         return this.§5D§;
      }
      
      public function §?!k§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§"!J§)
         {
            return;
         }
         this.§"!J§ = new §<!Z§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§]!u§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §]!u§(param1:String, param2:Number) : void
      {
         if(this.§"!J§ == null)
         {
            this.§"!J§ = new §<!Z§();
         }
         param1 = param1.toUpperCase();
         if(this.§"!J§[param1] == null)
         {
            this.§"!J§[param1] = param2;
         }
      }
      
      public function §5!m§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§?!p§)
         {
            return;
         }
         this.§?!p§ = new §<!Z§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§[9§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §[9§(param1:String, param2:Number) : void
      {
         if(this.§?!p§ == null)
         {
            this.§?!p§ = new §<!Z§();
         }
         param1 = param1.toUpperCase();
         if(this.§?!p§[param1] == null)
         {
            this.§?!p§[param1] = param2;
         }
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         if(this.§"!J§ && this.§"!J§[param1])
         {
            return this.§"!J§[param1];
         }
         return 1;
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         if(this.§?!p§ && this.§?!p§[param1])
         {
            return this.§?!p§[param1];
         }
         return 1;
      }
      
      public function §!!2§() : Boolean
      {
         return this.§!!-§ == §#c§.§9&§;
      }
   }
}
