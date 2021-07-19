package §4;§
{
   import §'!6§.DisplayObject;
   import §'!6§.Sprite;
   import §<T§.§`m§;
   
   public class §0!7§ extends §^g§
   {
       
      
      private var §@i§:String = "";
      
      private var §0!2§:Number = 1.0;
      
      private var §=y§:Number = 1.0;
      
      public function §0!7§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super(param1,param2);
            while(true)
            {
               this.§@i§ = param3;
               while(true)
               {
                  this.§0!2§ = param4;
                  §§goto(addr63);
               }
            }
         }
         addr63:
         while(true)
         {
            this.§=y§ = param5;
            if(!(_loc7_ && param3))
            {
               if(_loc6_)
               {
                  if(!_loc7_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§`m§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:DisplayObject = null;
         if(!_loc6_)
         {
            §§push(param1);
            if(_loc5_)
            {
               if(§§pop() > this.time + duration)
               {
                  if(!(_loc6_ && param3))
                  {
                     §§push(Number(this.time + duration));
                     if(_loc5_)
                     {
                        param1 = §§pop();
                        if(!_loc6_)
                        {
                           addr46:
                           §§push(param1);
                           if(!_loc6_)
                           {
                              if(§§pop() > this.time)
                              {
                                 if(_loc5_ || param2)
                                 {
                                    addr59:
                                    if(_loc4_ = param2.getChildByName(this.§@i§))
                                    {
                                       if(_loc5_)
                                       {
                                          §§push(_loc4_);
                                          §§push(this.§0!2§);
                                          if(_loc5_)
                                          {
                                             §§push(this.§=y§);
                                             if(_loc5_)
                                             {
                                                §§push(this.§0!2§);
                                                if(_loc5_)
                                                {
                                                   addr104:
                                                   §§push(§§pop() - §§pop());
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      §§push(this.§9,§(param1));
                                                   }
                                                   §§pop().scaleX = §§pop() + §§pop();
                                                   if(!_loc6_)
                                                   {
                                                      §§push(_loc4_);
                                                      §§push(this.§0!2§);
                                                      if(_loc5_)
                                                      {
                                                         §§push(this.§=y§);
                                                         if(!_loc6_)
                                                         {
                                                            §§push(this.§0!2§);
                                                            if(!_loc6_)
                                                            {
                                                               addr139:
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc5_)
                                                               {
                                                                  addr137:
                                                                  §§push(§§pop() * this.§9,§(param1));
                                                               }
                                                               §§pop().scaleY = §§pop() + §§pop();
                                                               if(param1 >= this.time + duration)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     addr148:
                                                                     §§push(false);
                                                                     if(!(_loc6_ && param2))
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr157:
                                                                     return true;
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr157);
                                                            }
                                                         }
                                                         §§goto(addr137);
                                                      }
                                                   }
                                                   §§goto(addr139);
                                                }
                                                §§push(§§pop() * §§pop());
                                             }
                                          }
                                          §§goto(addr104);
                                       }
                                    }
                                 }
                                 §§goto(addr148);
                              }
                           }
                           §§goto(addr139);
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr139);
                  }
                  §§goto(addr148);
               }
               §§goto(addr46);
            }
            §§goto(addr139);
         }
         §§goto(addr59);
      }
      
      private function §9,§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(duration <= 0)
            {
               if(!(_loc4_ && this))
               {
                  return 1;
               }
            }
         }
         §§push(param1);
         if(_loc3_ || _loc2_)
         {
            §§push(§§pop() - this.time);
            if(!(_loc4_ && this))
            {
               addr48:
               §§push(§§pop() / duration);
               if(!_loc4_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            if(_loc3_ || _loc3_)
            {
               §§push(_loc2_);
               loop0:
               while(true)
               {
                  §§push(2);
                  loop1:
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     loop2:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        loop3:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(_loc2_);
                              loop5:
                              while(true)
                              {
                                 §§push(1);
                                 loop6:
                                 while(!_loc4_)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if(_loc3_)
                                       {
                                          §§push(Math.pow(_loc2_,3) / 2);
                                       }
                                       else
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             addr93:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(_loc3_ || _loc2_)
                                                {
                                                   §§push(2);
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   while(true)
                                                   {
                                                      if(!(_loc3_ || _loc2_))
                                                      {
                                                         §§goto(addr157);
                                                      }
                                                      §§push(Number(§§pop()));
                                                   }
                                                   addr106:
                                                }
                                                while(true)
                                                {
                                                   if(_loc3_)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               _loc2_ = §§pop();
                                                               if(_loc3_ || _loc2_)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  continue loop4;
                                                               }
                                                               continue loop10;
                                                            }
                                                            continue loop0;
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop10;
                                             }
                                             continue loop6;
                                          }
                                          addr158:
                                       }
                                       addr157:
                                       return §§pop();
                                    }
                                    §§goto(addr93);
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr158);
         }
         §§goto(addr48);
      }
      
      override public function clone() : §^g§
      {
         return new §0!7§(time,duration,this.§@i§,this.§0!2§,this.§=y§);
      }
   }
}
