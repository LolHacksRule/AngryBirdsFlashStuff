package §1!d§
{
   import §1y§.*;
   
   public class §9m§
   {
      
      public static const §#!7§:Function = §7,§.easeIn;
      
      public static const §%§:Function = §'a§.easeIn;
      
      public static const §^!I§:Function = §'a§.easeOut;
      
      public static const §5?§:Function = §5!f§.easeOut;
      
      public static const §'!;§:Function = §5!f§.easeIn;
      
      public static const §[§:Function = §!X§.easeOut;
      
      public static const §&f§:Function = §!X§.easeIn;
      
      public static const §4`§:Function = §#!Q§.easeOut;
      
      public static const §7l§:Function = §#!Q§.easeIn;
      
      private static var §=!7§:§9m§;
       
      
      protected var §4!h§:Vector.<§<!V§>;
      
      protected var §7!e§:Boolean;
      
      protected var §!!%§:Boolean = true;
      
      public function §9m§()
      {
         this.§4!h§ = new Vector.<§<!V§>();
         super();
      }
      
      public static function get §?! §() : §9m§
      {
         if(!§=!7§)
         {
            §=!7§ = new §9m§();
         }
         return §=!7§;
      }
      
      public function set §`!X§(param1:Boolean) : void
      {
         this.§!!%§ = param1;
      }
      
      public function §[!1§() : void
      {
         var _loc2_:§<!V§ = null;
         var _loc1_:int = this.§4!h§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§4!h§[_loc1_];
            if(_loc2_.§92§)
            {
               this.§4!h§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §]C§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §<!V§
      {
         param5 = param5 || §7,§.easeIn;
         var _loc6_:§5@§;
         (_loc6_ = new §5@§(param1,param2,param3,param4,param5)).§`!X§ = this.§!!%§;
         this.§4!h§.push(_loc6_);
         return _loc6_;
      }
      
      public function §7!@§(... rest) : §<!V§
      {
         var _loc2_:§@!7§ = null;
         var _loc3_:§2![§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§4!h§.indexOf(_loc2_);
            this.§4!h§.splice(_loc4_,1);
         }
         _loc3_ = new §2![§(rest,true);
         _loc3_.§`!X§ = this.§!!%§;
         this.§4!h§.push(_loc3_);
         return _loc3_;
      }
      
      public function §9w§(... rest) : §<!V§
      {
         var _loc2_:§@!7§ = null;
         var _loc3_:§2![§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§4!h§.indexOf(_loc2_);
            this.§4!h§.splice(_loc4_,1);
         }
         _loc3_ = new §2![§(rest,false);
         _loc3_.§`!X§ = this.§!!%§;
         this.§4!h§.push(_loc3_);
         return _loc3_;
      }
      
      public function §?p§() : void
      {
         this.§7!e§ = true;
      }
      
      public function §3!H§() : void
      {
         this.§7!e§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§<!V§ = null;
         if(this.§7!e§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§4!h§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§4!h§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§4!h§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
