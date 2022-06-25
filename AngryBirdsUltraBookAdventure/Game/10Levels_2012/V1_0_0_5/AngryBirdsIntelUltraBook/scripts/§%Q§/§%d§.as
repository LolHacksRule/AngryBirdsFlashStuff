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
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§=[§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc3_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     §§goto(addr73);
                  }
                  else
                  {
                     while(true)
                     {
                     }
                     addr74:
                  }
                  §§goto(addr73);
               }
               while(true)
               {
                  this.§#!y§(0);
                  if(!_loc2_)
                  {
                     break;
                  }
                  §§goto(addr74);
               }
               §§push(false);
               if(!_loc2_)
               {
                  return §§pop();
               }
            }
            §§goto(addr73);
         }
         addr73:
         return false;
      }
      
      override public function explode() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = NaN;
         if(!_loc3_)
         {
            if(§?!?§)
            {
               §§push(this.§^!V§);
               if(_loc2_)
               {
                  if(§§pop() > 0)
                  {
                     loop0:
                     while(true)
                     {
                        §§push(this.§^!V§);
                        if(!_loc3_)
                        {
                           §§push(§§pop() / this.§%!s§);
                           if(_loc2_ || _loc2_)
                           {
                              addr98:
                              §§push(Number(§§pop()));
                              while(true)
                              {
                                 _loc1_ = §§pop();
                                 loop2:
                                 while(!_loc3_)
                                 {
                                    this.§%!s§ = 0;
                                    while(true)
                                    {
                                       if(_loc2_)
                                       {
                                          if(_loc3_)
                                          {
                                             this.§#!y§(0);
                                             break loop2;
                                          }
                                          addr104:
                                          continue;
                                       }
                                       continue loop2;
                                    }
                                    return true;
                                 }
                                 continue loop0;
                              }
                              addr98:
                           }
                        }
                        §§goto(addr98);
                     }
                  }
                  §§goto(addr21);
               }
               §§goto(addr98);
            }
            §§goto(addr104);
         }
         §§goto(addr63);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!(_loc9_ && param3))
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
                  while(!_loc8_);
                  
               }
               while(!_loc8_);
               
               addr66:
            }
            return _loc7_;
         }
         §§goto(addr66);
      }
      
      public function §#!y§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
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
                     if(_loc2_)
                     {
                        continue loop1;
                     }
                     §§push(0);
                     if(!_loc3_)
                     {
                        continue;
                     }
                     if(§§pop() > §§pop())
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              if(!_loc2_)
                              {
                                 addr69:
                                 this.§%!s§ = param1;
                                 break loop0;
                              }
                              break;
                           }
                           addr20:
                           addr87:
                           if(!(_loc3_ || _loc3_))
                           {
                              this.update(0);
                              §§goto(addr87);
                              addr109:
                           }
                           addr20:
                           return;
                        }
                        break loop0;
                     }
                     this.§%!s§ = 2000;
                     if(_loc2_)
                     {
                        break loop0;
                     }
                     §§goto(addr20);
                  }
                  continue loop0;
               }
            }
            §§goto(addr20);
         }
         §§goto(addr69);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§^!V§);
            loop0:
            while(§§pop() >= 0)
            {
               while(true)
               {
                  §§push(this);
                  §§push(this.§^!V§);
                  if(_loc2_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§^!V§ = §§pop();
                  continue loop0;
               }
            }
            addr24:
            return;
            addr116:
         }
         loop2:
         do
         {
            §§push(this.§^!V§);
            if(_loc2_)
            {
               if(§§pop() >= this.§%!s§)
               {
                  loop3:
                  while(true)
                  {
                     §;H§.addExplosions(§=N§.§ w§,§5b§().GetPosition().x,§5b§().GetPosition().y);
                     while(!(_loc3_ && _loc3_))
                     {
                        this.§^!V§ = -1;
                        continue loop3;
                        if(_loc2_ || _loc2_)
                        {
                           continue loop2;
                        }
                     }
                     §§goto(addr118);
                  }
               }
               §§goto(addr28);
            }
            else
            {
               §§goto(addr116);
            }
         }
         while(_loc3_ && _loc2_);
         
         §§goto(addr24);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(Boolean(§?!?§));
            do
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     while(true)
                     {
                        §§push(this.§^!V§);
                        loop3:
                        while(true)
                        {
                           §§push(0);
                           addr103:
                           addr114:
                           while(true)
                           {
                              §§push(§§pop() < §§pop());
                              if(!(_loc3_ && _loc3_))
                              {
                                 while(!§§pop())
                                 {
                                    continue loop3;
                                 }
                                 addr113:
                                 §§push(true);
                                 break;
                                 addr111:
                              }
                              break;
                           }
                           addr114:
                           return §§pop();
                        }
                     }
                  }
               }
               §§goto(addr111);
            }
            while(_loc3_ && this);
            
            return §§pop();
         }
         §§goto(addr115);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§^!V§);
            if(_loc1_ || this)
            {
               if(§§pop() > 0)
               {
                  if(!_loc2_)
                  {
                     §§goto(addr41);
                  }
               }
               return -1;
            }
            §§goto(addr50);
         }
         addr41:
         §§push(this.§^!V§);
         if(_loc1_ || this)
         {
            addr50:
            return §§pop() / this.§%!s§;
         }
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§^!V§);
            if(_loc1_ || this)
            {
               if(§§pop() > 0)
               {
                  if(_loc1_)
                  {
                     §§push(this.§%!s§);
                     if(_loc1_)
                     {
                        addr50:
                        return §§pop() - this.§^!V§;
                     }
                  }
                  §§goto(addr54);
               }
               §§goto(addr54);
            }
            §§goto(addr50);
         }
         addr54:
         return 0;
      }
   }
}
