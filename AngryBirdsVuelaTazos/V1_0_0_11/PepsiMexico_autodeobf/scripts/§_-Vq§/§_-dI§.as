package §_-Vq§
{
   import §_-Bp§.§_-5N§;
   import §_-Bp§.§_-Po§;
   import §_-vO§.Sprite;
   
   public class §_-dI§
   {
      
      public static const §_-fN§:int = 0;
      
      public static const §_-Gs§:int = 1;
      
      public static const §_-Hw§:int = 2;
      
      public static const §_-1m§:int = 3;
      
      public static const §_-vm§:int = 4;
       
      
      private var §_-66§:Vector.<§_-ff§>;
      
      private var §_-CP§:§_-Po§;
      
      private var §_-aH§:§_-5N§;
      
      public function §_-dI§(param1:§_-Po§, param2:§_-5N§)
      {
         super();
         this.§_-CP§ = param1;
         this.§_-aH§ = param2;
         this.§_-66§ = new Vector.<§_-ff§>();
         var _loc3_:int = 0;
         while(_loc3_ < §_-vm§)
         {
            this.§_-66§[_loc3_] = new §_-ff§();
            _loc3_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-ff§ = null;
         if(this.§_-66§)
         {
            while(this.§_-66§.length)
            {
               _loc1_ = this.§_-66§.pop();
               _loc1_.dispose();
            }
         }
         this.§_-66§ = null;
      }
      
      public function §_-2b§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1) : void
      {
         var _loc14_:§_-gu§ = new §_-gu§(this.§_-CP§,this.§_-aH§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         var _loc15_:§_-ff§;
         if(_loc15_ = this.§_-el§(param2))
         {
            _loc15_.§_-2b§(_loc14_);
         }
         else
         {
            _loc14_.dispose();
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-66§.length)
         {
            this.§_-el§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §_-2B§(param1:int) : void
      {
         var _loc2_:§_-ff§ = this.§_-el§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §_-kd§(param1:int) : Sprite
      {
         return this.§_-el§(param1).sprite;
      }
      
      private function §_-el§(param1:Number) : §_-ff§
      {
         if(this.§_-66§ != null)
         {
            return this.§_-66§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§_-2B§(§_-fN§);
         var _loc1_:§_-ff§ = this.§_-el§(§_-Gs§);
         var _loc2_:§_-ff§ = this.§_-el§(§_-fN§);
         _loc1_.§_-mc§(_loc2_);
      }
      
      public function §do§(param1:Number, param2:Number) : void
      {
         var _loc3_:§_-ff§ = null;
         for each(_loc3_ in this.§_-66§)
         {
            _loc3_.§_-up§(param1,param2);
         }
      }
   }
}
