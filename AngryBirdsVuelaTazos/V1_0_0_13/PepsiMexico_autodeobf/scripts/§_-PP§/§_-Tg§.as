package §_-PP§
{
   import §_-UX§.Sprite;
   import §_-rQ§.§_-hA§;
   import §_-rQ§.§_-nh§;
   
   public class §_-Tg§
   {
      
      public static const §_-9s§:int = 0;
      
      public static const §_-oZ§:int = 1;
      
      public static const §_-U1§:int = 2;
      
      public static const §_-CE§:int = 3;
      
      public static const §_-GG§:int = 4;
       
      
      private var §_-ts§:Vector.<§_-No§>;
      
      private var §_-rv§:§_-nh§;
      
      private var §_-fS§:§_-hA§;
      
      public function §_-Tg§(param1:§_-nh§, param2:§_-hA§)
      {
         super();
         this.§_-rv§ = param1;
         this.§_-fS§ = param2;
         this.§_-ts§ = new Vector.<§_-No§>();
         var _loc3_:int = 0;
         while(_loc3_ < §_-GG§)
         {
            this.§_-ts§[_loc3_] = new §_-No§();
            _loc3_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-No§ = null;
         if(this.§_-ts§)
         {
            while(this.§_-ts§.length)
            {
               _loc1_ = this.§_-ts§.pop();
               _loc1_.dispose();
            }
         }
         this.§_-ts§ = null;
      }
      
      public function §_-Eo§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         var _loc16_:§_-qC§ = new §_-qC§(this.§_-rv§,this.§_-fS§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§_-No§;
         if(_loc17_ = this.§_-HN§(param2))
         {
            _loc17_.§_-Eo§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-ts§.length)
         {
            this.§_-HN§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §_-vJ§(param1:int) : void
      {
         var _loc2_:§_-No§ = this.§_-HN§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §_-Ng§(param1:int) : Sprite
      {
         return this.§_-HN§(param1).sprite;
      }
      
      private function §_-HN§(param1:Number) : §_-No§
      {
         if(this.§_-ts§ != null)
         {
            return this.§_-ts§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§_-vJ§(§_-9s§);
         var _loc1_:§_-No§ = this.§_-HN§(§_-oZ§);
         var _loc2_:§_-No§ = this.§_-HN§(§_-9s§);
         _loc1_.§_-xv§(_loc2_);
      }
      
      public function §_-hH§(param1:Number, param2:Number) : void
      {
         var _loc3_:§_-No§ = null;
         for each(_loc3_ in this.§_-ts§)
         {
            _loc3_.§_-w6§(param1,param2);
         }
      }
   }
}
