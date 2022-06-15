package §%Q§
{
   import §48§.b2Body;
   import §6o§.§+!k§;
   
   public class §9!n§
   {
      
      public static const §+t§:int = 0;
      
      public static const §'f§:int = b2Body.b2_staticBody;
      
      public static const §&k§:int = b2Body.b2_kinematicBody;
      
      public static const §;>§:int = b2Body.b2_dynamicBody;
      
      public static const §4!,§:int = 1;
      
      public static const §#!_§:int = 2;
      
      public static const §5"-§:int = 3;
      
      public static const §^!L§:int = 4;
      
      public static const § &§:int = 5;
      
      public static const §3!g§:int = 6;
       
      
      public var mName:String;
      
      public var mValues:Array;
      
      public var §@u§:Array;
      
      public var §>!G§:Array;
      
      public function §9!n§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.mValues = new Array();
         this.mValues[§+t§] = this.§`x§(param2);
         this.mValues[§4!,§] = param3;
         this.mValues[§#!_§] = param4;
         this.mValues[§5"-§] = param5;
         this.mValues[§^!L§] = param6;
         this.mValues[§ &§] = param7;
         this.mValues[§3!g§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.mValues[param1];
      }
      
      private function §`x§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §&k§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §'f§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §;>§;
         }
         §+!k§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §'f§;
      }
      
      public function §&!T§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§@u§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§@u§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §2"&§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§>!G§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§>!G§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §>!s§(param1:String) : Number
      {
         if(!this.§@u§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§@u§[param1])
         {
            return this.§@u§[param1];
         }
         return 1;
      }
      
      public function §]!%§(param1:String) : Number
      {
         if(!this.§>!G§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§>!G§[param1])
         {
            return this.§>!G§[param1];
         }
         return 1;
      }
   }
}
