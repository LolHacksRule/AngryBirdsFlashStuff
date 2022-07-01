package §6t§
{
   import §9Y§.*;
   
   public class §3`§
   {
      
      public static const §9!F§:Function = §%f§.easeIn;
      
      public static const §+a§:Function = §+Z§.easeIn;
      
      public static const §9[§:Function = §+Z§.easeOut;
      
      public static const §#!!§:Function = §=@§.easeOut;
      
      public static const §%!$§:Function = §=@§.easeIn;
      
      public static const §8!"§:Function = §3<§.easeOut;
      
      public static const §&"2§:Function = §3<§.easeIn;
      
      public static const §^'§:Function = §"!i§.easeOut;
      
      public static const §!"-§:Function = §"!i§.easeIn;
      
      private static var §=%§:§3`§;
       
      
      protected var §7!0§:Vector.<§%v§>;
      
      protected var §8R§:Boolean;
      
      protected var §]!R§:Boolean = true;
      
      public function §3`§()
      {
         this.§7!0§ = new Vector.<§%v§>();
         super();
      }
      
      public static function get §<"5§() : §3`§
      {
         if(!§=%§)
         {
            §=%§ = new §3`§();
         }
         return §=%§;
      }
      
      public function set §^!6§(param1:Boolean) : void
      {
         this.§]!R§ = param1;
      }
      
      public function §;!K§() : void
      {
         var _loc2_:§%v§ = null;
         var _loc1_:int = this.§7!0§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§7!0§[_loc1_];
            if(_loc2_.§0"1§)
            {
               this.§7!0§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §^g§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §%v§
      {
         param5 = param5 || §%f§.easeIn;
         var _loc6_:§3'§;
         (_loc6_ = new §3'§(param1,param2,param3,param4,param5)).§^!6§ = this.§]!R§;
         this.§7!0§.push(_loc6_);
         return _loc6_;
      }
      
      public function §,!k§(... rest) : §%v§
      {
         var _loc2_:§%v§ = null;
         var _loc3_:§;!P§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§7!0§.indexOf(_loc2_);
            this.§7!0§.splice(_loc4_,1);
         }
         _loc3_ = new §;!P§(rest,true);
         _loc3_.§^!6§ = this.§]!R§;
         this.§7!0§.push(_loc3_);
         return _loc3_;
      }
      
      public function §"!z§(... rest) : §%v§
      {
         var _loc2_:§%v§ = null;
         var _loc3_:§;!P§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§7!0§.indexOf(_loc2_);
            this.§7!0§.splice(_loc4_,1);
         }
         _loc3_ = new §;!P§(rest,false);
         _loc3_.§^!6§ = this.§]!R§;
         this.§7!0§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§8R§ = true;
      }
      
      public function resume() : void
      {
         this.§8R§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§8R§)
         {
            return;
         }
         if(this.§7!0§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§%v§> = this.§7!0§.concat();
         var _loc3_:§%v§ = null;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc3_ = _loc2_[_loc4_];
            _loc3_.update(param1);
            _loc4_++;
         }
         var _loc5_:int = this.§7!0§.length - 1;
         while(_loc5_ >= 0)
         {
            _loc3_ = this.§7!0§[_loc5_];
            if(_loc3_.isCompleted)
            {
               this.§7!0§.splice(_loc5_,1);
               _loc3_.dispose();
            }
            _loc5_--;
         }
      }
   }
}
