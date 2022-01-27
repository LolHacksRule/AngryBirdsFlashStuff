package §3>§
{
   import §4u§.§5!t§;
   import §9!K§.b2Body;
   
   public class §!4§
   {
      
      public static const §4y§:int = b2Body.b2_staticBody;
      
      public static const §?!F§:int = b2Body.b2_kinematicBody;
      
      public static const §<@§:int = b2Body.b2_dynamicBody;
       
      
      protected var mName:String;
      
      protected var §4!-§:int;
      
      protected var §^]§:Number;
      
      protected var §]!!§:Number;
      
      protected var §!"§:Number;
      
      protected var §3t§:Number;
      
      protected var §^!H§:Number;
      
      protected var §0!n§:Number;
      
      protected var §`q§:§5!t§;
      
      protected var §=!;§:§5!t§;
      
      public function §!4§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1.toUpperCase();
         this.§4!-§ = param2;
         this.§^]§ = param3;
         this.§]!!§ = param4;
         this.§!"§ = param5;
         this.§3t§ = param6;
         this.§^!H§ = param7;
         this.§0!n§ = param8;
      }
      
      public static function §6K§(param1:String) : int
      {
         switch(param1.toLowerCase())
         {
            case "kinetic":
               return §?!F§;
            case "static":
               return §4y§;
            case "dynamic":
               return §<@§;
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
         return this.§4!-§;
      }
      
      public function get density() : Number
      {
         return this.§^]§;
      }
      
      public function get friction() : Number
      {
         return this.§]!!§;
      }
      
      public function get restitution() : Number
      {
         return this.§!"§;
      }
      
      public function get strength() : Number
      {
         return this.§3t§;
      }
      
      public function get defence() : Number
      {
         return this.§^!H§;
      }
      
      public function get colors() : Number
      {
         return this.§0!n§;
      }
      
      public function §@"6§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§`q§)
         {
            return;
         }
         this.§`q§ = new §5!t§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§`!z§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §`!z§(param1:String, param2:Number) : void
      {
         if(this.§`q§ == null)
         {
            this.§`q§ = new §5!t§();
         }
         param1 = param1.toUpperCase();
         if(this.§`q§[param1] == null)
         {
            this.§`q§[param1] = param2;
         }
      }
      
      public function §3&§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§=!;§)
         {
            return;
         }
         this.§=!;§ = new §5!t§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§9b§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §9b§(param1:String, param2:Number) : void
      {
         if(this.§=!;§ == null)
         {
            this.§=!;§ = new §5!t§();
         }
         param1 = param1.toUpperCase();
         if(this.§=!;§[param1] == null)
         {
            this.§=!;§[param1] = param2;
         }
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         if(this.§`q§ && this.§`q§[param1])
         {
            return this.§`q§[param1];
         }
         return 1;
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         if(this.§=!;§ && this.§=!;§[param1])
         {
            return this.§=!;§[param1];
         }
         return 1;
      }
      
      public function §+k§() : Boolean
      {
         return this.§4!-§ == §!4§.§4y§;
      }
   }
}
