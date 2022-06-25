package §%Q§
{
   import §'!9§.Sprite;
   import §,!5§.§^g§;
   import §`w§.b2World;
   
   public class §%d§ extends §3L§
   {
       
      
      private var §^!V§:Number = -1;
      
      private var §%!s§:Number = -1;
      
      public function §%d§(param1:§=[§, param2:Sprite, param3:b2World, param4:§^g§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§=[§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(super.activateSpecialPower(param1));
            if(!(_loc3_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(!(_loc3_ && _loc3_))
                  {
                     §§goto(addr87);
                  }
                  else
                  {
                     loop0:
                     while(true)
                     {
                        addr46:
                        while(true)
                        {
                           this.§#!y§(0);
                           if(!(_loc3_ && this))
                           {
                              break;
                           }
                           continue loop0;
                        }
                        §§push(false);
                        if(_loc2_ || _loc2_)
                        {
                           return §§pop();
                        }
                        §§goto(addr87);
                     }
                  }
               }
               §§goto(addr46);
            }
            §§goto(addr87);
         }
         addr87:
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = NaN;
         if(_loc2_ || _loc1_)
         {
            if(§?!?§)
            {
               §§push(this.§^!V§);
               if(_loc2_ || _loc3_)
               {
                  if(§§pop() > 0)
                  {
                     if(!_loc3_)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           if(!(_loc3_ && _loc1_))
                           {
                              §§push(this.§^!V§);
                              if(!(_loc3_ && _loc1_))
                              {
                                 §§push(§§pop() / this.§%!s§);
                                 if(!_loc3_)
                                 {
                                    addr114:
                                    §§push(Number(§§pop()));
                                 }
                              }
                              _loc1_ = §§pop();
                              loop0:
                              while(true)
                              {
                                 this.§%!s§ = 0;
                                 do
                                 {
                                    if(_loc2_)
                                    {
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 while(§§push(this), §§push(this.§%!s§), if(_loc2_)
                                 {
                                    §§push(§§pop() * _loc1_);
                                 }, §§pop().§^!V§ = §§pop(), _loc3_);
                                 
                                 §§goto(addr26);
                              }
                              addr116:
                           }
                           else
                           {
                              addr119:
                              this.§#!y§(0);
                           }
                        }
                        §§goto(addr26);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr26);
               }
               §§goto(addr114);
            }
            §§goto(addr119);
         }
         addr26:
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!_loc8_)
         {
            if(!§?!?§)
            {
               do
               {
                  super.activateSpecialPower(null);
                  do
                  {
                     this.§#!y§();
                  }
                  while(_loc8_ && param3);
                  
               }
               while(_loc8_);
               
               addr70:
            }
            return _loc7_;
         }
         §§goto(addr70);
      }
      
      public function §#!y§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§^!V§ = 0;
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(0);
                  while(§§pop() != §§pop())
                  {
                     §§push(param1);
                     if(_loc3_)
                     {
                        §§push(0);
                        if(_loc3_ || param1)
                        {
                           if(§§pop() > §§pop())
                           {
                              if(_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       this.§%!s§ = param1;
                                       continue loop0;
                                    }
                                    this.update(0);
                                    addr109:
                                 }
                                 §§goto(addr25);
                              }
                           }
                           else
                           {
                              this.§%!s§ = 2000;
                              if(!(_loc2_ && this))
                              {
                                 break loop0;
                              }
                           }
                           continue loop0;
                        }
                        continue;
                     }
                     continue loop1;
                  }
                  this.§%!s§ = 0;
               }
            }
            addr25:
            return;
         }
         §§goto(addr109);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§^!V§);
            loop0:
            for(; §§pop() >= 0; while(true)
            {
               §§push(this.§^!V§);
               if(_loc3_)
               {
                  break;
               }
               if(§§pop() >= this.§%!s§)
               {
                  loop3:
                  for(; _loc2_; if(_loc3_ && _loc3_)
                  {
                     continue;
                  },§§goto(addr53))
                  {
                     §;H§.addExplosions(§=N§.§ w§,§5b§().GetPosition().x,§5b§().GetPosition().y);
                     loop4:
                     while(true)
                     {
                        this.§^!V§ = -1;
                        loop5:
                        while(!_loc3_)
                        {
                           while(true)
                           {
                              §&=§ = true;
                              if(_loc2_ || _loc3_)
                              {
                                 if(_loc2_)
                                 {
                                    continue loop3;
                                 }
                                 continue loop4;
                              }
                              continue loop5;
                           }
                           break loop0;
                        }
                        §§goto(addr98);
                     }
                  }
                  continue;
               }
               §§goto(addr23);
            })
            {
               while(true)
               {
                  §§push(this);
                  §§push(this.§^!V§);
                  if(_loc2_ || _loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§^!V§ = §§pop();
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §§push(Boolean(§?!?§));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop6:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop7:
                        while(true)
                        {
                           §§push(this.§^!V§);
                           if(_loc3_)
                           {
                              §§push(0);
                              if(!(_loc2_ && this))
                              {
                                 if(§§pop() >= §§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       if(!(_loc2_ && _loc3_))
                                       {
                                          if(!_loc2_)
                                          {
                                             addr72:
                                             §§push(false);
                                             if(_loc3_ || this)
                                             {
                                                return §§pop();
                                             }
                                          }
                                          else
                                          {
                                             addr105:
                                             §§push(true);
                                          }
                                          if(!(_loc2_ && param1))
                                          {
                                             break loop6;
                                          }
                                          addr121:
                                          while(true)
                                          {
                                             §§pop();
                                          }
                                       }
                                       else if(!_loc2_)
                                       {
                                          continue;
                                       }
                                       while(true)
                                       {
                                          §§push(this.§^!V§);
                                          break loop7;
                                       }
                                    }
                                    else
                                    {
                                       addr25:
                                       §§push(super.isReadyToBeRemoved(param1));
                                       if(_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             return §§pop();
                                          }
                                          continue loop0;
                                       }
                                    }
                                    §§goto(addr72);
                                 }
                                 §§goto(addr25);
                              }
                              while(true)
                              {
                                 §§push(§§pop() < §§pop());
                                 continue loop0;
                              }
                              addr95:
                           }
                           break;
                        }
                        while(true)
                        {
                           §§goto(addr95);
                        }
                     }
                     §§goto(addr105);
                  }
                  return §§pop();
                  addr103:
               }
               §§goto(addr121);
            }
         }
         §§goto(addr116);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§^!V§);
            if(!(_loc1_ && this))
            {
               if(§§pop() > 0)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(this.§^!V§);
                     if(_loc2_)
                     {
                        §§push(§§pop() / this.§%!s§);
                     }
                  }
                  else
                  {
                     §§goto(addr70);
                  }
               }
               §§goto(addr70);
            }
            return §§pop();
         }
         addr70:
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§^!V§);
            if(_loc2_)
            {
               if(§§pop() > 0)
               {
                  if(_loc2_)
                  {
                     §§push(this.§%!s§);
                     if(!(_loc1_ && this))
                     {
                        addr46:
                        return §§pop() - this.§^!V§;
                     }
                  }
                  §§goto(addr50);
               }
               §§goto(addr50);
            }
            §§goto(addr46);
         }
         addr50:
         return 0;
      }
   }
}
