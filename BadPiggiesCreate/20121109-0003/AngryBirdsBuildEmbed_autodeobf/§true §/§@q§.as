package §true §
{
   import §4!7§.§%!m§;
   import §;!,§.§#>§;
   import §;!,§.§=!+§;
   import §;!,§.AbstractTween;
   import §?!4§.§=Y§;
   
   public class §@q§ extends AbstractTween implements §=!+§
   {
       
      
      private var §-!o§:§#>§;
      
      private var §;3§:Vector.<§#>§>;
      
      private var §7!H§:§#>§;
      
      private var §,!N§:§#>§;
      
      private var §"!s§:§#>§;
      
      public function §@q§(param1:Array, param2:§%!m§, param3:Number)
      {
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:§#>§ = null;
         super(param2,param3);
         _loc4_ = param1.length;
         §1J§ = 0;
         if(_loc4_ > 0)
         {
            this.§-!o§ = param1[0] as §#>§;
            §1J§ = this.§-!o§.duration > §1J§ ? Number(this.§-!o§.duration) : Number(§1J§);
            if(_loc4_ > 1)
            {
               this.§"!s§ = param1[1] as §#>§;
               §1J§ = this.§"!s§.duration > §1J§ ? Number(this.§"!s§.duration) : Number(§1J§);
               if(_loc4_ > 2)
               {
                  this.§7!H§ = param1[2] as §#>§;
                  §1J§ = this.§7!H§.duration > §1J§ ? Number(this.§7!H§.duration) : Number(§1J§);
                  if(_loc4_ > 3)
                  {
                     this.§,!N§ = param1[3] as §#>§;
                     §1J§ = this.§,!N§.duration > §1J§ ? Number(this.§,!N§.duration) : Number(§1J§);
                     if(_loc4_ > 4)
                     {
                        this.§;3§ = new Vector.<§#>§>(_loc4_ - 4,true);
                        _loc5_ = 4;
                        while(_loc5_ < _loc4_)
                        {
                           _loc6_ = param1[_loc5_] as §#>§;
                           this.§;3§[_loc5_ - 4] = _loc6_;
                           §1J§ = _loc6_.duration > §1J§ ? Number(_loc6_.duration) : Number(§1J§);
                           _loc5_++;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §9M§(param1:int) : §=Y§
      {
         if(param1 < 0)
         {
            return null;
         }
         if(param1 == 0)
         {
            return this.§-!o§;
         }
         if(param1 == 1)
         {
            return this.§"!s§;
         }
         if(param1 == 2)
         {
            return this.§7!H§;
         }
         if(param1 == 3)
         {
            return this.§,!N§;
         }
         if(this.§;3§ != null)
         {
            if(param1 - 4 < this.§;3§.length)
            {
               return this.§;3§[param1 - 4];
            }
         }
         return null;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Vector.<§#>§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(this.§-!o§ != null)
         {
            this.§-!o§.update(param1);
            if(this.§"!s§ != null)
            {
               this.§"!s§.update(param1);
               if(this.§7!H§ != null)
               {
                  this.§7!H§.update(param1);
                  if(this.§,!N§ != null)
                  {
                     this.§,!N§.update(param1);
                     if(this.§;3§ != null)
                     {
                        _loc2_ = this.§;3§;
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
      
      override protected function newInstance() : AbstractTween
      {
         var _loc2_:Vector.<§#>§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Array = [];
         if(this.§-!o§ != null)
         {
            _loc1_.push(this.§-!o§.clone());
         }
         if(this.§"!s§ != null)
         {
            _loc1_.push(this.§"!s§.clone());
         }
         if(this.§7!H§ != null)
         {
            _loc1_.push(this.§7!H§.clone());
         }
         if(this.§,!N§ != null)
         {
            _loc1_.push(this.§,!N§.clone());
         }
         if(this.§;3§ != null)
         {
            _loc2_ = this.§;3§;
            _loc3_ = _loc2_.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc1_.push(_loc2_[_loc4_].clone());
               _loc4_++;
            }
         }
         return new §@q§(_loc1_,§5!§,0);
      }
      
      public function §%!i§(param1:§=Y§) : int
      {
         var _loc2_:int = 0;
         if(param1 == null)
         {
            return -1;
         }
         if(this.§-!o§ == param1)
         {
            return 0;
         }
         if(this.§"!s§ == param1)
         {
            return 1;
         }
         if(this.§7!H§ == param1)
         {
            return 2;
         }
         if(this.§,!N§ == param1)
         {
            return 3;
         }
         if(this.§;3§ != null)
         {
            _loc2_ = this.§;3§.indexOf(param1 as §#>§);
            if(_loc2_ != -1)
            {
               return _loc2_ + 4;
            }
         }
         return -1;
      }
      
      public function contains(param1:§=Y§) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         if(this.§-!o§ == param1)
         {
            return true;
         }
         if(this.§"!s§ == param1)
         {
            return true;
         }
         if(this.§7!H§ == param1)
         {
            return true;
         }
         if(this.§,!N§ == param1)
         {
            return true;
         }
         if(this.§;3§ != null)
         {
            return this.§;3§.indexOf(param1 as §#>§) != -1;
         }
         return false;
      }
   }
}
