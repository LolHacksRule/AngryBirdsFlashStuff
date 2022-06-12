package starling.events
{
   import §1!$§.DisplayObject;
   import §1!$§.DisplayObjectContainer;
   
   public class TouchEvent extends Event
   {
      
      public static const §2t§:String = "touch";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && TouchEvent))
         {
            §2t§ = "touch";
         }
      }
      
      private var §7p§:Vector.<§6!V§>;
      
      private var §5a§:Boolean;
      
      private var §]V§:Boolean;
      
      private var §=!o§:Number;
      
      public function TouchEvent(param1:String, param2:Vector.<§6!V§>, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param3)
         {
            super(param1,param5);
            while(true)
            {
               §§push(this);
               if(!(_loc8_ && param2))
               {
                  §§pop().§7p§ = !!param2 ? param2 : new Vector.<§6!V§>(0);
                  loop1:
                  while(true)
                  {
                     this.§5a§ = param3;
                     loop2:
                     while(true)
                     {
                        addr47:
                        while(true)
                        {
                           this.§]V§ = param4;
                           continue loop2;
                        }
                        continue loop1;
                     }
                  }
                  addr96:
               }
               §§goto(addr85);
               if(_loc8_ && this)
               {
                  continue;
               }
               if(false)
               {
                  §§goto(addr47);
               }
               var _loc6_:int = param2.length;
               var _loc7_:int = 0;
               addr109:
               if(_loc7_ >= _loc6_)
               {
                  if(_loc9_ || param2)
                  {
                     if(!_loc8_)
                     {
                        if(!_loc9_)
                        {
                           addr149:
                           this.§=!o§ = param2[_loc7_].timestamp;
                           addr137:
                           _loc7_++;
                           addr139:
                           §§goto(addr109);
                           addr155:
                        }
                        return;
                     }
                     §§goto(addr155);
                  }
                  §§goto(addr139);
               }
               if(param2[_loc7_].timestamp > this.§=!o§)
               {
                  §§goto(addr149);
               }
               §§goto(addr137);
            }
         }
         §§goto(addr96);
      }
      
      public function §4_§(param1:DisplayObject, param2:String = null) : Vector.<§6!V§>
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:§6!V§ = null;
         var _loc7_:* = false;
         var _loc8_:* = false;
         var _loc3_:Vector.<§6!V§> = new Vector.<§6!V§>(0);
         var _loc4_:int = this.§7p§.length;
         var _loc5_:int = 0;
         loop0:
         while(_loc5_ < _loc4_)
         {
            §§push((_loc6_ = this.§7p§[_loc5_]).target == param1);
            if(_loc9_ || param1)
            {
               §§push(§§pop());
               if(!_loc10_)
               {
                  if(!§§pop())
                  {
                     if(_loc9_ || _loc3_)
                     {
                        §§pop();
                        if(_loc9_ || this)
                        {
                           §§push(param1 is DisplayObjectContainer);
                           loop1:
                           while(true)
                           {
                              §§push(§§pop());
                              loop2:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       §§pop();
                                       loop4:
                                       while(true)
                                       {
                                          §§push((param1 as DisplayObjectContainer).contains(_loc6_.target));
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             addr122:
                                             if(!(_loc9_ || param1))
                                             {
                                                continue;
                                             }
                                             if(_loc10_ && _loc3_)
                                             {
                                                continue loop3;
                                             }
                                             while(true)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop30:
                                                while(true)
                                                {
                                                   if(!(_loc10_ && param2))
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         loop14:
                                                         while(§§pop())
                                                         {
                                                            while(!_loc9_)
                                                            {
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     §§push(param2);
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(§§pop() == _loc6_.phase);
                                                                        loop12:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              continue loop1;
                                                                           }
                                                                           loop13:
                                                                           while(true)
                                                                           {
                                                                              addr193:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Boolean(§§pop()));
                                                                                 addr194:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc9_)
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             if(!(_loc10_ && this))
                                                                                             {
                                                                                                addr166:
                                                                                                §§push(Boolean(§§pop()));
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                   §§push(§§pop());
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      if(_loc10_ && _loc3_)
                                                                                                      {
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      while(_loc10_)
                                                                                                      {
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                      §§pop();
                                                                                                      while(true)
                                                                                                      {
                                                                                                         addr96:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc8_);
                                                                                                            if(_loc10_ && param1)
                                                                                                            {
                                                                                                               continue loop30;
                                                                                                            }
                                                                                                            if(_loc9_ || param2)
                                                                                                            {
                                                                                                               §§goto(addr122);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr179);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr179:
                                                                                                   }
                                                                                                }
                                                                                                addr166:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                loop19:
                                                                                                while(!_loc10_)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   loop18:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() == null);
                                                                                                      continue loop19;
                                                                                                      addr231:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop18;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc7_ = §§pop();
                                                                                                   §§goto(addr231);
                                                                                                }
                                                                                                addr230:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   continue loop17;
                                                                                                }
                                                                                                continue loop13;
                                                                                             }
                                                                                             addr215:
                                                                                          }
                                                                                          §§goto(addr166);
                                                                                       }
                                                                                       addr197:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr229:
                                                                                       while(true)
                                                                                       {
                                                                                       }
                                                                                       addr229:
                                                                                    }
                                                                                    §§goto(addr230);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr200);
                                                                  }
                                                                  §§goto(addr231);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               _loc3_.push(_loc6_);
                                                               addr153:
                                                               while(true)
                                                               {
                                                                  break loop14;
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            _loc5_++;
                                                            if(!_loc10_)
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  if(!(_loc10_ && this))
                                                                  {
                                                                     if(_loc9_)
                                                                     {
                                                                        if(_loc10_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        if(true)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§goto(addr96);
                                                                     }
                                                                     §§goto(addr197);
                                                                  }
                                                                  §§goto(addr182);
                                                               }
                                                               §§goto(addr148);
                                                            }
                                                            §§goto(addr153);
                                                         }
                                                         continue loop0;
                                                      }
                                                      §§goto(addr194);
                                                   }
                                                   §§goto(addr166);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr229);
                                 }
                              }
                           }
                        }
                        §§goto(addr150);
                     }
                     §§goto(addr193);
                  }
                  §§goto(addr229);
               }
               §§goto(addr215);
            }
            §§goto(addr136);
         }
         return _loc3_;
      }
      
      public function §&f§(param1:DisplayObject, param2:String = null) : §6!V§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Vector.<§6!V§> = this.§4_§(param1,param2);
         if(!(_loc5_ && param2))
         {
            if(_loc3_.length > 0)
            {
               if(!_loc5_)
               {
                  return _loc3_[0];
               }
            }
         }
         return null;
      }
      
      public function §,-§(param1:DisplayObject) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Vector.<§6!V§> = null;
         var _loc3_:* = 0;
         if(!(_loc5_ && _loc3_))
         {
            if(this.§&f§(param1) == null)
            {
               if(_loc4_)
               {
                  §§goto(addr35);
               }
            }
            _loc2_ = this.§4_§(param1);
            if(!(_loc5_ && param1))
            {
               _loc3_ = int(_loc2_.length - 1);
            }
            while(true)
            {
               §§push(_loc3_);
               if(_loc4_)
               {
                  if(§§pop() < 0)
                  {
                     if(_loc5_)
                     {
                        continue;
                     }
                     if(!(_loc5_ && param1))
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           §§push(false);
                           if(!_loc5_)
                           {
                              return §§pop();
                           }
                           addr116:
                           return §§pop();
                        }
                        break;
                     }
                  }
                  else if(_loc2_[_loc3_].phase != §"U§.§&!I§)
                  {
                     break;
                  }
                  §§push(_loc3_);
                  if(_loc4_)
                  {
                     §§push(§§pop() - 1);
                  }
               }
               _loc3_ = §§pop();
            }
            §§goto(addr116);
            §§push(true);
         }
         addr35:
         return false;
      }
      
      public function get timestamp() : Number
      {
         return this.§=!o§;
      }
      
      public function get §&"E§() : Vector.<§6!V§>
      {
         return this.§7p§.concat();
      }
      
      public function get shiftKey() : Boolean
      {
         return this.§5a§;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.§]V§;
      }
   }
}
