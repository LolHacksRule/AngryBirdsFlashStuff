package §7!0§
{
   import §+!"§.§5!<§;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §^!%§
   {
      
      public static const § 8§:int = 0;
      
      public static const §@`§:int = b2Body.b2_staticBody;
      
      public static const §+j§:int = b2Body.b2_kinematicBody;
      
      public static const §7n§:int = b2Body.b2_dynamicBody;
      
      public static const §6H§:int = 1;
      
      public static const §,u§:int = 2;
      
      public static const § E§:int = 3;
      
      public static const §-U§:int = 4;
      
      public static const §@!,§:int = 5;
      
      public static const §>!8§:int = 6;
       
      
      public var mName:String;
      
      public var §+!5§:Array;
      
      public var §;!8§:Array;
      
      public var §"§:Array;
      
      public function §^!%§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§+!5§ = new Array();
         this.§+!5§[§ 8§] = this.§;@§(param2);
         this.§+!5§[§6H§] = param3;
         this.§+!5§[§,u§] = param4;
         this.§+!5§[§ E§] = param5;
         this.§+!5§[§-U§] = param6;
         this.§+!5§[§@!,§] = param7;
         this.§+!5§[§>!8§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§+!5§[param1];
      }
      
      private function §;@§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §+j§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §@`§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §7n§;
         }
         §5!<§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §@`§;
      }
      
      public function §#x§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§;!8§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§;!8§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §5!A§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§"§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§"§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §34§(param1:String) : Number
      {
         if(!this.§;!8§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§;!8§[param1])
         {
            return this.§;!8§[param1];
         }
         return 1;
      }
      
      public function §%!7§(param1:String) : Number
      {
         if(!this.§"§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§"§[param1])
         {
            return this.§"§[param1];
         }
         return 1;
      }
   }
}
