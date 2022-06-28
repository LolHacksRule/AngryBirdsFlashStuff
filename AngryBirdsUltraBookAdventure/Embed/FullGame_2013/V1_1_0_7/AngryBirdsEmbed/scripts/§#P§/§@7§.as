package §#P§
{
   import §,!@§.*;
   
   public class §@7§
   {
      
      public static const §7!D§:Function = §!!2§.easeIn;
      
      public static const §5!7§:Function = §6>§.easeIn;
      
      public static const §2H§:Function = §6>§.easeOut;
      
      public static const §[^§:Function = §?@§.easeOut;
      
      public static const §1! §:Function = §?@§.easeIn;
      
      public static const § c§:Function = §&0§.easeOut;
      
      public static const § Q§:Function = §&0§.easeIn;
      
      public static const §=!1§:Function = §%2§.easeOut;
      
      public static const §=;§:Function = §%2§.easeIn;
      
      private static var §%I§:§@7§;
       
      
      protected var §0!K§:Vector.<§]!N§>;
      
      protected var §in §:Boolean;
      
      protected var §=!?§:Boolean = true;
      
      public function §@7§()
      {
         this.§0!K§ = new Vector.<§]!N§>();
         super();
      }
      
      public static function get §@6§() : §@7§
      {
         if(!§%I§)
         {
            §%I§ = new §@7§();
         }
         return §%I§;
      }
      
      public function set §;y§(param1:Boolean) : void
      {
         this.§=!?§ = param1;
      }
      
      public function §+!E§() : void
      {
         var _loc2_:§]!N§ = null;
         var _loc1_:int = this.§0!K§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§0!K§[_loc1_];
            if(_loc2_.§'%§)
            {
               this.§0!K§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §3!%§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §]!N§
      {
         param5 = param5 || §!!2§.easeIn;
         var _loc6_:§1n§;
         (_loc6_ = new §1n§(param1,param2,param3,param4,param5)).§;y§ = this.§=!?§;
         this.§0!K§.push(_loc6_);
         return _loc6_;
      }
      
      public function §'!@§(... rest) : §]!N§
      {
         var _loc2_:§1!?§ = null;
         var _loc3_:§+!!§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§0!K§.indexOf(_loc2_);
            this.§0!K§.splice(_loc4_,1);
         }
         _loc3_ = new §+!!§(rest,true);
         _loc3_.§;y§ = this.§=!?§;
         this.§0!K§.push(_loc3_);
         return _loc3_;
      }
      
      public function §#!0§(... rest) : §]!N§
      {
         var _loc2_:§1!?§ = null;
         var _loc3_:§+!!§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§0!K§.indexOf(_loc2_);
            this.§0!K§.splice(_loc4_,1);
         }
         _loc3_ = new §+!!§(rest,false);
         _loc3_.§;y§ = this.§=!?§;
         this.§0!K§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§in § = true;
      }
      
      public function resume() : void
      {
         this.§in § = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§]!N§ = null;
         if(this.§in §)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§0!K§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§0!K§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§0!K§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
