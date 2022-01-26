package §_-9s§
{
   public class §_-db§
   {
      
      public static const §_-sK§:String = "linear";
      
      public static const §_-Je§:String = "sine_in";
      
      public static const §_-zY§:String = "sine_out";
      
      public static const §_-UX§:String = "quad_out";
      
      public static const §_-Dm§:String = "quad_in";
      
      public static const §_-qY§:String = "bounce_out";
      
      public static const §_-P7§:String = "bounce_in";
      
      public static const §_-Q1§:String = "circular_out";
      
      public static const §_-nI§:String = "circular_in";
      
      private static var §_-KF§:§_-db§;
       
      
      private var §_-lI§:Vector.<§_-d7§>;
      
      private var §_-uQ§:Boolean;
      
      private var §_-WR§:Boolean = true;
      
      public function §_-db§()
      {
         this.§_-lI§ = new Vector.<§_-d7§>();
         super();
      }
      
      public static function get §_-yU§() : §_-db§
      {
         if(!§_-KF§)
         {
            §_-KF§ = new §_-db§();
         }
         return §_-KF§;
      }
      
      public function set §_-7I§(param1:Boolean) : void
      {
         this.§_-WR§ = param1;
      }
      
      public function §_-aF§() : void
      {
         var _loc2_:§_-d7§ = null;
         var _loc1_:int = this.§_-lI§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-lI§[_loc1_];
            if(_loc2_.§_-6M§)
            {
               this.§_-lI§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §_-mZ§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §_-Vc§
      {
         var _loc6_:§_-AE§;
         (_loc6_ = new §_-AE§(param1,param2,param3,param4,param5)).§_-7I§ = this.§_-WR§;
         this.§_-lI§.push(_loc6_);
         return _loc6_;
      }
      
      public function §_-5r§(... rest) : §_-Vc§
      {
         var _loc2_:§_-vP§ = null;
         var _loc3_:§_-2F§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§_-lI§.indexOf(_loc2_);
            this.§_-lI§.splice(_loc4_,1);
         }
         _loc3_ = new §_-2F§(rest,true);
         _loc3_.§_-7I§ = this.§_-WR§;
         this.§_-lI§.push(_loc3_);
         return _loc3_;
      }
      
      public function §_-K7§(... rest) : §_-Vc§
      {
         var _loc2_:§_-vP§ = null;
         var _loc3_:§_-2F§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§_-lI§.indexOf(_loc2_);
            this.§_-lI§.splice(_loc4_,1);
         }
         _loc3_ = new §_-2F§(rest,false);
         _loc3_.§_-7I§ = this.§_-WR§;
         this.§_-lI§.push(_loc3_);
         return _loc3_;
      }
      
      public function §_-fc§() : void
      {
         this.§_-uQ§ = true;
      }
      
      public function §_-UD§() : void
      {
         this.§_-uQ§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§_-d7§ = null;
         if(this.§_-uQ§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-lI§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§_-lI§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§_-lI§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
