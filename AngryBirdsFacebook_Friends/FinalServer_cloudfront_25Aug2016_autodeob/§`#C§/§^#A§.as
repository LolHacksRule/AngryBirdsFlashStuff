package §`#C§
{
   import §=#n§.b2Body;
   import §>!#§.§'"R§;
   
   public class §^#A§
   {
      
      public static const §&M§:int = b2Body.b2_staticBody;
      
      public static const § !-§:int = b2Body.b2_kinematicBody;
      
      public static const §=G§:int = b2Body.b2_dynamicBody;
       
      
      protected var §2!4§:String;
      
      protected var §+#F§:int;
      
      protected var §[#W§:Number;
      
      protected var §9!$§:Number;
      
      protected var §@!B§:Number;
      
      protected var §5!=§:Number;
      
      protected var §3![§:Number;
      
      protected var § #G§:Number;
      
      protected var §^!@§:§'"R§;
      
      protected var §=!N§:§'"R§;
      
      public function §^#A§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.§2!4§ = param1.toUpperCase();
         this.§+#F§ = param2;
         this.§[#W§ = param3;
         this.§9!$§ = param4;
         this.§@!B§ = param5;
         this.§5!=§ = param6;
         this.§3![§ = param7;
         this.§ #G§ = param8;
      }
      
      public static function §8%§(param1:String) : int
      {
         switch(param1.toLowerCase())
         {
            case "kinetic":
               return § !-§;
            case "static":
               return §&M§;
            case "dynamic":
               return §=G§;
            default:
               throw new Error("Invalid body type \'" + param1 + "\'. Expected \'kinetic\', \'static\' or \'dynamic\'.");
         }
      }
      
      public function get name() : String
      {
         return this.§2!4§;
      }
      
      public function get bodyType() : int
      {
         return this.§+#F§;
      }
      
      public function get density() : Number
      {
         return this.§[#W§;
      }
      
      public function get friction() : Number
      {
         return this.§9!$§;
      }
      
      public function get restitution() : Number
      {
         return this.§@!B§;
      }
      
      public function get strength() : Number
      {
         return this.§5!=§;
      }
      
      public function get defence() : Number
      {
         return this.§3![§;
      }
      
      public function get colors() : Number
      {
         return this.§ #G§;
      }
      
      public function §'#?§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§^!@§)
         {
            return;
         }
         this.§^!@§ = new §'"R§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§+"n§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §+"n§(param1:String, param2:Number) : void
      {
         if(this.§^!@§ == null)
         {
            this.§^!@§ = new §'"R§();
         }
         param1 = param1.toUpperCase();
         if(this.§^!@§[param1] == null)
         {
            this.§^!@§[param1] = param2;
         }
      }
      
      public function §3"^§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§=!N§)
         {
            return;
         }
         this.§=!N§ = new §'"R§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§4#z§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §4#z§(param1:String, param2:Number) : void
      {
         if(this.§=!N§ == null)
         {
            this.§=!N§ = new §'"R§();
         }
         param1 = param1.toUpperCase();
         if(this.§=!N§[param1] == null)
         {
            this.§=!N§[param1] = param2;
         }
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         if(this.§^!@§ && this.§^!@§[param1])
         {
            return this.§^!@§[param1];
         }
         return 1;
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         if(this.§=!N§ && this.§=!N§[param1])
         {
            return this.§=!N§[param1];
         }
         return 1;
      }
      
      public function §3"&§() : Boolean
      {
         return this.§+#F§ == §^#A§.§&M§;
      }
   }
}
