package §2!5§
{
   public class §";§
   {
      
      public static const §#!;§:String = "linear";
      
      public static const §%[§:String = "sine_in";
      
      public static const §8R§:String = "sine_out";
      
      public static const §&w§:String = "quad_out";
      
      public static const §43§:String = "quad_in";
      
      public static const §`!>§:String = "bounce_out";
      
      public static const §2l§:String = "bounce_in";
      
      public static const §5!,§:String = "circular_out";
      
      public static const §5K§:String = "circular_in";
      
      private static var §2!D§:§";§;
       
      
      private var §]X§:Vector.<§=!$§>;
      
      private var §>2§:Boolean;
      
      private var §+?§:Boolean = true;
      
      public function §";§()
      {
         this.§]X§ = new Vector.<§=!$§>();
         super();
      }
      
      public static function get §[8§() : §";§
      {
         if(!§2!D§)
         {
            §2!D§ = new §";§();
         }
         return §2!D§;
      }
      
      public function set §1!+§(param1:Boolean) : void
      {
         this.§+?§ = param1;
      }
      
      public function §1N§() : void
      {
         var _loc2_:§=!$§ = null;
         var _loc1_:int = this.§]X§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§]X§[_loc1_];
            if(_loc2_.§+&§)
            {
               this.§]X§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §6!$§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §?A§
      {
         var _loc6_:§[!7§;
         (_loc6_ = new §[!7§(param1,param2,param3,param4,param5)).§1!+§ = this.§+?§;
         this.§]X§.push(_loc6_);
         return _loc6_;
      }
      
      public function §9!8§(... rest) : §?A§
      {
         var _loc2_:§'n§ = null;
         var _loc3_:§2!?§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§]X§.indexOf(_loc2_);
            this.§]X§.splice(_loc4_,1);
         }
         _loc3_ = new §2!?§(rest,true);
         _loc3_.§1!+§ = this.§+?§;
         this.§]X§.push(_loc3_);
         return _loc3_;
      }
      
      public function §;<§(... rest) : §?A§
      {
         var _loc2_:§'n§ = null;
         var _loc3_:§2!?§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§]X§.indexOf(_loc2_);
            this.§]X§.splice(_loc4_,1);
         }
         _loc3_ = new §2!?§(rest,false);
         _loc3_.§1!+§ = this.§+?§;
         this.§]X§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§>2§ = true;
      }
      
      public function resume() : void
      {
         this.§>2§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§=!$§ = null;
         if(this.§>2§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§]X§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§]X§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§]X§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
