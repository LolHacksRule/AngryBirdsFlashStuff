package §57§
{
   public class §6!k§ extends §`!x§ implements §3!S§
   {
       
      
      private var §8?§:Vector.<§3!S§>;
      
      private var §?k§:Boolean = true;
      
      private var §^3§:int = 0;
      
      public function §6!k§(param1:Array, param2:Boolean)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§3!S§ = null;
         if(!_loc7_)
         {
            this.§8?§ = new Vector.<§3!S§>();
            if(_loc6_ || _loc3_)
            {
               addr44:
               super();
            }
            for each(_loc3_ in param1)
            {
               if(!(_loc7_ && param2))
               {
                  this.§8?§.push(_loc3_);
               }
            }
            if(!_loc7_)
            {
               this.§?k§ = param2;
            }
            return;
         }
         §§goto(addr44);
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§3!S§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§8?§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!(_loc5_ || _loc2_))
               {
                  break;
               }
               if(!_loc1_.isCompleted)
               {
                  if(_loc5_)
                  {
                     break;
                  }
               }
            }
            return true;
         }
         return false;
      }
      
      override public function get isPaused() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§3!S§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§8?§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!_loc4_)
               {
                  break;
               }
               if(!_loc1_.isPaused)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
               }
            }
            return true;
         }
         return false;
      }
      
      private function get §%D§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§?k§)
            {
               if(!_loc2_)
               {
                  §§goto(addr70);
               }
               else
               {
                  while(true)
                  {
                     addr55:
                     if(!(_loc1_ || _loc1_))
                     {
                        continue;
                     }
                     §§goto(addr63);
                  }
                  addr74:
               }
            }
            while(true)
            {
               if(this.§8?§.length > this.§^3§)
               {
                  if(!_loc1_)
                  {
                     break;
                  }
                  §§goto(addr55);
               }
               break;
               §§goto(addr74);
            }
            §§push(0);
            if(!_loc2_)
            {
               return §§pop();
            }
            addr63:
            return 1;
         }
         addr70:
         return this.§8?§.length;
      }
      
      private function get §9O§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§?k§)
            {
               if(_loc2_ || this)
               {
                  §§push(0);
                  if(_loc2_ || _loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr48:
                  return this.§^3§;
               }
               return §§pop();
            }
         }
         §§goto(addr48);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§3!S§ = null;
         while(this.§8?§.length > 0)
         {
            _loc1_ = this.§8?§.shift();
            if(!_loc2_)
            {
               _loc1_.dispose();
            }
         }
      }
      
      public function stop() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§3!S§ = null;
         if(!_loc5_)
         {
            if(!this.isCompleted)
            {
               addr44:
               var _loc3_:* = this.§8?§;
               for each(_loc1_ in _loc3_)
               {
                  if(_loc4_ || _loc3_)
                  {
                     _loc1_.stop();
                  }
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      public function §-!T§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§3!S§ = null;
         if(!_loc4_)
         {
            if(!this.isCompleted)
            {
               addr35:
               for each(_loc1_ in this.§8?§)
               {
                  if(!_loc4_)
                  {
                     _loc1_.§-!T§();
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
         var _loc1_:§3!S§ = null;
         for each(_loc1_ in this.§8?§)
         {
            if(!_loc5_)
            {
               _loc1_.pause();
            }
         }
      }
      
      public function play() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§3!S§ = null;
         for each(_loc1_ in this.§8?§)
         {
            if(_loc4_ || _loc1_)
            {
               _loc1_.play();
            }
         }
      }
      
      public function §0!r§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§3!S§ = null;
         if(_loc3_ || _loc1_)
         {
            §=U§ = -§1!o§;
            if(!(_loc4_ && _loc1_))
            {
               this.§^3§ = 0;
            }
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§8?§.length)
         {
            _loc2_ = this.§8?§[_loc1_];
            if(!_loc4_)
            {
               _loc2_.§0!r§();
               if(_loc3_)
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
         var _loc5_:§3!S§ = null;
         if(!_loc7_)
         {
            §=U§ += param1;
            if(!_loc7_)
            {
               addr28:
               if(§=U§ < 0)
               {
                  if(!_loc7_)
                  {
                     return;
                  }
               }
            }
            §§push(this.§%D§);
            if(!_loc7_)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§9O§);
            if(_loc6_)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(_loc3_);
            if(!_loc7_)
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            while(_loc4_ < _loc3_ + _loc2_)
            {
               (_loc5_ = this.§8?§[_loc4_]).update(param1);
               if(!(_loc7_ && _loc3_))
               {
                  this.§3B§(_loc5_);
                  if(!(_loc7_ && param1))
                  {
                     _loc4_++;
                  }
               }
            }
            if(_loc6_ || _loc3_)
            {
               this.§-!r§();
            }
            return;
         }
         §§goto(addr28);
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.update(0);
         }
      }
      
      private function §3B§(param1:§3!S§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            if(param1.isCompleted)
            {
               if(!_loc5_)
               {
                  if(!this.§?k§)
                  {
                     if(_loc4_)
                     {
                        addr43:
                        var _loc2_:*;
                        §§push((_loc2_ = this).§^3§);
                        if(_loc4_ || param1)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc3_:* = §§pop();
                        if(_loc4_)
                        {
                           _loc2_.§^3§ = _loc3_;
                        }
                        if(!(_loc5_ && _loc3_))
                        {
                           addr80:
                           if(this.§^3§ < this.§8?§.length)
                           {
                              if(!_loc4_)
                              {
                              }
                           }
                           §§goto(addr94);
                        }
                     }
                     this.§8?§[this.§^3§].play();
                  }
                  §§goto(addr94);
               }
               §§goto(addr43);
            }
            addr94:
            return;
         }
         §§goto(addr80);
      }
      
      private function §-!r§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.isCompleted)
            {
               if(!(_loc3_ && this))
               {
                  if(!§5u§)
                  {
                     if(!_loc3_)
                     {
                        this.§0!r§();
                        if(_loc4_ || _loc2_)
                        {
                        }
                        try
                        {
                           addr69:
                           §@V§();
                           if(!(_loc3_ && _loc2_))
                           {
                              §@V§ = null;
                           }
                           §§goto(addr122);
                        }
                        catch(e:Error)
                        {
                           if(_loc4_ || this)
                           {
                              §@V§ = null;
                              if(!_loc3_)
                              {
                                 if(§+!p§)
                                 {
                                    §§goto(addr122);
                                 }
                              }
                           }
                           throw e;
                        }
                        §§goto(addr122);
                     }
                     this.play();
                     if(!(_loc3_ && _loc1_))
                     {
                        addr65:
                     }
                  }
                  else if(§@V§ != null)
                  {
                  }
                  §§goto(addr122);
                  return;
               }
            }
            §§goto(addr69);
         }
         §§goto(addr65);
      }
   }
}
