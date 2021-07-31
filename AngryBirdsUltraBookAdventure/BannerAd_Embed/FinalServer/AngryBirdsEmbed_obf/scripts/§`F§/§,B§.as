package §`F§
{
   public class §,B§
   {
      
      public static const §,Y§:String = "linear";
      
      public static const §"l§:String = "sine_in";
      
      public static const §@R§:String = "sine_out";
      
      public static const §[!F§:String = "quad_out";
      
      public static const §1R§:String = "quad_in";
      
      public static const §5!C§:String = "bounce_out";
      
      public static const §8!4§:String = "bounce_in";
      
      public static const §'§:String = "circular_out";
      
      public static const §;C§:String = "circular_in";
      
      private static var §;R§:§,B§;
       
      
      private var §]!7§:Vector.<§4!A§>;
      
      private var §6!§:Boolean;
      
      private var §4v§:Boolean = true;
      
      public function §,B§()
      {
         this.§]!7§ = new Vector.<§4!A§>();
         super();
      }
      
      public static function get §^n§() : §,B§
      {
         if(!§;R§)
         {
            §;R§ = new §,B§();
         }
         return §;R§;
      }
      
      public function set §-Q§(param1:Boolean) : void
      {
         this.§4v§ = param1;
      }
      
      public function §-8§() : void
      {
         var _loc2_:§4!A§ = null;
         var _loc1_:int = this.§]!7§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§]!7§[_loc1_];
            if(_loc2_.§?!+§)
            {
               this.§]!7§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §2E§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §?!3§
      {
         var _loc6_:§9`§;
         (_loc6_ = new §9`§(param1,param2,param3,param4,param5)).§-Q§ = this.§4v§;
         this.§]!7§.push(_loc6_);
         return _loc6_;
      }
      
      public function §!g§(... rest) : §?!3§
      {
         var _loc2_:§^F§ = null;
         var _loc3_:§<!%§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§]!7§.indexOf(_loc2_);
            this.§]!7§.splice(_loc4_,1);
         }
         _loc3_ = new §<!%§(rest,true);
         _loc3_.§-Q§ = this.§4v§;
         this.§]!7§.push(_loc3_);
         return _loc3_;
      }
      
      public function §[!1§(... rest) : §?!3§
      {
         var _loc2_:§^F§ = null;
         var _loc3_:§<!%§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§]!7§.indexOf(_loc2_);
            this.§]!7§.splice(_loc4_,1);
         }
         _loc3_ = new §<!%§(rest,false);
         _loc3_.§-Q§ = this.§4v§;
         this.§]!7§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§6!§ = true;
      }
      
      public function resume() : void
      {
         this.§6!§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§4!A§ = null;
         if(this.§6!§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§]!7§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§]!7§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§]!7§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
