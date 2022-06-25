package §=b§
{
   import §#V§.b2World;
   import §2_§.§'u§;
   import §7!B§.Sprite;
   
   public class §,!6§ extends §0d§
   {
       
      
      private var §=!k§:Number = -1;
      
      private var §9b§:Number = -1;
      
      public function §,!6§(param1:§>!e§, param2:Sprite, param3:b2World, param4:§'u§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!(_loc12_ && param2))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§>!e§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(super.activateSpecialPower(param1));
            while(true)
            {
               if(!§§pop())
               {
                  if(!_loc3_)
                  {
                     §§push(false);
                     break;
                  }
                  while(true)
                  {
                  }
                  addr53:
               }
               while(true)
               {
                  this.§'Y§(0);
                  if(!_loc3_)
                  {
                     break;
                  }
                  §§goto(addr53);
               }
               §§goto(addr44);
            }
            return §§pop();
         }
         addr44:
         while(true)
         {
            §§push(false);
            if(_loc3_)
            {
               break loop0;
            }
            if(!_loc3_)
            {
               break;
            }
            continue loop0;
         }
         return §§pop();
      }
      
      override public function explode() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = NaN;
         if(!(_loc2_ && _loc2_))
         {
            if(§9!J§)
            {
               §§push(this.§=!k§);
               if(_loc3_ || _loc1_)
               {
                  if(§§pop() > 0)
                  {
                     if(_loc3_)
                     {
                        if(!(_loc2_ && _loc3_))
                        {
                           §§push(this.§=!k§);
                           if(!_loc2_)
                           {
                              §§push(§§pop() / this.§9b§);
                              if(!_loc2_)
                              {
                                 addr115:
                                 §§push(Number(§§pop()));
                              }
                           }
                           _loc1_ = §§pop();
                        }
                        else
                        {
                           addr120:
                           this.§'Y§(0);
                           addr27:
                           return true;
                           addr123:
                        }
                        §§goto(addr123);
                     }
                     while(true)
                     {
                        this.§9b§ = 0;
                        while(true)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              continue;
                           }
                           §§goto(addr123);
                        }
                     }
                  }
                  §§goto(addr27);
               }
               §§goto(addr115);
            }
         }
         §§goto(addr120);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(_loc8_)
         {
            if(!§9!J§)
            {
               do
               {
                  super.activateSpecialPower(null);
                  do
                  {
                     this.§'Y§();
                  }
                  while(!_loc8_);
                  
               }
               while(_loc9_);
               
               addr51:
            }
            return _loc7_;
         }
         §§goto(addr51);
      }
      
      public function §'Y§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§=!k§ = 0;
            do
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(0);
                  addr99:
                  while(§§pop() != §§pop())
                  {
                     continue loop1;
                  }
               }
            }
            while(!(_loc2_ || _loc3_));
            
            this.§9b§ = param1;
            §§goto(addr90);
         }
         §§goto(addr100);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§=!k§);
            loop0:
            for(; §§pop() >= 0; loop2:
            while(true)
            {
               §§push(this.§=!k§);
               if(_loc2_ && _loc3_)
               {
                  break;
               }
               if(§§pop() < this.§9b§)
               {
                  do
                  {
                     §&V§ = true;
                     if(!(_loc3_ || _loc2_))
                     {
                        continue loop2;
                     }
                  }
                  while(_loc2_ && this);
                  
                  addr29:
                  break loop0;
                  addr29:
               }
               if(!(_loc2_ && param1))
               {
                  §]1§.addExplosions(§9#§.§,!>§,§3J§().GetPosition().x,§3J§().GetPosition().y);
               }
               while(!_loc2_)
               {
                  this.§=!k§ = -1;
                  continue loop2;
                  §§goto(addr40);
               }
               §§goto(addr119);
            })
            {
               while(true)
               {
                  §§push(this);
                  §§push(this.§=!k§);
                  if(!_loc2_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§=!k§ = §§pop();
                  continue loop0;
               }
            }
            return;
         }
         while(true)
         {
            §§goto(addr29);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(Boolean(§9!J§));
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  loop3:
                  while(true)
                  {
                     §§pop();
                     loop4:
                     while(true)
                     {
                        §§push(this.§=!k§);
                        loop5:
                        while(true)
                        {
                           §§push(0);
                           loop6:
                           while(true)
                           {
                              §§push(§§pop() < §§pop());
                              if(_loc2_ || _loc3_)
                              {
                                 loop0:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§push(true);
                                          break;
                                       }
                                       while(true)
                                       {
                                          if(_loc3_ && _loc3_)
                                          {
                                             continue loop4;
                                          }
                                       }
                                       continue loop4;
                                       addr106:
                                    }
                                    while(true)
                                    {
                                       §§push(this.§=!k§);
                                       if(!(_loc2_ || _loc2_))
                                       {
                                          continue loop5;
                                       }
                                       §§push(0);
                                       if(_loc3_ && this)
                                       {
                                          continue loop6;
                                       }
                                       if(§§pop() >= §§pop())
                                       {
                                          if(!_loc3_)
                                          {
                                             if(_loc2_)
                                             {
                                                §§push(false);
                                             }
                                             else
                                             {
                                                §§goto(addr106);
                                             }
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                addr24:
                                                while(true)
                                                {
                                                   §§push(super.isReadyToBeRemoved(param1));
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         return §§pop();
                                                      }
                                                      break loop0;
                                                   }
                                                }
                                             }
                                             addr72:
                                          }
                                          while(true)
                                          {
                                             if(_loc2_)
                                             {
                                                return §§pop();
                                             }
                                             continue loop3;
                                          }
                                       }
                                       §§goto(addr24);
                                    }
                                    continue loop5;
                                 }
                                 addr85:
                              }
                              return §§pop();
                           }
                        }
                     }
                  }
                  addr125:
               }
               §§goto(addr85);
            }
            §§goto(addr125);
         }
         §§goto(addr72);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§=!k§);
            if(!_loc1_)
            {
               if(§§pop() > 0)
               {
                  if(!_loc1_)
                  {
                     addr37:
                     §§push(this.§=!k§);
                     if(_loc1_ && _loc2_)
                     {
                     }
                     §§goto(addr49);
                  }
               }
               return -1;
            }
            addr49:
            return §§pop() / this.§9b§;
         }
         §§goto(addr37);
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§=!k§);
            if(!_loc2_)
            {
               if(§§pop() > 0)
               {
                  if(_loc1_)
                  {
                     §§goto(addr36);
                  }
               }
               return 0;
            }
            §§goto(addr45);
         }
         addr36:
         §§push(this.§9b§);
         if(_loc1_ || _loc1_)
         {
            addr45:
            return §§pop() - this.§=!k§;
         }
      }
   }
}
