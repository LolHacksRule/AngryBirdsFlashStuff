package §_-cJ§
{
   public class §_-xx§
   {
      
      public static const §_-n-§:String = "linear";
      
      public static const §_-6E§:String = "sine_in";
      
      public static const §_-cv§:String = "sine_out";
      
      public static const §_-CT§:String = "quad_out";
      
      public static const §_-h0§:String = "quad_in";
      
      public static const §_-aS§:String = "bounce_out";
      
      public static const §_-HY§:String = "bounce_in";
      
      public static const §_-kF§:String = "circular_out";
      
      public static const §_-hq§:String = "circular_in";
      
      private static var §_-nE§:§_-xx§;
       
      
      private var §_-GT§:Vector.<§_-Vn§>;
      
      private var §_-DP§:Boolean;
      
      private var §_-zh§:Boolean = true;
      
      public function §_-xx§()
      {
         this.§_-GT§ = new Vector.<§_-Vn§>();
         super();
      }
      
      public static function get §_-uP§() : §_-xx§
      {
         if(!§_-nE§)
         {
            §_-nE§ = new §_-xx§();
         }
         return §_-nE§;
      }
      
      public function set §_-Do§(param1:Boolean) : void
      {
         this.§_-zh§ = param1;
      }
      
      public function §_-Nf§() : void
      {
         var _loc2_:§_-Vn§ = null;
         var _loc1_:int = this.§_-GT§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-GT§[_loc1_];
            if(_loc2_.§_-Mi§)
            {
               this.§_-GT§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §_-Vb§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §_-WM§
      {
         var _loc6_:§_-Mq§;
         (_loc6_ = new §_-Mq§(param1,param2,param3,param4,param5)).§_-Do§ = this.§_-zh§;
         this.§_-GT§.push(_loc6_);
         return _loc6_;
      }
      
      public function §_-vU§(... rest) : §_-WM§
      {
         var _loc2_:§_-Mq§ = null;
         var _loc3_:§_-Sr§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§_-GT§.indexOf(_loc2_);
            this.§_-GT§.splice(_loc4_,1);
         }
         _loc3_ = new §_-Sr§(rest,true);
         _loc3_.§_-Do§ = this.§_-zh§;
         this.§_-GT§.push(_loc3_);
         return _loc3_;
      }
      
      public function §const§(... rest) : §_-WM§
      {
         var _loc2_:§_-Mq§ = null;
         var _loc3_:§_-Sr§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§_-GT§.indexOf(_loc2_);
            this.§_-GT§.splice(_loc4_,1);
         }
         _loc3_ = new §_-Sr§(rest,false);
         _loc3_.§_-Do§ = this.§_-zh§;
         this.§_-GT§.push(_loc3_);
         return _loc3_;
      }
      
      public function §_-sR§() : void
      {
         this.§_-DP§ = true;
      }
      
      public function §_-vE§() : void
      {
         this.§_-DP§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§_-Vn§ = null;
         if(this.§_-DP§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-GT§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§_-GT§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§_-GT§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
