package §?u§
{
   public class §^g§ implements §'S§
   {
       
      
      private var §5z§:§'S§;
      
      private var §3t§:§'S§;
      
      private var §^",§:§'S§;
      
      private var §?b§:§'S§;
      
      private var §>"0§:Vector.<§'S§>;
      
      private var §@u§:Object = null;
      
      public function §^g§(param1:Object, param2:Vector.<§'S§>)
      {
         var _loc4_:uint = 0;
         super();
         this.§@u§ = param1;
         var _loc3_:uint = param2.length;
         if(_loc3_ >= 1)
         {
            this.§5z§ = param2[0];
            if(_loc3_ >= 2)
            {
               this.§3t§ = param2[1];
               if(_loc3_ >= 3)
               {
                  this.§^",§ = param2[2];
                  if(_loc3_ >= 4)
                  {
                     this.§?b§ = param2[3];
                     if(_loc3_ >= 5)
                     {
                        this.§>"0§ = new Vector.<§'S§>(_loc3_ - 4,true);
                        _loc4_ = 4;
                        while(_loc4_ < _loc3_)
                        {
                           this.§>"0§[_loc4_ - 4] = param2[_loc4_];
                           _loc4_++;
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function setObject(param1:String, param2:Object) : void
      {
      }
      
      public function setDestinationValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Vector.<§'S§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(this.§5z§ != null)
         {
            this.§5z§.update(param1);
            if(this.§3t§ != null)
            {
               this.§3t§.update(param1);
               if(this.§^",§ != null)
               {
                  this.§^",§.update(param1);
                  if(this.§?b§ != null)
                  {
                     this.§?b§.update(param1);
                     if(this.§>"0§ != null)
                     {
                        _loc2_ = this.§>"0§;
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
      
      public function get target() : Object
      {
         return this.§@u§;
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function clone() : §'S§
      {
         var _loc2_:Vector.<§'S§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Vector.<§'S§> = new Vector.<§'S§>();
         if(this.§5z§ != null)
         {
            _loc1_.push(this.§5z§.clone());
            if(this.§3t§ != null)
            {
               _loc1_.push(this.§3t§.clone());
               if(this.§^",§ != null)
               {
                  _loc1_.push(this.§^",§.clone());
                  if(this.§?b§ != null)
                  {
                     _loc1_.push(this.§?b§.clone());
                     if(this.§>"0§ != null)
                     {
                        _loc2_ = this.§>"0§;
                        _loc3_ = _loc2_.length;
                        _loc4_ = 0;
                        while(_loc4_ < _loc3_)
                        {
                           _loc1_.push(_loc2_[_loc4_].clone());
                           _loc4_++;
                        }
                     }
                  }
               }
            }
         }
         return new §^g§(this.§@u§,_loc1_);
      }
      
      public function §4;§(param1:uint) : §'S§
      {
         if(param1 == 0)
         {
            return this.§5z§;
         }
         if(param1 == 1)
         {
            return this.§3t§;
         }
         if(param1 == 2)
         {
            return this.§^",§;
         }
         if(param1 == 3)
         {
            return this.§?b§;
         }
         return this.§>"0§[param1 - 4];
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function set target(param1:Object) : void
      {
         this.§@u§ = param1;
      }
   }
}
