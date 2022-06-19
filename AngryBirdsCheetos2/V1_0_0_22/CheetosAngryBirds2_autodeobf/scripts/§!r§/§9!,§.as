package §!r§
{
   import § o§.b2Body;
   import §>^§.§!6§;
   
   public class §9!,§
   {
      
      public static const §7!$§:int = 0;
      
      public static const §;a§:int = b2Body.b2_staticBody;
      
      public static const §2!3§:int = b2Body.b2_kinematicBody;
      
      public static const §!;§:int = b2Body.b2_dynamicBody;
      
      public static const §?!=§:int = 1;
      
      public static const §&b§:int = 2;
      
      public static const §3z§:int = 3;
      
      public static const §^y§:int = 4;
      
      public static const § !0§:int = 5;
      
      public static const §;S§:int = 6;
       
      
      public var mName:String;
      
      public var mValues:Array;
      
      public var §9"§:Array;
      
      public var §+!i§:Array;
      
      public function §9!,§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.mValues = new Array();
         this.mValues[§7!$§] = this.§!!`§(param2);
         this.mValues[§?!=§] = param3;
         this.mValues[§&b§] = param4;
         this.mValues[§3z§] = param5;
         this.mValues[§^y§] = param6;
         this.mValues[§ !0§] = param7;
         this.mValues[§;S§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.mValues[param1];
      }
      
      private function §!!`§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §2!3§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §;a§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §!;§;
         }
         §!6§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §;a§;
      }
      
      public function §%!W§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§9"§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§9"§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §[5§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§+!i§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§+!i§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function § v§(param1:String) : Number
      {
         if(!this.§9"§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§9"§[param1])
         {
            return this.§9"§[param1];
         }
         return 1;
      }
      
      public function §>1§(param1:String) : Number
      {
         if(!this.§+!i§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§+!i§[param1])
         {
            return this.§+!i§[param1];
         }
         return 1;
      }
   }
}
