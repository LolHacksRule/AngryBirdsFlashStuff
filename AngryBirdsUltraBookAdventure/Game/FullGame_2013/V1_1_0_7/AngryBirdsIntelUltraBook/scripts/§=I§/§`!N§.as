package §=I§
{
   import §=`§.§6!I§;
   import §`g§.DisplayObject;
   import §`g§.Sprite;
   
   public class §`!N§ extends §?!t§
   {
       
      
      private var §]X§:String = "";
      
      private var §3L§:Number = 1.0;
      
      private var §&!P§:Number = 1.0;
      
      public function §`!N§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param3))
         {
            super(param1,param2);
            do
            {
               this.§]X§ = param3;
               do
               {
                  this.§3L§ = param4;
                  do
                  {
                     this.§&!P§ = param5;
                  }
                  while(_loc7_);
                  
               }
               while(_loc7_ && param1);
               
            }
            while(!_loc6_);
            
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§6!I§) : Boolean
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
                  if(_loc6_ || param1)
                  {
                     §§push(Number(this.time + duration));
                     if(!(_loc5_ && this))
                     {
                        addr49:
                        param1 = §§pop();
                        if(_loc6_ || param1)
                        {
                           addr57:
                           §§push(param1);
                           if(_loc6_)
                           {
                              if(§§pop() > this.time)
                              {
                                 if(_loc6_ || param3)
                                 {
                                    if(_loc4_ = param2.getChildByName(this.§]X§))
                                    {
                                       if(!(_loc5_ && param1))
                                       {
                                          §§push(_loc4_);
                                          §§push(this.§3L§);
                                          if(_loc6_ || param1)
                                          {
                                             §§push(this.§&!P§);
                                             if(!(_loc5_ && param3))
                                             {
                                                §§push(this.§3L§);
                                                if(_loc6_ || this)
                                                {
                                                   addr136:
                                                   §§push(§§pop() - §§pop());
                                                   if(!(_loc5_ && param3))
                                                   {
                                                      addr134:
                                                      §§push(§§pop() * this.§]!Q§(param1));
                                                   }
                                                   §§pop().scaleX = §§pop() + §§pop();
                                                   if(!(_loc5_ && this))
                                                   {
                                                      addr144:
                                                      §§push(_loc4_);
                                                      §§push(this.§3L§);
                                                      if(!_loc5_)
                                                      {
                                                         §§push(this.§&!P§);
                                                         if(!_loc5_)
                                                         {
                                                            §§push(this.§3L§);
                                                            if(_loc6_ || param2)
                                                            {
                                                               addr185:
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc6_ || param3)
                                                               {
                                                                  addr183:
                                                                  §§push(§§pop() * this.§]!Q§(param1));
                                                               }
                                                               §§pop().scaleY = §§pop() + §§pop();
                                                               if(param1 >= this.time + duration)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     addr194:
                                                                     §§push(false);
                                                                     if(_loc6_ || param1)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr203:
                                                                     return true;
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr203);
                                                            }
                                                         }
                                                         §§goto(addr183);
                                                      }
                                                   }
                                                   §§goto(addr185);
                                                }
                                             }
                                             §§goto(addr134);
                                          }
                                          §§goto(addr136);
                                       }
                                       §§goto(addr144);
                                    }
                                 }
                                 §§goto(addr203);
                              }
                           }
                           §§goto(addr185);
                        }
                        §§goto(addr194);
                     }
                     §§goto(addr185);
                  }
               }
               §§goto(addr57);
            }
            §§goto(addr49);
         }
         §§goto(addr203);
      }
      
      private function §]!Q§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            if(duration <= 0)
            {
               if(!_loc4_)
               {
                  §§goto(addr28);
               }
            }
            §§push(param1);
            if(!_loc4_)
            {
               §§push(§§pop() - this.time);
               if(_loc3_)
               {
                  §§push(§§pop() / duration);
                  if(!(_loc4_ && param1))
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            var _loc2_:* = §§pop();
            if(!_loc4_)
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
                              for(; !(_loc4_ && this); while(!(_loc4_ && param1))
                              {
                                 §§goto(addr122);
                                 §§goto(addr130);
                              })
                              {
                                 §§push(1);
                                 loop6:
                                 while(true)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if(!_loc4_)
                                       {
                                          if(!(_loc3_ || _loc2_))
                                          {
                                             continue loop4;
                                          }
                                          §§push(Math.pow(_loc2_,3) / 2);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             addr83:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(!_loc4_)
                                                {
                                                   if(_loc4_ && _loc3_)
                                                   {
                                                      §§goto(addr167);
                                                   }
                                                   §§push(2);
                                                   if(!_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc4_ && _loc2_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc4_ && _loc3_)
                                                   {
                                                      continue loop5;
                                                   }
                                                }
                                                if(_loc3_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   continue loop5;
                                                }
                                                continue loop3;
                                             }
                                             addr122:
                                             continue loop6;
                                             _loc2_ = §§pop();
                                             if(!(_loc4_ && param1))
                                             {
                                                while(true)
                                                {
                                                   §§push((Math.pow(_loc2_,3) + 2) / 2);
                                                   if(!_loc4_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue loop5;
                                                }
                                                addr70:
                                                return §§pop();
                                                addr130:
                                             }
                                          }
                                       }
                                       addr167:
                                       return §§pop();
                                    }
                                    §§goto(addr83);
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr70);
         }
         addr28:
         return 1;
      }
      
      override public function clone() : §?!t§
      {
         return new §`!N§(time,duration,this.§]X§,this.§3L§,this.§&!P§);
      }
   }
}
