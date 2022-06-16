package §`!1§
{
   import §@h§.*;
   
   public class §-!&§
   {
      
      public static const §?q§:Function = §`"§.easeIn;
      
      public static const §]!C§:Function = §14§.easeIn;
      
      public static const §0%§:Function = §14§.easeOut;
      
      public static const §#! §:Function = §9y§.easeOut;
      
      public static const §`J§:Function = §9y§.easeIn;
      
      public static const §-p§:Function = §+!>§.easeOut;
      
      public static const §6!F§:Function = §+!>§.easeIn;
      
      public static const §0!L§:Function = §[T§.easeOut;
      
      public static const §6n§:Function = §[T§.easeIn;
      
      private static var §-K§:§-!&§;
       
      
      protected var §9l§:Vector.<§6!>§>;
      
      protected var §3!4§:Boolean;
      
      protected var §!!C§:Boolean = true;
      
      public function §-!&§()
      {
         this.§9l§ = new Vector.<§6!>§>();
         super();
      }
      
      public static function get §;R§() : §-!&§
      {
         if(!§-K§)
         {
            §-K§ = new §-!&§();
         }
         return §-K§;
      }
      
      public function set §<=§(param1:Boolean) : void
      {
         this.§!!C§ = param1;
      }
      
      public function §0M§() : void
      {
         var _loc2_:§6!>§ = null;
         var _loc1_:int = this.§9l§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§9l§[_loc1_];
            if(_loc2_.§1C§)
            {
               this.§9l§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §2w§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:Function = null) : §6!>§
      {
         param5 = param5 || §`"§.easeIn;
         var _loc6_:§<B§;
         (_loc6_ = new §<B§(param1,param2,param3,param4,param5)).§<=§ = this.§!!C§;
         this.§9l§.push(_loc6_);
         return _loc6_;
      }
      
      public function §>!+§(... rest) : §6!>§
      {
         var _loc2_:§+<§ = null;
         var _loc3_:§9E§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§9l§.indexOf(_loc2_);
            this.§9l§.splice(_loc4_,1);
         }
         _loc3_ = new §9E§(rest,true);
         _loc3_.§<=§ = this.§!!C§;
         this.§9l§.push(_loc3_);
         return _loc3_;
      }
      
      public function §<v§(... rest) : §6!>§
      {
         var _loc2_:§+<§ = null;
         var _loc3_:§9E§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§9l§.indexOf(_loc2_);
            this.§9l§.splice(_loc4_,1);
         }
         _loc3_ = new §9E§(rest,false);
         _loc3_.§<=§ = this.§!!C§;
         this.§9l§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§3!4§ = true;
      }
      
      public function resume() : void
      {
         this.§3!4§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§6!>§ = null;
         if(this.§3!4§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§9l§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§9l§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§9l§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
