package §'#&§
{
   import §]!$§.§6y§;
   import §]!$§.§`!]§;
   import flash.display.MovieClip;
   import flash.display.Stage;
   
   public class §3!l§ extends §`!]§
   {
       
      
      private var §#]§:String;
      
      private var §&"?§:Boolean;
      
      public function §3!l§(param1:Vector.<MovieClip>, param2:Stage, param3:Number = 41.666666666666664, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            this.§&"?§ = param4;
            do
            {
               super(param1,param2,param3);
            }
            while(_loc6_);
            
         }
      }
      
      public function §%'§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§#]§ = param1;
         }
      }
      
      override protected function startAnimation(param1:MovieClip) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:String = null;
         if(_loc3_ || param1)
         {
            §§push(this.isBackground(param1.name));
            if(!_loc4_)
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr231:
                        while(true)
                        {
                           §§push(§7#§.type == §6y§.§>]§);
                           if(_loc4_ && _loc3_)
                           {
                              continue loop0;
                           }
                           §§push(§§pop());
                           if(!(_loc3_ || _loc3_))
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              continue loop0;
                           }
                           while(true)
                           {
                              §§push(!§§pop());
                              addr152:
                              while(_loc3_)
                              {
                              }
                              addr142:
                              §§push(Boolean(§§pop()));
                              continue loop2;
                              if(!(_loc4_ && _loc2_))
                              {
                                 continue;
                              }
                              §§goto(addr152);
                           }
                        }
                        continue loop1;
                     }
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        super.startAnimation(param1);
                        if(!_loc4_)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              if(!(_loc4_ && this))
                              {
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 addr210:
                                 while(true)
                                 {
                                    §§push(this.§&"?§);
                                    if(!(_loc4_ && param1))
                                    {
                                       addr135:
                                       if(!(_loc3_ || this))
                                       {
                                          break;
                                       }
                                       §§goto(addr142);
                                    }
                                    §§goto(addr152);
                                 }
                                 continue loop0;
                              }
                              addr156:
                              §§push(§7#§.startLabel + "_");
                              if(!(_loc4_ && param1))
                              {
                                 §§push(§§pop() + this.§#]§);
                              }
                              _loc2_ = §§pop();
                              loop11:
                              while(true)
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    if(!§<1§(param1,_loc2_))
                                    {
                                       addr79:
                                       if(§<1§(param1,§7#§.defaultStartLabel))
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             if(_loc4_ && _loc3_)
                                             {
                                                continue loop11;
                                             }
                                             param1.gotoAndStop(§7#§.defaultStartLabel);
                                             §[I§.push(param1);
                                             loop9:
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      if(_loc3_ || this)
                                                      {
                                                         break loop10;
                                                      }
                                                      addr124:
                                                      addr124:
                                                      while(true)
                                                      {
                                                         §[I§.push(param1);
                                                         addr102:
                                                         if(!_loc4_)
                                                         {
                                                            break;
                                                         }
                                                         break loop9;
                                                      }
                                                      break loop10;
                                                   }
                                                   continue loop10;
                                                }
                                                §§goto(addr97);
                                             }
                                             addr97:
                                             param1.gotoAndStop(_loc2_);
                                             §§goto(addr124);
                                          }
                                       }
                                       §§goto(addr27);
                                    }
                                    §§goto(addr121);
                                 }
                              }
                              §§goto(addr231);
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr60);
                     }
                     §§goto(addr156);
                  }
                  addr27:
                  return;
               }
            }
         }
         §§goto(addr124);
      }
      
      protected function isBackground(param1:String) : Boolean
      {
         return param1 == "MovieClip_Background";
      }
      
      override protected function runAnimation(param1:int) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:* = false;
         var _loc4_:* = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc2_:MovieClip = §[I§[param1];
         if(_loc10_ || this)
         {
            §§push(this.isBackground(_loc2_.name));
            while(true)
            {
               §§push(!§§pop());
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(§7#§.type == §6y§.§>]§);
                              if(_loc10_ || this)
                              {
                                 §§push(§§pop());
                                 loop5:
                                 while(!_loc9_)
                                 {
                                    if(!§§pop())
                                    {
                                    }
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(Boolean(§5!z§));
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   while(!_loc9_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop14:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            if(!_loc10_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(!§7a§);
                                                            while(true)
                                                            {
                                                               if(_loc9_ && param1)
                                                               {
                                                                  continue loop14;
                                                               }
                                                               if(_loc9_ && _loc3_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     §§push(Boolean(§0#H§(_loc2_,§5!z§)));
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        _loc3_ = §§pop();
                                                                        addr365:
                                                                        while(true)
                                                                        {
                                                                           addr319:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              continue loop17;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr385);
                                                               }
                                                               if(_loc9_ && param1)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(§§pop());
                                                               if(!_loc9_)
                                                               {
                                                                  _loc4_ = §§pop();
                                                                  §§goto(addr290);
                                                               }
                                                               §§goto(addr344);
                                                            }
                                                            continue loop4;
                                                         }
                                                         §§goto(addr486);
                                                      }
                                                      §§goto(addr383);
                                                   }
                                                   continue loop5;
                                                }
                                             }
                                          }
                                          §§goto(addr419);
                                          if(!(_loc10_ || _loc3_))
                                          {
                                             continue;
                                          }
                                          §§goto(addr261);
                                       }
                                    }
                                 }
                                 continue loop2;
                              }
                              §§goto(addr442);
                           }
                        }
                     }
                     §§goto(addr417);
                  }
               }
            }
         }
         §§goto(addr355);
      }
   }
}
