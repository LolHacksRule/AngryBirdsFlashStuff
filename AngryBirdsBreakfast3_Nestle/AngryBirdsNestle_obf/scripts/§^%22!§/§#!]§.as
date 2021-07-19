package §^"!§
{
   import §@3§.§+z§;
   import §@3§.§]K§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   
   public class §#!]§ extends §+z§
   {
      
      public static const §[c§:String = "transition_lop";
      
      public static const §^X§:Number = 41.666666666666664;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §[c§ = "transition_lop";
            do
            {
               §^X§ = 1000 / 24;
            }
            while(!_loc1_);
            
         }
      }
      
      protected var §9B§:Number;
      
      protected var §+"1§:int;
      
      protected var §5n§:int;
      
      protected var §5!y§:int;
      
      protected var §=!E§:String = "best";
      
      public function §#!]§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.§5n§ = 0;
               addr82:
               while(true)
               {
                  this.§5!y§ = param1.length;
                  while(!_loc4_)
                  {
                     if(!(_loc4_ && param1))
                     {
                        return;
                        addr52:
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§9B§ = param3;
            while(_loc5_)
            {
               this.§+"1§ = 0;
               if(_loc4_ && param3)
               {
                  continue;
               }
               §§goto(addr45);
            }
            §§goto(addr82);
         }
         §§goto(addr52);
      }
      
      protected function §2!A§(param1:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:* = false;
         var _loc4_:* = false;
         var _loc5_:String = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc2_:MovieClip = §;>§[param1];
         if(_loc11_ || this)
         {
            §§push(Boolean(§]R§));
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
                        addr326:
                        while(true)
                        {
                           §§push(!§#5§);
                        }
                     }
                     addr325:
                  }
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§push(Boolean(§&3§(_loc2_,§]R§)));
                           loop6:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              loop7:
                              while(true)
                              {
                                 if(_loc11_)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       if(!(_loc10_ && param1))
                                       {
                                          if(!_loc11_)
                                          {
                                             continue loop5;
                                          }
                                          if(!§§pop())
                                          {
                                             _loc2_.nextFrame();
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§push(Boolean(§,8§.loop));
                                          }
                                          addr281:
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop11:
                                          while(!_loc10_)
                                          {
                                             if(§§pop())
                                             {
                                                loop12:
                                                while(true)
                                                {
                                                   if(_loc11_ || this)
                                                   {
                                                      if(_loc11_)
                                                      {
                                                         §§pop();
                                                         while(true)
                                                         {
                                                            if(_loc11_)
                                                            {
                                                               §§push(!§]R§);
                                                               if(_loc11_)
                                                               {
                                                                  if(!_loc11_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  if(_loc10_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc11_)
                                                                        {
                                                                           _loc4_ = §§pop();
                                                                           if(_loc11_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           addr265:
                                                                           while(!_loc10_)
                                                                           {
                                                                              §§pop();
                                                                              loop15:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§,8§.type == §]K§.§=@§);
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!(_loc10_ && _loc2_))
                                                                                 {
                                                                                    if(_loc10_ && param1)
                                                                                    {
                                                                                       continue loop20;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       addr262:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             continue loop11;
                                                                                          }
                                                                                          if(§§pop())
                                                                                          {
                                                                                             break loop15;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr261:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!(_loc10_ && _loc3_))
                                                                                       {
                                                                                          _loc5_ = "loop_run";
                                                                                          _loc2_.gotoAndStop(_loc5_);
                                                                                          dispatchEvent(new Event(§[c§));
                                                                                          addr229:
                                                                                          if(_loc11_)
                                                                                          {
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                §§goto(addr229);
                                                                                             }
                                                                                             addr369:
                                                                                             break loop8;
                                                                                             addr43:
                                                                                          }
                                                                                          addr195:
                                                                                          §§goto(addr195);
                                                                                       }
                                                                                       break loop8;
                                                                                    }
                                                                                    if(§,8§.defaultStartLabel != "")
                                                                                    {
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          if(_loc10_ && this)
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                          §§push(§,8§.defaultStartLabel);
                                                                                          while(true)
                                                                                          {
                                                                                          }
                                                                                          addr156:
                                                                                       }
                                                                                       §§goto(addr369);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push("");
                                                                                    }
                                                                                    loop17:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          _loc6_ = §§pop();
                                                                                          if(_loc11_ || _loc2_)
                                                                                          {
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(§,8§.startLabel != "")
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§,8§.startLabel);
                                                                                                   if(!(_loc10_ && _loc3_))
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc11_)
                                                                                                         {
                                                                                                            §§push(_loc7_ = §§pop());
                                                                                                         }
                                                                                                      }
                                                                                                      addr122:
                                                                                                   }
                                                                                                }
                                                                                                addr91:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(_loc6_);
                                                                                                if(!(_loc10_ && _loc3_))
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(!(_loc10_ && _loc3_))
                                                                                                   {
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                      §§goto(addr122);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop() != "")
                                                                                                {
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         continue loop15;
                                                                                                      }
                                                                                                      _loc2_.gotoAndStop(_loc7_);
                                                                                                   }
                                                                                                   §§goto(addr369);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   _loc2_.gotoAndStop(1);
                                                                                                   addr85:
                                                                                                }
                                                                                                §§goto(addr43);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr281);
                                                                                    }
                                                                                    §§goto(addr369);
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        §§goto(addr262);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr265);
                                                            }
                                                            addr63:
                                                            if(!(_loc11_ || param1))
                                                            {
                                                               continue;
                                                            }
                                                            if(!(_loc11_ || _loc2_))
                                                            {
                                                               continue loop7;
                                                            }
                                                            if(true)
                                                            {
                                                               var _loc8_:*;
                                                               §§push((_loc8_ = this).§5n§);
                                                               if(!(_loc10_ && param1))
                                                               {
                                                                  §§push(§§pop() + 1);
                                                               }
                                                               var _loc9_:* = §§pop();
                                                               if(_loc11_ || _loc2_)
                                                               {
                                                                  _loc8_.§5n§ = _loc9_;
                                                               }
                                                               if(_loc11_ || param1)
                                                               {
                                                                  §§goto(addr369);
                                                               }
                                                               break loop8;
                                                            }
                                                            §§goto(addr79);
                                                            §§goto(addr369);
                                                         }
                                                         continue loop6;
                                                      }
                                                      §§goto(addr325);
                                                      §§goto(addr326);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         _loc3_ = §§pop();
                                                         continue loop8;
                                                      }
                                                      addr319:
                                                   }
                                                }
                                             }
                                             §§goto(addr239);
                                          }
                                          continue loop1;
                                       }
                                    }
                                    return;
                                 }
                                 addr318:
                                 while(true)
                                 {
                                 }
                                 §§goto(addr319);
                              }
                           }
                        }
                        §§goto(addr318);
                     }
                  }
               }
            }
         }
         §§goto(addr133);
      }
      
      protected function runAnimations() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = int(§;>§.length - 1);
         while(true)
         {
            §§push(_loc1_);
            if(!(_loc3_ && _loc1_))
            {
               if(§§pop() < 0)
               {
                  if(!(_loc3_ && this))
                  {
                     break;
                  }
                  loop1:
                  while(_loc3_ && _loc2_)
                  {
                     while(true)
                     {
                        _loc1_ = §§pop();
                        continue loop1;
                     }
                  }
                  continue;
               }
               this.§2!A§(_loc1_);
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc2_ || _loc1_)
                  {
                     §§push(§§pop() - 1);
                  }
               }
            }
            §§goto(addr63);
         }
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+"1§ += param1;
         }
         loop0:
         while(true)
         {
            §§push(this.§+"1§);
            if(!_loc3_)
            {
               if(§§pop() < this.§9B§)
               {
                  if(_loc2_ || _loc3_)
                  {
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           §§push(§,8§.stageQuality == "");
                           if(!(_loc3_ && param1))
                           {
                              if(!_loc2_)
                              {
                                 continue;
                              }
                              §§push(!§§pop());
                           }
                           if(_loc2_)
                           {
                              loop2:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc2_)
                                    {
                                       stage.quality = this.§=!E§;
                                    }
                                    loop3:
                                    while(_loc2_)
                                    {
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          while(true)
                                          {
                                             §3T§ = false;
                                             addr53:
                                             while(true)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop3;
                                                }
                                                if(_loc2_)
                                                {
                                                   break;
                                                }
                                                addr139:
                                                while(true)
                                                {
                                                   this.§+"1§ -= this.§9B§;
                                                }
                                             }
                                             addr48:
                                             dispatchEvent(new Event(Event.COMPLETE));
                                             continue loop0;
                                          }
                                          addr49:
                                       }
                                       while(true)
                                       {
                                          §§push(this.§5n§);
                                          addr106:
                                          while(true)
                                          {
                                             if(§§pop() >= this.§5!y§)
                                             {
                                                break loop3;
                                             }
                                             break;
                                          }
                                          continue loop0;
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(Boolean(stage));
                                       addr111:
                                       while(!§§pop())
                                       {
                                          continue loop2;
                                       }
                                       continue loop1;
                                    }
                                 }
                                 §§goto(addr49);
                              }
                           }
                           §§goto(addr111);
                        }
                     }
                     §§goto(addr53);
                  }
                  §§goto(addr48);
               }
               else
               {
                  this.runAnimations();
               }
               §§goto(addr139);
            }
            §§goto(addr106);
         }
      }
      
      override public function start(param1:§]K§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super.start(param1);
            while(true)
            {
               this.§5!y§ = §;>§.length;
               while(_loc3_)
               {
                  this.§5n§ = 0;
                  loop2:
                  for(; !(_loc2_ && _loc3_); loop6:
                  while(_loc3_ || _loc2_)
                  {
                     while(true)
                     {
                        stage.quality = param1.stageQuality;
                        if(_loc2_)
                        {
                           continue loop6;
                        }
                        if(_loc3_)
                        {
                           if(_loc2_)
                           {
                              §§goto(addr98);
                           }
                           §§goto(addr72);
                        }
                        §§goto(addr73);
                     }
                  })
                  {
                     §§push(Boolean(stage));
                     if(!(_loc2_ && this))
                     {
                        if(§§pop())
                        {
                           loop7:
                           while(true)
                           {
                              §§pop();
                              addr98:
                              while(true)
                              {
                                 §§push(param1.stageQuality == "");
                                 if(_loc2_ && this)
                                 {
                                    while(§§pop())
                                    {
                                       while(true)
                                       {
                                          this.§=!E§ = stage.quality;
                                          continue loop2;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    addr72:
                                 }
                                 continue loop7;
                                 return;
                                 break;
                              }
                           }
                           addr97:
                        }
                        while(true)
                        {
                           §§goto(addr72);
                           §§goto(addr70);
                        }
                     }
                     §§goto(addr97);
                  }
               }
            }
         }
         §§goto(addr84);
      }
   }
}
