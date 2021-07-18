package §&!P§
{
   import §"J§.b2World;
   import §%!0§.§,4§;
   import §+!-§.Sprite;
   import §]§.§?h§;
   
   public class §&!^§ extends §9`§
   {
       
      
      private var §7s§:Number = -1;
      
      private var §2y§:Number = -1;
      
      public function §&!^§(param1:§^!!§, param2:Sprite, param3:b2World, param4:§,4§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(!_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§^!!§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  do
                  {
                     this.§8!k§(0);
                  }
                  while(!_loc2_);
                  
                  if(!_loc3_)
                  {
                     §§push(false);
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr66:
                     §§push(false);
                  }
               }
               §§goto(addr66);
            }
            return §§pop();
         }
         §§goto(addr66);
      }
      
      override public function explode() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = NaN;
         if(!_loc3_)
         {
            if(§+^§)
            {
               §§push(this.§7s§);
               if(!_loc3_)
               {
                  if(§§pop() > 0)
                  {
                     loop3:
                     while(true)
                     {
                        §§push(this.§7s§);
                        if(!(_loc3_ && this))
                        {
                           §§push(§§pop() / this.§2y§);
                           if(!_loc3_)
                           {
                              addr93:
                              §§push(Number(§§pop()));
                              while(true)
                              {
                                 _loc1_ = §§pop();
                                 do
                                 {
                                    if(_loc3_)
                                    {
                                       addr109:
                                       this.§8!k§(0);
                                       break;
                                    }
                                    this.§2y§ = 0;
                                    do
                                    {
                                       §§push(this);
                                       §§push(this.§2y§);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() * _loc1_);
                                       }
                                       §§pop().§7s§ = §§pop();
                                    }
                                    while(_loc3_);
                                    
                                    if(!(_loc2_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    if(!_loc2_)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 while(_loc2_ || _loc2_);
                                 
                              }
                              addr93:
                           }
                        }
                        §§goto(addr93);
                     }
                     addr78:
                  }
                  return true;
               }
               §§goto(addr93);
            }
            §§goto(addr109);
         }
         §§goto(addr78);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(!(_loc9_ && param2))
         {
            if(!§+^§)
            {
               if(!_loc9_)
               {
                  addr69:
                  super.activateSpecialPower(null);
               }
               do
               {
                  this.§8!k§();
               }
               while(_loc9_);
               
            }
            return _loc7_;
         }
         §§goto(addr69);
      }
      
      public function §8!k§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7s§ = 0;
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(0);
                  addr110:
                  while(§§pop() != §§pop())
                  {
                     continue loop1;
                  }
                  addr111:
                  addr89:
                  this.§2y§ = 0;
                  §§goto(addr20);
               }
               if(_loc3_ || this)
               {
                  addr20:
                  this.update(0);
                  if(_loc2_ && _loc2_)
                  {
                     §§goto(addr111);
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§7s§);
            loop0:
            for(; §§pop() >= 0; loop2:
            while(true)
            {
               §§push(this.§7s§);
               if(!(_loc2_ && _loc3_))
               {
                  if(§§pop() < this.§2y§)
                  {
                     while(true)
                     {
                        §[r§ = true;
                        if(_loc3_)
                        {
                           if(!(_loc2_ && param1))
                           {
                              break;
                           }
                           addr96:
                           while(true)
                           {
                              this.§7s§ = -1;
                              addr49:
                              while(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    §?h§.§^I§(false);
                                 }
                                 else
                                 {
                                    §§goto(addr101);
                                 }
                              }
                              continue loop2;
                           }
                        }
                        while(_loc2_)
                        {
                           §§goto(addr49);
                        }
                     }
                  }
                  continue;
                  break loop0;
               }
               break;
            })
            {
               while(true)
               {
                  §§push(this);
                  §§push(this.§7s§);
                  if(_loc3_ || param1)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§7s§ = §§pop();
                  continue loop0;
               }
            }
            return;
         }
         while(true)
         {
            container.addExplosions(§=!Y§.§;+§,getBody().GetPosition().x,getBody().GetPosition().y);
            §§goto(addr96);
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(Boolean(§+^§));
            if(_loc3_ || _loc2_)
            {
               if(§§pop())
               {
                  addr106:
                  while(true)
                  {
                     §§pop();
                     addr107:
                     while(true)
                     {
                        §§push(this.§7s§);
                        addr72:
                        while(true)
                        {
                           §§push(0);
                           addr73:
                           while(true)
                           {
                              §§push(§§pop() < §§pop());
                           }
                        }
                     }
                  }
                  addr106:
               }
               loop0:
               while(true)
               {
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           §§push(true);
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 break loop0;
                              }
                              §§goto(addr106);
                           }
                           addr79:
                        }
                        else
                        {
                           loop2:
                           while(!_loc2_)
                           {
                              while(true)
                              {
                                 §§push(this.§7s§);
                                 if(_loc3_)
                                 {
                                    §§push(0);
                                    if(!_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    if(§§pop() >= §§pop())
                                    {
                                       if(!_loc2_)
                                       {
                                          while(true)
                                          {
                                             §§push(false);
                                          }
                                          addr62:
                                       }
                                       else
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop2;
                                          }
                                          addr20:
                                          §§push(super.isReadyToBeRemoved(param1));
                                          if(_loc3_ || this)
                                          {
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                break loop1;
                                             }
                                             continue loop1;
                                          }
                                       }
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             return §§pop();
                                          }
                                          §§goto(addr79);
                                       }
                                    }
                                    §§goto(addr20);
                                 }
                                 break;
                              }
                              §§goto(addr72);
                           }
                           §§goto(addr107);
                        }
                        §§goto(addr72);
                     }
                     §§goto(addr41);
                  }
                  return §§pop();
               }
               return §§pop();
            }
            §§goto(addr106);
         }
         §§goto(addr62);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§7s§);
            if(!_loc1_)
            {
               if(§§pop() > 0)
               {
                  if(!_loc1_)
                  {
                     §§push(this.§7s§);
                     if(_loc2_)
                     {
                        addr56:
                        return §§pop() / this.§2y§;
                     }
                  }
                  §§goto(addr60);
               }
               §§goto(addr60);
            }
            §§goto(addr56);
         }
         addr60:
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§7s§);
            if(_loc1_)
            {
               if(§§pop() > 0)
               {
                  if(_loc1_)
                  {
                     §§push(this.§2y§);
                     if(!_loc2_)
                     {
                        addr50:
                        return §§pop() - this.§7s§;
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
