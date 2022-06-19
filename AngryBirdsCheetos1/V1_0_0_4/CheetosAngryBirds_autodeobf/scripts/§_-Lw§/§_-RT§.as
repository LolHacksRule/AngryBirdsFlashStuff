package §_-Lw§
{
   import §_-4I§.§_-ok§;
   import §_-4I§.§_-v8§;
   import §case §.Sprite;
   
   public class §_-RT§
   {
      
      public static const §_-cE§:int = 0;
      
      public static const §_-E6§:int = 1;
      
      public static const §_-GD§:int = 2;
      
      public static const §_-MU§:int = 3;
      
      public static const §_-Wq§:int = 4;
      
      public static const §_-Rs§:int = 5;
       
      
      private var §_-bn§:Vector.<§_-gb§>;
      
      private var §_-Ms§:§_-ok§;
      
      private var §_-BB§:§_-v8§;
      
      public function §_-RT§(param1:§_-ok§, param2:§_-v8§)
      {
         super();
         this.§_-Ms§ = param1;
         this.§_-BB§ = param2;
         this.§_-bn§ = new Vector.<§_-gb§>();
         var _loc3_:int = 0;
         while(_loc3_ < §_-Rs§)
         {
            this.§_-bn§[_loc3_] = new §_-gb§();
            _loc3_++;
         }
      }
      
      public function get §_-Un§() : §_-ok§
      {
         return this.§_-Ms§;
      }
      
      public function get §_-91§() : §_-v8§
      {
         return this.§_-BB§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-gb§ = null;
         if(this.§_-bn§)
         {
            while(this.§_-bn§.length)
            {
               _loc1_ = this.§_-bn§.pop();
               _loc1_.dispose();
            }
         }
         this.§_-bn§ = null;
      }
      
      public function addParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §_-hQ§
      {
         var _loc16_:§_-hQ§ = this.createParticle(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§_-gb§;
         if(_loc17_ = this.§_-Gs§(param2))
         {
            _loc17_.addParticle(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
         return _loc16_;
      }
      
      protected function createParticle(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : §_-hQ§
      {
         return new §_-hQ§(this.§_-Ms§,this.§_-BB§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-bn§.length)
         {
            this.§_-Gs§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §_-Cv§(param1:int) : void
      {
         var _loc2_:§_-gb§ = this.§_-Gs§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §_-Lv§(param1:int) : Sprite
      {
         return this.§_-Gs§(param1).sprite;
      }
      
      public function §_-Gs§(param1:Number) : §_-gb§
      {
         if(this.§_-bn§ != null)
         {
            return this.§_-bn§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§_-Cv§(§_-cE§);
         var _loc1_:§_-gb§ = this.§_-Gs§(§_-E6§);
         var _loc2_:§_-gb§ = this.§_-Gs§(§_-cE§);
         _loc1_.§_-EX§(_loc2_);
         _loc2_.sprite.flatten();
      }
      
      public function §_-FQ§(param1:Number, param2:Number) : void
      {
         var _loc3_:§_-gb§ = null;
         for each(_loc3_ in this.§_-bn§)
         {
            _loc3_.§_-B2§(param1,param2);
         }
      }
   }
}
