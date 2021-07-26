package §2E§
{
   import §'6§.§?!L§;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §5!8§
   {
      
      public static const §4!4§:int = 0;
      
      public static const §&-§:int = b2Body.b2_staticBody;
      
      public static const §;!9§:int = b2Body.b2_kinematicBody;
      
      public static const §6_§:int = b2Body.b2_dynamicBody;
      
      public static const §+e§:int = 1;
      
      public static const §<A§:int = 2;
      
      public static const §?i§:int = 3;
      
      public static const §]z§:int = 4;
      
      public static const §12§:int = 5;
      
      public static const §[>§:int = 6;
       
      
      public var mName:String;
      
      public var mValues:Array;
      
      public var §<!&§:Array;
      
      public var §#!A§:Array;
      
      public function §5!8§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.mValues = new Array();
         this.mValues[§4!4§] = this.§+!J§(param2);
         this.mValues[§+e§] = param3;
         this.mValues[§<A§] = param4;
         this.mValues[§?i§] = param5;
         this.mValues[§]z§] = param6;
         this.mValues[§12§] = param7;
         this.mValues[§[>§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.mValues[param1];
      }
      
      private function §+!J§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §;!9§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §&-§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §6_§;
         }
         §?!L§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §&-§;
      }
      
      public function §[!9§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§<!&§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§<!&§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §%!;§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§#!A§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§#!A§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §4[§(param1:String) : Number
      {
         if(!this.§<!&§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§<!&§[param1])
         {
            return this.§<!&§[param1];
         }
         return 1;
      }
      
      public function §8m§(param1:String) : Number
      {
         if(!this.§#!A§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§#!A§[param1])
         {
            return this.§#!A§[param1];
         }
         return 1;
      }
   }
}
