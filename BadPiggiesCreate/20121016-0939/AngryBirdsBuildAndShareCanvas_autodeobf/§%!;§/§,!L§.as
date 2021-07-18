package §%!;§
{
   import § "'§.§3@§;
   import §1!k§.§#W§;
   import §1!k§.§?H§;
   import §1!k§.§^!B§;
   import §=b§.§%"2§;
   
   public class §,!L§ extends §^!B§ implements §#W§
   {
       
      
      private var §[<§:§?H§;
      
      private var §-!>§:Vector.<§?H§>;
      
      private var §%!-§:§?H§;
      
      private var §#M§:§?H§;
      
      private var §<U§:§?H§;
      
      public function §,!L§(param1:Array, param2:§%"2§, param3:Number)
      {
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:§?H§ = null;
         super(param2,param3);
         _loc4_ = param1.length;
         §[m§ = 0;
         if(_loc4_ > 0)
         {
            this.§[<§ = param1[0] as §?H§;
            §[m§ = this.§[<§.duration > §[m§ ? Number(this.§[<§.duration) : Number(§[m§);
            if(_loc4_ > 1)
            {
               this.§<U§ = param1[1] as §?H§;
               §[m§ = this.§<U§.duration > §[m§ ? Number(this.§<U§.duration) : Number(§[m§);
               if(_loc4_ > 2)
               {
                  this.§%!-§ = param1[2] as §?H§;
                  §[m§ = this.§%!-§.duration > §[m§ ? Number(this.§%!-§.duration) : Number(§[m§);
                  if(_loc4_ > 3)
                  {
                     this.§#M§ = param1[3] as §?H§;
                     §[m§ = this.§#M§.duration > §[m§ ? Number(this.§#M§.duration) : Number(§[m§);
                     if(_loc4_ > 4)
                     {
                        this.§-!>§ = new Vector.<§?H§>(_loc4_ - 4,true);
                        _loc5_ = 4;
                        while(_loc5_ < _loc4_)
                        {
                           _loc6_ = param1[_loc5_] as §?H§;
                           this.§-!>§[_loc5_ - 4] = _loc6_;
                           §[m§ = _loc6_.duration > §[m§ ? Number(_loc6_.duration) : Number(§[m§);
                           _loc5_++;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §4V§(param1:int) : §3@§
      {
         if(param1 < 0)
         {
            return null;
         }
         if(param1 == 0)
         {
            return this.§[<§;
         }
         if(param1 == 1)
         {
            return this.§<U§;
         }
         if(param1 == 2)
         {
            return this.§%!-§;
         }
         if(param1 == 3)
         {
            return this.§#M§;
         }
         if(this.§-!>§ != null)
         {
            if(param1 - 4 < this.§-!>§.length)
            {
               return this.§-!>§[param1 - 4];
            }
         }
         return null;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Vector.<§?H§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(this.§[<§ != null)
         {
            this.§[<§.update(param1);
            if(this.§<U§ != null)
            {
               this.§<U§.update(param1);
               if(this.§%!-§ != null)
               {
                  this.§%!-§.update(param1);
                  if(this.§#M§ != null)
                  {
                     this.§#M§.update(param1);
                     if(this.§-!>§ != null)
                     {
                        _loc2_ = this.§-!>§;
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
      
      override protected function newInstance() : §^!B§
      {
         var _loc2_:Vector.<§?H§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Array = [];
         if(this.§[<§ != null)
         {
            _loc1_.push(this.§[<§.clone());
         }
         if(this.§<U§ != null)
         {
            _loc1_.push(this.§<U§.clone());
         }
         if(this.§%!-§ != null)
         {
            _loc1_.push(this.§%!-§.clone());
         }
         if(this.§#M§ != null)
         {
            _loc1_.push(this.§#M§.clone());
         }
         if(this.§-!>§ != null)
         {
            _loc2_ = this.§-!>§;
            _loc3_ = _loc2_.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc1_.push(_loc2_[_loc4_].clone());
               _loc4_++;
            }
         }
         return new §,!L§(_loc1_,§1!I§,0);
      }
      
      public function §@_§(param1:§3@§) : int
      {
         var _loc2_:int = 0;
         if(param1 == null)
         {
            return -1;
         }
         if(this.§[<§ == param1)
         {
            return 0;
         }
         if(this.§<U§ == param1)
         {
            return 1;
         }
         if(this.§%!-§ == param1)
         {
            return 2;
         }
         if(this.§#M§ == param1)
         {
            return 3;
         }
         if(this.§-!>§ != null)
         {
            _loc2_ = this.§-!>§.indexOf(param1 as §?H§);
            if(_loc2_ != -1)
            {
               return _loc2_ + 4;
            }
         }
         return -1;
      }
      
      public function contains(param1:§3@§) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         if(this.§[<§ == param1)
         {
            return true;
         }
         if(this.§<U§ == param1)
         {
            return true;
         }
         if(this.§%!-§ == param1)
         {
            return true;
         }
         if(this.§#M§ == param1)
         {
            return true;
         }
         if(this.§-!>§ != null)
         {
            return this.§-!>§.indexOf(param1 as §?H§) != -1;
         }
         return false;
      }
   }
}
