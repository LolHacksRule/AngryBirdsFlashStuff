package §'d§
{
   import §!6§.§3!5§;
   import com.rovio.Box2D.Dynamics.b2Body;
   
   public class §4v§
   {
      
      public static const §^!M§:int = 0;
      
      public static const §3%§:int = b2Body.b2_staticBody;
      
      public static const §1! §:int = b2Body.b2_kinematicBody;
      
      public static const §4Q§:int = b2Body.b2_dynamicBody;
      
      public static const §>!@§:int = 1;
      
      public static const §>!3§:int = 2;
      
      public static const §`A§:int = 3;
      
      public static const §1!8§:int = 4;
      
      public static const §`H§:int = 5;
      
      public static const §>I§:int = 6;
       
      
      public var mName:String;
      
      public var §[O§:Array;
      
      public var §2!E§:Array;
      
      public var §3!@§:Array;
      
      public function §4v§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         super();
         this.mName = param1;
         this.§[O§ = new Array();
         this.§[O§[§^!M§] = this.§98§(param2);
         this.§[O§[§>!@§] = param3;
         this.§[O§[§>!3§] = param4;
         this.§[O§[§`A§] = param5;
         this.§[O§[§1!8§] = param6;
         this.§[O§[§`H§] = param7;
         this.§[O§[§>I§] = param8;
      }
      
      public function getValue(param1:int) : *
      {
         return this.§[O§[param1];
      }
      
      private function §98§(param1:String) : int
      {
         if(param1.toLowerCase() == "kinetic")
         {
            return §1! §;
         }
         if(param1.toLowerCase() == "static")
         {
            return §3%§;
         }
         if(param1.toLowerCase() == "dynamic")
         {
            return §4Q§;
         }
         §3!5§.log("WARNING LevelItemMaterial has invalid Body Type, name = " + this.mName + " invalid name = " + param1);
         return §3%§;
      }
      
      public function §+W§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§2!E§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§2!E§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §%O§(param1:XML) : void
      {
         var _loc3_:String = null;
         var _loc4_:Number = NaN;
         this.§3!@§ = new Array();
         var _loc2_:int = 0;
         while(_loc2_ < param1.attributes().length())
         {
            _loc3_ = param1.attributes()[_loc2_].name();
            _loc4_ = param1.attributes()[_loc2_];
            this.§3!@§[_loc3_.toUpperCase()] = _loc4_;
            _loc2_++;
         }
      }
      
      public function §6I§(param1:String) : Number
      {
         if(!this.§2!E§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§2!E§[param1])
         {
            return this.§2!E§[param1];
         }
         return 1;
      }
      
      public function §,&§(param1:String) : Number
      {
         if(!this.§3!@§)
         {
            return 1;
         }
         param1 = param1.toUpperCase();
         if(this.§3!@§[param1])
         {
            return this.§3!@§[param1];
         }
         return 1;
      }
   }
}
