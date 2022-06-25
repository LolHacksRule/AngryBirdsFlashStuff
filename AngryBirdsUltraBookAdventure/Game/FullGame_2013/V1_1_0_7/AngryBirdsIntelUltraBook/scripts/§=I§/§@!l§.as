package §=I§
{
   import §=`§.§6!I§;
   import §`g§.DisplayObject;
   import §`g§.Sprite;
   
   public class §@!l§ extends §?!t§
   {
      
      public static const §!"#§:Number = 1024;
      
      public static const §8p§:Number = 658;
      
      public static const §>!;§:Number = 55;
      
      public static const §%k§:String = "cubic_in_out";
      
      public static const §2!w§:String = "sin_in_out";
      
      public static const §3!@§:String = "none";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §!"#§ = 1024;
            loop0:
            while(true)
            {
               §8p§ = 658;
               loop1:
               while(true)
               {
                  §>!;§ = 55;
                  while(true)
                  {
                     §%k§ = "cubic_in_out";
                     while(_loc1_)
                     {
                        if(_loc1_)
                        {
                           §2!w§ = "sin_in_out";
                           while(_loc1_ || _loc1_)
                           {
                              if(_loc1_)
                              {
                                 continue;
                              }
                              continue loop0;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §3!@§ = "none";
            if(!_loc2_)
            {
               break;
            }
            §§goto(addr49);
         }
      }
      
      private var §]X§:String;
      
      private var §#!!§:Number;
      
      private var §!!3§:Number;
      
      private var §3!8§:Number;
      
      private var §0!Q§:Number;
      
      private var §]z§:Boolean = true;
      
      private var §;!L§:String = "cubic_in_out";
      
      public function §@!l§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || param3)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§]X§ = param3;
               while(true)
               {
                  this.§#!!§ = param4;
                  while(!(_loc7_ && param3))
                  {
                     if(_loc8_)
                     {
                        this.§!!3§ = param5;
                        while(!(_loc7_ && param2))
                        {
                           this.§;!L§ = param6;
                           if(_loc8_)
                           {
                              return;
                              addr45:
                           }
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr45);
      }
      
      public function set §+!U§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§]z§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§6!I§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:DisplayObject = null;
         if(!(_loc5_ && param2))
         {
            §§push(param1);
            if(!(_loc5_ && param3))
            {
               if(§§pop() > this.time + duration)
               {
                  if(_loc6_)
                  {
                     §§push(Number(this.time + duration));
                     if(_loc6_ || this)
                     {
                        param1 = §§pop();
                        if(!(_loc5_ && param3))
                        {
                           addr62:
                           §§push(param1);
                           if(_loc5_ && param2)
                           {
                           }
                           addr204:
                           if(§§pop() >= this.time + duration)
                           {
                              if(_loc6_)
                              {
                                 §§push(false);
                                 if(!_loc5_)
                                 {
                                    return §§pop();
                                 }
                              }
                              else
                              {
                                 addr215:
                                 return true;
                              }
                              return §§pop();
                           }
                           §§goto(addr215);
                        }
                        addr80:
                        if(_loc4_ = param2.getChildByName(this.§]X§))
                        {
                           if(!_loc5_)
                           {
                              if(_loc4_.name == §1$§.§3t§)
                              {
                                 if(_loc6_)
                                 {
                                    if(this.§]z§)
                                    {
                                       if(!_loc5_)
                                       {
                                          §§push(_loc4_);
                                          §§push(this.§[]§());
                                          if(!(_loc5_ && param3))
                                          {
                                             §§push(-§§pop());
                                             if(_loc6_)
                                             {
                                                addr125:
                                                §§push(§§pop() * this.§]!Q§(param1));
                                             }
                                             §§pop().x = §§pop();
                                             if(!_loc6_)
                                             {
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   §§push(_loc4_.y);
                                                   if(!(_loc5_ && param3))
                                                   {
                                                      §§push(§§pop() - this.§!!3§);
                                                   }
                                                   §§pop().y = §§pop();
                                                   if(_loc6_ || param3)
                                                   {
                                                      addr155:
                                                      if(false)
                                                      {
                                                      }
                                                      addr203:
                                                      §§goto(addr204);
                                                      §§push(param1);
                                                   }
                                                   else
                                                   {
                                                      while(!(_loc5_ && param1))
                                                      {
                                                         continue loop1;
                                                      }
                                                      addr173:
                                                   }
                                                }
                                                addr190:
                                             }
                                             §§goto(addr203);
                                          }
                                          §§goto(addr125);
                                       }
                                       §§goto(addr155);
                                    }
                                    else
                                    {
                                       §§push(_loc4_);
                                       §§push(this.§[]§());
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() * this.§]!Q§(param1));
                                       }
                                       §§pop().y = §§pop();
                                    }
                                    §§goto(addr202);
                                 }
                                 §§goto(addr155);
                              }
                              else
                              {
                                 §§push(_loc4_);
                                 §§push(_loc4_.x);
                                 if(_loc6_ || this)
                                 {
                                    §§push(§§pop() - this.§#!!§);
                                 }
                                 §§pop().x = §§pop();
                              }
                              §§goto(addr173);
                           }
                           §§goto(addr190);
                        }
                        §§goto(addr155);
                     }
                     if(§§pop() > this.time)
                     {
                        if(!(_loc5_ && param3))
                        {
                           §§goto(addr80);
                        }
                        §§goto(addr215);
                     }
                     §§goto(addr155);
                  }
                  §§goto(addr215);
               }
            }
            §§goto(addr62);
         }
         §§goto(addr80);
      }
      
      private function §]!Q§(param1:Number) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(param1);
         if(_loc4_)
         {
            §§push(§§pop() - this.time);
            if(_loc4_)
            {
               addr24:
               §§push(§§pop() / duration);
               if(_loc4_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc2_:* = §§pop();
            var _loc3_:* = this.§;!L§;
            if(_loc4_ || param1)
            {
               §§push(§%k§);
               if(_loc4_)
               {
                  §§push(_loc3_);
                  if(_loc4_ || _loc2_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc5_)
                        {
                           §§push(0);
                           if(_loc5_)
                           {
                              addr231:
                           }
                        }
                        else
                        {
                           addr228:
                           §§push(1);
                           if(_loc4_)
                           {
                              §§goto(addr231);
                           }
                        }
                        §§goto(addr236);
                     }
                     else
                     {
                        addr226:
                        §§push(§2!w§);
                        §§push(_loc3_);
                     }
                     §§goto(addr228);
                  }
                  if(§§pop() === §§pop())
                  {
                     §§goto(addr228);
                  }
                  else
                  {
                     §§push(2);
                  }
                  addr236:
                  loop9:
                  switch(§§pop())
                  {
                     case 0:
                        §§push(_loc2_);
                        loop0:
                        while(true)
                        {
                           §§push(2);
                           addr181:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              addr182:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 addr183:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    §§push(_loc2_);
                                    if(_loc5_)
                                    {
                                       break loop9;
                                    }
                                    continue loop0;
                                 }
                                 addr169:
                                 return Math.pow(_loc2_,3) / 2;
                              }
                           }
                        }
                        break;
                     case 1:
                        §§push(Math.cos(Math.PI * _loc2_) - 1);
                        if(!_loc5_)
                        {
                           if(!_loc5_)
                           {
                              §§push(-§§pop());
                              if(_loc4_)
                              {
                                 §§push(2);
                                 if(!_loc5_)
                                 {
                                    if(_loc4_ || _loc2_)
                                    {
                                       §§push(§§pop() / §§pop());
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       §§goto(addr64);
                                    }
                                    else
                                    {
                                       §§goto(addr181);
                                    }
                                 }
                                 §§goto(addr124);
                              }
                              break;
                           }
                           §§goto(addr123);
                        }
                        addr64:
                        return §§pop();
                  }
                  return _loc2_;
               }
               §§goto(addr226);
            }
            §§goto(addr228);
         }
         §§goto(addr24);
      }
      
      protected function §[]§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§]z§)
            {
               if(!(_loc1_ && _loc2_))
               {
                  §§push(this.§3!8§);
                  if(_loc2_)
                  {
                     §§goto(addr71);
                  }
                  §§goto(addr64);
               }
               else
               {
                  addr65:
                  §§push(this.§0!Q§);
                  if(_loc2_)
                  {
                     §§goto(addr69);
                  }
               }
               addr71:
               §§push(§!"#§);
               if(!_loc1_)
               {
                  §§push(§§pop() - §§pop());
                  if(_loc2_ || _loc1_)
                  {
                     addr64:
                     return §§pop();
                  }
                  addr69:
                  §§push(§8p§);
               }
               return §§pop() - §§pop();
            }
         }
         §§goto(addr65);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§3!8§ = param1;
            do
            {
               this.§0!Q§ = param2;
            }
            while(_loc3_);
            
         }
      }
      
      override public function clone() : §?!t§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§@!l§ = new §@!l§(time,duration,this.§]X§,this.§#!!§,this.§!!3§,this.§;!L§);
         if(!_loc2_)
         {
            _loc1_.§3!8§ = this.§3!8§;
            while(true)
            {
               _loc1_.§0!Q§ = this.§0!Q§;
               §§goto(addr84);
            }
         }
         addr84:
         while(true)
         {
            _loc1_.§]z§ = this.§]z§;
            if(!(_loc2_ && this))
            {
               if(!(_loc2_ && _loc1_))
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
