package §4!o§
{
   import § ! §.§5!x§;
   import §6![§.DisplayObject;
   import §6![§.Sprite;
   
   public class §7!6§ extends §0!c§
   {
      
      public static const §8#§:Number = 1024;
      
      public static const §'+§:Number = 658;
      
      public static const §0!N§:Number = 55;
      
      public static const §>!d§:String = "cubic_in_out";
      
      public static const §'!T§:String = "sin_in_out";
      
      public static const §>l§:String = "none";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §8#§ = 1024;
            loop0:
            while(true)
            {
               §'+§ = 658;
               while(true)
               {
                  §0!N§ = 55;
                  loop4:
                  while(_loc1_ || §7!6§)
                  {
                     §>l§ = "none";
                     if(_loc2_ && §7!6§)
                     {
                        continue;
                     }
                     addr34:
                     if(_loc1_ || _loc1_)
                     {
                        continue loop0;
                     }
                     loop3:
                     while(true)
                     {
                        if(!(_loc1_ || _loc1_))
                        {
                           while(true)
                           {
                              §>!d§ = "cubic_in_out";
                              continue loop3;
                           }
                        }
                        else
                        {
                           addr58:
                           addr97:
                        }
                        §'!T§ = "sin_in_out";
                        continue loop4;
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr97);
      }
      
      private var §1!m§:String;
      
      private var §%!3§:Number;
      
      private var §?!e§:Number;
      
      private var §<`§:Number;
      
      private var §#!A§:Number;
      
      private var §>_§:Boolean = true;
      
      private var §^"'§:String = "cubic_in_out";
      
      public function §7!6§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && this))
         {
            super(param1,param2);
            while(true)
            {
               this.§1!m§ = param3;
               loop1:
               while(true)
               {
                  this.§%!3§ = param4;
                  while(true)
                  {
                     this.§?!e§ = param5;
                     loop3:
                     while(!_loc8_)
                     {
                        continue loop1;
                        while(true)
                        {
                           this.§^"'§ = param6;
                           if(!_loc8_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr60);
      }
      
      public function set horizontal(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§>_§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5!x§) : Boolean
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
                        addr39:
                        param1 = §§pop();
                        if(!(_loc5_ && param1))
                        {
                           addr47:
                           §§push(param1);
                           if(_loc6_)
                           {
                              if(§§pop() > this.time)
                              {
                                 if(_loc6_ || param2)
                                 {
                                    addr60:
                                    if(_loc4_ = param2.getChildByName(this.§1!m§))
                                    {
                                       if(!(_loc5_ && param1))
                                       {
                                          if(_loc4_.name == §=!e§.§`]§)
                                          {
                                             if(!_loc5_)
                                             {
                                                addr82:
                                                if(this.§>_§)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §§push(_loc4_);
                                                      §§push(this.§=§());
                                                      if(_loc6_ || param2)
                                                      {
                                                         §§push(-§§pop());
                                                         if(_loc6_ || param3)
                                                         {
                                                            addr115:
                                                            §§push(§§pop() * this.§<!1§(param1));
                                                         }
                                                         §§pop().x = §§pop();
                                                         if(!(_loc6_ || param2))
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               §§push(_loc4_.y);
                                                               if(!(_loc5_ && param3))
                                                               {
                                                                  §§push(§§pop() - this.§?!e§);
                                                               }
                                                               §§pop().y = §§pop();
                                                               if(_loc5_ && param1)
                                                               {
                                                                  continue;
                                                               }
                                                               if(false)
                                                               {
                                                                  break;
                                                               }
                                                               if(param1 >= this.time + duration)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     addr206:
                                                                     §§push(false);
                                                                     if(!_loc5_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     addr210:
                                                                     return true;
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr210);
                                                            }
                                                            addr170:
                                                         }
                                                         §§goto(addr188);
                                                      }
                                                      §§goto(addr115);
                                                   }
                                                   §§goto(addr150);
                                                }
                                                else
                                                {
                                                   §§push(_loc4_);
                                                   §§push(this.§=§());
                                                   if(!(_loc5_ && this))
                                                   {
                                                      §§push(§§pop() * this.§<!1§(param1));
                                                   }
                                                   §§pop().y = §§pop();
                                                }
                                                §§goto(addr187);
                                             }
                                             §§goto(addr170);
                                          }
                                          else
                                          {
                                             §§push(_loc4_);
                                             §§push(_loc4_.x);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() - this.§%!3§);
                                             }
                                             §§pop().x = §§pop();
                                          }
                                          §§goto(addr163);
                                       }
                                       §§goto(addr82);
                                    }
                                    §§goto(addr150);
                                 }
                                 §§goto(addr206);
                              }
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr60);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr210);
               }
               §§goto(addr47);
            }
            §§goto(addr39);
         }
         §§goto(addr47);
      }
      
      private function §<!1§(param1:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(!_loc5_)
         {
            §§push(§§pop() - this.time);
            if(!_loc5_)
            {
               §§push(§§pop() / duration);
               if(_loc4_ || _loc3_)
               {
                  addr33:
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            var _loc3_:* = this.§^"'§;
            if(!(_loc5_ && _loc2_))
            {
               §§push(§>!d§);
               if(_loc4_)
               {
                  §§push(_loc3_);
                  if(!_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc5_)
                        {
                           §§push(0);
                           if(!_loc4_)
                           {
                           }
                        }
                        else
                        {
                           addr233:
                           §§push(1);
                           if(!_loc4_)
                           {
                           }
                        }
                        addr251:
                        loop8:
                        switch(§§pop())
                        {
                           case 0:
                              §§push(_loc2_);
                              if(_loc4_)
                              {
                                 §§push(2);
                                 loop0:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc5_ && param1))
                                    {
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc4_ || param1)
                                          {
                                             _loc2_ = §§pop();
                                             §§push(_loc2_);
                                             while(true)
                                             {
                                                §§push(1);
                                                loop2:
                                                while(true)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         §§push(Math.pow(_loc2_,3) / 2);
                                                         break;
                                                      }
                                                      break loop8;
                                                   }
                                                   §§push(_loc2_);
                                                   if(_loc5_ && _loc3_)
                                                   {
                                                      loop3:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr156:
                                                         while(true)
                                                         {
                                                            if(_loc5_ && _loc2_)
                                                            {
                                                               break loop2;
                                                            }
                                                            _loc2_ = §§pop();
                                                            §§push((Math.pow(_loc2_,3) + 2) / 2);
                                                            continue loop3;
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr155:
                                                   }
                                                   continue;
                                                   return §§pop();
                                                }
                                                return §§pop();
                                             }
                                             addr167:
                                          }
                                          break loop0;
                                       }
                                       addr195:
                                    }
                                    break;
                                 }
                                 §§goto(addr254);
                              }
                              §§goto(addr195);
                           case 1:
                              §§push(Math.cos(Math.PI * _loc2_) - 1);
                              if(_loc4_ || param1)
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       §§push(-§§pop());
                                       if(_loc4_ || param1)
                                       {
                                          addr73:
                                          §§push(2);
                                          if(!(_loc5_ && param1))
                                          {
                                             §§push(§§pop() / §§pop());
                                             if(_loc4_ || _loc3_)
                                             {
                                                addr89:
                                                if(!_loc5_)
                                                {
                                                   return §§pop();
                                                }
                                                §§goto(addr156);
                                             }
                                             else
                                             {
                                                §§goto(addr254);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr145);
                                          }
                                          §§goto(addr155);
                                       }
                                       §§goto(addr89);
                                    }
                                    §§goto(addr167);
                                 }
                                 §§goto(addr112);
                              }
                              §§goto(addr73);
                        }
                        addr254:
                        return §§pop();
                        §§push(_loc2_);
                     }
                     else
                     {
                        addr231:
                        §§push(§'!T§);
                        §§push(_loc3_);
                     }
                     §§goto(addr233);
                  }
                  if(§§pop() === §§pop())
                  {
                     §§goto(addr233);
                  }
                  else
                  {
                     §§push(2);
                  }
                  §§goto(addr251);
               }
               §§goto(addr231);
            }
            §§goto(addr233);
         }
         §§goto(addr33);
      }
      
      protected function §=§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§>_§)
            {
               if(_loc2_)
               {
                  addr24:
                  §§push(this.§<`§);
                  if(_loc2_ || this)
                  {
                     §§push(§8#§);
                     if(!_loc1_)
                     {
                        §§push(§§pop() - §§pop());
                        if(!_loc1_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr70:
                        return §§pop() - §§pop();
                     }
                  }
               }
               else
               {
                  addr50:
                  §§push(this.§#!A§);
                  if(_loc2_ || _loc1_)
                  {
                     §§goto(addr70);
                     return §'+§;
                  }
               }
               return §§pop();
            }
            §§goto(addr50);
         }
         §§goto(addr24);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            this.§<`§ = param1;
            do
            {
               this.§#!A§ = param2;
            }
            while(_loc3_);
            
         }
      }
      
      override public function clone() : §0!c§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§7!6§ = new §7!6§(time,duration,this.§1!m§,this.§%!3§,this.§?!e§,this.§^"'§);
         if(_loc2_)
         {
            _loc1_.§<`§ = this.§<`§;
            while(true)
            {
               _loc1_.§#!A§ = this.§#!A§;
               §§goto(addr83);
            }
         }
         addr83:
         while(true)
         {
            _loc1_.§>_§ = this.§>_§;
            if(_loc2_ || this)
            {
               if(!(_loc3_ && _loc1_))
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
