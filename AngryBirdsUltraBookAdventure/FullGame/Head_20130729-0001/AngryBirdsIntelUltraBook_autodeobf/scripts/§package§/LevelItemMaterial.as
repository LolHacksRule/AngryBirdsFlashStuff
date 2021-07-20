package §package§
{
   import §<u§.Log;
   import §>!L§.b2Body;
   
   public class LevelItemMaterial
   {
      
      public static const §+o§:int = 0;
      
      public static const §>s§:int = b2Body.b2_staticBody;
      
      public static const §#!L§:int = b2Body.b2_kinematicBody;
      
      public static const §>!+§:int = b2Body.b2_dynamicBody;
      
      public static const §+v§:int = 1;
      
      public static const §@L§:int = 2;
      
      public static const §'!A§:int = 3;
      
      public static const §4^§:int = 4;
      
      public static const §]!3§:int = 5;
      
      public static const §"W§:int = 6;
       
      
      public var mName:String;
      
      public var §>q§:Array;
      
      public var §9W§:Array;
      
      public var §8!M§:Array;
      
      public function LevelItemMaterial(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§>q§ = new Array();
         this.§>q§[§+o§] = this.§++§(param2);
         this.§>q§[§+v§] = param3;
         this.§>q§[§@L§] = param4;
         this.§>q§[§'!A§] = param5;
         this.§>q§[§4^§] = param6;
         this.§>q§[§]!3§] = param7;
         this.§>q§[§"W§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§>q§[param1];
      }
      
      private function §++§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §#!L§;
         }
         if(param1.toLowerCase() == "static")
         {
            return §>s§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §>!+§;
         }
         Log.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §>s§;
      }
      
      public function §9a§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§9W§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§9W§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §2C§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§8!M§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§8!M§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §<C§(param1:String) : Number
      {
         if(!this.§9W§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§9W§[param1])
         {
            return this.§9W§[param1];
         }
         return 1;
      }
      
      public function §>;§(param1:String) : Number
      {
         if(!this.§8!M§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§8!M§[param1])
         {
            return this.§8!M§[param1];
         }
         return 1;
      }
   }
}
