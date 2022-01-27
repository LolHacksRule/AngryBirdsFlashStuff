package §0"g§
{
   import §!"-§.*;
   
   public class §5!%§
   {
      
      public static const §1"a§:Function = §?s§.easeIn;
      
      public static const §!D§:Function = §]"_§.easeIn;
      
      public static const §1!Z§:Function = §]"_§.easeOut;
      
      public static const §@"Y§:Function = set.easeOut;
      
      public static const §?S§:Function = set.easeIn;
      
      public static const §7v§:Function = §=I§.easeOut;
      
      public static const §%#5§:Function = §=I§.easeIn;
      
      public static const §##7§:Function = §#!2§.easeOut;
      
      public static const §="w§:Function = §#!2§.easeIn;
      
      private static var §7o§:§5!%§;
       
      
      protected var §!a§:Vector.<§8"f§>;
      
      protected var §0!z§:Boolean;
      
      protected var §@!>§:Boolean = true;
      
      public function §5!%§()
      {
         this.§!a§ = new Vector.<§8"f§>();
         super();
      }
      
      public static function get §!6§() : §5!%§
      {
         if(!§7o§)
         {
            §7o§ = new §5!%§();
         }
         return §7o§;
      }
      
      public function set §7"k§(param1:Boolean) : void
      {
         this.§@!>§ = param1;
      }
      
      public function §!"K§() : void
      {
         var _loc2_:§8"f§ = null;
         var _loc1_:int = this.§!a§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!a§[_loc1_];
            if(_loc2_.§@%§)
            {
               this.§!a§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §4!M§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §8"f§
      {
         param5 = param5 || §?s§.easeIn;
         var _loc6_:§ 2§;
         (_loc6_ = new § 2§(param1,param2,param3,param4,param5)).§7"k§ = this.§@!>§;
         this.§!a§.push(_loc6_);
         return _loc6_;
      }
      
      public function §!![§(... rest) : §8"f§
      {
         var _loc2_:§8"f§ = null;
         var _loc3_:§2?§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§!a§.indexOf(_loc2_);
            this.§!a§.splice(_loc4_,1);
         }
         _loc3_ = new §2?§(rest,true);
         _loc3_.§7"k§ = this.§@!>§;
         this.§!a§.push(_loc3_);
         return _loc3_;
      }
      
      public function §2!Q§(... rest) : §8"f§
      {
         var _loc2_:§8"f§ = null;
         var _loc3_:§2?§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§!a§.indexOf(_loc2_);
            this.§!a§.splice(_loc4_,1);
         }
         _loc3_ = new §2?§(rest,false);
         _loc3_.§7"k§ = this.§@!>§;
         this.§!a§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§0!z§ = true;
      }
      
      public function resume() : void
      {
         this.§0!z§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§0!z§)
         {
            return;
         }
         if(this.§!a§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§8"f§> = this.§!a§.concat();
         var _loc3_:§8"f§ = null;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc3_ = _loc2_[_loc4_];
            _loc3_.update(param1);
            _loc4_++;
         }
         var _loc5_:int = this.§!a§.length - 1;
         while(_loc5_ >= 0)
         {
            _loc3_ = this.§!a§[_loc5_];
            if(_loc3_.isCompleted)
            {
               this.§!a§.splice(_loc5_,1);
               _loc3_.dispose();
            }
            _loc5_--;
         }
      }
   }
}
