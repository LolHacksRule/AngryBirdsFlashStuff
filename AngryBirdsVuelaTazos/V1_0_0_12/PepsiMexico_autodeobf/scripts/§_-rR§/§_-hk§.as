package §_-Rr§
{
   import §_-Ou§.§_-DP§;
   import §_-ZI§.§_-Vu§;
   import §_-hn§.§_-DZ§;
   import §_-hn§.§_-pg§;
   import §_-hn§.§_-r7§;
   
   public class §_-hk§ extends §_-DZ§ implements §_-r7§
   {
       
      
      private var §_-qa§:§_-pg§;
      
      private var §_-Vf§:Vector.<§_-pg§>;
      
      private var §_-He§:§_-pg§;
      
      private var §_-j1§:§_-pg§;
      
      private var §_-Bz§:§_-pg§;
      
      public function §_-hk§(param1:Array, param2:§_-DP§, param3:Number)
      {
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:§_-pg§ = null;
         super(param2,param3);
         _loc4_ = param1.length;
         §_-tU§ = 0;
         if(_loc4_ > 0)
         {
            this.§_-qa§ = param1[0] as §_-pg§;
            §_-tU§ = this.§_-qa§.duration > §_-tU§ ? Number(this.§_-qa§.duration) : Number(§_-tU§);
            if(_loc4_ > 1)
            {
               this.§_-Bz§ = param1[1] as §_-pg§;
               §_-tU§ = this.§_-Bz§.duration > §_-tU§ ? Number(this.§_-Bz§.duration) : Number(§_-tU§);
               if(_loc4_ > 2)
               {
                  this.§_-He§ = param1[2] as §_-pg§;
                  §_-tU§ = this.§_-He§.duration > §_-tU§ ? Number(this.§_-He§.duration) : Number(§_-tU§);
                  if(_loc4_ > 3)
                  {
                     this.§_-j1§ = param1[3] as §_-pg§;
                     §_-tU§ = this.§_-j1§.duration > §_-tU§ ? Number(this.§_-j1§.duration) : Number(§_-tU§);
                     if(_loc4_ > 4)
                     {
                        this.§_-Vf§ = new Vector.<§_-pg§>(_loc4_ - 4,true);
                        _loc5_ = 4;
                        while(_loc5_ < _loc4_)
                        {
                           _loc6_ = param1[_loc5_] as §_-pg§;
                           this.§_-Vf§[_loc5_ - 4] = _loc6_;
                           §_-tU§ = _loc6_.duration > §_-tU§ ? Number(_loc6_.duration) : Number(§_-tU§);
                           _loc5_++;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §_-NZ§(param1:int) : §_-Vu§
      {
         if(param1 < 0)
         {
            return null;
         }
         if(param1 == 0)
         {
            return this.§_-qa§;
         }
         if(param1 == 1)
         {
            return this.§_-Bz§;
         }
         if(param1 == 2)
         {
            return this.§_-He§;
         }
         if(param1 == 3)
         {
            return this.§_-j1§;
         }
         if(this.§_-Vf§ != null)
         {
            if(param1 - 4 < this.§_-Vf§.length)
            {
               return this.§_-Vf§[param1 - 4];
            }
         }
         return null;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Vector.<§_-pg§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(this.§_-qa§ != null)
         {
            this.§_-qa§.update(param1);
            if(this.§_-Bz§ != null)
            {
               this.§_-Bz§.update(param1);
               if(this.§_-He§ != null)
               {
                  this.§_-He§.update(param1);
                  if(this.§_-j1§ != null)
                  {
                     this.§_-j1§.update(param1);
                     if(this.§_-Vf§ != null)
                     {
                        _loc2_ = this.§_-Vf§;
                        _loc3_ = _loc2_.length;
                        _loc4_ = 0;
                        while(_loc4_ < _loc3_)
                        {
                           _loc2_[_loc4_].update(param1);
                           _loc4_++;
                        }
                     }
                  }
               }
            }
         }
      }
      
      override protected function newInstance() : §_-DZ§
      {
         var _loc2_:Vector.<§_-pg§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Array = [];
         if(this.§_-qa§ != null)
         {
            _loc1_.push(this.§_-qa§.clone());
         }
         if(this.§_-Bz§ != null)
         {
            _loc1_.push(this.§_-Bz§.clone());
         }
         if(this.§_-He§ != null)
         {
            _loc1_.push(this.§_-He§.clone());
         }
         if(this.§_-j1§ != null)
         {
            _loc1_.push(this.§_-j1§.clone());
         }
         if(this.§_-Vf§ != null)
         {
            _loc2_ = this.§_-Vf§;
            _loc3_ = _loc2_.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc1_.push(_loc2_[_loc4_].clone());
               _loc4_++;
            }
         }
         return new §_-hk§(_loc1_,§_-2E§,0);
      }
      
      public function §_-c4§(param1:§_-Vu§) : int
      {
         var _loc2_:int = 0;
         if(param1 == null)
         {
            return -1;
         }
         if(this.§_-qa§ == param1)
         {
            return 0;
         }
         if(this.§_-Bz§ == param1)
         {
            return 1;
         }
         if(this.§_-He§ == param1)
         {
            return 2;
         }
         if(this.§_-j1§ == param1)
         {
            return 3;
         }
         if(this.§_-Vf§ != null)
         {
            _loc2_ = this.§_-Vf§.indexOf(param1 as §_-pg§);
            if(_loc2_ != -1)
            {
               return _loc2_ + 4;
            }
         }
         return -1;
      }
      
      public function contains(param1:§_-Vu§) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         if(this.§_-qa§ == param1)
         {
            return true;
         }
         if(this.§_-Bz§ == param1)
         {
            return true;
         }
         if(this.§_-He§ == param1)
         {
            return true;
         }
         if(this.§_-j1§ == param1)
         {
            return true;
         }
         if(this.§_-Vf§ != null)
         {
            return this.§_-Vf§.indexOf(param1 as §_-pg§) != -1;
         }
         return false;
      }
   }
}
