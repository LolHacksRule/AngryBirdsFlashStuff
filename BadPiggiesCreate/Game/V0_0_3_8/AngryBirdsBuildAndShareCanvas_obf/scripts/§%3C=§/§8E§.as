package §<=§
{
   import §6P§.§!b§;
   import §6P§.§3#§;
   import §6P§.§>Z§;
   import §]+§.§"G§;
   import §`"5§.§ !J§;
   
   public class §8E§ extends §>Z§ implements §3#§
   {
       
      
      private var §7_§:§!b§;
      
      private var §`k§:Vector.<§!b§>;
      
      private var §1%§:§!b§;
      
      private var §#!,§:§!b§;
      
      private var §`!§:§!b§;
      
      public function §8E§(param1:Array, param2:§"G§, param3:Number)
      {
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:§!b§ = null;
         super(param2,param3);
         _loc4_ = param1.length;
         §"!,§ = 0;
         if(_loc4_ > 0)
         {
            this.§7_§ = param1[0] as §!b§;
            §"!,§ = this.§7_§.duration > §"!,§ ? Number(this.§7_§.duration) : Number(§"!,§);
            if(_loc4_ > 1)
            {
               this.§`!§ = param1[1] as §!b§;
               §"!,§ = this.§`!§.duration > §"!,§ ? Number(this.§`!§.duration) : Number(§"!,§);
               if(_loc4_ > 2)
               {
                  this.§1%§ = param1[2] as §!b§;
                  §"!,§ = this.§1%§.duration > §"!,§ ? Number(this.§1%§.duration) : Number(§"!,§);
                  if(_loc4_ > 3)
                  {
                     this.§#!,§ = param1[3] as §!b§;
                     §"!,§ = this.§#!,§.duration > §"!,§ ? Number(this.§#!,§.duration) : Number(§"!,§);
                     if(_loc4_ > 4)
                     {
                        this.§`k§ = new Vector.<§!b§>(_loc4_ - 4,true);
                        _loc5_ = 4;
                        while(_loc5_ < _loc4_)
                        {
                           _loc6_ = param1[_loc5_] as §!b§;
                           this.§`k§[_loc5_ - 4] = _loc6_;
                           §"!,§ = _loc6_.duration > §"!,§ ? Number(_loc6_.duration) : Number(§"!,§);
                           _loc5_++;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §^!%§(param1:int) : § !J§
      {
         if(param1 < 0)
         {
            return null;
         }
         if(param1 == 0)
         {
            return this.§7_§;
         }
         if(param1 == 1)
         {
            return this.§`!§;
         }
         if(param1 == 2)
         {
            return this.§1%§;
         }
         if(param1 == 3)
         {
            return this.§#!,§;
         }
         if(this.§`k§ != null)
         {
            if(param1 - 4 < this.§`k§.length)
            {
               return this.§`k§[param1 - 4];
            }
         }
         return null;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Vector.<§!b§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(this.§7_§ != null)
         {
            this.§7_§.update(param1);
            if(this.§`!§ != null)
            {
               this.§`!§.update(param1);
               if(this.§1%§ != null)
               {
                  this.§1%§.update(param1);
                  if(this.§#!,§ != null)
                  {
                     this.§#!,§.update(param1);
                     if(this.§`k§ != null)
                     {
                        _loc2_ = this.§`k§;
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
      
      override protected function newInstance() : §>Z§
      {
         var _loc2_:Vector.<§!b§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Array = [];
         if(this.§7_§ != null)
         {
            _loc1_.push(this.§7_§.clone());
         }
         if(this.§`!§ != null)
         {
            _loc1_.push(this.§`!§.clone());
         }
         if(this.§1%§ != null)
         {
            _loc1_.push(this.§1%§.clone());
         }
         if(this.§#!,§ != null)
         {
            _loc1_.push(this.§#!,§.clone());
         }
         if(this.§`k§ != null)
         {
            _loc2_ = this.§`k§;
            _loc3_ = _loc2_.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc1_.push(_loc2_[_loc4_].clone());
               _loc4_++;
            }
         }
         return new §8E§(_loc1_,§;v§,0);
      }
      
      public function §+!"§(param1:§ !J§) : int
      {
         var _loc2_:int = 0;
         if(param1 == null)
         {
            return -1;
         }
         if(this.§7_§ == param1)
         {
            return 0;
         }
         if(this.§`!§ == param1)
         {
            return 1;
         }
         if(this.§1%§ == param1)
         {
            return 2;
         }
         if(this.§#!,§ == param1)
         {
            return 3;
         }
         if(this.§`k§ != null)
         {
            _loc2_ = this.§`k§.indexOf(param1 as §!b§);
            if(_loc2_ != -1)
            {
               return _loc2_ + 4;
            }
         }
         return -1;
      }
      
      public function contains(param1:§ !J§) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         if(this.§7_§ == param1)
         {
            return true;
         }
         if(this.§`!§ == param1)
         {
            return true;
         }
         if(this.§1%§ == param1)
         {
            return true;
         }
         if(this.§#!,§ == param1)
         {
            return true;
         }
         if(this.§`k§ != null)
         {
            return this.§`k§.indexOf(param1 as §!b§) != -1;
         }
         return false;
      }
   }
}
