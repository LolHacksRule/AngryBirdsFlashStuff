package §_-DS§
{
   import §_-1P§.§_-3p§;
   import §_-1P§.§_-lC§;
   import §_-pF§.Sprite;
   
   public class §_-t0§
   {
      
      public static const §_-r6§:int = 0;
      
      public static const §_-hG§:int = 1;
      
      public static const §_-FQ§:int = 2;
      
      public static const §_-kK§:int = 3;
      
      public static const §_-HR§:int = 4;
       
      
      private var §_-Fs§:Vector.<§_-oo§>;
      
      private var §_-S-§:§_-lC§;
      
      private var §_-Li§:§_-3p§;
      
      public function §_-t0§(param1:§_-lC§, param2:§_-3p§)
      {
         super();
         this.§_-S-§ = param1;
         this.§_-Li§ = param2;
         this.§_-Fs§ = new Vector.<§_-oo§>();
         var _loc3_:int = 0;
         while(_loc3_ < §_-HR§)
         {
            this.§_-Fs§[_loc3_] = new §_-oo§();
            _loc3_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-oo§ = null;
         if(this.§_-Fs§)
         {
            while(this.§_-Fs§.length)
            {
               _loc1_ = this.§_-Fs§.pop();
               _loc1_.dispose();
            }
         }
         this.§_-Fs§ = null;
      }
      
      public function §_-RE§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1) : void
      {
         var _loc14_:§_-Aa§ = new §_-Aa§(this.§_-S-§,this.§_-Li§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         var _loc15_:§_-oo§;
         if(_loc15_ = this.§_-jR§(param2))
         {
            _loc15_.§_-RE§(_loc14_);
         }
         else
         {
            _loc14_.dispose();
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-Fs§.length)
         {
            this.§_-jR§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §_-ff§(param1:int) : void
      {
         var _loc2_:§_-oo§ = this.§_-jR§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §_-a6§(param1:int) : Sprite
      {
         return this.§_-jR§(param1).sprite;
      }
      
      private function §_-jR§(param1:Number) : §_-oo§
      {
         if(this.§_-Fs§ != null)
         {
            return this.§_-Fs§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§_-ff§(§_-r6§);
         var _loc1_:§_-oo§ = this.§_-jR§(§_-hG§);
         var _loc2_:§_-oo§ = this.§_-jR§(§_-r6§);
         _loc1_.§_-JD§(_loc2_);
      }
      
      public function §_-ty§(param1:Number, param2:Number) : void
      {
         var _loc3_:§_-oo§ = null;
         for each(_loc3_ in this.§_-Fs§)
         {
            _loc3_.§_-uE§(param1,param2);
         }
      }
   }
}
