package §%!`§
{
   import §1R§.§+!z§;
   import §1R§.§4!T§;
   import §1R§.§]!"§;
   import §6!>§.§>!#§;
   import §7[§.§0!`§;
   
   public class §,!4§ extends §]!"§ implements §+!z§
   {
       
      
      private var §39§:§4!T§;
      
      private var §,q§:Vector.<§4!T§>;
      
      private var §'w§:§4!T§;
      
      private var §<2§:§4!T§;
      
      private var §;%§:§4!T§;
      
      public function §,!4§(param1:Array, param2:§>!#§, param3:Number)
      {
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:§4!T§ = null;
         super(param2,param3);
         _loc4_ = param1.length;
         §+6§ = 0;
         if(_loc4_ > 0)
         {
            this.§39§ = param1[0] as §4!T§;
            §+6§ = this.§39§.duration > §+6§ ? Number(this.§39§.duration) : Number(§+6§);
            if(_loc4_ > 1)
            {
               this.§;%§ = param1[1] as §4!T§;
               §+6§ = this.§;%§.duration > §+6§ ? Number(this.§;%§.duration) : Number(§+6§);
               if(_loc4_ > 2)
               {
                  this.§'w§ = param1[2] as §4!T§;
                  §+6§ = this.§'w§.duration > §+6§ ? Number(this.§'w§.duration) : Number(§+6§);
                  if(_loc4_ > 3)
                  {
                     this.§<2§ = param1[3] as §4!T§;
                     §+6§ = this.§<2§.duration > §+6§ ? Number(this.§<2§.duration) : Number(§+6§);
                     if(_loc4_ > 4)
                     {
                        this.§,q§ = new Vector.<§4!T§>(_loc4_ - 4,true);
                        _loc5_ = 4;
                        while(_loc5_ < _loc4_)
                        {
                           _loc6_ = param1[_loc5_] as §4!T§;
                           this.§,q§[_loc5_ - 4] = _loc6_;
                           §+6§ = _loc6_.duration > §+6§ ? Number(_loc6_.duration) : Number(§+6§);
                           _loc5_++;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §-k§(param1:int) : §0!`§
      {
         if(param1 < 0)
         {
            return null;
         }
         if(param1 == 0)
         {
            return this.§39§;
         }
         if(param1 == 1)
         {
            return this.§;%§;
         }
         if(param1 == 2)
         {
            return this.§'w§;
         }
         if(param1 == 3)
         {
            return this.§<2§;
         }
         if(this.§,q§ != null)
         {
            if(param1 - 4 < this.§,q§.length)
            {
               return this.§,q§[param1 - 4];
            }
         }
         return null;
      }
      
      override protected function internalUpdate(param1:Number) : void
      {
         var _loc2_:Vector.<§4!T§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(this.§39§ != null)
         {
            this.§39§.update(param1);
            if(this.§;%§ != null)
            {
               this.§;%§.update(param1);
               if(this.§'w§ != null)
               {
                  this.§'w§.update(param1);
                  if(this.§<2§ != null)
                  {
                     this.§<2§.update(param1);
                     if(this.§,q§ != null)
                     {
                        _loc2_ = this.§,q§;
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
      
      override protected function newInstance() : §]!"§
      {
         var _loc2_:Vector.<§4!T§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Array = [];
         if(this.§39§ != null)
         {
            _loc1_.push(this.§39§.clone());
         }
         if(this.§;%§ != null)
         {
            _loc1_.push(this.§;%§.clone());
         }
         if(this.§'w§ != null)
         {
            _loc1_.push(this.§'w§.clone());
         }
         if(this.§<2§ != null)
         {
            _loc1_.push(this.§<2§.clone());
         }
         if(this.§,q§ != null)
         {
            _loc2_ = this.§,q§;
            _loc3_ = _loc2_.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc1_.push(_loc2_[_loc4_].clone());
               _loc4_++;
            }
         }
         return new §,!4§(_loc1_,§05§,0);
      }
      
      public function §!O§(param1:§0!`§) : int
      {
         var _loc2_:int = 0;
         if(param1 == null)
         {
            return -1;
         }
         if(this.§39§ == param1)
         {
            return 0;
         }
         if(this.§;%§ == param1)
         {
            return 1;
         }
         if(this.§'w§ == param1)
         {
            return 2;
         }
         if(this.§<2§ == param1)
         {
            return 3;
         }
         if(this.§,q§ != null)
         {
            _loc2_ = this.§,q§.indexOf(param1 as §4!T§);
            if(_loc2_ != -1)
            {
               return _loc2_ + 4;
            }
         }
         return -1;
      }
      
      public function contains(param1:§0!`§) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         if(this.§39§ == param1)
         {
            return true;
         }
         if(this.§;%§ == param1)
         {
            return true;
         }
         if(this.§'w§ == param1)
         {
            return true;
         }
         if(this.§<2§ == param1)
         {
            return true;
         }
         if(this.§,q§ != null)
         {
            return this.§,q§.indexOf(param1 as §4!T§) != -1;
         }
         return false;
      }
   }
}
