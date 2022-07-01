package §!"+§
{
   import §%f§.§ n§;
   import §=!c§.b2Body;
   
   public class §,D§
   {
      
      public static const §?4§:int = b2Body.b2_staticBody;
      
      public static const §5!!§:int = b2Body.b2_kinematicBody;
      
      public static const §>!o§:int = b2Body.b2_dynamicBody;
       
      
      protected var mName:String;
      
      protected var §`!S§:int;
      
      protected var §<!S§:Number;
      
      protected var §'!B§:Number;
      
      protected var §"I§:Number;
      
      protected var §+!M§:Number;
      
      protected var §5i§:Number;
      
      protected var §80§:Number;
      
      protected var §"!x§:§ n§;
      
      protected var §9!I§:§ n§;
      
      public function §,D§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1.toUpperCase();
         this.§`!S§ = param2;
         this.§<!S§ = param3;
         this.§'!B§ = param4;
         this.§"I§ = param5;
         this.§+!M§ = param6;
         this.§5i§ = param7;
         this.§80§ = param8;
      }
      
      public static function §+`§(param1:String) : int
      {
         switch(param1.toLowerCase())
         {
            case "kinetic":
               return §5!!§;
            case "static":
               return §?4§;
            case "dynamic":
               return §>!o§;
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
         return this.§`!S§;
      }
      
      public function get density() : Number
      {
         return this.§<!S§;
      }
      
      public function get friction() : Number
      {
         return this.§'!B§;
      }
      
      public function get restitution() : Number
      {
         return this.§"I§;
      }
      
      public function get strength() : Number
      {
         return this.§+!M§;
      }
      
      public function get defence() : Number
      {
         return this.§5i§;
      }
      
      public function get colors() : Number
      {
         return this.§80§;
      }
      
      public function §%6§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§"!x§)
         {
            return;
         }
         this.§"!x§ = new § n§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§'N§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §'N§(param1:String, param2:Number) : void
      {
         if(this.§"!x§ == null)
         {
            this.§"!x§ = new § n§();
         }
         param1 = param1.toUpperCase();
         if(this.§"!x§[param1] == null)
         {
            this.§"!x§[param1] = param2;
         }
      }
      
      public function §?V§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§9!I§)
         {
            return;
         }
         this.§9!I§ = new § n§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§4!!§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §4!!§(param1:String, param2:Number) : void
      {
         if(this.§9!I§ == null)
         {
            this.§9!I§ = new § n§();
         }
         param1 = param1.toUpperCase();
         if(this.§9!I§[param1] == null)
         {
            this.§9!I§[param1] = param2;
         }
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         if(this.§"!x§ && this.§"!x§[param1])
         {
            return this.§"!x§[param1];
         }
         return 1;
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         if(this.§9!I§ && this.§9!I§[param1])
         {
            return this.§9!I§[param1];
         }
         return 1;
      }
      
      public function §@s§() : Boolean
      {
         return this.§`!S§ == §,D§.§?4§;
      }
   }
}
