package §_-0AB§
{
   public class §_-06r§ extends §_-Ok§ implements §_-IP§
   {
       
      
      private var §_-08b§:Vector.<§_-IP§>;
      
      private var §_-01-§:Boolean = true;
      
      private var §_-o8§:int = 0;
      
      public function §_-06r§(param1:Array, param2:Boolean)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§_-IP§ = null;
         if(_loc6_)
         {
            this.§_-08b§ = new Vector.<§_-IP§>();
            if(_loc6_ || this)
            {
               addr44:
               super();
            }
            for each(_loc3_ in param1)
            {
               if(_loc6_ || param1)
               {
                  this.§_-08b§.push(_loc3_);
               }
            }
            if(_loc6_)
            {
               this.§_-01-§ = param2;
            }
            return;
         }
         §§goto(addr44);
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§_-IP§ = null;
         var _loc3_:* = this.§_-08b§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_ || this)
            {
               if(!_loc1_.isCompleted)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     return false;
                  }
               }
            }
         }
         return true;
      }
      
      override public function get isPaused() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§_-IP§ = null;
         for each(_loc1_ in this.§_-08b§)
         {
            if(_loc4_)
            {
               if(!_loc1_.isPaused)
               {
                  if(_loc4_)
                  {
                     return false;
                  }
               }
            }
         }
         return true;
      }
      
      private function get §_-cu§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§_-01-§)
            {
               if(_loc1_)
               {
                  §§goto(addr75);
               }
               else
               {
                  while(true)
                  {
                     addr60:
                     if(!(_loc1_ || _loc2_))
                     {
                        continue;
                     }
                     §§goto(addr68);
                  }
                  addr79:
               }
            }
            while(true)
            {
               if(this.§_-08b§.length > this.§_-o8§)
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr60);
               }
               break;
               §§goto(addr79);
            }
            §§push(0);
            if(_loc1_ || _loc1_)
            {
               return §§pop();
            }
            addr68:
            return 1;
         }
         addr75:
         return this.§_-08b§.length;
      }
      
      private function get §_-0r§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§_-01-§)
            {
               if(!(_loc2_ && _loc2_))
               {
                  addr38:
                  §§push(0);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr42:
                  return this.§_-o8§;
               }
               return §§pop();
            }
            §§goto(addr42);
         }
         §§goto(addr38);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-IP§ = null;
         while(this.§_-08b§.length > 0)
         {
            _loc1_ = this.§_-08b§.shift();
            if(!(_loc2_ && _loc3_))
            {
               _loc1_.dispose();
            }
         }
      }
      
      public function stop() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§_-IP§ = null;
         if(_loc4_ || _loc3_)
         {
            if(!this.isCompleted)
            {
               addr49:
               for each(_loc1_ in this.§_-08b§)
               {
                  if(_loc4_ || _loc1_)
                  {
                     _loc1_.stop();
                  }
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function §_-02V§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§_-IP§ = null;
         if(_loc5_)
         {
            if(!this.isCompleted)
            {
               addr35:
               for each(_loc1_ in this.§_-08b§)
               {
                  if(_loc5_)
                  {
                     _loc1_.§_-02V§();
                  }
               }
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function pause() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§_-IP§ = null;
         for each(_loc1_ in this.§_-08b§)
         {
            if(!_loc5_)
            {
               _loc1_.pause();
            }
         }
      }
      
      public function play() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§_-IP§ = null;
         for each(_loc1_ in this.§_-08b§)
         {
            if(_loc5_)
            {
               _loc1_.play();
            }
         }
      }
      
      public function §_-qj§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-IP§ = null;
         if(_loc4_)
         {
            §_-063§ = -§_-kv§;
            if(!(_loc3_ && _loc2_))
            {
               this.§_-o8§ = 0;
            }
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§_-08b§.length)
         {
            _loc2_ = this.§_-08b§[_loc1_];
            if(!_loc3_)
            {
               _loc2_.§_-qj§();
               if(!(_loc3_ && _loc3_))
               {
                  _loc1_++;
               }
            }
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§_-IP§ = null;
         if(_loc6_ || _loc3_)
         {
            §_-063§ += param1;
            if(_loc6_)
            {
               if(§_-063§ < 0)
               {
                  if(!_loc7_)
                  {
                     §§goto(addr38);
                  }
               }
            }
            §§push(this.§_-cu§);
            if(!_loc7_)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§_-0r§);
            if(!_loc7_)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(_loc3_);
            if(_loc6_ || param1)
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            while(_loc4_ < _loc3_ + _loc2_)
            {
               (_loc5_ = this.§_-08b§[_loc4_]).update(param1);
               if(!(_loc7_ && this))
               {
                  this.§_-Yj§(_loc5_);
                  if(_loc7_)
                  {
                     continue;
                  }
               }
               _loc4_++;
            }
            if(!_loc7_)
            {
               this.§_-A9§();
            }
            return;
         }
         addr38:
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.update(0);
         }
      }
      
      private function §_-Yj§(param1:§_-IP§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            if(param1.isCompleted)
            {
               if(_loc5_ || _loc2_)
               {
                  if(!this.§_-01-§)
                  {
                     if(_loc5_ || param1)
                     {
                        addr54:
                        var _loc2_:*;
                        §§push((_loc2_ = this).§_-o8§);
                        if(_loc5_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc3_:* = §§pop();
                        if(_loc5_)
                        {
                           _loc2_.§_-o8§ = _loc3_;
                        }
                        if(!(_loc4_ && _loc3_))
                        {
                           if(this.§_-o8§ < this.§_-08b§.length)
                           {
                              if(_loc5_)
                              {
                                 this.§_-08b§[this.§_-o8§].play();
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr54);
            }
            return;
         }
         §§goto(addr54);
      }
      
      private function §_-A9§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc1_)
         {
            if(this.isCompleted)
            {
               if(!(_loc4_ && _loc1_))
               {
                  if(!§_-W2§)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        this.§_-qj§();
                        if(_loc3_ || _loc3_)
                        {
                           addr65:
                           this.play();
                           if(_loc4_)
                           {
                              try
                              {
                                 addr73:
                                 §_-9L§();
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    §_-9L§ = null;
                                 }
                                 §§goto(addr121);
                              }
                              catch(e:Error)
                              {
                                 if(_loc3_)
                                 {
                                    §_-9L§ = null;
                                    if(!_loc4_)
                                    {
                                       if(§_-i-§)
                                       {
                                          §§goto(addr121);
                                       }
                                    }
                                 }
                                 throw e;
                              }
                           }
                           §§goto(addr121);
                        }
                        addr121:
                        return;
                     }
                  }
                  else if(§_-9L§ != null)
                  {
                  }
                  §§goto(addr73);
               }
               §§goto(addr65);
            }
         }
         §§goto(addr73);
      }
   }
}
