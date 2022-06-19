package §_-we§
{
   import §_-5p§.§_-Kf§;
   import §_-5p§.§_-Kn§;
   import §_-Ls§.Sprite;
   
   public class §_-5J§
   {
      
      public static const §_-Uc§:int = 0;
      
      public static const §_-aB§:int = 1;
      
      public static const §_-r§:int = 2;
      
      public static const §_-2S§:int = 3;
      
      public static const §_-Ju§:int = 4;
      
      public static const §_-Xx§:int = 5;
       
      
      private var §_-e§:Vector.<§_-iF§>;
      
      private var §_-Ax§:§_-Kn§;
      
      private var §_-S7§:§_-Kf§;
      
      public function §_-5J§(param1:§_-Kn§, param2:§_-Kf§)
      {
         super();
         this.§_-Ax§ = param1;
         this.§_-S7§ = param2;
         this.§_-e§ = new Vector.<§_-iF§>();
         var _loc3_:int = 0;
         while(_loc3_ < §_-Xx§)
         {
            this.§_-e§[_loc3_] = new §_-iF§();
            _loc3_++;
         }
      }
      
      public function get §_-fl§() : §_-Kn§
      {
         return this.§_-Ax§;
      }
      
      public function get §_-aJ§() : §_-Kf§
      {
         return this.§_-S7§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-iF§ = null;
         if(this.§_-e§)
         {
            while(this.§_-e§.length)
            {
               _loc1_ = this.§_-e§.pop();
               _loc1_.dispose();
            }
         }
         this.§_-e§ = null;
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §_-yB§
      {
         var _loc16_:§_-yB§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§_-iF§;
         if(_loc17_ = this.§_-Gy§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §_-yB§
      {
         return new §_-yB§(this.§_-Ax§,this.§_-S7§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-e§.length)
         {
            this.§_-Gy§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §_-uX§(param1:int) : void
      {
         var _loc2_:§_-iF§ = this.§_-Gy§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §_-v-§(param1:int) : Sprite
      {
         return this.§_-Gy§(param1).sprite;
      }
      
      public function §_-Gy§(param1:Number) : §_-iF§
      {
         if(this.§_-e§ != null)
         {
            return this.§_-e§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§_-uX§(§_-Uc§);
         var _loc1_:§_-iF§ = this.§_-Gy§(§_-aB§);
         var _loc2_:§_-iF§ = this.§_-Gy§(§_-Uc§);
         _loc1_.§_-AT§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function § for§(param1:Number, param2:Number) : void
      {
         var _loc3_:§_-iF§ = null;
         for each(_loc3_ in this.§_-e§)
         {
            _loc3_.§_-As§(param1,param2);
         }
      }
   }
}
