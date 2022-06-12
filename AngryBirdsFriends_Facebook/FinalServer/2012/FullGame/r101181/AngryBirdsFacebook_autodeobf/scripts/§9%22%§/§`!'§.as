package §9"%§
{
   import §1!$§.Sprite;
   import §3![§.§^"1§;
   import §48§.b2World;
   import §9"!§.§9"3§;
   
   public class §`!'§ extends § H§
   {
       
      
      private var §3w§:Number = -1;
      
      private var §4",§:Number = -1;
      
      public function §`!'§(param1:§]a§, param2:Sprite, param3:b2World, param4:§9"3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_ || param2)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§]a§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(super.activateSpecialPower(param1));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc2_ || _loc3_)
                  {
                     addr81:
                     §§push(false);
                     break;
                  }
                  loop1:
                  while(true)
                  {
                     addr58:
                     while(true)
                     {
                        this.§[I§(0);
                        if(!(_loc3_ && _loc2_))
                        {
                           break;
                        }
                        continue loop1;
                     }
                     §§push(false);
                     if(!(_loc2_ || param1))
                     {
                        break loop0;
                     }
                     continue loop0;
                  }
               }
               §§goto(addr58);
            }
            return §§pop();
         }
         §§goto(addr81);
      }
      
      override public function explode() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = NaN;
         if(_loc2_)
         {
            if(§-!a§)
            {
               §§push(this.§3w§);
               if(!_loc3_)
               {
                  if(§§pop() > 0)
                  {
                     loop0:
                     while(true)
                     {
                        if(_loc3_ && _loc1_)
                        {
                           addr109:
                           this.§[I§(0);
                           break;
                        }
                        while(true)
                        {
                           §§push(this.§3w§);
                           if(!_loc3_)
                           {
                              while(true)
                              {
                                 §§push(§§pop() / this.§4",§);
                                 if(_loc2_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              addr99:
                           }
                           while(true)
                           {
                              _loc1_ = §§pop();
                              while(true)
                              {
                                 this.§4",§ = 0;
                                 while(_loc2_)
                                 {
                                    §§push(this);
                                    §§push(this.§4",§);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       §§push(§§pop() * _loc1_);
                                    }
                                    §§pop().§3w§ = §§pop();
                                    if(_loc2_)
                                    {
                                       continue loop0;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  return true;
               }
               §§goto(addr99);
            }
            §§goto(addr109);
         }
         §§goto(addr95);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number = super.applyDamage(param1,param2,param3,param4,param5,param6);
         if(_loc8_)
         {
            if(!§-!a§)
            {
               if(!(_loc9_ && param1))
               {
                  super.activateSpecialPower(null);
                  do
                  {
                     this.§[I§();
                  }
                  while(_loc9_);
                  
                  addr72:
               }
               §§goto(addr72);
            }
            return _loc7_;
         }
         §§goto(addr72);
      }
      
      public function §[I§(param1:Number = -1) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§3w§ = 0;
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(0);
                  addr105:
                  addr101:
                  while(true)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc3_ && param1)
                        {
                           this.update(0);
                           break;
                        }
                        addr123:
                        addr123:
                        continue loop0;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr76);
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§3w§);
            loop0:
            while(§§pop() >= 0)
            {
               while(true)
               {
                  §§push(this);
                  §§push(this.§3w§);
                  if(_loc3_ || this)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§3w§ = §§pop();
                  continue loop0;
               }
            }
            addr25:
            return;
            addr109:
         }
         loop2:
         while(true)
         {
            §§push(this.§3w§);
            if(_loc3_)
            {
               if(§§pop() >= this.§4",§)
               {
                  if(!_loc2_)
                  {
                     §%4§.addExplosions(§^!x§.§;!§,§=!y§().GetPosition().x,§=!y§().GetPosition().y);
                  }
                  loop3:
                  for(; _loc3_; if(_loc2_ && _loc2_)
                  {
                     continue;
                  },addr59:,§§goto(addr25))
                  {
                     this.§3w§ = -1;
                     while(true)
                     {
                        §^"1§.§1!g§(false);
                        addr64:
                        while(!_loc2_)
                        {
                        }
                        continue loop2;
                        addr35:
                        if(!(_loc2_ && this))
                        {
                           continue loop3;
                        }
                     }
                  }
                  §§goto(addr111);
               }
               while(true)
               {
                  §'!Z§ = true;
                  if(!_loc2_)
                  {
                     §§goto(addr35);
                  }
                  §§goto(addr64);
               }
               §§goto(addr59);
            }
            else
            {
               §§goto(addr109);
            }
         }
      }
      
      override public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(Boolean(§-!a§));
            if(!(_loc3_ && param1))
            {
               if(§§pop())
               {
                  loop6:
                  while(true)
                  {
                     §§pop();
                     addr121:
                     while(true)
                     {
                        §§push(this.§3w§);
                        addr78:
                        while(true)
                        {
                           §§push(0);
                           addr79:
                           while(true)
                           {
                              §§push(§§pop() < §§pop());
                              addr80:
                              while(!(_loc2_ || this))
                              {
                                 continue loop6;
                              }
                           }
                        }
                     }
                  }
                  addr120:
               }
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§push(this.§3w§);
                        if(!_loc3_)
                        {
                           §§push(0);
                           if(!_loc3_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr62:
                                       §§push(false);
                                       if(!_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                             break loop0;
                                          }
                                          continue loop0;
                                       }
                                    }
                                    else
                                    {
                                       addr99:
                                       if(_loc2_ || this)
                                       {
                                          addr106:
                                          return true;
                                       }
                                       else
                                       {
                                          §§goto(addr121);
                                       }
                                    }
                                    return §§pop();
                                 }
                                 if(_loc3_ && param1)
                                 {
                                    continue;
                                 }
                                 addr19:
                                 §§push(super.isReadyToBeRemoved(param1));
                                 if(!(_loc3_ && this))
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr62);
                              }
                              §§goto(addr19);
                           }
                           §§goto(addr79);
                        }
                        break;
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr99);
               }
               return §§pop();
            }
            §§goto(addr120);
         }
         §§goto(addr106);
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§3w§);
            if(_loc1_)
            {
               if(§§pop() > 0)
               {
                  if(_loc1_)
                  {
                     §§push(this.§3w§);
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(§§pop() / this.§4",§);
                     }
                  }
                  else
                  {
                     §§goto(addr49);
                  }
               }
               §§goto(addr49);
            }
            return §§pop();
         }
         addr49:
         return -1;
      }
      
      override public function getSpecialAnimationTimeLeft() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§3w§);
            if(!_loc1_)
            {
               if(§§pop() > 0)
               {
                  if(!(_loc1_ && this))
                  {
                     §§push(this.§4",§);
                     if(!(_loc1_ && _loc1_))
                     {
                        §§push(§§pop() - this.§3w§);
                     }
                  }
                  else
                  {
                     §§goto(addr55);
                  }
               }
               §§goto(addr55);
            }
            return §§pop();
         }
         addr55:
         return 0;
      }
   }
}
