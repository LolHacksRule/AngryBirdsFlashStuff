package §4u§
{
   import §,!_§.TextureManager;
   import §6!7§.DisplayObject;
   import §6!7§.Sprite;
   
   public class §6!G§ extends §^!I§
   {
      
      public static const SCREEN_WIDTH:Number = 1024;
      
      public static const SCREEN_HEIGHT:Number = 658;
      
      public static const §+0§:Number = 55;
      
      public static const §-C§:String = "cubic_in_out";
      
      public static const §^i§:String = "sin_in_out";
      
      public static const §-4§:String = "none";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            SCREEN_WIDTH = 1024;
            loop0:
            while(true)
            {
               SCREEN_HEIGHT = 658;
               while(true)
               {
                  §+0§ = 55;
                  loop2:
                  while(!(_loc2_ && _loc2_))
                  {
                     loop3:
                     while(true)
                     {
                        §-C§ = "cubic_in_out";
                        while(true)
                        {
                           §^i§ = "sin_in_out";
                           while(!_loc2_)
                           {
                              continue loop0;
                              §-4§ = "none";
                              if(_loc1_ || §6!G§)
                              {
                                 if(!_loc2_)
                                 {
                                    break loop3;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      private var §8!3§:String;
      
      private var §`!%§:Number;
      
      private var §else§:Number;
      
      private var §[v§:Number;
      
      private var §5%§:Number;
      
      private var §@!S§:Boolean = true;
      
      private var §00§:String = "cubic_in_out";
      
      public function §6!G§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super(param1,param2);
            while(true)
            {
               this.§8!3§ = param3;
               addr57:
               if(!(_loc8_ || this))
               {
                  continue;
               }
               return;
               addr64:
            }
         }
         loop1:
         while(true)
         {
            this.§`!%§ = param4;
            loop2:
            while(true)
            {
               this.§else§ = param5;
               while(!_loc7_)
               {
                  this.§00§ = param6;
                  if(!_loc7_)
                  {
                     continue loop2;
                  }
               }
               continue loop1;
            }
         }
         §§goto(addr64);
      }
      
      public function set §=k§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§@!S§ = param1;
         }
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
                  if(!_loc5_)
                  {
                     §§push(Number(this.time + duration));
                     if(_loc6_)
                     {
                        addr41:
                        param1 = §§pop();
                        if(!_loc5_)
                        {
                           addr44:
                           §§push(param1);
                           if(_loc6_)
                           {
                              addr47:
                              if(§§pop() > this.time)
                              {
                                 if(_loc6_)
                                 {
                                    addr52:
                                    _loc4_ = param2.getChildByName(this.§8!3§);
                                    if(!(_loc5_ && param3))
                                    {
                                       §§push(Boolean(_loc4_));
                                       if(_loc6_ || param3)
                                       {
                                          if(§§pop())
                                          {
                                             loop0:
                                             while(_loc4_.name != §8!E§.§?!^§)
                                             {
                                                §§push(_loc4_);
                                                §§push(_loc4_.x);
                                                if(_loc6_)
                                                {
                                                   §§push(§§pop() - this.§`!%§);
                                                }
                                                §§pop().x = §§pop();
                                                for(; !_loc5_; §§push(_loc4_),§§push(_loc4_.y),if(_loc6_)
                                                {
                                                   §§push(§§pop() - this.§else§);
                                                },§§pop().y = §§pop(),if(_loc5_)
                                                {
                                                   continue;
                                                },if(_loc5_ && this)
                                                {
                                                   break loop0;
                                                },if(false)
                                                {
                                                },§§goto(addr97))
                                                {
                                                   if(!(_loc5_ && this))
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue;
                                                      }
                                                      continue loop0;
                                                   }
                                                   addr190:
                                                   addr97:
                                                   addr189:
                                                   if(param1 >= this.time + duration)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         §§push(false);
                                                         if(_loc6_)
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
                                                if(_loc5_)
                                                {
                                                   addr156:
                                                   §§push(_loc4_);
                                                   §§push(this.§null §());
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      §§push(-§§pop());
                                                      if(!(_loc5_ && param3))
                                                      {
                                                         §§push(§§pop() * this.§do§(param1));
                                                      }
                                                   }
                                                   §§pop().x = §§pop();
                                                   §§goto(addr189);
                                                }
                                                §§goto(addr97);
                                             }
                                             §§push(this.§@!S§);
                                          }
                                          §§goto(addr190);
                                       }
                                       if(!§§pop())
                                       {
                                          §§push(_loc4_);
                                          §§push(this.§null §());
                                          if(_loc6_)
                                          {
                                             §§push(§§pop() * this.§do§(param1));
                                          }
                                          §§pop().y = §§pop();
                                          §§goto(addr134);
                                       }
                                       §§goto(addr156);
                                    }
                                    §§goto(addr85);
                                 }
                                 §§goto(addr203);
                              }
                           }
                           §§goto(addr190);
                        }
                        §§goto(addr52);
                     }
                     §§goto(addr47);
                  }
               }
               §§goto(addr44);
            }
            §§goto(addr41);
         }
         §§goto(addr44);
      }
      
      private function §do§(param1:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(§§pop() - this.time);
            if(!(_loc5_ && param1))
            {
               addr29:
               §§push(§§pop() / duration);
               if(_loc4_)
               {
                  addr34:
                  §§push(Number(§§pop()));
               }
               var _loc2_:* = §§pop();
               var _loc3_:* = this.§00§;
               if(!(_loc5_ && param1))
               {
                  §§push(§-C§);
                  if(_loc4_ || this)
                  {
                     §§push(_loc3_);
                     if(!_loc5_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!(_loc5_ && this))
                           {
                              addr233:
                              §§push(0);
                              if(_loc4_ || this)
                              {
                              }
                           }
                           else
                           {
                              addr263:
                              §§push(1);
                              if(_loc5_ && _loc3_)
                              {
                              }
                           }
                        }
                        else
                        {
                           addr255:
                           addr254:
                           if(§^i§ === _loc3_)
                           {
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§goto(addr263);
                              }
                              addr279:
                              loop12:
                              switch(§§pop())
                              {
                                 case 0:
                                    §§push(_loc2_);
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
                                             addr199:
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                loop3:
                                                do
                                                {
                                                   §§push(_loc2_);
                                                   addr171:
                                                   while(true)
                                                   {
                                                      §§push(1);
                                                      loop4:
                                                      while(true)
                                                      {
                                                         if(§§pop() < §§pop())
                                                         {
                                                            if(!(_loc4_ || _loc3_))
                                                            {
                                                               break loop12;
                                                            }
                                                            continue loop3;
                                                         }
                                                         loop5:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            if(_loc4_ || this)
                                                            {
                                                               if(!(_loc4_ || _loc3_))
                                                               {
                                                                  break;
                                                               }
                                                               §§push(2);
                                                               while(true)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  if(_loc5_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  §§push(§§pop() - §§pop());
                                                               }
                                                            }
                                                            addr162:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               addr163:
                                                               while(true)
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  if(_loc5_)
                                                                  {
                                                                     break loop12;
                                                                  }
                                                                  if(_loc4_)
                                                                  {
                                                                     §§goto(addr138);
                                                                  }
                                                                  continue loop5;
                                                               }
                                                            }
                                                         }
                                                         continue loop2;
                                                      }
                                                   }
                                                }
                                                while(!_loc4_);
                                                
                                                §§push(Math.pow(_loc2_,3) / 2);
                                                §§goto(addr189);
                                             }
                                          }
                                       }
                                    }
                                    break;
                                 case 1:
                                    §§push(Math.cos(Math.PI * _loc2_) - 1);
                                    if(!_loc5_)
                                    {
                                       if(_loc4_ || param1)
                                       {
                                          if(!(_loc5_ && _loc2_))
                                          {
                                             §§push(-§§pop());
                                             if(_loc4_)
                                             {
                                                if(_loc4_)
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§push(2);
                                                      if(_loc4_ || param1)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr87);
                                                         }
                                                         §§goto(addr282);
                                                      }
                                                      §§goto(addr157);
                                                   }
                                                   §§goto(addr199);
                                                }
                                                addr138:
                                                return (Math.pow(_loc2_,3) + 2) / 2;
                                             }
                                             §§goto(addr87);
                                          }
                                          §§goto(addr162);
                                       }
                                       §§goto(addr163);
                                    }
                                    addr87:
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       if(!(_loc5_ && _loc3_))
                                       {
                                          return §§pop();
                                       }
                                       §§goto(addr171);
                                    }
                                    addr189:
                                    while(!_loc4_)
                                    {
                                       continue loop0;
                                    }
                                    return §§pop();
                              }
                              addr282:
                              return §§pop();
                              §§push(_loc2_);
                           }
                           else
                           {
                              if(true)
                              {
                                 §§goto(addr279);
                                 §§push(2);
                              }
                              §§goto(addr279);
                           }
                           §§push(2);
                           if(_loc5_)
                           {
                           }
                        }
                        §§goto(addr279);
                     }
                     §§goto(addr255);
                  }
                  §§goto(addr254);
               }
               §§goto(addr233);
            }
            §§goto(addr34);
         }
         §§goto(addr29);
      }
      
      protected function §null §() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§@!S§)
            {
               if(!_loc1_)
               {
                  §§push(this.§[v§);
                  if(!(_loc1_ && _loc2_))
                  {
                     §§goto(addr73);
                  }
                  §§goto(addr70);
               }
               else
               {
                  addr66:
                  §§push(this.§5%§);
                  if(!_loc1_)
                  {
                     §§goto(addr70);
                  }
               }
               addr73:
               §§push(SCREEN_WIDTH);
               if(_loc2_)
               {
                  §§push(§§pop() - §§pop());
                  if(!(_loc1_ && this))
                  {
                     return §§pop();
                  }
                  addr70:
                  §§push(SCREEN_HEIGHT);
               }
               return §§pop() - §§pop();
            }
         }
         §§goto(addr66);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§[v§ = param1;
         }
         do
         {
            this.§5%§ = param2;
         }
         while(!_loc3_);
         
      }
      
      override public function clone() : §^!I§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§6!G§ = new §6!G§(time,duration,this.§8!3§,this.§`!%§,this.§else§,this.§00§);
         if(!_loc3_)
         {
            _loc1_.§[v§ = this.§[v§;
            while(true)
            {
               _loc1_.§5%§ = this.§5%§;
               §§goto(addr80);
            }
         }
         addr80:
         while(true)
         {
            _loc1_.§@!S§ = this.§@!S§;
            if(_loc2_ || _loc3_)
            {
               if(!_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
         return _loc1_;
      }
   }
}
