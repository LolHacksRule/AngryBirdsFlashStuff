package §,h§
{
   import §!X§.§!j§;
   import §!X§.§86§;
   import §0! §.§7o§;
   import §0! §.§<2§;
   import §2!F§.b2Settings;
   import §]@§.Sprite;
   import §`j§.b2World;
   
   public class §2!]§ extends §9!@§
   {
       
      
      private var §?!&§:Boolean = false;
      
      private var §7!@§:Number = 0;
      
      public function §2!]§(param1:§6M§, param2:Sprite, param3:b2World, param4:§86§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(!(_loc11_ && this))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      override public function addDestructionParticles(param1:§<2§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc2_)
         {
            if(this.§?!&§)
            {
               addr27:
               §§push(§7o§.§-! §);
               if(_loc4_ || this)
               {
                  §§push(§§pop());
                  if(_loc4_)
                  {
                     addr67:
                     §§push(§§pop());
                     addr39:
                  }
                  else
                  {
                     addr59:
                     §§push(§§pop());
                     if(_loc4_ || _loc3_)
                     {
                        §§goto(addr67);
                     }
                  }
                  var _loc2_:* = §§pop();
                  if(!_loc3_)
                  {
                     param1.addParticle(_loc2_,§<2§.§]!X§,§7o§.§&!'§,§?!7§().GetPosition().x,§?!7§().GetPosition().y - 1,2000,"",§7o§.§+#§);
                  }
                  return;
               }
               §§goto(addr39);
            }
            else
            {
               §§push(§7o§.§>[§);
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr59);
               }
            }
            §§goto(addr67);
         }
         §§goto(addr27);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number;
         §§push(_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6));
         if(!_loc9_)
         {
            §§push(§§pop() <= 0);
            if(_loc8_ || param2)
            {
               §§push(§§pop());
               if(!_loc9_)
               {
                  if(§§pop())
                  {
                     if(!(_loc9_ && param2))
                     {
                        §§pop();
                        if(!_loc9_)
                        {
                           §§push(param3);
                           loop0:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(!(_loc9_ && param1))
                              {
                                 addr121:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    addr122:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc9_ && this))
                                                {
                                                   if(_loc8_ || this)
                                                   {
                                                      this.§?!&§ = true;
                                                      addr101:
                                                   }
                                                   else
                                                   {
                                                      loop2:
                                                      while(true)
                                                      {
                                                         §§push(param4);
                                                         if(_loc9_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         if(!_loc9_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               continue loop0;
                                                            }
                                                            addr74:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               continue loop2;
                                                            }
                                                            addr123:
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr101);
                                             }
                                             §§goto(addr65);
                                          }
                                          addr82:
                                       }
                                    }
                                 }
                                 addr121:
                              }
                              §§goto(addr123);
                           }
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr121);
               }
               §§goto(addr122);
            }
            §§goto(addr121);
         }
         addr65:
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(0.3);
         if(_loc2_ || _loc1_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc2_ || this)
         {
            §§push(Math.abs(§?!7§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * _loc1_);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr156:
                        while(true)
                        {
                           §§push(Math.abs(§?!7§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * _loc1_);
                        }
                     }
                     addr155:
                  }
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc2_)
                        {
                           if(!§§pop())
                           {
                              loop7:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc3_ && _loc1_))
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§push(false);
                                          break;
                                       }
                                       §§goto(addr156);
                                    }
                                    else if(!(_loc2_ || this))
                                    {
                                       while(true)
                                       {
                                          §§push(Math.abs(§?!7§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * _loc1_);
                                          if(!_loc2_)
                                          {
                                             break loop7;
                                          }
                                          if(!_loc3_)
                                          {
                                             continue loop7;
                                          }
                                          continue loop5;
                                       }
                                       addr131:
                                    }
                                 }
                                 §§push(true);
                                 if(_loc3_ && _loc2_)
                                 {
                                    addr43:
                                    break;
                                 }
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    return §§pop();
                                 }
                                 continue loop0;
                              }
                           }
                           continue loop0;
                           return §§pop();
                        }
                        break;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr131);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§7!@§ > 0)
            {
               §§push(this);
               §§push(this.§7!@§);
               if(_loc2_ || _loc3_)
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§7!@§ = §§pop();
               do
               {
                  §2P§.mTryToScream = §0q§.§<!6§;
               }
               while(!_loc2_);
               
               return true;
            }
            else
            {
               addr19:
               §§push(super.updateScreamingFrameAnimations(param1));
               if(_loc2_ || _loc3_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr19);
      }
      
      public function §"?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§7!@§ = §!j§.§&n§;
            while(true)
            {
               §2P§.mTryToScream = §0q§.§<!6§;
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     playScreamingSoundEffect();
                     if(_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
      }
   }
}
