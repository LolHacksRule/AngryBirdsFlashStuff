package §^"!§
{
   import §'!3§.§62§;
   import §1![§.§`w§;
   import §1!i§.§^Q§;
   import §>G§.PopupClosedEvent;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §4!8§ extends §+!7§
   {
       
      
      private var §""3§:Vector.<§62§>;
      
      public function §4!8§(param1:§^Q§, param2:§`w§, param3:int, param4:§>!n§ = null, param5:§;w§ = null)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || this)
         {
            super(param1,param2,param3,param4,param5);
            do
            {
               this.§""3§ = new Vector.<§62§>();
            }
            while(!_loc6_);
            
         }
      }
      
      protected function §]M§(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean, param6:Boolean) : §62§
      {
         return new §62§(§#W§,param4,param1,param2,param3,param5,param6);
      }
      
      override public function openMultipleTutorialPopups(param1:Vector.<String>, param2:Boolean = true, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:§>!n§ = null, param7:Boolean = true, param8:Boolean = true) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(!(_loc9_ && param1))
         {
            super.openMultipleTutorialPopups(param1,param2,param3,param4,param5,param6,param7,param8);
            do
            {
               this.§>"0§(param1);
            }
            while(!_loc10_);
            
         }
      }
      
      protected function §>"0§(param1:Vector.<String>) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         var _loc2_:* = "";
         if(!(_loc4_ && this))
         {
            _loc3_ = int(param1.length - 1);
         }
         loop0:
         while(true)
         {
            §§push(_loc3_);
            loop1:
            while(_loc5_ || _loc3_)
            {
               if(_loc5_)
               {
                  if(§§pop() < 0)
                  {
                     loop2:
                     while(true)
                     {
                        §§push(0);
                        loop3:
                        while(true)
                        {
                           _loc3_ = §§pop();
                           loop4:
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(_loc5_)
                                 {
                                    if(§§pop() >= param1.length)
                                    {
                                       if(!(_loc4_ && this))
                                       {
                                          §§push(_loc2_);
                                          if(!_loc4_)
                                          {
                                             if(_loc5_)
                                             {
                                                if(§§pop().length > 0)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §6!4§.userProgress.saveTutorialSeen(_loc2_);
                                                         addr63:
                                                         if(!_loc4_)
                                                         {
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               break;
                                                            }
                                                            loop10:
                                                            while(!_loc4_)
                                                            {
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  §§push(_loc2_);
                                                                  while(true)
                                                                  {
                                                                     _loc2_ = §§pop() + ",";
                                                                     addr135:
                                                                     while(true)
                                                                     {
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           _loc3_++;
                                                                           addr75:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc4_ && param1))
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    if(_loc4_ && _loc3_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop5;
                                                                                 }
                                                                                 continue loop2;
                                                                              }
                                                                              addr148:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    param1.splice(_loc3_,1);
                                                                                    addr104:
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr182:
                                                                                 }
                                                                                 §§push(_loc3_);
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc4_ && param1))
                                                                                    {
                                                                                       if(!(_loc5_ || param1))
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       if(§§pop() != param1.length - 1)
                                                                                       {
                                                                                          continue loop10;
                                                                                       }
                                                                                       continue loop9;
                                                                                    }
                                                                                    continue loop3;
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                  }
                                                                  addr132:
                                                               }
                                                               §§push(_loc3_ - 1);
                                                               break loop1;
                                                            }
                                                            continue loop4;
                                                         }
                                                         §§goto(addr135);
                                                      }
                                                      §§goto(addr75);
                                                   }
                                                   §§goto(addr63);
                                                }
                                                §§goto(addr29);
                                             }
                                             addr147:
                                             _loc2_ = §§pop();
                                             §§goto(addr148);
                                          }
                                          §§goto(addr132);
                                       }
                                       §§goto(addr63);
                                    }
                                    else
                                    {
                                       §§push(_loc2_);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() + param1[_loc3_]);
                                       }
                                    }
                                    §§goto(addr147);
                                 }
                                 §§goto(addr104);
                              }
                              addr29:
                              return;
                           }
                        }
                     }
                  }
                  else if(§6!4§.userProgress.hasTutorialBeenSeen(param1[_loc3_]))
                  {
                     §§goto(addr182);
                  }
               }
               §§goto(addr167);
            }
            _loc3_ = §§pop();
         }
      }
      
      override protected function openPopup(param1:MovieClip, param2:String, param3:Boolean, param4:int, param5:Boolean = true, param6:Boolean = true, param7:Boolean = true, param8:Boolean = false) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         §§push(param5);
         if(_loc12_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(param6);
         if(_loc12_ || param1)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc10_:* = §§pop();
         var _loc11_:§62§ = this.§]M§(param1,param2,param3,param4,_loc9_,_loc10_);
         if(!_loc13_)
         {
            this.§""3§.push(_loc11_);
            while(true)
            {
               _loc11_.addEventListener(PopupClosedEvent.§8!;§,this.§^!9§);
               addr68:
               if(!(_loc12_ || param3))
               {
                  continue;
               }
               return;
               addr75:
            }
         }
         while(true)
         {
            (§ !4§.§%"7§ as AngryBirdsCustom).§<=§.§2!J§(false);
            while(_loc12_ || param1)
            {
               §#!c§.openPopup(_loc11_,param5,param6,param7,param8);
               if(!_loc12_)
               {
                  continue;
               }
               §§goto(addr68);
            }
         }
         §§goto(addr75);
      }
      
      override public function openTutorialPopup(param1:String, param2:int, param3:Boolean = true, param4:Boolean = true, param5:Boolean = false, param6:Boolean = true, param7:§>!n§ = null, param8:Boolean = true) : void
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc10_:* = false;
         if(!(_loc11_ && param3))
         {
            if(!param5)
            {
               if(!(_loc11_ && this))
               {
                  if(§6!4§.userProgress.hasTutorialBeenSeen(param1))
                  {
                     if(!(_loc11_ && param1))
                     {
                        §§goto(addr47);
                     }
                  }
                  else
                  {
                     addr50:
                     if(param7 != null)
                     {
                        if(_loc12_)
                        {
                           §6@§ = param7;
                        }
                     }
                  }
                  var _loc9_:MovieClip = §6@§.solve(param1);
                  if(!(_loc11_ && param1))
                  {
                     §§push(param8);
                     loop0:
                     while(true)
                     {
                        §§push(!§§pop());
                        loop1:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop2:
                              while(true)
                              {
                                 §§pop();
                                 loop3:
                                 while(true)
                                 {
                                    §§push(Boolean(§#!c§.isPopupOpenById(TutorialPopup.ID)));
                                    if(!(_loc11_ && this))
                                    {
                                       if(_loc11_ && param1)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc11_)
                                             {
                                                while(true)
                                                {
                                                   §§push(true);
                                                   if(_loc12_ || param1)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      addr200:
                                                   }
                                                   addr201:
                                                   while(true)
                                                   {
                                                      param8 = §§pop();
                                                   }
                                                }
                                                addr177:
                                             }
                                             loop6:
                                             while(true)
                                             {
                                                if(!_loc9_)
                                                {
                                                   return;
                                                   addr188:
                                                }
                                                loop7:
                                                while(true)
                                                {
                                                   if(!_loc12_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   §§push(!§6!4§.userProgress.hasTutorialBeenSeen(param1));
                                                   if(!_loc11_)
                                                   {
                                                      if(!_loc11_)
                                                      {
                                                         if(!(_loc11_ && param3))
                                                         {
                                                            if(_loc12_)
                                                            {
                                                               _loc10_ = §§pop();
                                                               while(!(_loc11_ && this))
                                                               {
                                                                  this.openPopup(_loc9_,param1,_loc10_,param2,param3,param4,param6,param8);
                                                                  continue loop7;
                                                               }
                                                               continue loop3;
                                                               addr145:
                                                            }
                                                            continue loop2;
                                                         }
                                                         addr187:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            break loop7;
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr201);
                                                }
                                                while(!_loc11_)
                                                {
                                                   §§goto(addr200);
                                                }
                                                continue loop0;
                                             }
                                          }
                                          else
                                          {
                                             §§push(param8);
                                          }
                                          §§goto(addr187);
                                       }
                                    }
                                    §§goto(addr188);
                                 }
                                 continue loop1;
                              }
                           }
                           §§goto(addr173);
                        }
                     }
                  }
                  §§goto(addr177);
               }
               addr47:
               return;
            }
         }
         §§goto(addr50);
      }
      
      private function §^!9§(param1:Event) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = -1;
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_ || _loc2_)
            {
               if(!(_loc4_ && _loc2_))
               {
                  if(§§pop() >= this.§""3§.length)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(_loc2_);
                        addr203:
                        while(_loc5_ || _loc2_)
                        {
                           if(§§pop() >= 0)
                           {
                              if(!_loc4_)
                              {
                                 this.§""3§.splice(_loc2_,1);
                              }
                              while(true)
                              {
                              }
                              addr219:
                           }
                           loop4:
                           while(true)
                           {
                              if(this.§""3§.length == 0)
                              {
                                 if(_loc5_ || _loc2_)
                                 {
                                    §§push(true);
                                    loop5:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             addr181:
                                             loop12:
                                             while(true)
                                             {
                                                §§push(§ !4§.§%"7§);
                                                if(_loc5_ || param1)
                                                {
                                                   §§push((§§pop() as AngryBirdsCustom).§<=§);
                                                   if(!_loc4_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            continue;
                                                         }
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               return;
                                                               addr102:
                                                            }
                                                            addr22:
                                                            while(_loc5_ || param1)
                                                            {
                                                               if(!(_loc5_ || this))
                                                               {
                                                                  addr220:
                                                                  _loc3_++;
                                                                  break;
                                                                  addr245:
                                                               }
                                                               §§push(§ !4§.§%"7§);
                                                               while(true)
                                                               {
                                                                  §§push((§§pop() as AngryBirdsCustom).§<=§);
                                                                  addr131:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().§8!E§());
                                                                  }
                                                               }
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(_loc5_ || _loc2_)
                                                            {
                                                               §§push(§ !4§.§%"7§);
                                                               break;
                                                            }
                                                            continue loop1;
                                                         }
                                                         §§push(§ !4§.§%"7§);
                                                         if(!_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            §§push((§§pop() as AngryBirdsCustom).§<=§);
                                                            if(!_loc4_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  §§push(true);
                                                                  if(!(_loc4_ && _loc3_))
                                                                  {
                                                                     §§pop().§2!J§(§§pop());
                                                                     if(!(_loc5_ || this))
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     if(!_loc4_)
                                                                     {
                                                                        if(!(_loc5_ || _loc3_))
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        if(_loc4_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        §§goto(addr22);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr102);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr131);
                                                            }
                                                            else
                                                            {
                                                               addr147:
                                                               §§push(true);
                                                            }
                                                            §§pop().§;!I§(§§pop());
                                                            continue loop1;
                                                         }
                                                         §§goto(addr128);
                                                      }
                                                      §§goto(addr147);
                                                      §§push((§§pop() as AngryBirdsCustom).§<=§);
                                                   }
                                                   §§goto(addr131);
                                                }
                                                §§goto(addr128);
                                             }
                                          }
                                       }
                                       §§goto(addr100);
                                    }
                                 }
                                 §§goto(addr181);
                              }
                              §§goto(addr22);
                           }
                           continue loop1;
                        }
                        addr244:
                        _loc2_ = §§pop();
                        §§goto(addr245);
                     }
                  }
                  else if(this.§""3§[_loc3_] == param1.target)
                  {
                     §§goto(addr242);
                  }
                  §§goto(addr220);
               }
               §§goto(addr242);
            }
            §§goto(addr203);
         }
      }
   }
}
