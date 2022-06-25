package §4u§
{
   import §,!_§.TextureManager;
   import §6!7§.DisplayObject;
   import §6!7§.Sprite;
   
   public class §?#§ extends §^!I§
   {
       
      
      private var §8!3§:String = "";
      
      private var §@!g§:Number = 1.0;
      
      private var §2!J§:Number = 1.0;
      
      public function §?#§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super(param1,param2);
            while(true)
            {
               this.§8!3§ = param3;
               loop1:
               while(!(_loc7_ && param1))
               {
                  this.§@!g§ = param4;
                  while(true)
                  {
                     this.§2!J§ = param5;
                     if(_loc6_ || param1)
                     {
                        if(_loc6_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr61);
      }
      
      override public function update(param1:Number, param2:Sprite, param3:TextureManager) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:DisplayObject = null;
         if(_loc6_)
         {
            §§push(param1);
            if(!_loc5_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(_loc6_)
                  {
                     §§push(Number(this.time + duration));
                     if(!(_loc5_ && param2))
                     {
                        addr46:
                        param1 = §§pop();
                        if(_loc6_ || param2)
                        {
                           addr54:
                           §§push(param1);
                           if(_loc6_ || param2)
                           {
                              if(§§pop() > this.time)
                              {
                                 if(!(_loc5_ && param2))
                                 {
                                    _loc4_ = param2.getChildByName(this.§8!3§);
                                    if(_loc6_)
                                    {
                                       if(_loc4_)
                                       {
                                          if(_loc6_)
                                          {
                                             §§push(_loc4_);
                                             §§push(this.§@!g§);
                                             if(_loc6_ || param3)
                                             {
                                                §§push(this.§2!J§);
                                                if(_loc6_ || param2)
                                                {
                                                   §§push(this.§@!g§);
                                                   if(_loc6_ || this)
                                                   {
                                                      addr131:
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc5_)
                                                      {
                                                         addr129:
                                                         §§push(§§pop() * this.§do§(param1));
                                                      }
                                                      §§pop().scaleX = §§pop() + §§pop();
                                                      if(!(_loc5_ && param2))
                                                      {
                                                         §§push(_loc4_);
                                                         §§push(this.§@!g§);
                                                         if(!_loc5_)
                                                         {
                                                            §§push(this.§2!J§);
                                                            if(!(_loc5_ && param1))
                                                            {
                                                               §§push(this.§@!g§);
                                                               if(!_loc5_)
                                                               {
                                                                  addr180:
                                                                  §§push(§§pop() - §§pop());
                                                                  if(!(_loc5_ && param1))
                                                                  {
                                                                     addr178:
                                                                     §§push(§§pop() * this.§do§(param1));
                                                                  }
                                                                  §§pop().scaleY = §§pop() + §§pop();
                                                                  if(param1 >= this.time + duration)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        addr190:
                                                                        §§push(false);
                                                                        if(_loc6_)
                                                                        {
                                                                           return §§pop();
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr194:
                                                                        return true;
                                                                     }
                                                                     return §§pop();
                                                                  }
                                                                  §§goto(addr194);
                                                               }
                                                            }
                                                            §§goto(addr178);
                                                         }
                                                      }
                                                      §§goto(addr180);
                                                   }
                                                }
                                                §§goto(addr129);
                                             }
                                             §§goto(addr131);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr194);
                              }
                              §§goto(addr180);
                           }
                        }
                        §§goto(addr190);
                     }
                     §§goto(addr180);
                  }
                  §§goto(addr190);
               }
               §§goto(addr54);
            }
            §§goto(addr46);
         }
         §§goto(addr194);
      }
      
      private function §do§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(duration <= 0)
            {
               if(_loc4_)
               {
                  return 1;
               }
            }
         }
         §§push(param1);
         if(_loc4_)
         {
            §§push(§§pop() - this.time);
            if(!(_loc3_ && this))
            {
               §§push(§§pop() / duration);
               if(!_loc3_)
               {
                  §§push(Number(§§pop()));
               }
            }
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               §§push(2);
               loop0:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  loop5:
                  while(true)
                  {
                     if(!(_loc4_ || this))
                     {
                        continue loop0;
                     }
                     if(§§pop() < §§pop())
                     {
                        break;
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                        continue loop5;
                        addr156:
                     }
                  }
                  addr148:
                  §§goto(addr155);
               }
            }
            §§goto(addr162);
         }
         §§goto(addr148);
      }
      
      override public function clone() : §^!I§
      {
         return new §?#§(time,duration,this.§8!3§,this.§@!g§,this.§2!J§);
      }
   }
}
