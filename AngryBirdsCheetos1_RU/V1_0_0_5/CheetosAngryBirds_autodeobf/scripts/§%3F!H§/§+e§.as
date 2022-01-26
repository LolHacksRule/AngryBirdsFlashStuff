package §?!H§
{
   import §!4§.§=!Z§;
   import §[W§.b2Body;
   
   public class §+e§
   {
      
      public static const §0V§:int = 0;
      
      public static const §!5§:int = b2Body.b2_staticBody;
      
      public static const §?!,§:int = b2Body.b2_kinematicBody;
      
      public static const §;!N§:int = b2Body.b2_dynamicBody;
      
      public static const §+r§:int = 1;
      
      public static const §=W§:int = 2;
      
      public static const §?>§:int = 3;
      
      public static const §>!$§:int = 4;
      
      public static const §1P§:int = 5;
      
      public static const §-1§:int = 6;
       
      
      public var mName:String;
      
      public var §@!5§:Array;
      
      public var §']§:Array;
      
      public var static:Array;
      
      public function §+e§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§@!5§ = new Array();
         this.§@!5§[§0V§] = this.§^8§(param2);
         this.§@!5§[§+r§] = param3;
         this.§@!5§[§=W§] = param4;
         this.§@!5§[§?>§] = param5;
         this.§@!5§[§>!$§] = param6;
         this.§@!5§[§1P§] = param7;
         this.§@!5§[§-1§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§@!5§[param1];
      }
      
      private function §^8§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §?!,§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §!5§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §;!N§;
         }
         §=!Z§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §!5§;
      }
      
      public function §+F§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§']§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§']§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §[s§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.static = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.static[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §&v§(param1:String) : Number
      {
         if(!this.§']§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§']§[param1])
         {
            return this.§']§[param1];
         }
         return 1;
      }
      
      public function §=4§(param1:String) : Number
      {
         if(!this.static)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.static[param1])
         {
            return this.static[param1];
         }
         return 1;
      }
   }
}
