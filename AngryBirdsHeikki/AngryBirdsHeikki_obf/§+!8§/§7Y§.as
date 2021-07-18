package §+!8§
{
   import §"!I§.§^!2§;
   import §2Y§.Sprite;
   import §3!R§.b2World;
   
   public class §7Y§ extends §`!O§
   {
       
      
      private var §><§:Number = -1;
      
      private var §6!]§:Number = -1;
      
      public function §7Y§(param1:§-!N§, param2:Sprite, param3:b2World, param4:§^!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§-!N§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(super.activateSpecialPower(param1));
            while(true)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     §§push(false);
                     break;
                  }
                  addr84:
                  while(true)
                  {
                  }
               }
               do
               {
                  this.§9R§(0);
               }
               while(_loc2_ && param1);
               
               §§push(false);
               if(!(_loc3_ || _loc2_))
               {
                  break;
               }
               if(_loc3_ || this)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr84);
      }
      
      override public function explode() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = NaN;
         if(!(_loc2_ && _loc1_))
         {
            if(§!!M§)
            {
               §§push(this.§><§);
               if(!_loc2_)
               {
                  if(§§pop() > 0)
                  {
                     while(true)
                     {
                        §§push(this.§><§);
                        if(_loc3_ || _loc1_)
                        {
                           addr121:
                           §§push(§§pop() / this.§6!]§);
                           if(!_loc3_)
                           {
                           }
                           while(true)
                           {
                              _loc1_ = §§pop();
                              loop2:
                              while(true)
                              {
                                 this.§6!]§ = 0;
                                 while(true)
                                 {
                                    if(!(_loc2_ && this))
                                    {
                                       if(_loc2_ && _loc1_)
                                       {
                                          this.§9R§(0);
                                       }
                                       else
                                       {
                                          addr125:
                                       }
                                       continue;
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr128);
                              }
                           }
                           addr121:
                        }
                        §§goto(addr121);
                        §§push(Number(§§pop()));
                        if(!_loc3_)
                        {
                           continue;
                        }
                        if(_loc3_)
                        {
                        }
                        §§goto(addr128);
                     }
                  }
                  addr128:
                  return true;
               }
               §§goto(addr121);
            }
            §§goto(addr125);
         }
         §§goto(addr86);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(_loc8_)
         {
            if(!§!!M§)
            {
               do
               {
                  super.activateSpecialPower(null);
                  do
                  {
                     this.§9R§();
                  }
                  while(!_loc8_);
                  
               }
               while(!_loc8_);
               
               addr64:
            }
            return _loc7_;
         }
         §§goto(addr64);
      }
      
      public function §9R§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§><§ = 0;
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
                     if(!_loc3_)
                     {
                        continue loop1;
                     }
                     §§push(0);
                     if(!(_loc3_ || this))
                     {
                        continue;
                     }
                     if(§§pop() > §§pop())
                     {
                        if(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              this.§6!]§ = param1;
                              break loop0;
                           }
                           break;
                        }
                        break loop0;
                     }
                     this.§6!]§ = 2000;
                     if(!_loc3_)
                     {
                        break loop0;
                     }
                     if(_loc3_)
                     {
                        addr25:
                        return;
                        addr39:
                     }
                     loop4:
                     while(true)
                     {
                        if(!(_loc3_ || _loc3_))
                        {
                           while(true)
                           {
                              this.update(0);
                              continue loop4;
                           }
                           addr109:
                        }
                        continue loop0;
                     }
                  }
                  this.§6!]§ = 0;
                  §§goto(addr109);
               }
            }
            §§goto(addr25);
         }
         §§goto(addr39);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§><§);
            loop0:
            for(; §§pop() >= 0; loop2:
            while(true)
            {
               §§push(this.§><§);
               if(_loc2_)
               {
                  break;
               }
               if(§§pop() >= this.§6!]§)
               {
                  continue;
               }
               addr24:
               loop6:
               while(true)
               {
                  §"!^§ = true;
                  if(_loc3_ || _loc3_)
                  {
                     if(!_loc2_)
                     {
                        break;
                     }
                     addr84:
                     while(true)
                     {
                        this.§><§ = -1;
                     }
                  }
                  addr44:
                  while(!_loc2_)
                  {
                     continue loop6;
                  }
                  continue loop2;
               }
               if(_loc3_)
               {
                  break loop0;
               }
               §§goto(addr99);
            })
            {
               while(true)
               {
                  §§push(this);
                  §§push(this.§><§);
                  if(!_loc2_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§><§ = §§pop();
                  continue loop0;
               }
            }
            return;
         }
         while(true)
         {
            §§goto(addr24);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(Boolean(§!!M§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     while(true)
                     {
                        §§push(this.§><§);
                        loop3:
                        while(true)
                        {
                           §§push(0);
                           addr75:
                           loop4:
                           while(true)
                           {
                              §§push(§§pop() < §§pop());
                              if(!_loc3_)
                              {
                                 break;
                              }
                              if(_loc3_)
                              {
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       addr82:
                                       §§push(true);
                                       break loop4;
                                    }
                                    continue loop3;
                                 }
                                 addr65:
                                 return §§pop();
                                 addr80:
                              }
                              continue loop0;
                           }
                           addr83:
                           while(!(_loc3_ || this))
                           {
                              continue loop1;
                           }
                           return §§pop();
                        }
                     }
                  }
               }
               §§goto(addr80);
            }
         }
         §§goto(addr101);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§><§);
            if(_loc2_)
            {
               if(§§pop() > 0)
               {
                  if(_loc2_ || this)
                  {
                     addr42:
                     §§push(this.§><§);
                     if(!_loc2_)
                     {
                     }
                     §§goto(addr59);
                  }
               }
               return -1;
            }
            addr59:
            return §§pop() / this.§6!]§;
         }
         §§goto(addr42);
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§><§);
            if(!_loc1_)
            {
               if(§§pop() > 0)
               {
                  if(_loc2_ || _loc1_)
                  {
                     §§goto(addr47);
                  }
               }
               return 0;
            }
            §§goto(addr61);
         }
         addr47:
         §§push(this.§6!]§);
         if(!_loc1_)
         {
            addr61:
            return §§pop() - this.§><§;
         }
      }
   }
}
