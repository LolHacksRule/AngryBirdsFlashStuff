package §;"=§
{
   import §#!X§.b2Body;
   import §'#§.§?u§;
   
   public class §"!=§
   {
      
      public static const §]">§:int = b2Body.b2_staticBody;
      
      public static const §8!O§:int = b2Body.b2_kinematicBody;
      
      public static const §>!B§:int = b2Body.b2_dynamicBody;
       
      
      protected var mName:String;
      
      protected var §&"6§:int;
      
      protected var §7!&§:Number;
      
      protected var §;!5§:Number;
      
      protected var §@"!§:Number;
      
      protected var §9!`§:Number;
      
      protected var §^!^§:Number;
      
      protected var §%!H§:Number;
      
      protected var §+1§:§?u§;
      
      protected var §`"&§:§?u§;
      
      public function §"!=§(param1:String, param2:int, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1.toUpperCase();
         this.§&"6§ = param2;
         this.§7!&§ = param3;
         this.§;!5§ = param4;
         this.§@"!§ = param5;
         this.§9!`§ = param6;
         this.§^!^§ = param7;
         this.§%!H§ = param8;
      }
      
      public static function §7H§(param1:String) : int
      {
         switch(param1.toLowerCase())
         {
            case "kinetic":
               return §8!O§;
            case "static":
               return §]">§;
            case "dynamic":
               return §>!B§;
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
         return this.§&"6§;
      }
      
      public function get density() : Number
      {
         return this.§7!&§;
      }
      
      public function get friction() : Number
      {
         return this.§;!5§;
      }
      
      public function get restitution() : Number
      {
         return this.§@"!§;
      }
      
      public function get strength() : Number
      {
         return this.§9!`§;
      }
      
      public function get defence() : Number
      {
         return this.§^!^§;
      }
      
      public function get colors() : Number
      {
         return this.§%!H§;
      }
      
      public function §?!s§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§+1§)
         {
            return;
         }
         this.§+1§ = new §?u§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§,r§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §,r§(param1:String, param2:Number) : void
      {
         if(this.§+1§ == null)
         {
            this.§+1§ = new §?u§();
         }
         param1 = param1.toUpperCase();
         if(this.§+1§[param1] == null)
         {
            this.§+1§[param1] = param2;
         }
      }
      
      public function §[" §(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         if(this.§`"&§)
         {
            return;
         }
         this.§`"&§ = new §?u§();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§=U§(_loc3_,_loc4_);
            _loc2_++;
         }
      }
      
      public function §=U§(param1:String, param2:Number) : void
      {
         if(this.§`"&§ == null)
         {
            this.§`"&§ = new §?u§();
         }
         param1 = param1.toUpperCase();
         if(this.§`"&§[param1] == null)
         {
            this.§`"&§[param1] = param2;
         }
      }
      
      public function getDamageMultiplier(param1:String) : Number
      {
         if(this.§+1§ && this.§+1§[param1])
         {
            return this.§+1§[param1];
         }
         return 1;
      }
      
      public function getVelocityMultiplier(param1:String) : Number
      {
         if(this.§`"&§ && this.§`"&§[param1])
         {
            return this.§`"&§[param1];
         }
         return 1;
      }
      
      public function §4"%§() : Boolean
      {
         return this.§&"6§ == §"!=§.§]">§;
      }
   }
}
