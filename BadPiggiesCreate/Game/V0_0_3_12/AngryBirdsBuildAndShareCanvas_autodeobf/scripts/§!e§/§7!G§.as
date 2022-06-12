package §!e§
{
   import §%!D§.§,h§;
   import §2n§.§8"7§;
   import §8!J§.§#!e§;
   import §8!J§.§3j§;
   import §8!J§.§5f§;
   
   public class §7!G§ extends §5f§ implements §#!e§
   {
       
      
      private var §[X§:§3j§;
      
      private var §4!L§:Vector.<§3j§>;
      
      private var §[!@§:§3j§;
      
      private var §]!F§:§3j§;
      
      private var §19§:§3j§;
      
      public function §7!G§(param1:Array, param2:§8"7§, param3:Number)
      {
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:§3j§ = null;
         super(param2,param3);
         _loc4_ = param1.length;
         §,!O§ = 0;
         if(_loc4_ > 0)
         {
            this.§[X§ = param1[0] as §3j§;
            §,!O§ = this.§[X§.duration > §,!O§ ? Number(this.§[X§.duration) : Number(§,!O§);
            if(_loc4_ > 1)
            {
               this.§19§ = param1[1] as §3j§;
               §,!O§ = this.§19§.duration > §,!O§ ? Number(this.§19§.duration) : Number(§,!O§);
               if(_loc4_ > 2)
               {
                  this.§[!@§ = param1[2] as §3j§;
                  §,!O§ = this.§[!@§.duration > §,!O§ ? Number(this.§[!@§.duration) : Number(§,!O§);
                  if(_loc4_ > 3)
                  {
                     this.§]!F§ = param1[3] as §3j§;
                     §,!O§ = this.§]!F§.duration > §,!O§ ? Number(this.§]!F§.duration) : Number(§,!O§);
                     if(_loc4_ > 4)
                     {
                        this.§4!L§ = new Vector.<§3j§>(_loc4_ - 4,true);
                        _loc5_ = 4;
                        while(_loc5_ < _loc4_)
                        {
                           _loc6_ = param1[_loc5_] as §3j§;
                           this.§4!L§[_loc5_ - 4] = _loc6_;
                           §,!O§ = _loc6_.duration > §,!O§ ? Number(_loc6_.duration) : Number(§,!O§);
                           _loc5_++;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §,§(param1:int) : §,h§
      {
         if(param1 < 0)
         {
            return null;
         }
         if(param1 == 0)
         {
            return this.§[X§;
         }
         if(param1 == 1)
         {
            return this.§19§;
         }
         if(param1 == 2)
         {
            return this.§[!@§;
         }
         if(param1 == 3)
         {
            return this.§]!F§;
         }
         if(this.§4!L§ != null)
         {
            if(param1 - 4 < this.§4!L§.length)
            {
               return this.§4!L§[param1 - 4];
            }
         }
         return null;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Vector.<§3j§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(this.§[X§ != null)
         {
            this.§[X§.update(param1);
            if(this.§19§ != null)
            {
               this.§19§.update(param1);
               if(this.§[!@§ != null)
               {
                  this.§[!@§.update(param1);
                  if(this.§]!F§ != null)
                  {
                     this.§]!F§.update(param1);
                     if(this.§4!L§ != null)
                     {
                        _loc2_ = this.§4!L§;
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
      
      override protected function newInstance() : §5f§
      {
         var _loc2_:Vector.<§3j§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Array = [];
         if(this.§[X§ != null)
         {
            _loc1_.push(this.§[X§.clone());
         }
         if(this.§19§ != null)
         {
            _loc1_.push(this.§19§.clone());
         }
         if(this.§[!@§ != null)
         {
            _loc1_.push(this.§[!@§.clone());
         }
         if(this.§]!F§ != null)
         {
            _loc1_.push(this.§]!F§.clone());
         }
         if(this.§4!L§ != null)
         {
            _loc2_ = this.§4!L§;
            _loc3_ = _loc2_.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc1_.push(_loc2_[_loc4_].clone());
               _loc4_++;
            }
         }
         return new §7!G§(_loc1_,§+!s§,0);
      }
      
      public function §2">§(param1:§,h§) : int
      {
         var _loc2_:int = 0;
         if(param1 == null)
         {
            return -1;
         }
         if(this.§[X§ == param1)
         {
            return 0;
         }
         if(this.§19§ == param1)
         {
            return 1;
         }
         if(this.§[!@§ == param1)
         {
            return 2;
         }
         if(this.§]!F§ == param1)
         {
            return 3;
         }
         if(this.§4!L§ != null)
         {
            _loc2_ = this.§4!L§.indexOf(param1 as §3j§);
            if(_loc2_ != -1)
            {
               return _loc2_ + 4;
            }
         }
         return -1;
      }
      
      public function contains(param1:§,h§) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         if(this.§[X§ == param1)
         {
            return true;
         }
         if(this.§19§ == param1)
         {
            return true;
         }
         if(this.§[!@§ == param1)
         {
            return true;
         }
         if(this.§]!F§ == param1)
         {
            return true;
         }
         if(this.§4!L§ != null)
         {
            return this.§4!L§.indexOf(param1 as §3j§) != -1;
         }
         return false;
      }
   }
}
