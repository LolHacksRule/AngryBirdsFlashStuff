package §-!j§
{
   import §2E§.§&#a§;
   import §3#h§.b2Body;
   
   public class §5!,§
   {
      
      public static const BODY_TYPE_STATIC:int = b2Body.b2_staticBody;
      
      public static const §[#0§:int = b2Body.b2_kinematicBody;
      
      public static const §8L§:int = b2Body.b2_dynamicBody;
       
      
      protected var §-#3§:String;
      
      protected var §["i§:int;
      
      protected var §&N§:Number;
      
      protected var §5c§:Number;
      
      protected var §1#e§:Number;
      
      protected var §-!w§:Number;
      
      protected var §3!k§:Number;
      
      protected var §;!1§:Number;
      
      protected var §<!M§:§&#a§;
      
      protected var §[!o§:§&#a§;
      
      protected var §^!c§:String;
      
      public function §5!,§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:String = null)
      {
         super();
         this.§-#3§ = param1.toUpperCase();
         this.§["i§ = param2;
         this.§&N§ = param3;
         this.§5c§ = param4;
         this.§1#e§ = param5;
         this.§-!w§ = param6;
         this.§3!k§ = param7;
         this.§;!1§ = param8;
         this.§^!c§ = param9;
      }
      
      public static function §[!J§(param1:String) : int
      {
         switch(param1.toLowerCase())
         {
            case "kinetic":
               return §[#0§;
            case "static":
               return BODY_TYPE_STATIC;
            case "dynamic":
               return §8L§;
            default:
               throw new Error("Invalid body type \'" + param1 + "\'. Expected \'kinetic\', \'static\' or \'dynamic\'.");
         }
      }
      
      public function get name() : String
      {
         return this.§-#3§;
      }
      
      public function get bodyType() : int
      {
         return this.§["i§;
      }
      
      public function get density() : Number
      {
         return this.§&N§;
      }
      
      public function get friction() : Number
      {
         return this.§5c§;
      }
      
      public function get restitution() : Number
      {
         return this.§1#e§;
      }
      
      public function get strength() : Number
      {
         return this.§-!w§;
      }
      
      public function get defence() : Number
      {
         return this.§3!k§;
      }
      
      public function get colors() : Number
      {
         return this.§;!1§;
      }
      
      public function get sounds() : String
      {
         return this.§^!c§;
      }
      
      public function §0@§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§<!M§)
         {
            return;
         }
         this.§<!M§ = new §&#a§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§89§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §89§(param1:String, param2:Number) : void
      {
         if(this.§<!M§ == null)
         {
            this.§<!M§ = new §&#a§();
         }
         param1 = param1.toUpperCase();
         if(this.§<!M§[param1] == null)
         {
            this.§<!M§[param1] = param2;
         }
      }
      
      public function §7!r§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§[!o§)
         {
            return;
         }
         this.§[!o§ = new §&#a§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§=6§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §=6§(param1:String, param2:Number) : void
      {
         if(this.§[!o§ == null)
         {
            this.§[!o§ = new §&#a§();
         }
         param1 = param1.toUpperCase();
         if(this.§[!o§[param1] == null)
         {
            this.§[!o§[param1] = param2;
         }
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         if(this.§<!M§ && this.§<!M§[param1])
         {
            return this.§<!M§[param1];
         }
         return 1;
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         if(this.§[!o§ && this.§[!o§[param1])
         {
            return this.§[!o§[param1];
         }
         return 1;
      }
      
      public function §8"g§() : Boolean
      {
         return this.§["i§ == §5!,§.BODY_TYPE_STATIC;
      }
   }
}
