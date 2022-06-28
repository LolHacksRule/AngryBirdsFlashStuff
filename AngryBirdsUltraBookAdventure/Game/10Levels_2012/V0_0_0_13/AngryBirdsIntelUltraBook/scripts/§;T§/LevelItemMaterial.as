package §;T§
{
   import §6b§.Log;
   import §]=§.b2Body;
   
   public class LevelItemMaterial
   {
      
      public static const §&y§:int = 0;
      
      public static const §!!&§:int = b2Body.b2_staticBody;
      
      public static const § 1§:int = b2Body.b2_kinematicBody;
      
      public static const §9p§:int = b2Body.b2_dynamicBody;
      
      public static const §<[§:int = 1;
      
      public static const §=O§:int = 2;
      
      public static const §+a§:int = 3;
      
      public static const §,j§:int = 4;
      
      public static const §0y§:int = 5;
      
      public static const §@F§:int = 6;
       
      
      public var mName:String;
      
      public var §"!I§:Array;
      
      public var §`!P§:Array;
      
      public var §+!J§:Array;
      
      public function LevelItemMaterial(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§"!I§ = new Array();
         this.§"!I§[§&y§] = this.§3!]§(param2);
         this.§"!I§[§<[§] = param3;
         this.§"!I§[§=O§] = param4;
         this.§"!I§[§+a§] = param5;
         this.§"!I§[§,j§] = param6;
         this.§"!I§[§0y§] = param7;
         this.§"!I§[§@F§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§"!I§[param1];
      }
      
      private function §3!]§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return § 1§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §!!&§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §9p§;
         }
         Log.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §!!&§;
      }
      
      public function § !X§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§`!P§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§`!P§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §`p§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§+!J§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§+!J§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function override(param1:String) : Number
      {
         if(!this.§`!P§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§`!P§[param1])
         {
            return this.§`!P§[param1];
         }
         return 1;
      }
      
      public function §`2§(param1:String) : Number
      {
         if(!this.§+!J§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§+!J§[param1])
         {
            return this.§+!J§[param1];
         }
         return 1;
      }
   }
}
