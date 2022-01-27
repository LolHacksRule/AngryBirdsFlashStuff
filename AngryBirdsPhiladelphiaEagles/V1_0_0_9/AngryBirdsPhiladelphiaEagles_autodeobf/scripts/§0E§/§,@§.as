package §0E§
{
   import §"1§.§3'§;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §,@§
   {
      
      public static const §=!$§:int = 0;
      
      public static const §+! §:int = b2Body.b2_staticBody;
      
      public static const §>x§:int = b2Body.b2_kinematicBody;
      
      public static const §?u§:int = b2Body.b2_dynamicBody;
      
      public static const §]<§:int = 1;
      
      public static const §&k§:int = 2;
      
      public static const §2a§:int = 3;
      
      public static const §05§:int = 4;
      
      public static const §-!I§:int = 5;
      
      public static const §--§:int = 6;
       
      
      public var mName:String;
      
      public var §`E§:Array;
      
      public var §6>§:Array;
      
      public var §6! §:Array;
      
      public function §,@§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§`E§ = new Array();
         this.§`E§[§=!$§] = this.§>W§(param2);
         this.§`E§[§]<§] = param3;
         this.§`E§[§&k§] = param4;
         this.§`E§[§2a§] = param5;
         this.§`E§[§05§] = param6;
         this.§`E§[§-!I§] = param7;
         this.§`E§[§--§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§`E§[param1];
      }
      
      private function §>W§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §>x§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §+! §;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §?u§;
         }
         §3'§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §+! §;
      }
      
      public function §50§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§6>§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§6>§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §]-§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§6! § = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§6! §[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §<T§(param1:String) : Number
      {
         if(!this.§6>§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§6>§[param1])
         {
            return this.§6>§[param1];
         }
         return 1;
      }
      
      public function § ^§(param1:String) : Number
      {
         if(!this.§6! §)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§6! §[param1])
         {
            return this.§6! §[param1];
         }
         return 1;
      }
   }
}
