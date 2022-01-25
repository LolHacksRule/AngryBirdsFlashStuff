package §2!s§
{
   import §9!Z§.b2Body;
   import §`!s§.§4M§;
   
   public class §+f§
   {
      
      public static const §,!6§:int = b2Body.b2_staticBody;
      
      public static const §9j§:int = b2Body.b2_kinematicBody;
      
      public static const §-!U§:int = b2Body.b2_dynamicBody;
       
      
      protected var mName:String;
      
      protected var §"!5§:int;
      
      protected var §`!q§:Number;
      
      protected var §0&§:Number;
      
      protected var §+!@§:Number;
      
      protected var §'e§:Number;
      
      protected var §8!r§:Number;
      
      protected var §>!W§:Number;
      
      protected var § !t§:§4M§;
      
      protected var §`"0§:§4M§;
      
      public function §+f§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1.toUpperCase();
         this.§"!5§ = param2;
         this.§`!q§ = param3;
         this.§0&§ = param4;
         this.§+!@§ = param5;
         this.§'e§ = param6;
         this.§8!r§ = param7;
         this.§>!W§ = param8;
      }
      
      public static function §5g§(param1:String) : int
      {
         switch(param1.toLowerCase())
         {
            case "kinetic":
               return §9j§;
            case "static":
               return §,!6§;
            case "dynamic":
               return §-!U§;
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
         return this.§"!5§;
      }
      
      public function get density() : Number
      {
         return this.§`!q§;
      }
      
      public function get friction() : Number
      {
         return this.§0&§;
      }
      
      public function get restitution() : Number
      {
         return this.§+!@§;
      }
      
      public function get strength() : Number
      {
         return this.§'e§;
      }
      
      public function get defence() : Number
      {
         return this.§8!r§;
      }
      
      public function get colors() : Number
      {
         return this.§>!W§;
      }
      
      public function §&o§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§ !t§)
         {
            return;
         }
         this.§ !t§ = new §4M§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§5y§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §5y§(param1:String, param2:Number) : void
      {
         if(this.§ !t§ == null)
         {
            this.§ !t§ = new §4M§();
         }
         param1 = param1.toUpperCase();
         if(this.§ !t§[param1] == null)
         {
            this.§ !t§[param1] = param2;
         }
      }
      
      public function §<$§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§`"0§)
         {
            return;
         }
         this.§`"0§ = new §4M§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§!a§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §!a§(param1:String, param2:Number) : void
      {
         if(this.§`"0§ == null)
         {
            this.§`"0§ = new §4M§();
         }
         param1 = param1.toUpperCase();
         if(this.§`"0§[param1] == null)
         {
            this.§`"0§[param1] = param2;
         }
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         if(this.§ !t§ && this.§ !t§[param1])
         {
            return this.§ !t§[param1];
         }
         return 1;
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         if(this.§`"0§ && this.§`"0§[param1])
         {
            return this.§`"0§[param1];
         }
         return 1;
      }
      
      public function §<!Y§() : Boolean
      {
         return this.§"!5§ == §+f§.§,!6§;
      }
   }
}
