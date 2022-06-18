package §<!<§
{
   import §3v§.§1a§;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §>2§
   {
      
      public static const §,N§:int = 0;
      
      public static const §"I§:int = b2Body.b2_staticBody;
      
      public static const §'!=§:int = b2Body.b2_kinematicBody;
      
      public static const §2S§:int = b2Body.b2_dynamicBody;
      
      public static const §9d§:int = 1;
      
      public static const § if§:int = 2;
      
      public static const §0`§:int = 3;
      
      public static const §7]§:int = 4;
      
      public static const §9!1§:int = 5;
      
      public static const §]!#§:int = 6;
       
      
      public var mName:String;
      
      public var §+!!§:Array;
      
      public var §,B§:Array;
      
      public var §0W§:Array;
      
      public function §>2§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§+!!§ = new Array();
         this.§+!!§[§,N§] = this.§`!=§(param2);
         this.§+!!§[§9d§] = param3;
         this.§+!!§[§ if§] = param4;
         this.§+!!§[§0`§] = param5;
         this.§+!!§[§7]§] = param6;
         this.§+!!§[§9!1§] = param7;
         this.§+!!§[§]!#§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§+!!§[param1];
      }
      
      private function §`!=§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §'!=§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §"I§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §2S§;
         }
         §1a§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §"I§;
      }
      
      public function §for §(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§,B§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§,B§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §%9§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§0W§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§0W§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §]s§(param1:String) : Number
      {
         if(!this.§,B§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§,B§[param1])
         {
            return this.§,B§[param1];
         }
         return 1;
      }
      
      public function §3!=§(param1:String) : Number
      {
         if(!this.§0W§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§0W§[param1])
         {
            return this.§0W§[param1];
         }
         return 1;
      }
   }
}
