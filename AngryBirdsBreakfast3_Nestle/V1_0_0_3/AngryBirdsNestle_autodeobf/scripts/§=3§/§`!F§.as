package §=3§
{
   import §%2§.*;
   
   public class §`!F§
   {
      
      public static const §7!L§:Function = §1&§.easeIn;
      
      public static const §;!4§:Function = §5>§.easeIn;
      
      public static const §9C§:Function = §5>§.easeOut;
      
      public static const §^!W§:Function = §'i§.easeOut;
      
      public static const §7!P§:Function = §'i§.easeIn;
      
      public static const §%!3§:Function = §4e§.easeOut;
      
      public static const §6!h§:Function = §4e§.easeIn;
      
      public static const §@!%§:Function = §0[§.easeOut;
      
      public static const §"l§:Function = §0[§.easeIn;
      
      private static var §19§:§`!F§;
       
      
      protected var §,!&§:Vector.<§ !h§>;
      
      protected var §0!P§:Boolean;
      
      protected var § !+§:Boolean = true;
      
      public function §`!F§()
      {
         this.§,!&§ = new Vector.<§ !h§>();
         super();
      }
      
      public static function get §=J§() : §`!F§
      {
         if(!§19§)
         {
            §19§ = new §`!F§();
         }
         return §19§;
      }
      
      public function set §]h§(param1:Boolean) : void
      {
         this.§ !+§ = param1;
      }
      
      public function §2"5§() : void
      {
         var _loc2_:§ !h§ = null;
         var _loc1_:int = this.§,!&§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,!&§[_loc1_];
            if(_loc2_.§,@§)
            {
               this.§,!&§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §-r§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : § !h§
      {
         param5 = param5 || §1&§.easeIn;
         var _loc6_:§,]§;
         (_loc6_ = new §,]§(param1,param2,param3,param4,param5)).§]h§ = this.§ !+§;
         this.§,!&§.push(_loc6_);
         return _loc6_;
      }
      
      public function §]W§(... rest) : § !h§
      {
         var _loc2_:§ !h§ = null;
         var _loc3_:§9&§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§,!&§.indexOf(_loc2_);
            this.§,!&§.splice(_loc4_,1);
         }
         _loc3_ = new §9&§(rest,true);
         _loc3_.§]h§ = this.§ !+§;
         this.§,!&§.push(_loc3_);
         return _loc3_;
      }
      
      public function §<"%§(... rest) : § !h§
      {
         var _loc2_:§ !h§ = null;
         var _loc3_:§9&§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§,!&§.indexOf(_loc2_);
            this.§,!&§.splice(_loc4_,1);
         }
         _loc3_ = new §9&§(rest,false);
         _loc3_.§]h§ = this.§ !+§;
         this.§,!&§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§0!P§ = true;
      }
      
      public function resume() : void
      {
         this.§0!P§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§0!P§)
         {
            return;
         }
         if(this.§,!&§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§ !h§> = this.§,!&§.concat();
         var _loc3_:§ !h§ = null;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc3_ = _loc2_[_loc4_];
            _loc3_.update(param1);
            _loc4_++;
         }
         var _loc5_:int = this.§,!&§.length - 1;
         while(_loc5_ >= 0)
         {
            _loc3_ = this.§,!&§[_loc5_];
            if(_loc3_.isCompleted)
            {
               this.§,!&§.splice(_loc5_,1);
               _loc3_.dispose();
            }
            _loc5_--;
         }
      }
   }
}
