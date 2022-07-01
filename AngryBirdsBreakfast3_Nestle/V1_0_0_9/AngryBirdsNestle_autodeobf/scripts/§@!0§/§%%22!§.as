package §@!0§
{
   import §#!s§.*;
   
   public class §%"!§
   {
      
      public static const §?!o§:Function = §=6§.easeIn;
      
      public static const §=!J§:Function = §2C§.easeIn;
      
      public static const §;!i§:Function = §2C§.easeOut;
      
      public static const §6"0§:Function = §'H§.easeOut;
      
      public static const §+8§:Function = §'H§.easeIn;
      
      public static const §?!7§:Function = §@S§.easeOut;
      
      public static const §0Q§:Function = §@S§.easeIn;
      
      public static const §#!f§:Function = §13§.easeOut;
      
      public static const §+!H§:Function = §13§.easeIn;
      
      private static var §04§:§%"!§;
       
      
      protected var §!"0§:Vector.<§'!t§>;
      
      protected var §32§:Boolean;
      
      protected var §<!H§:Boolean = true;
      
      public function §%"!§()
      {
         this.§!"0§ = new Vector.<§'!t§>();
         super();
      }
      
      public static function get §&!;§() : §%"!§
      {
         if(!§04§)
         {
            §04§ = new §%"!§();
         }
         return §04§;
      }
      
      public function set §>!"§(param1:Boolean) : void
      {
         this.§<!H§ = param1;
      }
      
      public function §?"7§() : void
      {
         var _loc2_:§'!t§ = null;
         var _loc1_:int = this.§!"0§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§!"0§[_loc1_];
            if(_loc2_.§]!g§)
            {
               this.§!"0§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §"!]§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §'!t§
      {
         param5 = param5 || §=6§.easeIn;
         var _loc6_:§5!a§;
         (_loc6_ = new §5!a§(param1,param2,param3,param4,param5)).§>!"§ = this.§<!H§;
         this.§!"0§.push(_loc6_);
         return _loc6_;
      }
      
      public function § !V§(... rest) : §'!t§
      {
         var _loc2_:§'!t§ = null;
         var _loc3_:§8!+§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§!"0§.indexOf(_loc2_);
            this.§!"0§.splice(_loc4_,1);
         }
         _loc3_ = new §8!+§(rest,true);
         _loc3_.§>!"§ = this.§<!H§;
         this.§!"0§.push(_loc3_);
         return _loc3_;
      }
      
      public function §3G§(... rest) : §'!t§
      {
         var _loc2_:§'!t§ = null;
         var _loc3_:§8!+§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§!"0§.indexOf(_loc2_);
            this.§!"0§.splice(_loc4_,1);
         }
         _loc3_ = new §8!+§(rest,false);
         _loc3_.§>!"§ = this.§<!H§;
         this.§!"0§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§32§ = true;
      }
      
      public function resume() : void
      {
         this.§32§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§32§)
         {
            return;
         }
         if(this.§!"0§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§'!t§> = this.§!"0§.concat();
         var _loc3_:§'!t§ = null;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc3_ = _loc2_[_loc4_];
            _loc3_.update(param1);
            _loc4_++;
         }
         var _loc5_:int = this.§!"0§.length - 1;
         while(_loc5_ >= 0)
         {
            _loc3_ = this.§!"0§[_loc5_];
            if(_loc3_.isCompleted)
            {
               this.§!"0§.splice(_loc5_,1);
               _loc3_.dispose();
            }
            _loc5_--;
         }
      }
   }
}
