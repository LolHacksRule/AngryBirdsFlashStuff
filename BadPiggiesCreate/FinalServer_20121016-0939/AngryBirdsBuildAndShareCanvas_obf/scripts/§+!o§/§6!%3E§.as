package §+!o§
{
   import §+S§.b2World;
   import §5!V§.§!w§;
   import §default§.Sprite;
   
   public class §6!>§ extends §>G§
   {
       
      
      private var §]X§:Number = -1;
      
      private var §'!-§:Number = -1;
      
      public function §6!>§(param1:§?"-§, param2:Sprite, param3:b2World, param4:§!w§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_ || this)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§?"-§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(super.activateSpecialPower(param1));
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  this.§5!p§(0);
                  if(!_loc2_)
                  {
                     break;
                  }
                  addr69:
                  while(true)
                  {
                     continue loop1;
                  }
               }
               if(!_loc3_)
               {
                  break;
               }
               §§push(false);
               if(!_loc3_)
               {
                  return §§pop();
               }
               addr68:
               if(_loc3_)
               {
                  return §§pop();
               }
            }
            §§goto(addr68);
            §§push(false);
         }
         §§goto(addr69);
      }
      
      override public function explode() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = NaN;
         if(!(_loc3_ && _loc3_))
         {
            if(!§6S§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  this.§5!p§(0);
               }
            }
            else
            {
               §§push(this.§]X§);
               if(_loc2_)
               {
                  if(§§pop() > 0)
                  {
                     if(_loc2_)
                     {
                        §§push(this.§]X§);
                        if(_loc2_)
                        {
                           addr82:
                           §§push(§§pop() / this.§'!-§);
                           if(!(_loc3_ && this))
                           {
                              addr92:
                              §§push(Number(§§pop()));
                           }
                           _loc1_ = §§pop();
                           loop0:
                           while(true)
                           {
                              this.§'!-§ = 0;
                              while(_loc2_)
                              {
                                 §§push(this);
                                 §§push(this.§'!-§);
                                 if(_loc2_)
                                 {
                                    §§push(§§pop() * _loc1_);
                                 }
                                 §§pop().§]X§ = §§pop();
                                 if(_loc2_ || this)
                                 {
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                              }
                              §§goto(addr26);
                           }
                           addr94:
                        }
                        §§goto(addr92);
                     }
                     §§goto(addr94);
                  }
                  addr26:
                  return true;
               }
               §§goto(addr82);
            }
            §§goto(addr117);
         }
         §§goto(addr82);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(_loc9_ || param3)
         {
            if(!§6S§)
            {
               do
               {
                  super.activateSpecialPower(null);
                  do
                  {
                     this.§5!p§();
                  }
                  while(!(_loc9_ || param2));
                  
               }
               while(!_loc9_);
               
               addr75:
            }
            return _loc7_;
         }
         §§goto(addr75);
      }
      
      public function §5!p§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§]X§ = 0;
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(0);
                  addr97:
                  addr24:
                  while(true)
                  {
                     if(§§pop() != §§pop())
                     {
                        continue loop1;
                     }
                     if(!_loc3_)
                     {
                        this.§'!-§ = 0;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr113);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§]X§);
            loop0:
            while(§§pop() >= 0)
            {
               loop2:
               while(true)
               {
                  §§push(this.§]X§);
                  if(_loc3_)
                  {
                     continue loop0;
                  }
                  if(§§pop() >= this.§'!-§)
                  {
                     while(true)
                     {
                        container.addExplosions(§]!i§.§"!y§,getBody().GetPosition().x,getBody().GetPosition().y);
                        loop4:
                        while(_loc2_)
                        {
                           this.§]X§ = -1;
                           do
                           {
                              if(!_loc2_)
                              {
                                 continue loop4;
                              }
                           }
                           while(_loc2_);
                           
                           continue loop2;
                        }
                        addr88:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§]X§);
                           if(!(_loc3_ && param1))
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§]X§ = §§pop();
                           continue loop2;
                        }
                        addr34:
                        if(!(_loc3_ && this))
                        {
                           addr41:
                           break loop0;
                        }
                     }
                  }
                  while(true)
                  {
                     §46§ = true;
                     if(!_loc3_)
                     {
                        §§goto(addr34);
                     }
                     §§goto(addr46);
                  }
                  §§goto(addr41);
               }
            }
            return;
         }
         §§goto(addr88);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(Boolean(§6S§));
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     while(true)
                     {
                        §§push(this.§]X§);
                        while(true)
                        {
                           §§push(0);
                           addr87:
                           §§goto(addr119);
                        }
                     }
                  }
               }
               §§goto(addr99);
            }
            addr119:
            while(true)
            {
               §§push(§§pop() < §§pop());
               if(_loc2_)
               {
                  if(!(_loc2_ || this))
                  {
                     continue loop1;
                  }
                  if(!_loc2_)
                  {
                     continue loop0;
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        continue loop3;
                     }
                     if(_loc2_ || _loc3_)
                     {
                        break loop0;
                     }
                     addr120:
                     addr120:
                     while(true)
                     {
                        continue loop3;
                     }
                  }
               }
               break;
            }
            addr119:
            return §§pop();
            §§push(true);
         }
         §§goto(addr120);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§]X§);
            if(!(_loc1_ && this))
            {
               if(§§pop() > 0)
               {
                  if(!_loc1_)
                  {
                     §§push(this.§]X§);
                     if(!(_loc1_ && _loc2_))
                     {
                        §§push(§§pop() / this.§'!-§);
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§]X§);
            if(!_loc2_)
            {
               if(§§pop() > 0)
               {
                  if(!_loc2_)
                  {
                     §§push(this.§'!-§);
                     if(_loc1_)
                     {
                        §§push(§§pop() - this.§]X§);
                     }
                  }
                  else
                  {
                     §§goto(addr59);
                  }
               }
               §§goto(addr59);
            }
            return §§pop();
         }
         addr59:
         return 0;
      }
   }
}
