package §_-hx§
{
   public class §_-lq§
   {
      
      public static const §_-0-K§:String = "linear";
      
      public static const §_-aq§:String = "sine_in";
      
      public static const §_-mA§:String = "sine_out";
      
      public static const §_-qf§:String = "quad_out";
      
      public static const §_-af§:String = "quad_in";
      
      public static const §_-7P§:String = "bounce_out";
      
      public static const §_-0C§:String = "bounce_in";
      
      public static const §_-Br§:String = "circular_out";
      
      public static const §_-7y§:String = "circular_in";
      
      private static var §_-Pu§:§_-lq§;
       
      
      private var §_-ls§:Vector.<§_-Cn§>;
      
      private var §_-rV§:Boolean;
      
      private var §_-Y2§:Boolean = true;
      
      public function §_-lq§()
      {
         this.§_-ls§ = new Vector.<§_-Cn§>();
         super();
      }
      
      public static function get §var §() : §_-lq§
      {
         if(!§_-Pu§)
         {
            §_-Pu§ = new §_-lq§();
         }
         return §_-Pu§;
      }
      
      public function set §_-KZ§(param1:Boolean) : void
      {
         this.§_-Y2§ = param1;
      }
      
      public function §_-q0§() : void
      {
         var _loc2_:§_-Cn§ = null;
         var _loc1_:int = this.§_-ls§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-ls§[_loc1_];
            if(_loc2_.§_-b3§)
            {
               this.§_-ls§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §_-OC§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §_-Z0§
      {
         var _loc6_:§_-y5§;
         (_loc6_ = new §_-y5§(param1,param2,param3,param4,param5)).§_-KZ§ = this.§_-Y2§;
         this.§_-ls§.push(_loc6_);
         return _loc6_;
      }
      
      public function §_-0I§(... rest) : §_-Z0§
      {
         var _loc2_:§_-v1§ = null;
         var _loc3_:§_-C2§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§_-ls§.indexOf(_loc2_);
            this.§_-ls§.splice(_loc4_,1);
         }
         _loc3_ = new §_-C2§(rest,true);
         _loc3_.§_-KZ§ = this.§_-Y2§;
         this.§_-ls§.push(_loc3_);
         return _loc3_;
      }
      
      public function §_-Hc§(... rest) : §_-Z0§
      {
         var _loc2_:§_-v1§ = null;
         var _loc3_:§_-C2§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§_-ls§.indexOf(_loc2_);
            this.§_-ls§.splice(_loc4_,1);
         }
         _loc3_ = new §_-C2§(rest,false);
         _loc3_.§_-KZ§ = this.§_-Y2§;
         this.§_-ls§.push(_loc3_);
         return _loc3_;
      }
      
      public function §_-Tr§() : void
      {
         this.§_-rV§ = true;
      }
      
      public function §_-5x§() : void
      {
         this.§_-rV§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§_-Cn§ = null;
         if(this.§_-rV§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-ls§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§_-ls§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§_-ls§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
