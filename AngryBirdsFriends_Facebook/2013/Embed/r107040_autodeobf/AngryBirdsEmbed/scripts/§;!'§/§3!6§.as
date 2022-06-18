package §;!'§
{
   import §@!;§.§!!=§;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §3!6§
   {
      
      public static const §1X§:int = 0;
      
      public static const §+%§:int = b2Body.b2_staticBody;
      
      public static const §7<§:int = b2Body.b2_kinematicBody;
      
      public static const §`O§:int = b2Body.b2_dynamicBody;
      
      public static const §4I§:int = 1;
      
      public static const §;!2§:int = 2;
      
      public static const §6!H§:int = 3;
      
      public static const § Z§:int = 4;
      
      public static const §7-§:int = 5;
      
      public static const §'m§:int = 6;
       
      
      public var mName:String;
      
      public var mValues:Array;
      
      public var §=!E§:Array;
      
      public var §@l§:Array;
      
      public function §3!6§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.mValues = new Array();
         this.mValues[§1X§] = this.§3H§(param2);
         this.mValues[§4I§] = param3;
         this.mValues[§;!2§] = param4;
         this.mValues[§6!H§] = param5;
         this.mValues[§ Z§] = param6;
         this.mValues[§7-§] = param7;
         this.mValues[§'m§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.mValues[param1];
      }
      
      private function §3H§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §7<§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §+%§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §`O§;
         }
         §!!=§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §+%§;
      }
      
      public function §,c§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§=!E§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§=!E§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §2V§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§@l§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§@l§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §>b§(param1:String) : Number
      {
         if(!this.§=!E§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§=!E§[param1])
         {
            return this.§=!E§[param1];
         }
         return 1;
      }
      
      public function §2!C§(param1:String) : Number
      {
         if(!this.§@l§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§@l§[param1])
         {
            return this.§@l§[param1];
         }
         return 1;
      }
   }
}
