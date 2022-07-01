package §%8§
{
   import §0"!§.b2Body;
   import §4!i§.§0]§;
   
   public class §^f§
   {
      
      public static const §7!C§:int = b2Body.b2_staticBody;
      
      public static const §7"-§:int = b2Body.b2_kinematicBody;
      
      public static const §6"&§:int = b2Body.b2_dynamicBody;
       
      
      protected var mName:String;
      
      protected var §+A§:int;
      
      protected var §5$§:Number;
      
      protected var §]!!§:Number;
      
      protected var §-!S§:Number;
      
      protected var §5!T§:Number;
      
      protected var §=s§:Number;
      
      protected var §,]§:Number;
      
      protected var §1!y§:§0]§;
      
      protected var §+N§:§0]§;
      
      public function §^f§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1.toUpperCase();
         this.§+A§ = param2;
         this.§5$§ = param3;
         this.§]!!§ = param4;
         this.§-!S§ = param5;
         this.§5!T§ = param6;
         this.§=s§ = param7;
         this.§,]§ = param8;
      }
      
      public static function §6"1§(param1:String) : int
      {
         switch(param1.toLowerCase())
         {
            case "kinetic":
               return §7"-§;
            case "static":
               return §7!C§;
            case "dynamic":
               return §6"&§;
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
         return this.§+A§;
      }
      
      public function get density() : Number
      {
         return this.§5$§;
      }
      
      public function get friction() : Number
      {
         return this.§]!!§;
      }
      
      public function get restitution() : Number
      {
         return this.§-!S§;
      }
      
      public function get strength() : Number
      {
         return this.§5!T§;
      }
      
      public function get defence() : Number
      {
         return this.§=s§;
      }
      
      public function get colors() : Number
      {
         return this.§,]§;
      }
      
      public function §7!F§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§1!y§)
         {
            return;
         }
         this.§1!y§ = new §0]§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§=!W§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §=!W§(param1:String, param2:Number) : void
      {
         if(this.§1!y§ == null)
         {
            this.§1!y§ = new §0]§();
         }
         param1 = param1.toUpperCase();
         if(this.§1!y§[param1] == null)
         {
            this.§1!y§[param1] = param2;
         }
      }
      
      public function §%i§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§+N§)
         {
            return;
         }
         this.§+N§ = new §0]§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§+#§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §+#§(param1:String, param2:Number) : void
      {
         if(this.§+N§ == null)
         {
            this.§+N§ = new §0]§();
         }
         param1 = param1.toUpperCase();
         if(this.§+N§[param1] == null)
         {
            this.§+N§[param1] = param2;
         }
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         if(this.§1!y§ && this.§1!y§[param1])
         {
            return this.§1!y§[param1];
         }
         return 1;
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         if(this.§+N§ && this.§+N§[param1])
         {
            return this.§+N§[param1];
         }
         return 1;
      }
      
      public function §4X§() : Boolean
      {
         return this.§+A§ == §^f§.§7!C§;
      }
   }
}
