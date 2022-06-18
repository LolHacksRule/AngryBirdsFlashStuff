package §"P§
{
   import §4!&§.b2Body;
   import §=g§.§@!L§;
   
   public class §,!I§
   {
      
      public static const §!x§:int = 0;
      
      public static const §^a§:int = b2Body.b2_staticBody;
      
      public static const §7H§:int = b2Body.b2_kinematicBody;
      
      public static const §,e§:int = b2Body.b2_dynamicBody;
      
      public static const §[!'§:int = 1;
      
      public static const §7>§:int = 2;
      
      public static const §';§:int = 3;
      
      public static const §[!&§:int = 4;
      
      public static const §3p§:int = 5;
      
      public static const §;6§:int = 6;
       
      
      public var mName:String;
      
      public var §6E§:Array;
      
      public var §&v§:Array;
      
      public var §6!_§:Array;
      
      public function §,!I§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§6E§ = new Array();
         this.§6E§[§!x§] = this.§3C§(param2);
         this.§6E§[§[!'§] = param3;
         this.§6E§[§7>§] = param4;
         this.§6E§[§';§] = param5;
         this.§6E§[§[!&§] = param6;
         this.§6E§[§3p§] = param7;
         this.§6E§[§;6§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§6E§[param1];
      }
      
      private function §3C§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §7H§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §^a§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §,e§;
         }
         §@!L§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §^a§;
      }
      
      public function §?!8§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§&v§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§&v§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §^G§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§6!_§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§6!_§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function § K§(param1:String) : Number
      {
         if(!this.§&v§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§&v§[param1])
         {
            return this.§&v§[param1];
         }
         return 1;
      }
      
      public function §+d§(param1:String) : Number
      {
         if(!this.§6!_§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§6!_§[param1])
         {
            return this.§6!_§[param1];
         }
         return 1;
      }
   }
}
