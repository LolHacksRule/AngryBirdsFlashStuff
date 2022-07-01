package §53§
{
   import §`!§.*;
   
   public class §6!u§
   {
      
      public static const §[I§:Function = §;<§.easeIn;
      
      public static const §]!V§:Function = §[^§.easeIn;
      
      public static const §7$§:Function = §[^§.easeOut;
      
      public static const §-!P§:Function = §>`§.easeOut;
      
      public static const §?!o§:Function = §>`§.easeIn;
      
      public static const §1!6§:Function = §2K§.easeOut;
      
      public static const §46§:Function = §2K§.easeIn;
      
      public static const §1!j§:Function = §%q§.easeOut;
      
      public static const §0C§:Function = §%q§.easeIn;
      
      private static var §<U§:§6!u§;
       
      
      protected var §,!_§:Vector.<§0!%§>;
      
      protected var §%y§:Boolean;
      
      protected var §&!,§:Boolean = true;
      
      public function §6!u§()
      {
         this.§,!_§ = new Vector.<§0!%§>();
         super();
      }
      
      public static function get §"e§() : §6!u§
      {
         if(!§<U§)
         {
            §<U§ = new §6!u§();
         }
         return §<U§;
      }
      
      public function set §+!x§(param1:Boolean) : void
      {
         this.§&!,§ = param1;
      }
      
      public function §9!5§() : void
      {
         var _loc2_:§0!%§ = null;
         var _loc1_:int = this.§,!_§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,!_§[_loc1_];
            if(_loc2_.§>#§)
            {
               this.§,!_§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §0!O§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §0!%§
      {
         param5 = param5 || §;<§.easeIn;
         var _loc6_:§!!m§;
         (_loc6_ = new §!!m§(param1,param2,param3,param4,param5)).§+!x§ = this.§&!,§;
         this.§,!_§.push(_loc6_);
         return _loc6_;
      }
      
      public function §4M§(... rest) : §0!%§
      {
         var _loc2_:§0!%§ = null;
         var _loc3_:§=!h§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§,!_§.indexOf(_loc2_);
            this.§,!_§.splice(_loc4_,1);
         }
         _loc3_ = new §=!h§(rest,true);
         _loc3_.§+!x§ = this.§&!,§;
         this.§,!_§.push(_loc3_);
         return _loc3_;
      }
      
      public function §8!Y§(... rest) : §0!%§
      {
         var _loc2_:§0!%§ = null;
         var _loc3_:§=!h§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§,!_§.indexOf(_loc2_);
            this.§,!_§.splice(_loc4_,1);
         }
         _loc3_ = new §=!h§(rest,false);
         _loc3_.§+!x§ = this.§&!,§;
         this.§,!_§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§%y§ = true;
      }
      
      public function resume() : void
      {
         this.§%y§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§%y§)
         {
            return;
         }
         if(this.§,!_§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§0!%§> = this.§,!_§.concat();
         var _loc3_:§0!%§ = null;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc3_ = _loc2_[_loc4_];
            _loc3_.update(param1);
            _loc4_++;
         }
         var _loc5_:int = this.§,!_§.length - 1;
         while(_loc5_ >= 0)
         {
            _loc3_ = this.§,!_§[_loc5_];
            if(_loc3_.isCompleted)
            {
               this.§,!_§.splice(_loc5_,1);
               _loc3_.dispose();
            }
            _loc5_--;
         }
      }
   }
}
