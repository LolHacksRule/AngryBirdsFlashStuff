package §2!"§
{
   import §'m§.§^S§;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class § ^§
   {
      
      public static const §=T§:int = 0;
      
      public static const §;h§:int = b2Body.b2_staticBody;
      
      public static const §97§:int = b2Body.b2_kinematicBody;
      
      public static const §7J§:int = b2Body.b2_dynamicBody;
      
      public static const §!H§:int = 1;
      
      public static const §8I§:int = 2;
      
      public static const §^^§:int = 3;
      
      public static const §,Y§:int = 4;
      
      public static const §6u§:int = 5;
      
      public static const § !#§:int = 6;
       
      
      public var mName:String;
      
      public var §^!D§:Array;
      
      public var §]!=§:Array;
      
      public var §^N§:Array;
      
      public function § ^§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§^!D§ = new Array();
         this.§^!D§[§=T§] = this.§4!4§(param2);
         this.§^!D§[§!H§] = param3;
         this.§^!D§[§8I§] = param4;
         this.§^!D§[§^^§] = param5;
         this.§^!D§[§,Y§] = param6;
         this.§^!D§[§6u§] = param7;
         this.§^!D§[§ !#§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§^!D§[param1];
      }
      
      private function §4!4§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §97§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §;h§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §7J§;
         }
         §^S§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §;h§;
      }
      
      public function §<-§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§]!=§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§]!=§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §<!%§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§^N§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§^N§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §'!8§(param1:String) : Number
      {
         if(!this.§]!=§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§]!=§[param1])
         {
            return this.§]!=§[param1];
         }
         return 1;
      }
      
      public function §=E§(param1:String) : Number
      {
         if(!this.§^N§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§^N§[param1])
         {
            return this.§^N§[param1];
         }
         return 1;
      }
   }
}
