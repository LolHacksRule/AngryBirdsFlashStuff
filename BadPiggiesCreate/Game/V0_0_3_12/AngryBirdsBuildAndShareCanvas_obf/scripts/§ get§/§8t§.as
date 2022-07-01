package § get§
{
   import §4!H§.§05§;
   
   public class §8t§ implements §#!K§
   {
       
      
      private var §[X§:§#!K§;
      
      private var §19§:§#!K§;
      
      private var §[!@§:§#!K§;
      
      private var §]!F§:§#!K§;
      
      private var §;!-§:Vector.<§#!K§>;
      
      private var §<"$§:Object = null;
      
      private var §,!O§:Number = 0.0;
      
      public function §8t§(param1:Object, param2:Vector.<§#!K§>)
      {
         var _loc4_:uint = 0;
         var _loc5_:§#!K§ = null;
         super();
         this.§<"$§ = param1;
         var _loc3_:uint = param2.length;
         if(_loc3_ >= 1)
         {
            this.§[X§ = param2[0];
            if(this.§,!O§ < this.§[X§.duration)
            {
               this.§,!O§ = this.§[X§.duration;
            }
            if(_loc3_ >= 2)
            {
               this.§19§ = param2[1];
               if(this.§,!O§ < this.§19§.duration)
               {
                  this.§,!O§ = this.§19§.duration;
               }
               if(_loc3_ >= 3)
               {
                  this.§[!@§ = param2[2];
                  if(this.§,!O§ < this.§[!@§.duration)
                  {
                     this.§,!O§ = this.§[!@§.duration;
                  }
                  if(_loc3_ >= 4)
                  {
                     this.§]!F§ = param2[3];
                     if(this.§,!O§ < this.§]!F§.duration)
                     {
                        this.§,!O§ = this.§]!F§.duration;
                     }
                     if(_loc3_ >= 5)
                     {
                        this.§;!-§ = new Vector.<§#!K§>(_loc3_ - 4,true);
                        _loc4_ = 4;
                        while(_loc4_ < _loc3_)
                        {
                           _loc5_ = param2[_loc4_];
                           this.§;!-§[_loc4_ - 4] = _loc5_;
                           if(this.§,!O§ < _loc5_.duration)
                           {
                              this.§,!O§ = _loc5_.duration;
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
         var _loc2_:Vector.<§#!K§> = null;
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
                     if(this.§;!-§ != null)
                     {
                        _loc2_ = this.§;!-§;
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
         return this.§<"$§;
      }
      
      public function get duration() : Number
      {
         return this.§,!O§;
      }
      
      public function set §1<§(param1:§05§) : void
      {
      }
      
      public function setSourceValue(param1:String, param2:Number, param3:Boolean = false) : void
      {
      }
      
      public function §`V§(param1:uint) : §#!K§
      {
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
         return this.§;!-§[param1 - 4];
      }
      
      public function set target(param1:Object) : void
      {
         this.§<"$§ = param1;
      }
      
      public function get §1<§() : §05§
      {
         return null;
      }
      
      public function getObject(param1:String) : Object
      {
         return null;
      }
      
      public function clone() : §,B§
      {
         var _loc2_:Vector.<§#!K§> = null;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc1_:Vector.<§#!K§> = new Vector.<§#!K§>();
         if(this.§[X§ != null)
         {
            _loc1_.push(this.§[X§.clone());
            if(this.§19§ != null)
            {
               _loc1_.push(this.§19§.clone());
               if(this.§[!@§ != null)
               {
                  _loc1_.push(this.§[!@§.clone());
                  if(this.§]!F§ != null)
                  {
                     _loc1_.push(this.§]!F§.clone());
                     if(this.§;!-§ != null)
                     {
                        _loc2_ = this.§;!-§;
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
         return new §8t§(this.§<"$§,_loc1_);
      }
   }
}
