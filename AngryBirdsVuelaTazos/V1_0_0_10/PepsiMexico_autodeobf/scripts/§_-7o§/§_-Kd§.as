package §_-7o§
{
   import §_-KS§.§_-6i§;
   import §_-KS§.§_-ia§;
   import §_-se§.Sprite;
   
   public class §_-Kd§
   {
      
      public static const §_-8w§:int = 0;
      
      public static const §_-Zh§:int = 1;
      
      public static const §_-vR§:int = 2;
      
      public static const §_-vh§:int = 3;
      
      public static const §_-8p§:int = 4;
       
      
      private var §_-8k§:Vector.<§_-c-§>;
      
      private var §_-T9§:§_-6i§;
      
      private var §_-NZ§:§_-ia§;
      
      public function §_-Kd§(param1:§_-6i§, param2:§_-ia§)
      {
         super();
         this.§_-T9§ = param1;
         this.§_-NZ§ = param2;
         this.§_-8k§ = new Vector.<§_-c-§>();
         var _loc3_:int = 0;
         while(_loc3_ < §_-8p§)
         {
            this.§_-8k§[_loc3_] = new §_-c-§();
            _loc3_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-c-§ = null;
         if(this.§_-8k§)
         {
            while(this.§_-8k§.length)
            {
               _loc1_ = this.§_-8k§.pop();
               _loc1_.dispose();
            }
         }
         this.§_-8k§ = null;
      }
      
      public function §_-4V§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1) : void
      {
         var _loc14_:§_-w7§ = new §_-w7§(this.§_-T9§,this.§_-NZ§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         var _loc15_:§_-c-§;
         if(_loc15_ = this.§_-fH§(param2))
         {
            _loc15_.§_-4V§(_loc14_);
         }
         else
         {
            _loc14_.dispose();
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-8k§.length)
         {
            this.§_-fH§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §_-lZ§(param1:int) : void
      {
         var _loc2_:§_-c-§ = this.§_-fH§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §_-s1§(param1:int) : Sprite
      {
         return this.§_-fH§(param1).sprite;
      }
      
      private function §_-fH§(param1:Number) : §_-c-§
      {
         if(this.§_-8k§ != null)
         {
            return this.§_-8k§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§_-lZ§(§_-8w§);
         var _loc1_:§_-c-§ = this.§_-fH§(§_-Zh§);
         var _loc2_:§_-c-§ = this.§_-fH§(§_-8w§);
         _loc1_.§_-jP§(_loc2_);
      }
      
      public function §_-Go§(param1:Number, param2:Number) : void
      {
         var _loc3_:§_-c-§ = null;
         for each(_loc3_ in this.§_-8k§)
         {
            _loc3_.§_-3m§(param1,param2);
         }
      }
   }
}
