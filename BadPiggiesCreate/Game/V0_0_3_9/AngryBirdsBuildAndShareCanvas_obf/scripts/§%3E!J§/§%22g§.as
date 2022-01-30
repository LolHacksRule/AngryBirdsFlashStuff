package §>!J§
{
   import §;!p§.*;
   
   public class §"g§
   {
      
      public static const §7!§:Function = §%[§.easeIn;
      
      public static const §`1§:Function = §6!h§.easeIn;
      
      public static const §1!y§:Function = §6!h§.easeOut;
      
      public static const §+!a§:Function = §`O§.easeOut;
      
      public static const § try§:Function = §`O§.easeIn;
      
      public static const §'!9§:Function = §&;§.easeOut;
      
      public static const §17§:Function = §&;§.easeIn;
      
      public static const §'M§:Function = §;p§.easeOut;
      
      public static const §,!T§:Function = §;p§.easeIn;
      
      private static var §,!X§:§"g§;
       
      
      protected var §#i§:Vector.<§ !8§>;
      
      protected var §4!§:Boolean;
      
      protected var §@!I§:Boolean = true;
      
      public function §"g§()
      {
         this.§#i§ = new Vector.<§ !8§>();
         super();
      }
      
      public static function get §'!o§() : §"g§
      {
         if(!§,!X§)
         {
            §,!X§ = new §"g§();
         }
         return §,!X§;
      }
      
      public function set §-2§(param1:Boolean) : void
      {
         this.§@!I§ = param1;
      }
      
      public function §^j§() : void
      {
         var _loc2_:§ !8§ = null;
         var _loc1_:int = this.§#i§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§#i§[_loc1_];
            if(_loc2_.§;!O§)
            {
               this.§#i§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §while§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : § !8§
      {
         param5 = param5 || §%[§.easeIn;
         var _loc6_:§function§;
         (_loc6_ = new §function§(param1,param2,param3,param4,param5)).§-2§ = this.§@!I§;
         this.§#i§.push(_loc6_);
         return _loc6_;
      }
      
      public function §3!p§(... rest) : § !8§
      {
         var _loc2_:§+!b§ = null;
         var _loc3_:§`S§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§#i§.indexOf(_loc2_);
            this.§#i§.splice(_loc4_,1);
         }
         _loc3_ = new §`S§(rest,true);
         _loc3_.§-2§ = this.§@!I§;
         this.§#i§.push(_loc3_);
         return _loc3_;
      }
      
      public function §%l§(... rest) : § !8§
      {
         var _loc2_:§+!b§ = null;
         var _loc3_:§`S§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§#i§.indexOf(_loc2_);
            this.§#i§.splice(_loc4_,1);
         }
         _loc3_ = new §`S§(rest,false);
         _loc3_.§-2§ = this.§@!I§;
         this.§#i§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§4!§ = true;
      }
      
      public function resume() : void
      {
         this.§4!§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§ !8§ = null;
         if(this.§4!§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§#i§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§#i§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§#i§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
