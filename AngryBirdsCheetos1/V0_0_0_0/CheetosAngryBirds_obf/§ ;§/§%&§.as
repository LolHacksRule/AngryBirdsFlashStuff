package § ;§
{
   public class §%&§ extends §2^§ implements § X§
   {
       
      
      private var §?_§:Vector.<§ X§>;
      
      private var §+j§:Boolean = true;
      
      private var §8!0§:int = 0;
      
      public function §%&§(param1:Array, param2:Boolean)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§ X§ = null;
         if(_loc7_)
         {
            this.§?_§ = new Vector.<§ X§>();
            if(!_loc6_)
            {
               addr30:
               super();
            }
            for each(_loc3_ in param1)
            {
               if(_loc7_ || param2)
               {
                  this.§?_§.push(_loc3_);
               }
            }
            if(!(_loc6_ && _loc3_))
            {
               this.§+j§ = param2;
            }
            return;
         }
         §§goto(addr30);
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§ X§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§?_§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!(_loc4_ || _loc2_))
               {
                  addr72:
                  break;
               }
               §§push(_loc1_.isCompleted);
               if(!_loc4_)
               {
                  return §§pop();
               }
               if(!§§pop())
               {
                  if(!(_loc5_ && this))
                  {
                     break;
                  }
               }
            }
            return true;
         }
         §§goto(addr72);
         §§push(false);
      }
      
      private function get §%!V§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.§+j§)
            {
               if(!_loc2_)
               {
                  §§goto(addr74);
               }
               else
               {
                  while(true)
                  {
                  }
                  addr78:
               }
            }
            while(this.§?_§.length > 0)
            {
               if(!(_loc1_ || _loc1_))
               {
                  break;
               }
               if(!_loc2_)
               {
                  §§goto(addr57);
               }
               §§goto(addr78);
            }
            §§push(0);
            if(!_loc2_)
            {
               return §§pop();
            }
            addr57:
            return 1;
         }
         addr74:
         return this.§?_§.length;
      }
      
      private function get §-!W§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§+j§)
            {
               if(_loc1_ || _loc1_)
               {
                  §§push(0);
                  if(_loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr52:
                  return this.§8!0§;
               }
               return §§pop();
            }
         }
         §§goto(addr52);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§ X§ = null;
         while(this.§?_§.length > 0)
         {
            _loc1_ = this.§?_§.shift();
            if(!(_loc3_ && this))
            {
               _loc1_.dispose();
            }
         }
      }
      
      public function stop() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§ X§ = null;
         if(_loc5_)
         {
            if(!this.isCompleted)
            {
               addr35:
               for each(_loc1_ in this.§?_§)
               {
                  if(!_loc4_)
                  {
                     _loc1_.stop();
                  }
               }
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function §7!T§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§ X§ = null;
         if(_loc5_)
         {
            if(!this.isCompleted)
            {
               var _loc3_:* = this.§?_§;
               addr25:
               for each(_loc1_ in _loc3_)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     _loc1_.§7!T§();
                  }
               }
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function §[]§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§ X§ = null;
         §§push(this.§%!V§);
         if(!_loc4_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc1_:* = §§pop();
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§?_§[_loc1_];
            if(!(_loc4_ && _loc2_))
            {
               _loc2_.§[]§();
               if(_loc4_)
               {
                  continue;
               }
            }
            §§push(_loc1_);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() - 1);
            }
            _loc1_ = §§pop();
         }
      }
      
      public function play() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§ X§ = null;
         §§push(this.§%!V§);
         if(_loc3_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc1_:* = §§pop();
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§?_§[_loc1_];
            if(!(_loc4_ && this))
            {
               _loc2_.play();
               if(_loc4_ && _loc3_)
               {
                  continue;
               }
            }
            §§push(_loc1_);
            if(_loc3_ || _loc2_)
            {
               §§push(§§pop() - 1);
            }
            _loc1_ = §§pop();
         }
      }
      
      public function §=!R§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§ X§ = null;
         if(!_loc4_)
         {
            §"!#§ = -§;W§;
            if(_loc3_ || _loc1_)
            {
               addr42:
               this.§8!0§ = 0;
            }
            var _loc1_:int = 0;
            while(_loc1_ < this.§?_§.length)
            {
               _loc2_ = this.§?_§[_loc1_];
               if(_loc3_)
               {
                  _loc2_.§=!R§();
                  if(!_loc3_)
                  {
                     continue;
                  }
               }
               _loc1_++;
            }
            return;
         }
         §§goto(addr42);
      }
      
      public function update(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§ X§ = null;
         if(!(_loc6_ && _loc3_))
         {
            §"!#§ += param1;
            if(_loc7_ || this)
            {
               if(§"!#§ < 0)
               {
                  if(_loc7_)
                  {
                     §§goto(addr44);
                  }
               }
            }
            §§push(this.§%!V§);
            if(!(_loc6_ && _loc2_))
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§-!W§);
            if(!_loc6_)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(_loc3_);
            if(!(_loc6_ && _loc3_))
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            while(_loc4_ < _loc3_ + _loc2_)
            {
               (_loc5_ = this.§?_§[_loc4_]).update(param1);
               if(_loc7_ || this)
               {
                  this.§<!S§(_loc5_);
                  if(!(_loc6_ && _loc2_))
                  {
                     _loc4_++;
                  }
               }
            }
            if(_loc7_)
            {
               this.§+!A§();
            }
            return;
         }
         addr44:
      }
      
      private function §<!S§(param1:§ X§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param1.isCompleted);
            if(!_loc4_)
            {
               if(§§pop())
               {
                  if(_loc5_)
                  {
                     addr28:
                     if(!this.§+j§)
                     {
                        if(!_loc4_)
                        {
                           addr31:
                           var _loc2_:*;
                           §§push((_loc2_ = this).§8!0§);
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(§§pop() + 1);
                           }
                           var _loc3_:* = §§pop();
                           if(!(_loc4_ && _loc2_))
                           {
                              _loc2_.§8!0§ = _loc3_;
                           }
                           if(_loc5_ || this)
                           {
                              addr73:
                              if(this.§8!0§ < this.§?_§.length)
                              {
                                 if(_loc5_ || this)
                                 {
                                 }
                              }
                              §§goto(addr102);
                           }
                           this.§?_§[this.§8!0§].play();
                           §§goto(addr102);
                        }
                        §§goto(addr73);
                     }
                  }
               }
               addr102:
               return;
            }
            §§goto(addr28);
         }
         §§goto(addr31);
      }
      
      private function §+!A§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(this.isCompleted)
            {
               if(!(_loc4_ && _loc2_))
               {
                  if(!§^!>§)
                  {
                     if(_loc3_)
                     {
                        this.§=!R§();
                        if(_loc4_ && this)
                        {
                        }
                        addr121:
                        return;
                        addr64:
                     }
                     this.play();
                     if(!(_loc4_ && _loc2_))
                     {
                        §§goto(addr64);
                     }
                  }
                  else if(§-!1§ != null)
                  {
                  }
                  §§goto(addr121);
               }
               try
               {
                  §-!1§();
                  if(!(_loc4_ && this))
                  {
                     §-!1§ = null;
                  }
               }
               catch(e:Error)
               {
                  var _loc2_:* = e;
                  if(!_loc4_)
                  {
                     §-!1§ = null;
                     if(_loc3_ || _loc2_)
                     {
                     }
                     §§goto(addr116);
                  }
                  if(!§6,§)
                  {
                     addr116:
                     throw e;
                  }
               }
            }
         }
         §§goto(addr121);
      }
   }
}
