package §_-Fc§
{
   import §_-0e§.§_-3D§;
   import §_-0e§.§_-Lz§;
   import §_-0e§.§_-i8§;
   import §_-Aa§.§_-Y4§;
   import §_-uz§.§_-wX§;
   
   public class §_-m1§ extends §_-3D§ implements §_-Lz§
   {
       
      
      private var §_-qn§:§_-i8§;
      
      private var §_-st§:Vector.<§_-i8§>;
      
      private var §import§:§_-i8§;
      
      private var §_-gj§:§_-i8§;
      
      private var §_-v§:§_-i8§;
      
      public function §_-m1§(param1:Array, param2:§_-Y4§, param3:Number)
      {
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:§_-i8§ = null;
         super(param2,param3);
         _loc4_ = param1.length;
         §_-hZ§ = 0;
         if(_loc4_ > 0)
         {
            this.§_-qn§ = param1[0] as §_-i8§;
            §_-hZ§ = this.§_-qn§.duration > §_-hZ§ ? Number(this.§_-qn§.duration) : Number(§_-hZ§);
            if(_loc4_ > 1)
            {
               this.§_-v§ = param1[1] as §_-i8§;
               §_-hZ§ = this.§_-v§.duration > §_-hZ§ ? Number(this.§_-v§.duration) : Number(§_-hZ§);
               if(_loc4_ > 2)
               {
                  this.§import§ = param1[2] as §_-i8§;
                  §_-hZ§ = this.§import§.duration > §_-hZ§ ? Number(this.§import§.duration) : Number(§_-hZ§);
                  if(_loc4_ > 3)
                  {
                     this.§_-gj§ = param1[3] as §_-i8§;
                     §_-hZ§ = this.§_-gj§.duration > §_-hZ§ ? Number(this.§_-gj§.duration) : Number(§_-hZ§);
                     if(_loc4_ > 4)
                     {
                        this.§_-st§ = new Vector.<§_-i8§>(_loc4_ - 4,true);
                        _loc5_ = 4;
                        while(_loc5_ < _loc4_)
                        {
                           _loc6_ = param1[_loc5_] as §_-i8§;
                           this.§_-st§[_loc5_ - 4] = _loc6_;
                           §_-hZ§ = _loc6_.duration > §_-hZ§ ? Number(_loc6_.duration) : Number(§_-hZ§);
                           _loc5_++;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §_-kE§(param1:int) : §_-wX§
      {
         if(param1 < 0)
         {
            return null;
         }
         if(param1 == 0)
         {
            return this.§_-qn§;
         }
         if(param1 == 1)
         {
            return this.§_-v§;
         }
         if(param1 == 2)
         {
            return this.§import§;
         }
         if(param1 == 3)
         {
            return this.§_-gj§;
         }
         if(this.§_-st§ != null)
         {
            if(param1 - 4 < this.§_-st§.length)
            {
               return this.§_-st§[param1 - 4];
            }
         }
         return null;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Vector.<§_-i8§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(this.§_-qn§ != null)
         {
            this.§_-qn§.update(param1);
            if(this.§_-v§ != null)
            {
               this.§_-v§.update(param1);
               if(this.§import§ != null)
               {
                  this.§import§.update(param1);
                  if(this.§_-gj§ != null)
                  {
                     this.§_-gj§.update(param1);
                     if(this.§_-st§ != null)
                     {
                        _loc2_ = this.§_-st§;
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
      
      override protected function newInstance() : §_-3D§
      {
         var _loc2_:Vector.<§_-i8§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Array = [];
         if(this.§_-qn§ != null)
         {
            _loc1_.push(this.§_-qn§.clone());
         }
         if(this.§_-v§ != null)
         {
            _loc1_.push(this.§_-v§.clone());
         }
         if(this.§import§ != null)
         {
            _loc1_.push(this.§import§.clone());
         }
         if(this.§_-gj§ != null)
         {
            _loc1_.push(this.§_-gj§.clone());
         }
         if(this.§_-st§ != null)
         {
            _loc2_ = this.§_-st§;
            _loc3_ = _loc2_.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc1_.push(_loc2_[_loc4_].clone());
               _loc4_++;
            }
         }
         return new §_-m1§(_loc1_,§_-7S§,0);
      }
      
      public function §_-ny§(param1:§_-wX§) : int
      {
         var _loc2_:int = 0;
         if(param1 == null)
         {
            return -1;
         }
         if(this.§_-qn§ == param1)
         {
            return 0;
         }
         if(this.§_-v§ == param1)
         {
            return 1;
         }
         if(this.§import§ == param1)
         {
            return 2;
         }
         if(this.§_-gj§ == param1)
         {
            return 3;
         }
         if(this.§_-st§ != null)
         {
            _loc2_ = this.§_-st§.indexOf(param1 as §_-i8§);
            if(_loc2_ != -1)
            {
               return _loc2_ + 4;
            }
         }
         return -1;
      }
      
      public function contains(param1:§_-wX§) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         if(this.§_-qn§ == param1)
         {
            return true;
         }
         if(this.§_-v§ == param1)
         {
            return true;
         }
         if(this.§import§ == param1)
         {
            return true;
         }
         if(this.§_-gj§ == param1)
         {
            return true;
         }
         if(this.§_-st§ != null)
         {
            return this.§_-st§.indexOf(param1 as §_-i8§) != -1;
         }
         return false;
      }
   }
}
