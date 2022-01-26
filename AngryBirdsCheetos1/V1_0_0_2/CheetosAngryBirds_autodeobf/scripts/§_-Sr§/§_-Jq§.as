package §_-Sr§
{
   import §_-GY§.Sprite;
   import §_-my§.§_-Oi§;
   import §_-my§.§_-V0§;
   
   public class §_-Jq§
   {
      
      public static const §_-8E§:int = 0;
      
      public static const §_-Ml§:int = 1;
      
      public static const §_-6O§:int = 2;
      
      public static const §_-0-§:int = 3;
      
      public static const §_-rR§:int = 4;
      
      public static const §_-8K§:int = 5;
       
      
      private var §_-4w§:Vector.<§_-N9§>;
      
      private var §_-Ly§:§_-Oi§;
      
      private var §_-B1§:§_-V0§;
      
      public function §_-Jq§(param1:§_-Oi§, param2:§_-V0§)
      {
         super();
         this.§_-Ly§ = param1;
         this.§_-B1§ = param2;
         this.§_-4w§ = new Vector.<§_-N9§>();
         var _loc3_:int = 0;
         while(_loc3_ < §_-8K§)
         {
            this.§_-4w§[_loc3_] = new §_-N9§();
            _loc3_++;
         }
      }
      
      public function get §_-oR§() : §_-Oi§
      {
         return this.§_-Ly§;
      }
      
      public function get §_-3q§() : §_-V0§
      {
         return this.§_-B1§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-N9§ = null;
         if(this.§_-4w§)
         {
            while(this.§_-4w§.length)
            {
               _loc1_ = this.§_-4w§.pop();
               _loc1_.dispose();
            }
         }
         this.§_-4w§ = null;
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §_-K-§
      {
         var _loc16_:§_-K-§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§_-N9§;
         if(_loc17_ = this.§_-AM§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §_-K-§
      {
         return new §_-K-§(this.§_-Ly§,this.§_-B1§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-4w§.length)
         {
            this.§_-AM§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §_-Cn§(param1:int) : void
      {
         var _loc2_:§_-N9§ = this.§_-AM§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §_-Ah§(param1:int) : Sprite
      {
         return this.§_-AM§(param1).sprite;
      }
      
      public function §_-AM§(param1:Number) : §_-N9§
      {
         if(this.§_-4w§ != null)
         {
            return this.§_-4w§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§_-Cn§(§_-8E§);
         var _loc1_:§_-N9§ = this.§_-AM§(§_-Ml§);
         var _loc2_:§_-N9§ = this.§_-AM§(§_-8E§);
         _loc1_.§_-CW§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §_-n0§(param1:Number, param2:Number) : void
      {
         var _loc3_:§_-N9§ = null;
         for each(_loc3_ in this.§_-4w§)
         {
            _loc3_.§_-4r§(param1,param2);
         }
      }
   }
}
