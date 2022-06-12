package §?u§
{
   import §`!?§.§6!K§;
   
   public class §?!J§ implements §`_§
   {
       
      
      private var §5z§:§`_§;
      
      private var §3t§:§`_§;
      
      private var §^",§:§`_§;
      
      private var §?b§:§`_§;
      
      private var §>"0§:Vector.<§`_§>;
      
      private var §@u§:Object = null;
      
      private var §4!1§:Number = 0.0;
      
      public function §?!J§(param1:Object, param2:Vector.<§`_§>)
      {
         var _loc4_:uint = 0;
         var _loc5_:§`_§ = null;
         super();
         this.§@u§ = param1;
         var _loc3_:uint = param2.length;
         if(_loc3_ >= 1)
         {
            this.§5z§ = param2[0];
            if(this.§4!1§ < this.§5z§.duration)
            {
               this.§4!1§ = this.§5z§.duration;
            }
            if(_loc3_ >= 2)
            {
               this.§3t§ = param2[1];
               if(this.§4!1§ < this.§3t§.duration)
               {
                  this.§4!1§ = this.§3t§.duration;
               }
               if(_loc3_ >= 3)
               {
                  this.§^",§ = param2[2];
                  if(this.§4!1§ < this.§^",§.duration)
                  {
                     this.§4!1§ = this.§^",§.duration;
                  }
                  if(_loc3_ >= 4)
                  {
                     this.§?b§ = param2[3];
                     if(this.§4!1§ < this.§?b§.duration)
                     {
                        this.§4!1§ = this.§?b§.duration;
                     }
                     if(_loc3_ >= 5)
                     {
                        this.§>"0§ = new Vector.<§`_§>(_loc3_ - 4,true);
                        _loc4_ = 4;
                        while(_loc4_ < _loc3_)
                        {
                           _loc5_ = param2[_loc4_];
                           this.§>"0§[_loc4_ - 4] = _loc5_;
                           if(this.§4!1§ < _loc5_.duration)
                           {
                              this.§4!1§ = _loc5_.duration;
                           }
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
         var _loc2_:Vector.<§`_§> = null;
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
      
      public function get duration() : Number
      {
         return this.§4!1§;
      }
      
      public function set §,@§(param1:§6!K§) : void
      {
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function §4;§(param1:uint) : §`_§
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
      
      public function set target(param1:Object) : void
      {
         this.§@u§ = param1;
      }
      
      public function get §,@§() : §6!K§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §'S§
      {
         var _loc2_:Vector.<§`_§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Vector.<§`_§> = new Vector.<§`_§>();
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
         return new §?!J§(this.§@u§,_loc1_);
      }
   }
}
