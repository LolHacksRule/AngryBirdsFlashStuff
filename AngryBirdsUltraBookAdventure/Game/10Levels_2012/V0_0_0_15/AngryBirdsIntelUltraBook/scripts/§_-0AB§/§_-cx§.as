package §_-0AB§
{
   public class §_-cx§
   {
      
      public static const §_-pt§:String = "linear";
      
      public static const §_-0c§:String = "sine_in";
      
      public static const §_-x-§:String = "sine_out";
      
      public static const §_-037§:String = "quad_out";
      
      public static const §_-aZ§:String = "quad_in";
      
      public static const §_-Kl§:String = "bounce_out";
      
      public static const §_-bI§:String = "bounce_in";
      
      public static const §_-61§:String = "circular_out";
      
      public static const §_-0-U§:String = "circular_in";
      
      private static var §_-es§:§_-cx§;
       
      
      private var §_-08b§:Vector.<§_-IP§>;
      
      private var §_-A5§:Boolean;
      
      private var §_-i-§:Boolean = true;
      
      public function §_-cx§()
      {
         this.§_-08b§ = new Vector.<§_-IP§>();
         super();
      }
      
      public static function get §_-3S§() : §_-cx§
      {
         if(!§_-es§)
         {
            §_-es§ = new §_-cx§();
         }
         return §_-es§;
      }
      
      public function set §_-JH§(param1:Boolean) : void
      {
         this.§_-i-§ = param1;
      }
      
      public function §_-Pm§() : void
      {
         var _loc2_:§_-IP§ = null;
         var _loc1_:int = this.§_-08b§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§_-08b§[_loc1_];
            if(_loc2_.§_-04E§)
            {
               this.§_-08b§.splice(_loc1_,1);
               _loc2_.dispose();
            }
            _loc1_--;
         }
      }
      
      public function §_-Wf§(param1:Object, param2:Object, param3:Object = null, param4:Number = 1.0, param5:String = "linear") : §_-dd§
      {
         var _loc6_:§_-3w§;
         (_loc6_ = new §_-3w§(param1,param2,param3,param4,param5)).§_-JH§ = this.§_-i-§;
         this.§_-08b§.push(_loc6_);
         return _loc6_;
      }
      
      public function §_-Tc§(... rest) : §_-dd§
      {
         var _loc2_:§_-Ok§ = null;
         var _loc3_:§_-06r§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§_-08b§.indexOf(_loc2_);
            this.§_-08b§.splice(_loc4_,1);
         }
         _loc3_ = new §_-06r§(rest,true);
         _loc3_.§_-JH§ = this.§_-i-§;
         this.§_-08b§.push(_loc3_);
         return _loc3_;
      }
      
      public function §_-Vy§(... rest) : §_-dd§
      {
         var _loc2_:§_-Ok§ = null;
         var _loc3_:§_-06r§ = null;
         var _loc4_:int = 0;
         for each(_loc2_ in rest)
         {
            _loc4_ = this.§_-08b§.indexOf(_loc2_);
            this.§_-08b§.splice(_loc4_,1);
         }
         _loc3_ = new §_-06r§(rest,false);
         _loc3_.§_-JH§ = this.§_-i-§;
         this.§_-08b§.push(_loc3_);
         return _loc3_;
      }
      
      public function pause() : void
      {
         this.§_-A5§ = true;
      }
      
      public function resume() : void
      {
         this.§_-A5§ = false;
      }
      
      public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:§_-IP§ = null;
         if(this.§_-A5§)
         {
            return;
         }
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-08b§.length)
         {
            _loc3_ = false;
            (_loc4_ = this.§_-08b§[_loc2_]).update(param1);
            if(_loc4_.isCompleted)
            {
               this.§_-08b§.splice(_loc2_,1);
               _loc4_.dispose();
               _loc2_--;
            }
            _loc2_++;
         }
      }
   }
}
