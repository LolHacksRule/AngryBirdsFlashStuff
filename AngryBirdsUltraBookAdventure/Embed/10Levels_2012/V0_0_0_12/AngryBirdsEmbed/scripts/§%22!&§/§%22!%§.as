package §"!&§
{
   public class §"!%§ extends §+!3§ implements §-!;§
   {
       
      
      private var §+T§:Vector.<§-!;§>;
      
      private var §7E§:Boolean = true;
      
      private var § !C§:int = 0;
      
      public function §"!%§(param1:Array, param2:Boolean)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§-!;§ = null;
         if(_loc7_)
         {
            this.§+T§ = new Vector.<§-!;§>();
            if(!(_loc6_ && this))
            {
               super();
            }
         }
         for each(_loc3_ in param1)
         {
            if(_loc7_)
            {
               this.§+T§.push(_loc3_);
            }
         }
         if(_loc7_ || this)
         {
            this.§7E§ = param2;
         }
      }
      
      override public function get isCompleted() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§-!;§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§+T§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc5_ || _loc2_)
            {
               if(!_loc1_.isCompleted)
               {
                  if(!(_loc4_ && _loc3_))
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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§-!;§ = null;
         for each(_loc1_ in this.§+T§)
         {
            if(!_loc4_)
            {
               if(!_loc1_.isPaused)
               {
                  if(!(_loc4_ && this))
                  {
                     return false;
                  }
               }
            }
         }
         return true;
      }
      
      private function get §67§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§7E§)
            {
               if(!_loc1_)
               {
                  return this.§+T§.length;
               }
            }
            if(this.§+T§.length > this.§ !C§)
            {
               if(_loc2_)
               {
                  §§push(1);
                  if(!(_loc1_ && this))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr77:
                  §§push(0);
               }
               return §§pop();
            }
         }
         §§goto(addr77);
      }
      
      private function get §1!>§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.§7E§)
            {
               if(_loc1_)
               {
                  addr28:
                  §§push(0);
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr32:
                  §§push(this.§ !C§);
               }
               return §§pop();
            }
            §§goto(addr32);
         }
         §§goto(addr28);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§-!;§ = null;
         while(this.§+T§.length > 0)
         {
            _loc1_ = this.§+T§.shift();
            if(_loc3_)
            {
               _loc1_.dispose();
            }
         }
      }
      
      public function stop() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§-!;§ = null;
         if(_loc4_)
         {
            if(!this.isCompleted)
            {
               addr44:
               var _loc3_:* = this.§+T§;
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
      
      public function §+!=§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§-!;§ = null;
         if(!_loc5_)
         {
            if(!this.isCompleted)
            {
               addr34:
               for each(_loc1_ in this.§+T§)
               {
                  if(_loc4_)
                  {
                     _loc1_.§+!=§();
                  }
               }
            }
            return;
         }
         §§goto(addr34);
      }
      
      public function pause() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§-!;§ = null;
         for each(_loc1_ in this.§+T§)
         {
            if(_loc5_)
            {
               _loc1_.pause();
            }
         }
      }
      
      public function play() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§-!;§ = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§+T§)
         {
            if(_loc4_ || _loc2_)
            {
               _loc1_.play();
            }
         }
      }
      
      public function §'! §() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§-!;§ = null;
         if(_loc4_)
         {
            §=,§ = -§1!-§;
            if(_loc4_)
            {
               this.§ !C§ = 0;
            }
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§+T§.length)
         {
            _loc2_ = this.§+T§[_loc1_];
            if(_loc4_ || _loc2_)
            {
               _loc2_.§'! §();
               if(!(_loc4_ || _loc3_))
               {
                  continue;
               }
            }
            _loc1_++;
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:§-!;§ = null;
         if(!_loc7_)
         {
            §=,§ += param1;
            if(!_loc7_)
            {
               if(§=,§ < 0)
               {
                  if(_loc6_ || _loc3_)
                  {
                     §§goto(addr38);
                  }
               }
            }
            §§push(this.§67§);
            if(!_loc7_)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(this.§1!>§);
            if(_loc6_)
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(_loc3_);
            if(_loc6_)
            {
               §§push(int(§§pop()));
            }
            var _loc4_:* = §§pop();
            while(_loc4_ < _loc3_ + _loc2_)
            {
               (_loc5_ = this.§+T§[_loc4_]).update(param1);
               if(_loc6_)
               {
                  this.§-8§(_loc5_);
                  if(_loc7_)
                  {
                     continue;
                  }
               }
               _loc4_++;
            }
            if(!(_loc7_ && _loc2_))
            {
               this.§!e§();
            }
            return;
         }
         addr38:
      }
      
      public function updateState() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.update(0);
         }
      }
      
      private function §-8§(param1:§-!;§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            if(param1.isCompleted)
            {
               if(!(_loc4_ && this))
               {
                  if(!this.§7E§)
                  {
                     if(_loc5_ || this)
                     {
                        addr49:
                        var _loc2_:*;
                        §§push((_loc2_ = this).§ !C§);
                        if(!_loc4_)
                        {
                           §§push(§§pop() + 1);
                        }
                        var _loc3_:* = §§pop();
                        if(!(_loc4_ && _loc2_))
                        {
                           _loc2_.§ !C§ = _loc3_;
                        }
                        if(_loc5_)
                        {
                           if(this.§ !C§ < this.§+T§.length)
                           {
                              if(!_loc5_)
                              {
                              }
                           }
                           §§goto(addr95);
                        }
                        this.§+T§[this.§ !C§].play();
                     }
                  }
               }
               §§goto(addr49);
            }
            addr95:
            return;
         }
         §§goto(addr49);
      }
      
      private function §!e§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc1_))
         {
            if(this.isCompleted)
            {
               if(_loc3_ || this)
               {
                  if(!§+L§)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        this.§'! §();
                        if(_loc3_ || _loc2_)
                        {
                           this.play();
                           if(_loc3_ || _loc2_)
                           {
                              addr126:
                              return;
                              addr74:
                           }
                           §§goto(addr126);
                        }
                        §§goto(addr74);
                     }
                  }
                  else
                  {
                     if(§8q§ != null)
                     {
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr126);
               }
               try
               {
                  §8q§();
                  if(_loc3_)
                  {
                     §8q§ = null;
                  }
               }
               catch(e:Error)
               {
                  if(_loc3_ || this)
                  {
                     §8q§ = null;
                     if(!_loc3_)
                     {
                     }
                     §§goto(addr121);
                  }
                  if(!§4L§)
                  {
                     addr121:
                     throw e;
                  }
               }
            }
         }
         §§goto(addr126);
      }
   }
}
