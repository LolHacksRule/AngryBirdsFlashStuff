package §7"&§
{
   import §1!+§.b2Body;
   import §6V§.§&"g§;
   
   public class §^"Q§
   {
      
      public static const §2n§:int = b2Body.b2_staticBody;
      
      public static const §],§:int = b2Body.b2_kinematicBody;
      
      public static const §1#o§:int = b2Body.b2_dynamicBody;
       
      
      protected var §;!p§:String;
      
      protected var §'w§:int;
      
      protected var §2!+§:Number;
      
      protected var §3d§:Number;
      
      protected var §4#g§:Number;
      
      protected var §&#D§:Number;
      
      protected var §6"l§:Number;
      
      protected var §0!r§:Number;
      
      protected var §""v§:§&"g§;
      
      protected var §1!K§:§&"g§;
      
      public function §^"Q§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.§;!p§ = param1.toUpperCase();
         this.§'w§ = param2;
         this.§2!+§ = param3;
         this.§3d§ = param4;
         this.§4#g§ = param5;
         this.§&#D§ = param6;
         this.§6"l§ = param7;
         this.§0!r§ = param8;
      }
      
      public static function §0[§(param1:String) : int
      {
         switch(param1.toLowerCase())
         {
            case "kinetic":
               return §],§;
            case "static":
               return §2n§;
            case "dynamic":
               return §1#o§;
            default:
               throw new Error("Invalid body type \'" + param1 + "\'. Expected \'kinetic\', \'static\' or \'dynamic\'.");
         }
      }
      
      public function get name() : String
      {
         return this.§;!p§;
      }
      
      public function get bodyType() : int
      {
         return this.§'w§;
      }
      
      public function get density() : Number
      {
         return this.§2!+§;
      }
      
      public function get friction() : Number
      {
         return this.§3d§;
      }
      
      public function get restitution() : Number
      {
         return this.§4#g§;
      }
      
      public function get strength() : Number
      {
         return this.§&#D§;
      }
      
      public function get defence() : Number
      {
         return this.§6"l§;
      }
      
      public function get colors() : Number
      {
         return this.§0!r§;
      }
      
      public function §7!a§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§""v§)
         {
            return;
         }
         this.§""v§ = new §&"g§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§^#t§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §^#t§(param1:String, param2:Number) : void
      {
         if(this.§""v§ == null)
         {
            this.§""v§ = new §&"g§();
         }
         param1 = param1.toUpperCase();
         if(this.§""v§[param1] == null)
         {
            this.§""v§[param1] = param2;
         }
      }
      
      public function §1<§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§1!K§)
         {
            return;
         }
         this.§1!K§ = new §&"g§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§-4§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §-4§(param1:String, param2:Number) : void
      {
         if(this.§1!K§ == null)
         {
            this.§1!K§ = new §&"g§();
         }
         param1 = param1.toUpperCase();
         if(this.§1!K§[param1] == null)
         {
            this.§1!K§[param1] = param2;
         }
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         if(this.§""v§ && this.§""v§[param1])
         {
            return this.§""v§[param1];
         }
         return 1;
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         if(this.§1!K§ && this.§1!K§[param1])
         {
            return this.§1!K§[param1];
         }
         return 1;
      }
      
      public function §[!n§() : Boolean
      {
         return this.§'w§ == §^"Q§.§2n§;
      }
   }
}
