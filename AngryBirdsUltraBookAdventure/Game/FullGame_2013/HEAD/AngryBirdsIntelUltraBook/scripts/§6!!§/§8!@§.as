package §6!!§
{
   import §#!,§.Sprite;
   import §>!L§.b2World;
   import §]!@§.LevelMain;
   
   public class §8!@§ extends §6!f§
   {
       
      
      private var §8!;§:Number = -1;
      
      private var §7#§:Number = -1;
      
      public function §8!@§(param1:LevelObjectManager, param2:Sprite, param3:b2World, param4:LevelMain, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:LevelObjectManager) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc3_ || _loc3_)
            {
               §§push(!§§pop());
            }
            while(true)
            {
               if(§§pop())
               {
                  if(_loc3_ || this)
                  {
                     §§push(false);
                     break;
                  }
                  addr83:
                  while(true)
                  {
                  }
               }
               do
               {
                  this.§5!-§(0);
               }
               while(_loc2_);
               
               §§push(false);
               if(_loc2_ && _loc2_)
               {
                  break;
               }
               if(!_loc2_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr83);
      }
      
      override public function explode() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = NaN;
         if(!(_loc3_ && this))
         {
            §§push(!§+!O§);
            while(true)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     this.§5!-§(0);
                  }
               }
               else
               {
                  §§push(this.§8!;§);
                  if(_loc2_)
                  {
                     if(§§pop() > 0)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(this.§8!;§);
                           if(_loc2_ || _loc1_)
                           {
                              §§push(§§pop() / this.§7#§);
                              if(_loc2_ || _loc1_)
                              {
                                 addr112:
                                 §§push(Number(§§pop()));
                              }
                              _loc1_ = §§pop();
                           }
                           §§goto(addr112);
                        }
                        loop1:
                        while(!(_loc3_ && _loc3_))
                        {
                           while(true)
                           {
                              this.§7#§ = 0;
                              do
                              {
                                 §§push(this);
                                 §§push(this.§7#§);
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(§§pop() * _loc1_);
                                 }
                                 §§pop().§8!;§ = §§pop();
                              }
                              while(!_loc2_);
                              
                              if(_loc2_)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                        }
                     }
                     continue;
                  }
                  §§goto(addr112);
               }
               §§goto(addr132);
            }
            return §§pop();
         }
         §§goto(addr121);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(_loc9_)
         {
            §§push(!§+!O§);
            if(_loc9_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(super.activateSpecialPower(null));
                     addr78:
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
               }
               return _loc7_;
            }
            §§goto(addr78);
         }
         §§goto(addr79);
      }
      
      public function §5!-§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§8!;§ = 0;
            loop0:
            do
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(0);
                  while(§§pop() != §§pop())
                  {
                     §§push(param1);
                     if(!_loc3_)
                     {
                        continue loop1;
                     }
                     §§push(0);
                     if(!(_loc3_ || _loc2_))
                     {
                        continue;
                     }
                     if(§§pop() <= §§pop())
                     {
                        this.§7#§ = 2000;
                        if(!(_loc2_ && _loc3_))
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              if(!_loc3_)
                              {
                                 this.update(0);
                                 addr100:
                                 addr115:
                              }
                              §§goto(addr20);
                           }
                           addr72:
                           if(_loc3_ || param1)
                           {
                              if(_loc2_)
                              {
                                 break;
                              }
                              this.§7#§ = param1;
                              addr94:
                           }
                           else
                           {
                              §§goto(addr100);
                           }
                           addr20:
                           return;
                           §§goto(addr100);
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr72);
                  }
                  continue loop0;
               }
            }
            while(_loc2_ && _loc2_);
            
            this.§7#§ = 0;
            §§goto(addr115);
         }
         §§goto(addr94);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§8!;§);
            loop0:
            while(§§pop() >= 0)
            {
               if(!(_loc2_ && _loc3_))
               {
                  §§push(this);
                  §§push(this.§8!;§);
                  if(_loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§8!;§ = §§pop();
               }
               loop1:
               while(true)
               {
                  §§push(this.§8!;§);
                  if(!_loc3_)
                  {
                     continue loop0;
                  }
                  if(§§pop() < this.§7#§)
                  {
                     loop5:
                     while(true)
                     {
                        §[c§ = true;
                        if(_loc3_ || param1)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           addr100:
                           while(true)
                           {
                              this.§8!;§ = -1;
                           }
                        }
                        while(true)
                        {
                           if(_loc3_)
                           {
                              continue loop1;
                           }
                           continue loop5;
                        }
                        continue loop1;
                     }
                     break loop0;
                     addr29:
                  }
                  while(true)
                  {
                     container.addExplosions(§[!T§.§4G§,§@!'§().GetPosition().x,§@!'§().GetPosition().y);
                     §§goto(addr100);
                  }
               }
            }
            return;
         }
         §§goto(addr120);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(Boolean(§+!O§));
            loop0:
            while(true)
            {
               §§push(§§pop());
               if(_loc2_)
               {
                  §§push(Boolean(§§pop()));
               }
               if(!§§pop())
               {
                  loop6:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!(_loc3_ && this))
                        {
                           §§push(true);
                           break;
                        }
                        loop7:
                        for(; !(_loc3_ && _loc3_); if(!(_loc2_ || this))
                        {
                           continue;
                        },while(true)
                        {
                           §§goto(addr24);
                        })
                        {
                           loop8:
                           while(true)
                           {
                              §§push(this.§8!;§);
                              if(!(_loc3_ && param1))
                              {
                                 §§push(0);
                                 if(!_loc3_)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       break;
                                    }
                                    if(!(_loc2_ || this))
                                    {
                                       continue loop7;
                                    }
                                    §§push(false);
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          break loop6;
                                          addr57:
                                       }
                                       if(_loc2_ || this)
                                       {
                                          return §§pop();
                                       }
                                       continue loop0;
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop() < §§pop());
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          if(!_loc2_)
                                          {
                                             break;
                                          }
                                          §§push(Boolean(§§pop()));
                                       }
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       §§pop();
                                       break loop7;
                                    }
                                    addr87:
                                    addr142:
                                 }
                              }
                              addr86:
                              while(true)
                              {
                                 §§goto(addr87);
                                 continue loop8;
                              }
                           }
                           while(true)
                           {
                              §§push(super.isReadyToBeRemoved(param1));
                              if(_loc2_)
                              {
                                 return §§pop();
                              }
                              §§goto(addr55);
                           }
                        }
                        while(true)
                        {
                           §§goto(addr86);
                        }
                     }
                     §§goto(addr33);
                  }
                  return §§pop();
                  addr115:
               }
               §§goto(addr142);
            }
         }
         §§goto(addr82);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§8!;§);
            if(_loc1_)
            {
               if(§§pop() > 0)
               {
                  if(!(_loc2_ && this))
                  {
                     §§push(this.§8!;§);
                     if(_loc1_)
                     {
                        §§push(§§pop() / this.§7#§);
                     }
                  }
                  else
                  {
                     §§goto(addr54);
                  }
               }
               §§goto(addr54);
            }
            return §§pop();
         }
         addr54:
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§8!;§);
            if(_loc1_ || this)
            {
               if(§§pop() > 0)
               {
                  if(!_loc2_)
                  {
                     §§push(this.§7#§);
                     if(_loc1_ || _loc2_)
                     {
                        §§push(§§pop() - this.§8!;§);
                     }
                  }
                  else
                  {
                     §§goto(addr54);
                  }
               }
               §§goto(addr54);
            }
            return §§pop();
         }
         addr54:
         return 0;
      }
   }
}
