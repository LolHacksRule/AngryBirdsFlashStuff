package §6!F§
{
   public class §&7§ implements §8w§
   {
       
      
      private var §>-§:§8w§;
      
      private var §^"1§:§8w§;
      
      private var §6?§:§8w§;
      
      private var §=G§:§8w§;
      
      private var §#"7§:Vector.<§8w§>;
      
      private var §>!C§:Object = null;
      
      public function §&7§(param1:Object, param2:Vector.<§8w§>)
      {
         var _loc4_:uint = 0;
         super();
         this.§>!C§ = param1;
         var _loc3_:uint = param2.length;
         if(_loc3_ >= 1)
         {
            this.§>-§ = param2[0];
            if(_loc3_ >= 2)
            {
               this.§^"1§ = param2[1];
               if(_loc3_ >= 3)
               {
                  this.§6?§ = param2[2];
                  if(_loc3_ >= 4)
                  {
                     this.§=G§ = param2[3];
                     if(_loc3_ >= 5)
                     {
                        this.§#"7§ = new Vector.<§8w§>(_loc3_ - 4,true);
                        _loc4_ = 4;
                        while(_loc4_ < _loc3_)
                        {
                           this.§#"7§[_loc4_ - 4] = param2[_loc4_];
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
         var _loc2_:Vector.<§8w§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         if(this.§>-§ != null)
         {
            this.§>-§.update(param1);
            if(this.§^"1§ != null)
            {
               this.§^"1§.update(param1);
               if(this.§6?§ != null)
               {
                  this.§6?§.update(param1);
                  if(this.§=G§ != null)
                  {
                     this.§=G§.update(param1);
                     if(this.§#"7§ != null)
                     {
                        _loc2_ = this.§#"7§;
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
         return this.§>!C§;
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function clone() : §8w§
      {
         var _loc2_:Vector.<§8w§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Vector.<§8w§> = new Vector.<§8w§>();
         if(this.§>-§ != null)
         {
            _loc1_.push(this.§>-§.clone());
            if(this.§^"1§ != null)
            {
               _loc1_.push(this.§^"1§.clone());
               if(this.§6?§ != null)
               {
                  _loc1_.push(this.§6?§.clone());
                  if(this.§=G§ != null)
                  {
                     _loc1_.push(this.§=G§.clone());
                     if(this.§#"7§ != null)
                     {
                        _loc2_ = this.§#"7§;
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
         return new §&7§(this.§>!C§,_loc1_);
      }
      
      public function §0&§(param1:uint) : §8w§
      {
         if(param1 == 0)
         {
            return this.§>-§;
         }
         if(param1 == 1)
         {
            return this.§^"1§;
         }
         if(param1 == 2)
         {
            return this.§6?§;
         }
         if(param1 == 3)
         {
            return this.§=G§;
         }
         return this.§#"7§[param1 - 4];
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function set target(param1:Object) : void
      {
         this.§>!C§ = param1;
      }
   }
}
