package §@q§
{
   import §61§.*;
   
   public class §6;§
   {
      
      public static const §@!2§:Function = §=D§.easeIn;
      
      public static const §"!+§:Function = §]!4§.easeIn;
      
      public static const §7!?§:Function = §]!4§.easeOut;
      
      public static const §+!K§:Function = §[!N§.easeOut;
      
      public static const §&k§:Function = §[!N§.easeIn;
      
      public static const §=o§:Function = §"!D§.easeOut;
      
      public static const §if§:Function = §"!D§.easeIn;
      
      public static const §[!;§:Function = §8M§.easeOut;
      
      public static const §3!A§:Function = §8M§.easeIn;
      
      private static var §6!K§:§6;§;
       
      
      protected var §;4§:Vector.<§1b§>;
      
      protected var §]z§:Boolean;
      
      protected var §%"§:Boolean = true;
      
      public function §6;§()
      {
         this.§;4§ = new Vector.<§1b§>();
         super();
      }
      
      public static function get §&e§() : §6;§
      {
         if(!§6!K§)
         {
            §6!K§ = new §6;§();
         }
         return §6!K§;
      }
      
      public function set §#!2§(param1:Boolean) : void
      {
         this.§%"§ = param1;
      }
      
      public function §2#§() : void
      {
         var _loc2_:§1b§ = null;
         var _loc1_:int = this.§;4§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§;4§[_loc1_];
            if(_loc2_.§]!9§)
            {
               this.§;4§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §42§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §1b§
      {
         param5 = param5 || §=D§.easeIn;
         var _loc6_:§=N§;
         (_loc6_ = new §=N§(param1,param2,param3,param4,param5)).§#!2§ = this.§%"§;
         this.§;4§.push(_loc6_);
         return _loc6_;
      }
      
      public function §=!>§(... rest) : §1b§
      {
         var _loc2_:§!!K§ = null;
         var _loc3_:§]_§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§;4§.indexOf(_loc2_);
            this.§;4§.splice(_loc4_,1);
         }
         _loc3_ = new §]_§(rest,true);
         _loc3_.§#!2§ = this.§%"§;
         this.§;4§.push(_loc3_);
         return _loc3_;
      }
      
      public function §2%§(... rest) : §1b§
      {
         var _loc2_:§!!K§ = null;
         var _loc3_:§]_§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§;4§.indexOf(_loc2_);
            this.§;4§.splice(_loc4_,1);
         }
         _loc3_ = new §]_§(rest,false);
         _loc3_.§#!2§ = this.§%"§;
         this.§;4§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§]z§ = true;
      }
      
      public function resume() : void
      {
         this.§]z§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§1b§ = null;
         if(this.§]z§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§;4§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§;4§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§;4§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
