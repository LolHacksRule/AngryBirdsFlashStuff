package §9!#§
{
   import §?!8§.§2>§;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §-!'§
   {
      
      public static const §2s§:int = 0;
      
      public static const §6^§:int = b2Body.b2_staticBody;
      
      public static const §<I§:int = b2Body.b2_kinematicBody;
      
      public static const §",§:int = b2Body.b2_dynamicBody;
      
      public static const §>"§:int = 1;
      
      public static const §[-§:int = 2;
      
      public static const §@!&§:int = 3;
      
      public static const §2!7§:int = 4;
      
      public static const §throw§:int = 5;
      
      public static const §-'§:int = 6;
       
      
      public var mName:String;
      
      public var mValues:Array;
      
      public var §5c§:Array;
      
      public var §class§:Array;
      
      public function §-!'§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.mValues = new Array();
         this.mValues[§2s§] = this.§3x§(param2);
         this.mValues[§>"§] = param3;
         this.mValues[§[-§] = param4;
         this.mValues[§@!&§] = param5;
         this.mValues[§2!7§] = param6;
         this.mValues[§throw§] = param7;
         this.mValues[§-'§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.mValues[param1];
      }
      
      private function §3x§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §<I§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §6^§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §",§;
         }
         §2>§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §6^§;
      }
      
      public function §#r§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§5c§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§5c§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §1@§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§class§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§class§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §?n§(param1:String) : Number
      {
         if(!this.§5c§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§5c§[param1])
         {
            return this.§5c§[param1];
         }
         return 1;
      }
      
      public function §-!8§(param1:String) : Number
      {
         if(!this.§class§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§class§[param1])
         {
            return this.§class§[param1];
         }
         return 1;
      }
   }
}
