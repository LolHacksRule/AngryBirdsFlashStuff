package §_-jV§
{
   public class §_-mI§
   {
      
      public static const §_-fX§:String = "linear";
      
      public static const §_-az§:String = "sine_in";
      
      public static const §_-Yd§:String = "sine_out";
      
      public static const §_-jw§:String = "quad_out";
      
      public static const §_-i5§:String = "quad_in";
      
      public static const §_-Wh§:String = "bounce_out";
      
      public static const §_-5n§:String = "bounce_in";
      
      public static const §_-zG§:String = "circular_out";
      
      public static const §_-ru§:String = "circular_in";
      
      private static var §_-9o§:§_-mI§;
       
      
      private var §_-dZ§:Vector.<§_-vU§>;
      
      private var §_-IG§:Boolean;
      
      private var §_-SE§:Boolean = true;
      
      public function §_-mI§()
      {
         this.§_-dZ§ = new Vector.<§_-vU§>();
         super();
      }
      
      public static function get §_-0H§() : §_-mI§
      {
         if(!§_-9o§)
         {
            §_-9o§ = new §_-mI§();
         }
         return §_-9o§;
      }
      
      public function set §_-of§(param1:Boolean) : void
      {
         this.§_-SE§ = param1;
      }
      
      public function §_-MC§() : void
      {
         var _loc2_:§_-vU§ = null;
         var _loc1_:int = this.§_-dZ§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-dZ§[_loc1_];
            if(_loc2_.§_-V-§)
            {
               this.§_-dZ§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §_-cb§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §_-GL§
      {
         var _loc6_:§_-Y7§;
         (_loc6_ = new §_-Y7§(param1,param2,param3,param4,param5)).§_-of§ = this.§_-SE§;
         this.§_-dZ§.push(_loc6_);
         return _loc6_;
      }
      
      public function §_-5d§(... rest) : §_-GL§
      {
         var _loc2_:§_-li§ = null;
         var _loc3_:§_-i1§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§_-dZ§.indexOf(_loc2_);
            this.§_-dZ§.splice(_loc4_,1);
         }
         _loc3_ = new §_-i1§(rest,true);
         _loc3_.§_-of§ = this.§_-SE§;
         this.§_-dZ§.push(_loc3_);
         return _loc3_;
      }
      
      public function §_-q7§(... rest) : §_-GL§
      {
         var _loc2_:§_-li§ = null;
         var _loc3_:§_-i1§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§_-dZ§.indexOf(_loc2_);
            this.§_-dZ§.splice(_loc4_,1);
         }
         _loc3_ = new §_-i1§(rest,false);
         _loc3_.§_-of§ = this.§_-SE§;
         this.§_-dZ§.push(_loc3_);
         return _loc3_;
      }
      
      public function §_-Xb§() : void
      {
         this.§_-IG§ = true;
      }
      
      public function §_-DM§() : void
      {
         this.§_-IG§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§_-vU§ = null;
         if(this.§_-IG§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-dZ§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§_-dZ§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§_-dZ§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
