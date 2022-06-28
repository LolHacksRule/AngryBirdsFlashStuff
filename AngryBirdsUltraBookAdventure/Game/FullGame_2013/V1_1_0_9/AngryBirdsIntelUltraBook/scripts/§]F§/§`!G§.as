package §]F§
{
   import §%K§.*;
   
   public class §`!G§
   {
      
      public static const §-!d§:Function = §1e§.easeIn;
      
      public static const §;!?§:Function = §#!l§.easeIn;
      
      public static const §`!U§:Function = §#!l§.easeOut;
      
      public static const §-!%§:Function = § D§.easeOut;
      
      public static const §7!Y§:Function = § D§.easeIn;
      
      public static const §<W§:Function = §?V§.easeOut;
      
      public static const §<V§:Function = §?V§.easeIn;
      
      public static const §<u§:Function = §+s§.easeOut;
      
      public static const §[!#§:Function = §+s§.easeIn;
      
      private static var §&F§:§`!G§;
       
      
      protected var §#!8§:Vector.<§9!A§>;
      
      protected var §9!U§:Boolean;
      
      protected var §[!c§:Boolean = true;
      
      public function §`!G§()
      {
         this.§#!8§ = new Vector.<§9!A§>();
         super();
      }
      
      public static function get §[U§() : §`!G§
      {
         if(!§&F§)
         {
            §&F§ = new §`!G§();
         }
         return §&F§;
      }
      
      public function set §;!W§(param1:Boolean) : void
      {
         this.§[!c§ = param1;
      }
      
      public function §+!Z§() : void
      {
         var _loc2_:§9!A§ = null;
         var _loc1_:int = this.§#!8§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§#!8§[_loc1_];
            if(_loc2_.§^!5§)
            {
               this.§#!8§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §-]§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §9!A§
      {
         param5 = param5 || §1e§.easeIn;
         var _loc6_:§`Y§;
         (_loc6_ = new §`Y§(param1,param2,param3,param4,param5)).§;!W§ = this.§[!c§;
         this.§#!8§.push(_loc6_);
         return _loc6_;
      }
      
      public function §`h§(... rest) : §9!A§
      {
         var _loc2_:§!Q§ = null;
         var _loc3_:§`!E§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§#!8§.indexOf(_loc2_);
            this.§#!8§.splice(_loc4_,1);
         }
         _loc3_ = new §`!E§(rest,true);
         _loc3_.§;!W§ = this.§[!c§;
         this.§#!8§.push(_loc3_);
         return _loc3_;
      }
      
      public function §5!Y§(... rest) : §9!A§
      {
         var _loc2_:§!Q§ = null;
         var _loc3_:§`!E§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§#!8§.indexOf(_loc2_);
            this.§#!8§.splice(_loc4_,1);
         }
         _loc3_ = new §`!E§(rest,false);
         _loc3_.§;!W§ = this.§[!c§;
         this.§#!8§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§9!U§ = true;
      }
      
      public function resume() : void
      {
         this.§9!U§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§9!A§ = null;
         if(this.§9!U§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§#!8§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§#!8§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§#!8§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
