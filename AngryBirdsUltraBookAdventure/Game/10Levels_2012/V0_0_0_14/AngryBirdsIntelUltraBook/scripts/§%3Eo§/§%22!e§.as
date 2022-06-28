package §>o§
{
   import § D§.b2Body;
   import §6z§.§[g§;
   
   public class §"!e§
   {
      
      public static const §-R§:int = 0;
      
      public static const §[v§:int = b2Body.b2_staticBody;
      
      public static const §4`§:int = b2Body.b2_kinematicBody;
      
      public static const §1!R§:int = b2Body.b2_dynamicBody;
      
      public static const §4!T§:int = 1;
      
      public static const §7_§:int = 2;
      
      public static const §@v§:int = 3;
      
      public static const §^!2§:int = 4;
      
      public static const §@U§:int = 5;
      
      public static const §71§:int = 6;
       
      
      public var mName:String;
      
      public var §-!j§:Array;
      
      public var §^1§:Array;
      
      public var §?!f§:Array;
      
      public function §"!e§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§-!j§ = new Array();
         this.§-!j§[§-R§] = this.§2!p§(param2);
         this.§-!j§[§4!T§] = param3;
         this.§-!j§[§7_§] = param4;
         this.§-!j§[§@v§] = param5;
         this.§-!j§[§^!2§] = param6;
         this.§-!j§[§@U§] = param7;
         this.§-!j§[§71§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§-!j§[param1];
      }
      
      private function §2!p§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §4`§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §[v§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §1!R§;
         }
         §[g§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §[v§;
      }
      
      public function §5!U§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§^1§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§^1§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §'3§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§?!f§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§?!f§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §]!7§(param1:String) : Number
      {
         if(!this.§^1§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§^1§[param1])
         {
            return this.§^1§[param1];
         }
         return 1;
      }
      
      public function §`!s§(param1:String) : Number
      {
         if(!this.§?!f§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§?!f§[param1])
         {
            return this.§?!f§[param1];
         }
         return 1;
      }
   }
}
