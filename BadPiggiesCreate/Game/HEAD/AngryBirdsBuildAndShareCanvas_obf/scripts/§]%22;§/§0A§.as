package §]";§
{
   import §"J§.b2Body;
   import §6]§.§,"0§;
   
   public class §0A§
   {
      
      public static const §!"3§:int = 0;
      
      public static const §7"=§:int = b2Body.b2_staticBody;
      
      public static const §6g§:int = b2Body.b2_kinematicBody;
      
      public static const §<!#§:int = b2Body.b2_dynamicBody;
      
      public static const §3U§:int = 1;
      
      public static const §8!@§:int = 2;
      
      public static const §4&§:int = 3;
      
      public static const §'>§:int = 4;
      
      public static const §1a§:int = 5;
      
      public static const §`!l§:int = 6;
       
      
      public var mName:String;
      
      public var mValues:Array;
      
      public var §@]§:Array;
      
      public var §4p§:Array;
      
      public function §0A§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.mValues = new Array();
         this.mValues[§!"3§] = this.§#!p§(param2);
         this.mValues[§3U§] = param3;
         this.mValues[§8!@§] = param4;
         this.mValues[§4&§] = param5;
         this.mValues[§'>§] = param6;
         this.mValues[§1a§] = param7;
         this.mValues[§`!l§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.mValues[param1];
      }
      
      private function §#!p§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §6g§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §7"=§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §<!#§;
         }
         §,"0§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §7"=§;
      }
      
      public function §#S§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§@]§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§@]§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §9'§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§4p§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§4p§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §7!D§(param1:String) : Number
      {
         if(!this.§@]§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§@]§[param1])
         {
            return this.§@]§[param1];
         }
         return 1;
      }
      
      public function §^y§(param1:String) : Number
      {
         if(!this.§4p§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§4p§[param1])
         {
            return this.§4p§[param1];
         }
         return 1;
      }
   }
}
