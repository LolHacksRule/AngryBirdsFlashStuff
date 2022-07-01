package §?h§
{
   import §^C§.*;
   
   public class §%!Z§
   {
      
      public static const §1R§:Function = §'"5§.easeIn;
      
      public static const §=!"§:Function = §8f§.easeIn;
      
      public static const §#!;§:Function = §8f§.easeOut;
      
      public static const §&e§:Function = §&!e§.easeOut;
      
      public static const §!!B§:Function = §&!e§.easeIn;
      
      public static const §,!%§:Function = §^!o§.easeOut;
      
      public static const §#!t§:Function = §^!o§.easeIn;
      
      public static const § Z§:Function = §"E§.easeOut;
      
      public static const §1v§:Function = §"E§.easeIn;
      
      private static var §;A§:§%!Z§;
       
      
      protected var § !C§:Vector.<§?!M§>;
      
      protected var §%!r§:Boolean;
      
      protected var §7"4§:Boolean = true;
      
      public function §%!Z§()
      {
         this.§ !C§ = new Vector.<§?!M§>();
         super();
      }
      
      public static function get §if §() : §%!Z§
      {
         if(!§;A§)
         {
            §;A§ = new §%!Z§();
         }
         return §;A§;
      }
      
      public function set §finally§(param1:Boolean) : void
      {
         this.§7"4§ = param1;
      }
      
      public function §'2§() : void
      {
         var _loc2_:§?!M§ = null;
         var _loc1_:int = this.§ !C§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§ !C§[_loc1_];
            if(_loc2_.§>"0§)
            {
               this.§ !C§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §"<§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §?!M§
      {
         param5 = param5 || §'"5§.easeIn;
         var _loc6_:§%!D§;
         (_loc6_ = new §%!D§(param1,param2,param3,param4,param5)).§finally§ = this.§7"4§;
         this.§ !C§.push(_loc6_);
         return _loc6_;
      }
      
      public function §"U§(... rest) : §?!M§
      {
         var _loc2_:§ !r§ = null;
         var _loc3_:§'@§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§ !C§.indexOf(_loc2_);
            this.§ !C§.splice(_loc4_,1);
         }
         _loc3_ = new §'@§(rest,true);
         _loc3_.§finally§ = this.§7"4§;
         this.§ !C§.push(_loc3_);
         return _loc3_;
      }
      
      public function §9y§(... rest) : §?!M§
      {
         var _loc2_:§ !r§ = null;
         var _loc3_:§'@§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§ !C§.indexOf(_loc2_);
            this.§ !C§.splice(_loc4_,1);
         }
         _loc3_ = new §'@§(rest,false);
         _loc3_.§finally§ = this.§7"4§;
         this.§ !C§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§%!r§ = true;
      }
      
      public function resume() : void
      {
         this.§%!r§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§?!M§ = null;
         if(this.§%!r§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§ !C§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§ !C§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§ !C§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
