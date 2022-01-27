package §'! §
{
   import §#"_§.*;
   
   public class §41§
   {
      
      public static const §@"O§:Function = §6!%§.easeIn;
      
      public static const §'!u§:Function = §<!Q§.easeIn;
      
      public static const §9!,§:Function = §<!Q§.easeOut;
      
      public static const §2#&§:Function = §,D§.easeOut;
      
      public static const §`!^§:Function = §,D§.easeIn;
      
      public static const §%-§:Function = §3"I§.easeOut;
      
      public static const § i§:Function = §3"I§.easeIn;
      
      public static const §=!W§:Function = §<G§.easeOut;
      
      public static const §9!S§:Function = §<G§.easeIn;
      
      private static var §9"r§:§41§;
       
      
      protected var §>#1§:Vector.<§2";§>;
      
      protected var §>!=§:Boolean;
      
      protected var §4"!§:Boolean = true;
      
      public function §41§()
      {
         this.§>#1§ = new Vector.<§2";§>();
         super();
      }
      
      public static function get §-G§() : §41§
      {
         if(!§9"r§)
         {
            §9"r§ = new §41§();
         }
         return §9"r§;
      }
      
      public function set §86§(param1:Boolean) : void
      {
         this.§4"!§ = param1;
      }
      
      public function §0!M§() : void
      {
         var _loc2_:§2";§ = null;
         var _loc1_:int = this.§>#1§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§>#1§[_loc1_];
            if(_loc2_.§7!b§)
            {
               this.§>#1§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §&#'§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §2";§
      {
         param5 = param5 || §6!%§.easeIn;
         var _loc6_:§0n§;
         (_loc6_ = new §0n§(param1,param2,param3,param4,param5)).§86§ = this.§4"!§;
         this.§>#1§.push(_loc6_);
         return _loc6_;
      }
      
      public function §="t§(... rest) : §2";§
      {
         var _loc2_:§2";§ = null;
         var _loc3_:§>"s§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§>#1§.indexOf(_loc2_);
            this.§>#1§.splice(_loc4_,1);
         }
         _loc3_ = new §>"s§(rest,true);
         _loc3_.§86§ = this.§4"!§;
         this.§>#1§.push(_loc3_);
         return _loc3_;
      }
      
      public function §,!v§(... rest) : §2";§
      {
         var _loc2_:§2";§ = null;
         var _loc3_:§>"s§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§>#1§.indexOf(_loc2_);
            this.§>#1§.splice(_loc4_,1);
         }
         _loc3_ = new §>"s§(rest,false);
         _loc3_.§86§ = this.§4"!§;
         this.§>#1§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§>!=§ = true;
      }
      
      public function resume() : void
      {
         this.§>!=§ = false;
      }
      
      public function update(param1:Number) : void
      {
         if(this.§>!=§)
         {
            return;
         }
         if(this.§>#1§.length == 0)
         {
            return;
         }
         var _loc2_:Vector.<§2";§> = this.§>#1§.concat();
         var _loc3_:§2";§ = null;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc3_ = _loc2_[_loc4_];
            _loc3_.update(param1);
            _loc4_++;
         }
         var _loc5_:int = this.§>#1§.length - 1;
         while(_loc5_ >= 0)
         {
            _loc3_ = this.§>#1§[_loc5_];
            if(_loc3_.isCompleted)
            {
               this.§>#1§.splice(_loc5_,1);
               _loc3_.dispose();
            }
            _loc5_--;
         }
      }
   }
}
