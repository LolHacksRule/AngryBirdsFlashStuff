package §@0§
{
   import §3!R§.b2Body;
   import §@R§.§4,§;
   
   public class §56§
   {
      
      public static const §=!W§:int = 0;
      
      public static const §&f§:int = b2Body.b2_staticBody;
      
      public static const §]r§:int = b2Body.b2_kinematicBody;
      
      public static const §?!F§:int = b2Body.b2_dynamicBody;
      
      public static const §get §:int = 1;
      
      public static const §<D§:int = 2;
      
      public static const §#>§:int = 3;
      
      public static const §`![§:int = 4;
      
      public static const §"![§:int = 5;
      
      public static const §1x§:int = 6;
       
      
      public var mName:String;
      
      public var §2!@§:Array;
      
      public var §&@§:Array;
      
      public var §@!5§:Array;
      
      public function §56§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§2!@§ = new Array();
         this.§2!@§[§=!W§] = this.§,b§(param2);
         this.§2!@§[§get §] = param3;
         this.§2!@§[§<D§] = param4;
         this.§2!@§[§#>§] = param5;
         this.§2!@§[§`![§] = param6;
         this.§2!@§[§"![§] = param7;
         this.§2!@§[§1x§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§2!@§[param1];
      }
      
      private function §,b§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §]r§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §&f§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §?!F§;
         }
         §4,§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §&f§;
      }
      
      public function §9!8§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§&@§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§&@§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §#!X§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§@!5§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§@!5§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §[1§(param1:String) : Number
      {
         if(!this.§&@§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§&@§[param1])
         {
            return this.§&@§[param1];
         }
         return 1;
      }
      
      public function §`!F§(param1:String) : Number
      {
         if(!this.§@!5§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§@!5§[param1])
         {
            return this.§@!5§[param1];
         }
         return 1;
      }
   }
}
