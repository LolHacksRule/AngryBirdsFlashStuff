package §&!8§
{
   import § g§.§<n§;
   import § o§.b2World;
   import §,§.§ p§;
   import §^a§.Sprite;
   
   public class §'E§ extends §]V§
   {
       
      
      private var §9!a§:Number = -1;
      
      private var §0<§:Number = -1;
      
      public function §'E§(param1:§+!6§, param2:Sprite, param3:b2World, param4:§ p§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§+!6§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
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
                  addr69:
                  while(true)
                  {
                  }
               }
               do
               {
                  this.§;!&§(0);
               }
               while(!(_loc3_ || _loc3_));
               
               §§push(false);
               if(_loc2_)
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
         §§goto(addr69);
      }
      
      override public function explode() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = NaN;
         if(!(_loc3_ && _loc1_))
         {
            if(!§,B§)
            {
               if(_loc2_ || _loc3_)
               {
                  addr129:
                  this.§;!&§(0);
               }
            }
            else
            {
               §§push(this.§9!a§);
               if(_loc2_ || _loc2_)
               {
                  if(§§pop() > 0)
                  {
                     loop0:
                     while(true)
                     {
                        §§push(this.§9!a§);
                        if(!_loc3_)
                        {
                           §§push(§§pop() / this.§0<§);
                           if(_loc2_ || _loc2_)
                           {
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                              }
                              addr105:
                           }
                        }
                        while(true)
                        {
                           _loc1_ = §§pop();
                           loop1:
                           while(_loc2_)
                           {
                              this.§0<§ = 0;
                              while(!(_loc3_ && _loc1_))
                              {
                                 §§push(this);
                                 §§push(this.§0<§);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    §§push(§§pop() * _loc1_);
                                 }
                                 §§pop().§9!a§ = §§pop();
                                 if(_loc2_ || _loc1_)
                                 {
                                    if(_loc2_)
                                    {
                                       break loop1;
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                        }
                     }
                  }
                  return true;
               }
               §§goto(addr105);
            }
            §§goto(addr132);
         }
         §§goto(addr129);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!(_loc9_ && this))
         {
            if(!§,B§)
            {
               if(!_loc9_)
               {
                  super.activateSpecialPower(null);
               }
               do
               {
                  this.§;!&§();
               }
               while(!_loc8_);
               
               addr64:
            }
            return _loc7_;
         }
         §§goto(addr64);
      }
      
      public function §;!&§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§9!a§ = 0;
         }
         while(true)
         {
            §§push(param1);
            loop1:
            while(true)
            {
               §§push(0);
               addr99:
               addr100:
               addr103:
               while(§§pop() != §§pop())
               {
                  continue loop1;
               }
               this.§0<§ = 0;
               addr103:
               addr24:
               this.update(0);
               addr24:
               if(!(_loc2_ || _loc2_))
               {
                  §§goto(addr103);
               }
               return;
            }
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§9!a§);
            loop0:
            while(§§pop() >= 0)
            {
               if(!(_loc2_ && this))
               {
                  §§push(this);
                  §§push(this.§9!a§);
                  if(_loc3_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§9!a§ = §§pop();
               }
               loop1:
               while(true)
               {
                  §§push(this.§9!a§);
                  if(!(_loc2_ && param1))
                  {
                     if(§§pop() >= this.§0<§)
                     {
                        loop2:
                        while(true)
                        {
                           container.addExplosions(§7@§.§8!Z§,§`e§().GetPosition().x,§`e§().GetPosition().y);
                           loop3:
                           while(_loc3_)
                           {
                              this.§9!a§ = -1;
                              while(true)
                              {
                                 §<n§.§@B§(false);
                                 addr47:
                                 addr51:
                                 while(true)
                                 {
                                    if(_loc3_)
                                    {
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                           continue loop1;
                        }
                     }
                     while(true)
                     {
                        §!]§ = true;
                        if(_loc3_ || param1)
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           §§goto(addr66);
                        }
                        §§goto(addr47);
                        §§goto(addr51);
                     }
                     break loop0;
                  }
                  break;
               }
            }
            return;
         }
         §§goto(addr66);
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(Boolean(§,B§));
            if(_loc2_)
            {
               if(§§pop())
               {
                  addr115:
                  while(true)
                  {
                     §§pop();
                     addr116:
                     while(true)
                     {
                        §§push(this.§9!a§);
                        addr78:
                        while(true)
                        {
                           §§push(0);
                           addr79:
                           while(true)
                           {
                              §§push(§§pop() < §§pop());
                           }
                        }
                     }
                  }
                  addr115:
               }
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           break loop0;
                        }
                        loop2:
                        for(; !(_loc3_ && _loc2_); if(!(_loc2_ || _loc3_))
                        {
                           continue;
                        },while(true)
                        {
                           §§goto(addr19);
                        })
                        {
                           while(true)
                           {
                              §§push(this.§9!a§);
                              if(!(_loc3_ && this))
                              {
                                 §§push(0);
                                 if(!_loc2_)
                                 {
                                    continue loop0;
                                 }
                                 if(§§pop() >= §§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       §§push(false);
                                       break loop1;
                                    }
                                    continue loop2;
                                 }
                                 addr19:
                                 while(true)
                                 {
                                    §§push(super.isReadyToBeRemoved(param1));
                                    if(_loc3_)
                                    {
                                       break loop1;
                                    }
                                    if(_loc3_ && param1)
                                    {
                                       §§goto(addr90);
                                    }
                                    if(!_loc2_)
                                    {
                                       continue loop1;
                                    }
                                    if(_loc2_)
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr115);
                                 }
                              }
                              break;
                           }
                           §§goto(addr78);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr39);
                  }
                  return §§pop();
               }
               addr90:
               return §§pop();
               §§push(true);
            }
            §§goto(addr115);
         }
         §§goto(addr74);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§9!a§);
            if(!(_loc2_ && this))
            {
               if(§§pop() > 0)
               {
                  if(_loc1_)
                  {
                     §§push(this.§9!a§);
                     if(_loc1_)
                     {
                        addr55:
                        return §§pop() / this.§0<§;
                     }
                  }
                  §§goto(addr59);
               }
               §§goto(addr59);
            }
            §§goto(addr55);
         }
         addr59:
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§9!a§);
            if(!_loc2_)
            {
               if(§§pop() > 0)
               {
                  if(_loc1_ || _loc1_)
                  {
                     §§goto(addr46);
                  }
               }
               return 0;
            }
            §§goto(addr65);
         }
         addr46:
         §§push(this.§0<§);
         if(!(_loc2_ && _loc2_))
         {
            addr65:
            return §§pop() - this.§9!a§;
         }
      }
   }
}
