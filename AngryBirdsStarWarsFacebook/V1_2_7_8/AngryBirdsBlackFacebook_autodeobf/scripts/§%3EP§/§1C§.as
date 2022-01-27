package §>P§
{
   import §1x§.b2Body;
   import §7A§.§5"2§;
   
   public class §1C§
   {
      
      public static const §?a§:int = b2Body.b2_staticBody;
      
      public static const §?"V§:int = b2Body.b2_kinematicBody;
      
      public static const §="x§:int = b2Body.b2_dynamicBody;
       
      
      protected var mName:String;
      
      protected var §4#!§:int;
      
      protected var §`"e§:Number;
      
      protected var §2#+§:Number;
      
      protected var §?!c§:Number;
      
      protected var §`!I§:Number;
      
      protected var §'!L§:Number;
      
      protected var §&!H§:Number;
      
      protected var § 4§:§5"2§;
      
      protected var §7"&§:§5"2§;
      
      public function §1C§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1.toUpperCase();
         this.§4#!§ = param2;
         this.§`"e§ = param3;
         this.§2#+§ = param4;
         this.§?!c§ = param5;
         this.§`!I§ = param6;
         this.§'!L§ = param7;
         this.§&!H§ = param8;
      }
      
      public static function § ]§(param1:String) : int
      {
         switch(param1.toLowerCase())
         {
            case "kinetic":
               return §?"V§;
            case "static":
               return §?a§;
            case "dynamic":
               return §="x§;
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
         return this.§4#!§;
      }
      
      public function get density() : Number
      {
         return this.§`"e§;
      }
      
      public function get friction() : Number
      {
         return this.§2#+§;
      }
      
      public function get restitution() : Number
      {
         return this.§?!c§;
      }
      
      public function get strength() : Number
      {
         return this.§`!I§;
      }
      
      public function get defence() : Number
      {
         return this.§'!L§;
      }
      
      public function get colors() : Number
      {
         return this.§&!H§;
      }
      
      public function §'<§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§ 4§)
         {
            return;
         }
         this.§ 4§ = new §5"2§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§1!8§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §1!8§(param1:String, param2:Number) : void
      {
         if(this.§ 4§ == null)
         {
            this.§ 4§ = new §5"2§();
         }
         param1 = param1.toUpperCase();
         if(this.§ 4§[param1] == null)
         {
            this.§ 4§[param1] = param2;
         }
      }
      
      public function §0"Y§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§7"&§)
         {
            return;
         }
         this.§7"&§ = new §5"2§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§#!F§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §#!F§(param1:String, param2:Number) : void
      {
         if(this.§7"&§ == null)
         {
            this.§7"&§ = new §5"2§();
         }
         param1 = param1.toUpperCase();
         if(this.§7"&§[param1] == null)
         {
            this.§7"&§[param1] = param2;
         }
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         if(this.§ 4§ && this.§ 4§[param1])
         {
            return this.§ 4§[param1];
         }
         return 1;
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         if(this.§7"&§ && this.§7"&§[param1])
         {
            return this.§7"&§[param1];
         }
         return 1;
      }
      
      public function §%!m§() : Boolean
      {
         return this.§4#!§ == §1C§.§?a§;
      }
   }
}
