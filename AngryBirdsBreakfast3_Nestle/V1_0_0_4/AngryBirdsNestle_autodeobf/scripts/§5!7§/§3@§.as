package §5!7§
{
   import §9"5§.b2Body;
   import §`6§.§6!x§;
   
   public class §3@§
   {
      
      public static const §1!5§:int = b2Body.b2_staticBody;
      
      public static const §-3§:int = b2Body.b2_kinematicBody;
      
      public static const §"!Z§:int = b2Body.b2_dynamicBody;
       
      
      protected var mName:String;
      
      protected var §9"1§:int;
      
      protected var §]!O§:Number;
      
      protected var §'a§:Number;
      
      protected var §]!n§:Number;
      
      protected var §+!M§:Number;
      
      protected var §3N§:Number;
      
      protected var §%_§:Number;
      
      protected var §^!t§:§6!x§;
      
      protected var §[f§:§6!x§;
      
      public function §3@§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1.toUpperCase();
         this.§9"1§ = param2;
         this.§]!O§ = param3;
         this.§'a§ = param4;
         this.§]!n§ = param5;
         this.§+!M§ = param6;
         this.§3N§ = param7;
         this.§%_§ = param8;
      }
      
      public static function §]!F§(param1:String) : int
      {
         switch(param1.toLowerCase())
         {
            case "kinetic":
               return §-3§;
            case "static":
               return §1!5§;
            case "dynamic":
               return §"!Z§;
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
         return this.§9"1§;
      }
      
      public function get density() : Number
      {
         return this.§]!O§;
      }
      
      public function get friction() : Number
      {
         return this.§'a§;
      }
      
      public function get restitution() : Number
      {
         return this.§]!n§;
      }
      
      public function get strength() : Number
      {
         return this.§+!M§;
      }
      
      public function get defence() : Number
      {
         return this.§3N§;
      }
      
      public function get colors() : Number
      {
         return this.§%_§;
      }
      
      public function §4!P§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§^!t§)
         {
            return;
         }
         this.§^!t§ = new §6!x§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§ !Q§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function § !Q§(param1:String, param2:Number) : void
      {
         if(this.§^!t§ == null)
         {
            this.§^!t§ = new §6!x§();
         }
         param1 = param1.toUpperCase();
         if(this.§^!t§[param1] == null)
         {
            this.§^!t§[param1] = param2;
         }
      }
      
      public function §1l§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§[f§)
         {
            return;
         }
         this.§[f§ = new §6!x§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§#!V§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §#!V§(param1:String, param2:Number) : void
      {
         if(this.§[f§ == null)
         {
            this.§[f§ = new §6!x§();
         }
         param1 = param1.toUpperCase();
         if(this.§[f§[param1] == null)
         {
            this.§[f§[param1] = param2;
         }
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         if(this.§^!t§ && this.§^!t§[param1])
         {
            return this.§^!t§[param1];
         }
         return 1;
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         if(this.§[f§ && this.§[f§[param1])
         {
            return this.§[f§[param1];
         }
         return 1;
      }
      
      public function §,!]§() : Boolean
      {
         return this.§9"1§ == §3@§.§1!5§;
      }
   }
}
