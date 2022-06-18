package §?!%§
{
   public class §?!7§
   {
      
      public static const §]!&§:String = "linear";
      
      public static const §6b§:String = "sine_in";
      
      public static const §+i§:String = "sine_out";
      
      public static const §,u§:String = "quad_out";
      
      public static const §3!B§:String = "quad_in";
      
      public static const §null §:String = "bounce_out";
      
      public static const §8!@§:String = "bounce_in";
      
      public static const §%P§:String = "circular_out";
      
      public static const §7c§:String = "circular_in";
      
      private static var §;k§:§?!7§;
       
      
      private var §+!7§:Vector.<§+a§>;
      
      private var §"y§:Boolean;
      
      private var §^!G§:Boolean = true;
      
      public function §?!7§()
      {
         this.§+!7§ = new Vector.<§+a§>();
         super();
      }
      
      public static function get §^7§() : §?!7§
      {
         if(!§;k§)
         {
            §;k§ = new §?!7§();
         }
         return §;k§;
      }
      
      public function set §01§(param1:Boolean) : void
      {
         this.§^!G§ = param1;
      }
      
      public function §-!3§() : void
      {
         var _loc2_:§+a§ = null;
         var _loc1_:int = this.§+!7§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§+!7§[_loc1_];
            if(_loc2_.§8!C§)
            {
               this.§+!7§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §^!0§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : § l§
      {
         var _loc6_:§3T§;
         (_loc6_ = new §3T§(param1,param2,param3,param4,param5)).§01§ = this.§^!G§;
         this.§+!7§.push(_loc6_);
         return _loc6_;
      }
      
      public function §"q§(... rest) : § l§
      {
         var _loc2_:§,m§ = null;
         var _loc3_:§4,§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§+!7§.indexOf(_loc2_);
            this.§+!7§.splice(_loc4_,1);
         }
         _loc3_ = new §4,§(rest,true);
         _loc3_.§01§ = this.§^!G§;
         this.§+!7§.push(_loc3_);
         return _loc3_;
      }
      
      public function §-z§(... rest) : § l§
      {
         var _loc2_:§,m§ = null;
         var _loc3_:§4,§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§+!7§.indexOf(_loc2_);
            this.§+!7§.splice(_loc4_,1);
         }
         _loc3_ = new §4,§(rest,false);
         _loc3_.§01§ = this.§^!G§;
         this.§+!7§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§"y§ = true;
      }
      
      public function resume() : void
      {
         this.§"y§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§+a§ = null;
         if(this.§"y§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§+!7§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§+!7§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§+!7§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
