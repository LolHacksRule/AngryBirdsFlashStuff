package § !3§
{
   public class §!z§ implements §5"&§
   {
       
      
      private var §39§:§5"&§;
      
      private var §;%§:§5"&§;
      
      private var §'w§:§5"&§;
      
      private var §<2§:§5"&§;
      
      private var §]L§:Vector.<§5"&§>;
      
      private var §-"7§:Object = null;
      
      public function §!z§(param1:Object, param2:Vector.<§5"&§>)
      {
         var _loc4_:uint = 0;
         super();
         this.§-"7§ = param1;
         var _loc3_:uint = param2.length;
         if(_loc3_ >= 1)
         {
            this.§39§ = param2[0];
            if(_loc3_ >= 2)
            {
               this.§;%§ = param2[1];
               if(_loc3_ >= 3)
               {
                  this.§'w§ = param2[2];
                  if(_loc3_ >= 4)
                  {
                     this.§<2§ = param2[3];
                     if(_loc3_ >= 5)
                     {
                        this.§]L§ = new Vector.<§5"&§>(_loc3_ - 4,true);
                        _loc4_ = 4;
                        while(_loc4_ < _loc3_)
                        {
                           this.§]L§[_loc4_ - 4] = param2[_loc4_];
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
         var _loc2_:Vector.<§5"&§> = null;
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
                     if(this.§]L§ != null)
                     {
                        _loc2_ = this.§]L§;
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
         return this.§-"7§;
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function clone() : §5"&§
      {
         var _loc2_:Vector.<§5"&§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Vector.<§5"&§> = new Vector.<§5"&§>();
         if(this.§39§ != null)
         {
            _loc1_.push(this.§39§.clone());
            if(this.§;%§ != null)
            {
               _loc1_.push(this.§;%§.clone());
               if(this.§'w§ != null)
               {
                  _loc1_.push(this.§'w§.clone());
                  if(this.§<2§ != null)
                  {
                     _loc1_.push(this.§<2§.clone());
                     if(this.§]L§ != null)
                     {
                        _loc2_ = this.§]L§;
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
         return new §!z§(this.§-"7§,_loc1_);
      }
      
      public function §;S§(param1:uint) : §5"&§
      {
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
         return this.§]L§[param1 - 4];
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function set target(param1:Object) : void
      {
         this.§-"7§ = param1;
      }
   }
}
