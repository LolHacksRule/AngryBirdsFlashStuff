package §8"L§
{
   import §4"O§.b2Body;
   import §`7§.§0t§;
   
   public class §?"b§
   {
      
      public static const BODY_TYPE_STATIC:int = b2Body.b2_staticBody;
      
      public static const §[#R§:int = b2Body.b2_kinematicBody;
      
      public static const §#O§:int = b2Body.b2_dynamicBody;
       
      
      protected var §=q§:String;
      
      protected var §?$?§:int;
      
      protected var §^6§:Number;
      
      protected var §[#@§:Number;
      
      protected var §2K§:Number;
      
      protected var §&>§:Number;
      
      protected var §-"&§:Number;
      
      protected var §%#l§:Number;
      
      protected var §-#x§:§0t§;
      
      protected var §2";§:§0t§;
      
      protected var §%$@§:String;
      
      public function §?"b§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:String = null)
      {
         super();
         this.§=q§ = param1.toUpperCase();
         this.§?$?§ = param2;
         this.§^6§ = param3;
         this.§[#@§ = param4;
         this.§2K§ = param5;
         this.§&>§ = param6;
         this.§-"&§ = param7;
         this.§%#l§ = param8;
         this.§%$@§ = param9;
      }
      
      public static function §@!C§(param1:String) : int
      {
         switch(param1.toLowerCase())
         {
            case "kinetic":
               return §[#R§;
            case "static":
               return BODY_TYPE_STATIC;
            case "dynamic":
               return §#O§;
            default:
               throw new Error("Invalid body type \'" + param1 + "\'. Expected \'kinetic\', \'static\' or \'dynamic\'.");
         }
      }
      
      public function get name() : String
      {
         return this.§=q§;
      }
      
      public function get bodyType() : int
      {
         return this.§?$?§;
      }
      
      public function get density() : Number
      {
         return this.§^6§;
      }
      
      public function get friction() : Number
      {
         return this.§[#@§;
      }
      
      public function get restitution() : Number
      {
         return this.§2K§;
      }
      
      public function get strength() : Number
      {
         return this.§&>§;
      }
      
      public function get defence() : Number
      {
         return this.§-"&§;
      }
      
      public function get colors() : Number
      {
         return this.§%#l§;
      }
      
      public function get sounds() : String
      {
         return this.§%$@§;
      }
      
      public function §#!z§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§-#x§)
         {
            return;
         }
         this.§-#x§ = new §0t§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§>!v§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §>!v§(param1:String, param2:Number) : void
      {
         if(this.§-#x§ == null)
         {
            this.§-#x§ = new §0t§();
         }
         param1 = param1.toUpperCase();
         if(this.§-#x§[param1] == null)
         {
            this.§-#x§[param1] = param2;
         }
      }
      
      public function §="T§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§2";§)
         {
            return;
         }
         this.§2";§ = new §0t§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§[>§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §[>§(param1:String, param2:Number) : void
      {
         if(this.§2";§ == null)
         {
            this.§2";§ = new §0t§();
         }
         param1 = param1.toUpperCase();
         if(this.§2";§[param1] == null)
         {
            this.§2";§[param1] = param2;
         }
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         if(this.§-#x§ && this.§-#x§[param1])
         {
            return this.§-#x§[param1];
         }
         return 1;
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         if(this.§2";§ && this.§2";§[param1])
         {
            return this.§2";§[param1];
         }
         return 1;
      }
      
      public function §6!%§() : Boolean
      {
         return this.§?$?§ == §?"b§.BODY_TYPE_STATIC;
      }
   }
}
