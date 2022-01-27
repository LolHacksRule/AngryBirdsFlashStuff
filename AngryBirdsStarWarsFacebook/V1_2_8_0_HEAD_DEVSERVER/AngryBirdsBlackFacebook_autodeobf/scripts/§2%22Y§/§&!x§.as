package §2"Y§
{
   import §+#$§.b2Body;
   import §1!i§.§,#_§;
   
   public class §&!x§
   {
      
      public static const §&#_§:int = b2Body.b2_staticBody;
      
      public static const §!U§:int = b2Body.b2_kinematicBody;
      
      public static const §7!B§:int = b2Body.b2_dynamicBody;
       
      
      protected var mName:String;
      
      protected var §<q§:int;
      
      protected var §9!]§:Number;
      
      protected var § "E§:Number;
      
      protected var §>",§:Number;
      
      protected var §>!5§:Number;
      
      protected var §4O§:Number;
      
      protected var §0!'§:Number;
      
      protected var §5#8§:§,#_§;
      
      protected var §'#V§:§,#_§;
      
      public function §&!x§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1.toUpperCase();
         this.§<q§ = param2;
         this.§9!]§ = param3;
         this.§ "E§ = param4;
         this.§>",§ = param5;
         this.§>!5§ = param6;
         this.§4O§ = param7;
         this.§0!'§ = param8;
      }
      
      public static function §3"K§(param1:String) : int
      {
         switch(param1.toLowerCase())
         {
            case "kinetic":
               return §!U§;
            case "static":
               return §&#_§;
            case "dynamic":
               return §7!B§;
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
         return this.§<q§;
      }
      
      public function get density() : Number
      {
         return this.§9!]§;
      }
      
      public function get friction() : Number
      {
         return this.§ "E§;
      }
      
      public function get restitution() : Number
      {
         return this.§>",§;
      }
      
      public function get strength() : Number
      {
         return this.§>!5§;
      }
      
      public function get defence() : Number
      {
         return this.§4O§;
      }
      
      public function get colors() : Number
      {
         return this.§0!'§;
      }
      
      public function §'"Z§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§5#8§)
         {
            return;
         }
         this.§5#8§ = new §,#_§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§>"I§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §>"I§(param1:String, param2:Number) : void
      {
         if(this.§5#8§ == null)
         {
            this.§5#8§ = new §,#_§();
         }
         param1 = param1.toUpperCase();
         if(this.§5#8§[param1] == null)
         {
            this.§5#8§[param1] = param2;
         }
      }
      
      public function §&"!§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§'#V§)
         {
            return;
         }
         this.§'#V§ = new §,#_§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§3"R§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §3"R§(param1:String, param2:Number) : void
      {
         if(this.§'#V§ == null)
         {
            this.§'#V§ = new §,#_§();
         }
         param1 = param1.toUpperCase();
         if(this.§'#V§[param1] == null)
         {
            this.§'#V§[param1] = param2;
         }
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         if(this.§5#8§ && this.§5#8§[param1])
         {
            return this.§5#8§[param1];
         }
         return 1;
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         if(this.§'#V§ && this.§'#V§[param1])
         {
            return this.§'#V§[param1];
         }
         return 1;
      }
      
      public function §]"7§() : Boolean
      {
         return this.§<q§ == §&!x§.§&#_§;
      }
   }
}
