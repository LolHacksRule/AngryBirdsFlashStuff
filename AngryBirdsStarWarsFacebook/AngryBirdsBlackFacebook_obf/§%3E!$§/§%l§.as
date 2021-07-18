package §>!$§
{
   import §!!c§.§95§;
   
   public final class §%l§ implements §95§
   {
       
      
      public var data = null;
      
      public var §]!D§:§%l§ = null;
      
      public var §-B§:§%l§ = null;
      
      public function §%l§(param1:*)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super();
            do
            {
               this.data = param1;
            }
            while(!(_loc3_ || param1));
            
         }
      }
      
      public function append(param1:*) : §%l§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.data == null)
            {
               if(_loc4_ || param1)
               {
                  this.data = param1;
                  if(!_loc4_)
                  {
                     var _loc2_:§%l§ = new §%l§(param1);
                     addr37:
                     if(!_loc3_)
                     {
                        _loc2_.§-B§ = this;
                     }
                     loop0:
                     while(true)
                     {
                        if(this.§,d§)
                        {
                           loop1:
                           while(true)
                           {
                              this.§]!D§.§-B§ = _loc2_;
                              addr95:
                              while(!_loc3_)
                              {
                                 _loc2_.§]!D§ = this.§]!D§;
                                 while(_loc4_)
                                 {
                                 }
                                 continue loop1;
                              }
                              continue loop0;
                           }
                        }
                        while(true)
                        {
                           this.§]!D§ = _loc2_;
                           if(!_loc3_)
                           {
                              if(_loc4_)
                              {
                                 break;
                              }
                              §§goto(addr95);
                           }
                           §§goto(addr74);
                        }
                        return _loc2_;
                     }
                  }
               }
               return this;
            }
         }
         §§goto(addr37);
      }
      
      public function §@!7§(param1:*) : §%l§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            if(this.data == null)
            {
               if(_loc4_ || _loc3_)
               {
                  addr35:
                  this.data = param1;
                  if(_loc4_)
                  {
                     return this;
                  }
               }
            }
            var _loc2_:§%l§ = new §%l§(param1);
            if(!_loc3_)
            {
               _loc2_.§]!D§ = this;
               loop0:
               while(true)
               {
                  if(this.§]=§)
                  {
                     addr93:
                     while(true)
                     {
                        this.§-B§.§]!D§ = _loc2_;
                        addr107:
                        while(true)
                        {
                           _loc2_.§-B§ = this.§-B§;
                           addr86:
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 continue loop0;
                              }
                           }
                           §§goto(addr93);
                        }
                     }
                     addr103:
                  }
                  while(true)
                  {
                     this.§-B§ = _loc2_;
                     if(_loc3_)
                     {
                        continue;
                     }
                     if(!_loc3_)
                     {
                        if(!(_loc3_ && param1))
                        {
                           return _loc2_;
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr107);
                  }
               }
            }
            §§goto(addr93);
         }
         §§goto(addr35);
      }
      
      public function get §,d§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§]!D§ == null);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function get §]=§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§-B§ == null);
         if(!(_loc2_ && _loc1_))
         {
            return !§§pop();
         }
      }
      
      public function §]!!§() : §%l§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§,d§)
            {
               if(_loc2_)
               {
                  §§goto(addr44);
               }
            }
            return this;
         }
         addr44:
         return this.§]!D§.§]!!§();
      }
      
      public function §["4§() : §%l§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§]=§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  §§goto(addr54);
               }
            }
            return this;
         }
         addr54:
         return this.§-B§.§["4§();
      }
      
      public function §>"k§() : *
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = undefined;
         if(_loc2_)
         {
            §§push(this.§,d§);
            if(_loc2_ || _loc3_)
            {
               §§push(!§§pop());
               if(!(_loc3_ && _loc1_))
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        addr42:
                        §§pop();
                        if(!_loc3_)
                        {
                           §§push(this.§]=§);
                           if(_loc2_)
                           {
                              addr49:
                              §§push(!§§pop());
                              if(!_loc3_)
                              {
                                 addr52:
                                 if(§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       _loc1_ = this.data;
                                       if(!_loc3_)
                                       {
                                          this.dispose();
                                          if(_loc3_ && _loc2_)
                                          {
                                             §§goto(addr72);
                                          }
                                       }
                                       return _loc1_;
                                    }
                                    §§goto(addr89);
                                 }
                                 addr72:
                                 §§push(this.§,d§);
                                 if(_loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc2_)
                                       {
                                          addr89:
                                          this.§]!D§.§-B§ = this.§-B§;
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§goto(addr132);
                                          }
                                       }
                                       §§goto(addr142);
                                    }
                                    else
                                    {
                                       §§push(this.§-B§);
                                       if(!_loc3_)
                                       {
                                          §§pop().§]!D§ = null;
                                          if(_loc2_ || this)
                                          {
                                             _loc1_ = this.data;
                                             if(!_loc3_)
                                             {
                                                this.dispose();
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   return _loc1_;
                                                }
                                             }
                                             §§goto(addr132);
                                          }
                                          §§goto(addr137);
                                       }
                                    }
                                    §§goto(addr139);
                                 }
                                 §§goto(addr132);
                              }
                           }
                           addr132:
                           if(!this.§]=§)
                           {
                              _loc1_ = this.data;
                              if(_loc2_)
                              {
                                 this.§7S§(this.§]!D§);
                                 if(!(_loc2_ || _loc2_))
                                 {
                                    §§goto(addr172);
                                 }
                              }
                              return _loc1_;
                           }
                           if(!_loc3_)
                           {
                              addr139:
                              this.§-B§.§]!D§ = this.§]!D§;
                              addr142:
                              addr137:
                           }
                           §§goto(addr142);
                           addr172:
                           return this.data;
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr49);
                  }
               }
               §§goto(addr52);
            }
            §§goto(addr42);
         }
         §§goto(addr89);
      }
      
      private function §7S§(param1:§%l§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.data = param1.data;
            loop0:
            while(true)
            {
               this.§]!D§ = param1.§]!D§;
               loop1:
               while(true)
               {
                  this.§-B§ = param1.§-B§;
                  loop2:
                  while(_loc3_)
                  {
                     §§push(this.§,d§);
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(!_loc2_)
                           {
                              this.§]!D§.§-B§ = this;
                              continue loop1;
                           }
                           continue loop2;
                           addr76:
                        }
                        addr44:
                        while(true)
                        {
                           §§push(this.§]=§);
                           if(!(_loc3_ || _loc2_))
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                                 this.§-B§.§]!D§ = this;
                              }
                              loop7:
                              while(true)
                              {
                                 addr24:
                                 while(true)
                                 {
                                    param1.dispose();
                                    if(_loc3_ || param1)
                                    {
                                       break;
                                    }
                                    continue loop7;
                                 }
                                 if(_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 if(!(_loc2_ && this))
                                 {
                                    return;
                                 }
                                 §§goto(addr76);
                              }
                           }
                           §§goto(addr24);
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§goto(addr44);
         }
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.data = null;
            if(_loc3_)
            {
               this.§]!D§ = this.§-B§ = null;
               addr34:
            }
            return;
         }
         §§goto(addr34);
      }
      
      public function §;#_§(param1:Boolean = false) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:int = 0;
         var _loc4_:* = undefined;
         var _loc2_:§%l§ = this.§["4§();
         if(!(_loc5_ && _loc2_))
         {
            if(_loc2_ == this)
            {
               if(!_loc5_)
               {
                  _loc3_ = 0;
                  addr40:
                  while(true)
                  {
                     §§push(this.size);
                     if(_loc6_)
                     {
                        if(§§pop() > 0)
                        {
                           _loc3_++;
                           if(!_loc5_)
                           {
                              _loc4_ = this.§]!!§().§>"k§();
                              if(!(_loc5_ && param1))
                              {
                                 §§push(param1);
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    if(!§§pop())
                                    {
                                       continue;
                                    }
                                    if(!(_loc6_ || this))
                                    {
                                       continue;
                                    }
                                    §§push(_loc4_ is §95§);
                                 }
                                 if(!§§pop())
                                 {
                                    continue;
                                 }
                                 if(!_loc6_)
                                 {
                                    continue;
                                 }
                              }
                              §95§(_loc4_).dispose();
                              continue;
                           }
                        }
                        §§push(_loc3_);
                        if(!_loc5_)
                        {
                           return §§pop();
                        }
                        break;
                     }
                     break;
                  }
               }
               §§goto(addr40);
            }
            else
            {
               return _loc2_.§;#_§();
            }
            return §§pop();
         }
         §§goto(addr40);
      }
      
      public function §<#Y§(param1:Function) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param1.length != 1)
            {
               if(!(_loc4_ && _loc2_))
               {
                  throw new ArgumentError("Function must have exactly one argument");
               }
            }
         }
         var _loc2_:§%l§ = this;
         if(!_loc4_)
         {
            param1(_loc2_.data);
         }
         while(_loc2_.§,d§)
         {
            _loc2_ = _loc2_.§]!D§;
            if(_loc3_)
            {
               param1(_loc2_.data);
            }
         }
      }
      
      public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("[LLNode data=" + this.data);
         if(!_loc1_)
         {
            §§push(§§pop() + " hasNext=");
            if(!(_loc1_ && _loc2_))
            {
               §§push(this.§,d§);
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc1_)
                  {
                     addr54:
                     §§push(§§pop() + " hasPrev=");
                     if(_loc2_ || _loc2_)
                     {
                        addr65:
                        §§push(§§pop() + this.§]=§);
                        if(_loc2_ || _loc1_)
                        {
                           return §§pop() + "]";
                        }
                     }
                  }
               }
               §§goto(addr65);
            }
            §§goto(addr54);
         }
         §§goto(addr65);
      }
      
      public function §;!K§(param1:int) : §%l§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§%l§ = this.§["4§();
         var _loc3_:int = 0;
         while(_loc2_.§,d§)
         {
            if(_loc3_ == param1)
            {
               if(_loc5_)
               {
                  return _loc2_;
               }
            }
            else
            {
               _loc3_++;
               if(!_loc5_)
               {
                  break;
               }
            }
            _loc2_ = _loc2_.§]!D§;
         }
         return null;
      }
      
      public function §^I§(param1:*) : §%l§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§%l§ = this.§["4§();
         while(_loc2_.§,d§)
         {
            if(_loc2_.data == param1)
            {
               if(_loc4_ || this)
               {
                  return _loc2_;
               }
            }
            _loc2_ = _loc2_.§]!D§;
         }
         return null;
      }
      
      public function filter(param1:Function, ... rest) : §%l§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§%l§ = new §%l§(null);
         var _loc4_:§%l§ = this.§["4§();
         while(_loc4_.§,d§)
         {
            if(param1(_loc4_.data))
            {
               if(!(_loc6_ || this))
               {
                  break;
               }
               _loc3_.append(_loc4_.data);
               if(_loc5_)
               {
                  break;
               }
            }
            _loc4_ = _loc4_.§]!D§;
         }
         return _loc3_;
      }
      
      public function §9h§(param1:Function, ... rest) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Array = [];
         var _loc4_:§%l§ = this.§["4§();
         while(_loc4_.§,d§)
         {
            if(param1(_loc4_.data))
            {
               if(!(_loc6_ && param1))
               {
                  _loc3_.push(_loc4_.data);
                  if(_loc6_)
                  {
                     break;
                  }
               }
            }
            _loc4_ = _loc4_.§]!D§;
         }
         return _loc3_;
      }
      
      public function contains(param1:*) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§^I§(param1) == null);
         if(!(_loc2_ && _loc3_))
         {
            return !§§pop();
         }
      }
      
      public function §&"$§() : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:Vector.<§%l§> = null;
         var _loc3_:§%l§ = null;
         var _loc1_:§%l§ = this.§["4§();
         if(!_loc7_)
         {
            if(_loc1_ != this)
            {
               return _loc1_.§&"$§();
            }
         }
         _loc2_ = new Vector.<§%l§>();
         _loc3_ = _loc1_;
         while(_loc3_.§,d§)
         {
            _loc3_ = _loc3_.§]!D§;
            if(_loc6_)
            {
               if(_loc3_.data == null)
               {
                  if(!_loc7_)
                  {
                     _loc2_.push(_loc3_);
                  }
               }
            }
         }
         if(!(_loc7_ && _loc1_))
         {
            var _loc4_:int = 0;
            if(_loc6_)
            {
               for each(_loc3_ in _loc2_)
               {
                  if(!(_loc7_ && _loc2_))
                  {
                     _loc3_.§>"k§();
                  }
               }
            }
         }
         return _loc2_.length;
      }
      
      public function get size() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§%l§ = this.§["4§();
         if(_loc4_)
         {
            if(_loc1_.data == null)
            {
               addr28:
               §§push(0);
               if(_loc3_)
               {
               }
               addr50:
               §§push(int(§§pop()));
            }
            else
            {
               §§push(1);
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr50);
               }
            }
            var _loc2_:* = §§pop();
            while(_loc1_.§,d§)
            {
               _loc1_ = _loc1_.§]!D§;
               if(!(_loc3_ && _loc2_))
               {
                  _loc2_++;
               }
            }
            return _loc2_;
         }
         §§goto(addr28);
      }
      
      public function §"S§() : §<"u§
      {
         return new §<"u§(this);
      }
   }
}
