package §2"'§
{
   import § !t§.*;
   
   public class §0W§
   {
      
      public static const §[!Z§:Function = §7h§.easeIn;
      
      public static const §]!t§:Function = §!!P§.easeIn;
      
      public static const §4!E§:Function = §!!P§.easeOut;
      
      public static const §'I§:Function = §0",§.easeOut;
      
      public static const §"q§:Function = §0",§.easeIn;
      
      public static const §8!s§:Function = §9]§.easeOut;
      
      public static const §?"Q§:Function = §9]§.easeIn;
      
      public static const §7!A§:Function = §`!'§.easeOut;
      
      public static const §?![§:Function = §`!'§.easeIn;
      
      private static var §+!Y§:§0W§;
       
      
      protected var §,4§:Vector.<§'v§>;
      
      protected var §[$§:Boolean;
      
      protected var §-$§:Boolean = true;
      
      public function §0W§()
      {
         this.§,4§ = new Vector.<§'v§>();
         super();
      }
      
      public static function get §&"5§() : §0W§
      {
         if(!§+!Y§)
         {
            §+!Y§ = new §0W§();
         }
         return §+!Y§;
      }
      
      public function set §3!S§(param1:Boolean) : void
      {
         this.§-$§ = param1;
      }
      
      public function §'"=§() : void
      {
         var _loc2_:§'v§ = null;
         var _loc1_:int = this.§,4§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§,4§[_loc1_];
            if(_loc2_.§="6§)
            {
               this.§,4§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §]!r§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §'v§
      {
         param5 = param5 || §7h§.easeIn;
         var _loc6_:§;5§;
         (_loc6_ = new §;5§(param1,param2,param3,param4,param5)).§3!S§ = this.§-$§;
         this.§,4§.push(_loc6_);
         return _loc6_;
      }
      
      public function §]">§(... rest) : §'v§
      {
         var _loc2_:§ "%§ = null;
         var _loc3_:§%!m§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§,4§.indexOf(_loc2_);
            this.§,4§.splice(_loc4_,1);
         }
         _loc3_ = new §%!m§(rest,true);
         _loc3_.§3!S§ = this.§-$§;
         this.§,4§.push(_loc3_);
         return _loc3_;
      }
      
      public function §%G§(... rest) : §'v§
      {
         var _loc2_:§ "%§ = null;
         var _loc3_:§%!m§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§,4§.indexOf(_loc2_);
            this.§,4§.splice(_loc4_,1);
         }
         _loc3_ = new §%!m§(rest,false);
         _loc3_.§3!S§ = this.§-$§;
         this.§,4§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§[$§ = true;
      }
      
      public function resume() : void
      {
         this.§[$§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§'v§ = null;
         if(this.§[$§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§,4§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§,4§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§,4§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
