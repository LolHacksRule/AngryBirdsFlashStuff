package §?$<§
{
   import §&!_§.§[!j§;
   import §@!S§.b2Body;
   
   public class §;<§
   {
      
      public static const BODY_TYPE_STATIC:int = b2Body.b2_staticBody;
      
      public static const §'#l§:int = b2Body.b2_kinematicBody;
      
      public static const §?c§:int = b2Body.b2_dynamicBody;
       
      
      protected var §!I§:String;
      
      protected var §&$D§:int;
      
      protected var §[#Z§:Number;
      
      protected var §!$C§:Number;
      
      protected var §2"N§:Number;
      
      protected var §""i§:Number;
      
      protected var §?!B§:Number;
      
      protected var §!>§:Number;
      
      protected var §6#@§:§[!j§;
      
      protected var §@!V§:§[!j§;
      
      protected var §6#d§:String;
      
      public function §;<§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:String = null)
      {
         super();
         this.§!I§ = param1.toUpperCase();
         this.§&$D§ = param2;
         this.§[#Z§ = param3;
         this.§!$C§ = param4;
         this.§2"N§ = param5;
         this.§""i§ = param6;
         this.§?!B§ = param7;
         this.§!>§ = param8;
         this.§6#d§ = param9;
      }
      
      public static function §`G§(param1:String) : int
      {
         switch(param1.toLowerCase())
         {
            case "kinetic":
               return §'#l§;
            case "static":
               return BODY_TYPE_STATIC;
            case "dynamic":
               return §?c§;
            default:
               throw new Error("Invalid body type \'" + param1 + "\'. Expected \'kinetic\', \'static\' or \'dynamic\'.");
         }
      }
      
      public function get name() : String
      {
         return this.§!I§;
      }
      
      public function get bodyType() : int
      {
         return this.§&$D§;
      }
      
      public function get density() : Number
      {
         return this.§[#Z§;
      }
      
      public function get friction() : Number
      {
         return this.§!$C§;
      }
      
      public function get restitution() : Number
      {
         return this.§2"N§;
      }
      
      public function get strength() : Number
      {
         return this.§""i§;
      }
      
      public function get defence() : Number
      {
         return this.§?!B§;
      }
      
      public function get colors() : Number
      {
         return this.§!>§;
      }
      
      public function get sounds() : String
      {
         return this.§6#d§;
      }
      
      public function §7+§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§6#@§)
         {
            return;
         }
         this.§6#@§ = new §[!j§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§4#O§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §4#O§(param1:String, param2:Number) : void
      {
         if(this.§6#@§ == null)
         {
            this.§6#@§ = new §[!j§();
         }
         param1 = param1.toUpperCase();
         if(this.§6#@§[param1] == null)
         {
            this.§6#@§[param1] = param2;
         }
      }
      
      public function §continue§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§@!V§)
         {
            return;
         }
         this.§@!V§ = new §[!j§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§[!C§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §[!C§(param1:String, param2:Number) : void
      {
         if(this.§@!V§ == null)
         {
            this.§@!V§ = new §[!j§();
         }
         param1 = param1.toUpperCase();
         if(this.§@!V§[param1] == null)
         {
            this.§@!V§[param1] = param2;
         }
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         if(this.§6#@§ && this.§6#@§[param1])
         {
            return this.§6#@§[param1];
         }
         return 1;
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         if(this.§@!V§ && this.§@!V§[param1])
         {
            return this.§@!V§[param1];
         }
         return 1;
      }
      
      public function §"#d§() : Boolean
      {
         return this.§&$D§ == §;<§.BODY_TYPE_STATIC;
      }
   }
}
