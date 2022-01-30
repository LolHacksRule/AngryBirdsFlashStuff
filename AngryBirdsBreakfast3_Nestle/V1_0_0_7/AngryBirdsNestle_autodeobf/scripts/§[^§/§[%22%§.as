package §[^§
{
   import §!!&§.§4!7§;
   import §0!j§.b2Body;
   
   public class §["%§
   {
      
      public static const §2!W§:int = b2Body.b2_staticBody;
      
      public static const §&!&§:int = b2Body.b2_kinematicBody;
      
      public static const §^!X§:int = b2Body.b2_dynamicBody;
       
      
      protected var mName:String;
      
      protected var §"8§:int;
      
      protected var §+#§:Number;
      
      protected var §<!4§:Number;
      
      protected var §,u§:Number;
      
      protected var §3^§:Number;
      
      protected var §2!$§:Number;
      
      protected var §=Y§:Number;
      
      protected var §9!v§:§4!7§;
      
      protected var §26§:§4!7§;
      
      public function §["%§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1.toUpperCase();
         this.§"8§ = param2;
         this.§+#§ = param3;
         this.§<!4§ = param4;
         this.§,u§ = param5;
         this.§3^§ = param6;
         this.§2!$§ = param7;
         this.§=Y§ = param8;
      }
      
      public static function §<2§(param1:String) : int
      {
         switch(param1.toLowerCase())
         {
            case "kinetic":
               return §&!&§;
            case "static":
               return §2!W§;
            case "dynamic":
               return §^!X§;
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
         return this.§"8§;
      }
      
      public function get density() : Number
      {
         return this.§+#§;
      }
      
      public function get friction() : Number
      {
         return this.§<!4§;
      }
      
      public function get restitution() : Number
      {
         return this.§,u§;
      }
      
      public function get strength() : Number
      {
         return this.§3^§;
      }
      
      public function get defence() : Number
      {
         return this.§2!$§;
      }
      
      public function get colors() : Number
      {
         return this.§=Y§;
      }
      
      public function §<!s§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§9!v§)
         {
            return;
         }
         this.§9!v§ = new §4!7§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§8!;§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §8!;§(param1:String, param2:Number) : void
      {
         if(this.§9!v§ == null)
         {
            this.§9!v§ = new §4!7§();
         }
         param1 = param1.toUpperCase();
         if(this.§9!v§[param1] == null)
         {
            this.§9!v§[param1] = param2;
         }
      }
      
      public function §!J§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§26§)
         {
            return;
         }
         this.§26§ = new §4!7§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§[!V§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §[!V§(param1:String, param2:Number) : void
      {
         if(this.§26§ == null)
         {
            this.§26§ = new §4!7§();
         }
         param1 = param1.toUpperCase();
         if(this.§26§[param1] == null)
         {
            this.§26§[param1] = param2;
         }
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         if(this.§9!v§ && this.§9!v§[param1])
         {
            return this.§9!v§[param1];
         }
         return 1;
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         if(this.§26§ && this.§26§[param1])
         {
            return this.§26§[param1];
         }
         return 1;
      }
      
      public function §<?§() : Boolean
      {
         return this.§"8§ == §["%§.§2!W§;
      }
   }
}
