package §_-CW§
{
   import §_-PC§.§_-N0§;
   import §_-PC§.§_-lx§;
   import §_-b5§.Sprite;
   
   public class §_-hK§
   {
      
      public static const §_-zp§:int = 0;
      
      public static const §_-jg§:int = 1;
      
      public static const §_-I1§:int = 2;
      
      public static const §_-5j§:int = 3;
      
      public static const §_-EN§:int = 4;
       
      
      private var §_-B4§:Vector.<§_-94§>;
      
      private var §_-Gl§:§_-N0§;
      
      private var §_-W1§:§_-lx§;
      
      public function §_-hK§(param1:§_-N0§, param2:§_-lx§)
      {
         super();
         this.§_-Gl§ = param1;
         this.§_-W1§ = param2;
         this.§_-B4§ = new Vector.<§_-94§>();
         var _loc3_:int = 0;
         while(_loc3_ < §_-EN§)
         {
            this.§_-B4§[_loc3_] = new §_-94§();
            _loc3_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-94§ = null;
         if(this.§_-B4§)
         {
            while(this.§_-B4§.length)
            {
               _loc1_ = this.§_-B4§.pop();
               _loc1_.dispose();
            }
         }
         this.§_-B4§ = null;
      }
      
      public function §_-pB§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         var _loc16_:§_-C-§ = new §_-C-§(this.§_-Gl§,this.§_-W1§,param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         var _loc17_:§_-94§;
         if(_loc17_ = this.§_-2l§(param2))
         {
            _loc17_.§_-pB§(_loc16_);
         }
         else
         {
            _loc16_.dispose();
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.§_-B4§.length)
         {
            this.§_-2l§(_loc2_).update(param1);
            _loc2_++;
         }
      }
      
      public function §_-Xt§(param1:int) : void
      {
         var _loc2_:§_-94§ = this.§_-2l§(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function §_-MU§(param1:int) : Sprite
      {
         return this.§_-2l§(param1).sprite;
      }
      
      private function §_-2l§(param1:Number) : §_-94§
      {
         if(this.§_-B4§ != null)
         {
            return this.§_-B4§[param1];
         }
         return null;
      }
      
      public function moveTrailsNewToOld() : void
      {
         this.§_-Xt§(§_-zp§);
         var _loc1_:§_-94§ = this.§_-2l§(§_-jg§);
         var _loc2_:§_-94§ = this.§_-2l§(§_-zp§);
         _loc1_.§_-Vz§(_loc2_);
      }
      
      public function §_-rm§(param1:Number, param2:Number) : void
      {
         var _loc3_:§_-94§ = null;
         for each(_loc3_ in this.§_-B4§)
         {
            _loc3_.§_-q5§(param1,param2);
         }
      }
   }
}
