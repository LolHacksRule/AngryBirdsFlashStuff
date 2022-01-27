package §#g§
{
   import §+d§.§2!g§;
   import §>"_§.b2Body;
   
   public class §!+§
   {
      
      public static const §-"7§:int = b2Body.b2_staticBody;
      
      public static const §7#!§:int = b2Body.b2_kinematicBody;
      
      public static const §'I§:int = b2Body.b2_dynamicBody;
       
      
      protected var mName:String;
      
      protected var §%"$§:int;
      
      protected var §^#,§:Number;
      
      protected var §4A§:Number;
      
      protected var §""=§:Number;
      
      protected var §3!G§:Number;
      
      protected var §1Y§:Number;
      
      protected var §[I§:Number;
      
      protected var §9g§:§2!g§;
      
      protected var §0?§:§2!g§;
      
      public function §!+§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1.toUpperCase();
         this.§%"$§ = param2;
         this.§^#,§ = param3;
         this.§4A§ = param4;
         this.§""=§ = param5;
         this.§3!G§ = param6;
         this.§1Y§ = param7;
         this.§[I§ = param8;
      }
      
      public static function §=r§(param1:String) : int
      {
         switch(param1.toLowerCase())
         {
            case "kinetic":
               return §7#!§;
            case "static":
               return §-"7§;
            case "dynamic":
               return §'I§;
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
         return this.§%"$§;
      }
      
      public function get density() : Number
      {
         return this.§^#,§;
      }
      
      public function get friction() : Number
      {
         return this.§4A§;
      }
      
      public function get restitution() : Number
      {
         return this.§""=§;
      }
      
      public function get strength() : Number
      {
         return this.§3!G§;
      }
      
      public function get defence() : Number
      {
         return this.§1Y§;
      }
      
      public function get colors() : Number
      {
         return this.§[I§;
      }
      
      public function §+q§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§9g§)
         {
            return;
         }
         this.§9g§ = new §2!g§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§4"x§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §4"x§(param1:String, param2:Number) : void
      {
         if(this.§9g§ == null)
         {
            this.§9g§ = new §2!g§();
         }
         param1 = param1.toUpperCase();
         if(this.§9g§[param1] == null)
         {
            this.§9g§[param1] = param2;
         }
      }
      
      public function §]L§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§0?§)
         {
            return;
         }
         this.§0?§ = new §2!g§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§'t§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §'t§(param1:String, param2:Number) : void
      {
         if(this.§0?§ == null)
         {
            this.§0?§ = new §2!g§();
         }
         param1 = param1.toUpperCase();
         if(this.§0?§[param1] == null)
         {
            this.§0?§[param1] = param2;
         }
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         if(this.§9g§ && this.§9g§[param1])
         {
            return this.§9g§[param1];
         }
         return 1;
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         if(this.§0?§ && this.§0?§[param1])
         {
            return this.§0?§[param1];
         }
         return 1;
      }
      
      public function §8#6§() : Boolean
      {
         return this.§%"$§ == §!+§.§-"7§;
      }
   }
}
