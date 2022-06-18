package §,Y§
{
   import §2x§.§'!@§;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §]b§
   {
      
      public static const §8O§:int = 0;
      
      public static const §5!@§:int = b2Body.b2_staticBody;
      
      public static const §&!2§:int = b2Body.b2_kinematicBody;
      
      public static const §'6§:int = b2Body.b2_dynamicBody;
      
      public static const §"]§:int = 1;
      
      public static const §"!A§:int = 2;
      
      public static const §;!3§:int = 3;
      
      public static const §%H§:int = 4;
      
      public static const §-'§:int = 5;
      
      public static const §7!=§:int = 6;
       
      
      public var mName:String;
      
      public var §%b§:Array;
      
      public var § !'§:Array;
      
      public var §1X§:Array;
      
      public function §]b§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§%b§ = new Array();
         this.§%b§[§8O§] = this.§@p§(param2);
         this.§%b§[§"]§] = param3;
         this.§%b§[§"!A§] = param4;
         this.§%b§[§;!3§] = param5;
         this.§%b§[§%H§] = param6;
         this.§%b§[§-'§] = param7;
         this.§%b§[§7!=§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§%b§[param1];
      }
      
      private function §@p§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §&!2§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §5!@§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §'6§;
         }
         §'!@§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §5!@§;
      }
      
      public function §7v§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§ !'§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§ !'§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §^+§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§1X§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§1X§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function § !5§(param1:String) : Number
      {
         if(!this.§ !'§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§ !'§[param1])
         {
            return this.§ !'§[param1];
         }
         return 1;
      }
      
      public function §5b§(param1:String) : Number
      {
         if(!this.§1X§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§1X§[param1])
         {
            return this.§1X§[param1];
         }
         return 1;
      }
   }
}
