package
{
   import §?""§.§`!o§;
   import flash.display.StageDisplayState;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.system.Capabilities;
   import flash.ui.Keyboard;
   
   public class AngryBirdsCustomCanvas extends §`!o§
   {
       
      
      private const §"!H§:RegExp;
      
      private var §#O§:Boolean = false;
      
      private var §?x§:String = "Win";
      
      public function AngryBirdsCustomCanvas()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§"!H§ = /^(http|https):\/\/((([\w\-]*)(\.angrybirds\-nestle.appspot\.com))|(angrybirds\-nestle.appspot\.com)|(nestle\.angrybirds\.com))(.*)/;
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  addEventListener(Event.ADDED_TO_STAGE,this.§<!"§);
                  loop2:
                  while(_loc2_ || _loc2_)
                  {
                     while(true)
                     {
                        this.§%t§();
                        if(!_loc1_)
                        {
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      private function §%t§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§?x§ = Capabilities.os.substr(0,3);
         }
      }
      
      private function §<!"§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            removeEventListener(Event.ADDED_TO_STAGE,this.§<!"§);
         }
         while(true)
         {
            new §4!=§(this,loaderInfo.parameters.serverVersion,loaderInfo.parameters.serverRoot);
            while(_loc2_)
            {
               stage.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyDown,false,100);
               while(_loc2_)
               {
                  stage.addEventListener(KeyboardEvent.KEY_UP,this.§7i§,false,100);
                  if(_loc2_ || _loc2_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      private function onKeyDown(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§#O§);
            if(!(_loc3_ && _loc3_))
            {
               if(!§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§?x§);
                     loop1:
                     while(true)
                     {
                        §§push(§§pop() == "Win");
                        loop2:
                        while(true)
                        {
                           §§push(§§pop());
                           loop3:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 addr244:
                                 while(true)
                                 {
                                    §§pop();
                                    addr245:
                                    while(true)
                                    {
                                       §§push(param1.keyCode == Keyboard.ENTER);
                                       addr212:
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             continue loop2;
                                          }
                                          §§push(§§pop());
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr217:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(param1.altKey));
                                                   }
                                                }
                                                addr216:
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr244:
                              }
                              while(true)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       §§push(this.§?x§);
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       §§push(§§pop() == "Mac");
                                       loop6:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop7:
                                          while(_loc2_)
                                          {
                                             if(§§pop())
                                             {
                                                loop8:
                                                while(_loc2_)
                                                {
                                                   §§pop();
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(Keyboard.COMMAND));
                                                      loop10:
                                                      while(true)
                                                      {
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            §§push(§§pop());
                                                            if(!(_loc2_ || _loc3_))
                                                            {
                                                               continue loop7;
                                                            }
                                                            if(!(_loc2_ || param1))
                                                            {
                                                               continue loop3;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               while(§§pop())
                                                               {
                                                                  do
                                                                  {
                                                                     this.§#O§ = true;
                                                                     do
                                                                     {
                                                                        this.§!"-§();
                                                                     }
                                                                     while(!(_loc2_ || _loc2_));
                                                                     
                                                                  }
                                                                  while(!_loc2_);
                                                                  
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           if(_loc2_ || this)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           addr195:
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              this.§#O§ = true;
                                                                              this.§!"-§();
                                                                              addr205:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr217);
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(!(_loc2_ || param1))
                                                                        {
                                                                           break loop10;
                                                                        }
                                                                        §§push(param1.keyCode == Keyboard.F);
                                                                        if(!(_loc3_ && param1))
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           if(_loc3_ && this)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           if(!_loc2_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                        addr97:
                                                                        if(!(_loc3_ && param1))
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        addr157:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           continue loop12;
                                                                           §§goto(addr97);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr216);
                                                                  §§goto(addr205);
                                                               }
                                                               addr24:
                                                               return;
                                                               addr123:
                                                            }
                                                            §§goto(addr157);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr244);
                                                         }
                                                      }
                                                      §§goto(addr245);
                                                   }
                                                }
                                                §§goto(addr212);
                                             }
                                             §§goto(addr123);
                                          }
                                          §§goto(addr215);
                                       }
                                    }
                                    §§goto(addr195);
                                 }
                                 continue loop1;
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr24);
            }
            §§goto(addr244);
         }
         §§goto(addr245);
      }
      
      public function §!"-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(stage.displayState == StageDisplayState.NORMAL)
            {
               if(_loc1_)
               {
                  stage.displayState = StageDisplayState.FULL_SCREEN_INTERACTIVE;
               }
               while(!_loc1_)
               {
               }
               return;
               addr46:
            }
            else
            {
               stage.displayState = StageDisplayState.NORMAL;
               while(true)
               {
               }
               addr54:
            }
            while(true)
            {
               this.§#O§ = false;
               if(_loc1_)
               {
                  break;
               }
               §§goto(addr54);
            }
            §§goto(addr44);
         }
         §§goto(addr46);
      }
      
      private function §7i§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#O§ = false;
         }
      }
   }
}
