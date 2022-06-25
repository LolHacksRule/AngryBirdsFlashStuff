package §3Y§
{
   import §1!&§.Sprite;
   import §1%§.b2World;
   import §?A§.LevelMain;
   
   public class §each § extends §[r§
   {
       
      
      private var §@#§:Number = -1;
      
      private var § 3§:Number = -1;
      
      public function §each §(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_ || this)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:LevelObjectManager) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc3_ || _loc2_)
            {
               §§push(!§§pop());
               if(!(_loc2_ && this))
               {
                  if(§§pop())
                  {
                     if(_loc3_ || param1)
                     {
                        §§goto(addr92);
                     }
                     else
                     {
                        addr93:
                        while(true)
                        {
                        }
                        addr93:
                     }
                     §§goto(addr92);
                  }
                  while(true)
                  {
                     this.§<%§(0);
                     if(!_loc2_)
                     {
                        break;
                     }
                     §§goto(addr93);
                  }
                  §§push(false);
                  if(!(_loc2_ && _loc2_))
                  {
                     return §§pop();
                  }
               }
            }
            addr92:
            return false;
         }
         §§goto(addr93);
      }
      
      override public function explode() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = NaN;
         if(!_loc2_)
         {
            §§push(!§6!9§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§push(this.§@#§);
                  if(!_loc2_)
                  {
                     if(§§pop() <= 0)
                     {
                        continue;
                     }
                     loop1:
                     while(_loc3_)
                     {
                        §§push(this.§@#§);
                        if(!_loc2_)
                        {
                           while(true)
                           {
                              §§push(§§pop() / this.§ 3§);
                              if(_loc3_ || this)
                              {
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 addr105:
                              }
                              while(true)
                              {
                                 _loc1_ = §§pop();
                                 loop2:
                                 do
                                 {
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       this.§ 3§ = 0;
                                       while(!_loc2_)
                                       {
                                          §§push(this);
                                          §§push(this.§ 3§);
                                          if(!_loc2_)
                                          {
                                             §§push(§§pop() * _loc1_);
                                          }
                                          §§pop().§@#§ = §§pop();
                                          if(!_loc2_)
                                          {
                                             continue loop2;
                                          }
                                       }
                                       continue loop1;
                                    }
                                    addr119:
                                    while(true)
                                    {
                                       this.§<%§(0);
                                       break loop1;
                                    }
                                 }
                                 while(!(_loc3_ || _loc3_));
                                 
                                 continue loop0;
                              }
                           }
                           addr95:
                        }
                        §§goto(addr105);
                     }
                     while(true)
                     {
                        continue loop0;
                     }
                  }
                  §§goto(addr95);
               }
            }
            return §§pop();
         }
         §§goto(addr119);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(_loc8_ || param1)
         {
            §§push(!§6!9§);
            if(_loc8_)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(super.activateSpecialPower(null));
                     addr82:
                     while(true)
                     {
                        §§pop();
                        do
                        {
                           this.§<%§();
                        }
                        while(_loc9_ && param3);
                        
                        if(!_loc9_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr79:
               }
               return _loc7_;
            }
            §§goto(addr82);
         }
         §§goto(addr79);
      }
      
      public function §<%§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§@#§ = 0;
         }
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
                  if(!_loc2_)
                  {
                     continue loop1;
                  }
                  §§push(0);
                  if(!(_loc2_ || param1))
                  {
                     continue;
                  }
                  if(§§pop() > §§pop())
                  {
                     if(_loc2_ || _loc2_)
                     {
                        this.§ 3§ = param1;
                     }
                  }
                  else
                  {
                     this.§ 3§ = 2000;
                     if(!(_loc3_ && this))
                     {
                        if(!(_loc2_ || _loc2_))
                        {
                           this.update(0);
                           addr109:
                           if(_loc3_)
                           {
                              break;
                           }
                           addr119:
                        }
                        §§goto(addr24);
                     }
                     addr94:
                     if(_loc2_ || _loc2_)
                     {
                        if(_loc3_)
                        {
                           continue loop0;
                        }
                     }
                     else
                     {
                        §§goto(addr109);
                     }
                     addr24:
                     return;
                     §§goto(addr109);
                  }
                  §§goto(addr94);
               }
               this.§ 3§ = 0;
               §§goto(addr119);
            }
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§@#§);
            loop0:
            while(§§pop() >= 0)
            {
               if(_loc3_ || param1)
               {
                  §§push(this);
                  §§push(this.§@#§);
                  if(!_loc2_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§@#§ = §§pop();
               }
               loop1:
               while(true)
               {
                  §§push(this.§@#§);
                  if(!_loc3_)
                  {
                     break;
                  }
                  if(§§pop() < this.§ 3§)
                  {
                     do
                     {
                        §&&§ = true;
                        if(!(_loc3_ || _loc2_))
                        {
                           continue;
                        }
                        if(!_loc3_)
                        {
                           continue loop1;
                        }
                     }
                     while(_loc2_ && param1);
                     
                     break loop0;
                     addr29:
                  }
                  while(true)
                  {
                     container.addExplosions(§^!6§.§7#§,§8!N§().GetPosition().x,§8!N§().GetPosition().y);
                     continue loop1;
                     §§goto(addr42);
                  }
               }
            }
            return;
         }
         §§goto(addr64);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(Boolean(§6!9§));
            loop0:
            while(true)
            {
               §§push(§§pop());
               if(_loc3_ || _loc3_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr134:
                     while(true)
                     {
                        §§push(this.§@#§);
                        addr108:
                        addr112:
                        loop5:
                        while(true)
                        {
                           §§push(0);
                           addr109:
                           while(true)
                           {
                              §§push(§§pop() < §§pop());
                              addr110:
                              while(true)
                              {
                                 if(_loc3_)
                                 {
                                    break loop5;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        §§push(Boolean(§§pop()));
                     }
                  }
               }
               loop2:
               while(true)
               {
                  loop3:
                  while(!§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§@#§);
                        if(_loc3_ || _loc2_)
                        {
                           §§push(0);
                           if(!(_loc2_ && this))
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    if(!_loc3_)
                                    {
                                       continue;
                                    }
                                    if(_loc3_)
                                    {
                                       §§push(false);
                                    }
                                    §§goto(addr134);
                                 }
                                 else
                                 {
                                    if(_loc2_)
                                    {
                                       break loop3;
                                    }
                                    addr20:
                                    §§push(super.isReadyToBeRemoved(param1));
                                    if(_loc3_)
                                    {
                                       return §§pop();
                                    }
                                 }
                                 if(_loc2_ && _loc3_)
                                 {
                                    addr116:
                                    if(!_loc2_)
                                    {
                                       return §§pop();
                                    }
                                    continue loop0;
                                 }
                                 if(_loc2_ && _loc2_)
                                 {
                                    continue loop3;
                                 }
                                 if(_loc3_ || param1)
                                 {
                                    break loop2;
                                 }
                                 §§goto(addr110);
                              }
                              §§goto(addr20);
                           }
                           §§goto(addr109);
                        }
                        break;
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr116);
                  §§goto(addr112);
               }
               return §§pop();
            }
         }
         §§goto(addr134);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§@#§);
            if(_loc2_)
            {
               if(§§pop() > 0)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     §§goto(addr42);
                  }
               }
               return -1;
            }
            §§goto(addr51);
         }
         addr42:
         §§push(this.§@#§);
         if(_loc2_ || _loc1_)
         {
            addr51:
            return §§pop() / this.§ 3§;
         }
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§@#§);
            if(_loc2_)
            {
               if(§§pop() > 0)
               {
                  if(_loc2_)
                  {
                     addr42:
                     §§push(this.§ 3§);
                     if(_loc2_ || this)
                     {
                     }
                     §§goto(addr54);
                  }
               }
               return 0;
            }
            addr54:
            return §§pop() - this.§@#§;
         }
         §§goto(addr42);
      }
   }
}
