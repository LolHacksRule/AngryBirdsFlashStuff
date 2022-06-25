package §]![§
{
   import § D§.b2World;
   import §+&§.§-!7§;
   import §9E§.Sprite;
   
   public class §,u§ extends §4J§
   {
       
      
      private var §4Y§:Number = -1;
      
      private var §@-§:Number = -1;
      
      public function §,u§(param1:§[?§, param2:Sprite, param3:b2World, param4:§-!7§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§[?§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(super.activateSpecialPower(param1));
            loop0:
            while(§§pop())
            {
               do
               {
                  this.§-!R§(0);
               }
               while(_loc3_);
               
               if(_loc2_)
               {
                  while(true)
                  {
                     §§push(false);
                     if(!_loc2_)
                     {
                        break;
                     }
                     if(!(_loc3_ && _loc3_))
                     {
                        return §§pop();
                     }
                     continue loop0;
                  }
                  addr72:
                  return §§pop();
                  addr66:
               }
               break;
            }
            §§goto(addr72);
            §§push(false);
         }
         §§goto(addr66);
      }
      
      override public function explode() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Number = NaN;
         if(_loc3_ || _loc1_)
         {
            if(§6V§)
            {
               §§push(this.§4Y§);
               if(!(_loc2_ && _loc2_))
               {
                  if(§§pop() > 0)
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        addr99:
                        §§push(this.§4Y§);
                        if(!(_loc2_ && _loc1_))
                        {
                           §§push(§§pop() / this.§@-§);
                           if(!_loc2_)
                           {
                              addr114:
                              _loc1_ = §§pop();
                           }
                        }
                        §§goto(addr114);
                     }
                     loop0:
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           addr120:
                           this.§-!R§(0);
                           break;
                        }
                        this.§@-§ = 0;
                        while(true)
                        {
                           if(_loc2_)
                           {
                              break loop0;
                           }
                           §§push(this);
                           §§push(this.§@-§);
                           if(_loc3_)
                           {
                              §§push(§§pop() * _loc1_);
                           }
                           §§pop().§4Y§ = §§pop();
                           if(_loc3_ || this)
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  return true;
               }
               §§goto(addr114);
            }
            §§goto(addr120);
         }
         §§goto(addr99);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(_loc8_)
         {
            if(!§6V§)
            {
               if(_loc8_)
               {
                  super.activateSpecialPower(null);
                  do
                  {
                     this.§-!R§();
                  }
                  while(_loc9_ && param3);
                  
                  addr72:
               }
               §§goto(addr72);
            }
            return _loc7_;
         }
         §§goto(addr72);
      }
      
      public function §-!R§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§4Y§ = 0;
            do
            {
               §§push(param1);
               while(true)
               {
                  §§push(0);
                  addr125:
                  addr126:
                  addr129:
                  §§goto(addr121);
               }
            }
            while(_loc2_ && _loc2_);
            
            addr121:
            while(§§pop() != §§pop())
            {
               continue loop1;
            }
            addr25:
            this.§@-§ = 0;
            this.update(0);
            return;
         }
         §§goto(addr68);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§4Y§);
            loop0:
            while(§§pop() >= 0)
            {
               while(true)
               {
                  §§push(this);
                  §§push(this.§4Y§);
                  if(_loc2_ || param1)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§4Y§ = §§pop();
                  continue loop0;
               }
            }
            addr24:
            return;
            addr111:
         }
         loop2:
         do
         {
            §§push(this.§4Y§);
            if(!(_loc3_ && param1))
            {
               if(§§pop() >= this.§@-§)
               {
                  loop3:
                  for(; !(_loc3_ && _loc3_); if(_loc2_ || param1)
                  {
                     continue loop2;
                  })
                  {
                     §>&§.addExplosions(§1! §.§2!w§,§+$§().GetPosition().x,§+$§().GetPosition().y);
                     while(true)
                     {
                        this.§4Y§ = -1;
                        loop5:
                        while(_loc2_ || this)
                        {
                           while(true)
                           {
                              §%m§ = true;
                              if(!_loc3_)
                              {
                                 continue loop3;
                              }
                              continue loop5;
                           }
                           continue loop2;
                        }
                     }
                  }
                  §§goto(addr113);
               }
               §§goto(addr28);
            }
            else
            {
               §§goto(addr111);
            }
         }
         while(_loc3_);
         
         §§goto(addr24);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(Boolean(§6V§));
            loop0:
            do
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr132:
                     while(true)
                     {
                        §§push(this.§4Y§);
                        addr113:
                        while(true)
                        {
                           §§push(0);
                           addr114:
                           while(true)
                           {
                              §§push(§§pop() < §§pop());
                           }
                        }
                     }
                  }
                  addr131:
               }
               loop2:
               while(true)
               {
                  loop3:
                  while(!§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§4Y§);
                        if(!(_loc2_ && _loc3_))
                        {
                           §§push(0);
                           if(!_loc2_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    if(_loc2_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    if(_loc3_ || _loc3_)
                                    {
                                       §§push(false);
                                    }
                                    §§goto(addr132);
                                 }
                                 else
                                 {
                                    if(_loc2_)
                                    {
                                       break loop3;
                                    }
                                    addr25:
                                    §§push(super.isReadyToBeRemoved(param1));
                                    if(_loc3_ || _loc2_)
                                    {
                                       return §§pop();
                                    }
                                 }
                                 if(_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 if(!(_loc3_ || _loc2_))
                                 {
                                    continue loop3;
                                 }
                                 if(_loc3_ || _loc2_)
                                 {
                                    break loop2;
                                 }
                                 §§goto(addr131);
                              }
                              §§goto(addr25);
                           }
                           §§goto(addr114);
                        }
                        break;
                     }
                     §§goto(addr113);
                  }
                  continue loop0;
               }
               return §§pop();
            }
            while(!(_loc3_ || param1));
            
            return §§pop();
         }
         §§goto(addr132);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§4Y§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop() > 0)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr61);
                  }
               }
               return -1;
            }
            §§goto(addr65);
         }
         addr61:
         §§push(this.§4Y§);
         if(_loc1_)
         {
            addr65:
            return §§pop() / this.§@-§;
         }
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§4Y§);
            if(_loc1_ || this)
            {
               if(§§pop() > 0)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr56);
                  }
               }
               return 0;
            }
            §§goto(addr65);
         }
         addr56:
         §§push(this.§@-§);
         if(_loc1_ || _loc2_)
         {
            addr65:
            return §§pop() - this.§4Y§;
         }
      }
   }
}
