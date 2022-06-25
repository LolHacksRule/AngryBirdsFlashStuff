package §9Y§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §6!8§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §^§:int = 2;
      
      public static const §[!J§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §6!8§))
         {
            LISTENER_EVENT_MOUSE_DOWN = 0;
            while(true)
            {
               LISTENER_EVENT_MOUSE_UP = 1;
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     §^§ = 2;
                     do
                     {
                        §[!J§ = 3;
                     }
                     while(_loc1_);
                     
                     if(!(_loc1_ && _loc1_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr74);
      }
      
      private var §,u§:Sprite;
      
      public var §^H§:int = 0;
      
      public var §#8§:Array;
      
      public function §6!8§(param1:Sprite)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super();
            while(true)
            {
               if(param1)
               {
                  if(_loc2_)
                  {
                     this.§,u§ = param1;
                  }
                  loop1:
                  while(!_loc3_)
                  {
                     while(true)
                     {
                        this.§#8§ = new Array();
                        if(_loc2_ || _loc2_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     return;
                  }
                  continue;
               }
               §§goto(addr48);
            }
         }
         §§goto(addr60);
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.removeEventListeners();
            while(true)
            {
               this.§,u§ = param1;
               while(_loc3_ || _loc2_)
               {
                  this.addEventListeners();
                  if(!(_loc3_ || _loc2_))
                  {
                     continue;
                  }
                  return;
                  addr44:
               }
            }
         }
         §§goto(addr44);
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(Boolean(this.§,u§));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           while(true)
                           {
                              §§push(param2);
                              loop6:
                              while(true)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(!§§pop())
                                    {
                                       (this.§,u§ as MovieClip).gotoAndStop(param1);
                                       addr105:
                                       if(_loc3_)
                                       {
                                          if(_loc4_ && this)
                                          {
                                          }
                                          §§goto(addr24);
                                       }
                                       while(true)
                                       {
                                          if(!(_loc3_ || param2))
                                          {
                                             while(true)
                                             {
                                                §§push(this.§,u§ is MovieClip);
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   continue loop0;
                                                }
                                                continue loop6;
                                             }
                                             addr119:
                                          }
                                          §§goto(addr24);
                                       }
                                       addr105:
                                    }
                                    (this.§,u§ as MovieClip).gotoAndPlay(param1);
                                    §§goto(addr105);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§pop();
                                    }
                                    addr118:
                                 }
                                 §§goto(addr119);
                              }
                           }
                           addr80:
                        }
                        §§goto(addr105);
                     }
                     addr24:
                     return;
                  }
                  addr76:
               }
               §§goto(addr118);
            }
         }
         §§goto(addr80);
      }
      
      public function §7k§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            §§push(this);
            §§push(this.§^H§);
            if(_loc4_ || param2)
            {
               §§push(1);
               if(_loc4_)
               {
                  §§push(§§pop() << param1);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§^H§ = §§pop();
         }
         loop0:
         while(true)
         {
            this.§#8§[param1] = param2.toUpperCase();
            while(param3)
            {
               if(_loc5_)
               {
                  break;
               }
               addr64:
               if(_loc4_)
               {
                  continue loop0;
               }
            }
            return;
         }
      }
      
      public function listenerEventOccured(param1:int, param2:String) : void
      {
      }
      
      public function addEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.removeEventListeners();
            loop0:
            while(true)
            {
               §§push(this.§^H§);
               loop1:
               while(true)
               {
                  §§push(1);
                  loop2:
                  while(true)
                  {
                     §§push(LISTENER_EVENT_MOUSE_DOWN);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() << §§pop());
                        loop4:
                        while(true)
                        {
                           §§push(§§pop() & §§pop());
                           loop5:
                           while(true)
                           {
                              §§push(0);
                              loop6:
                              while(true)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    continue loop0;
                                 }
                                 loop9:
                                 while(true)
                                 {
                                    §§push(this.§^H§);
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§push(1);
                                       loop10:
                                       while(true)
                                       {
                                          §§push(LISTENER_EVENT_MOUSE_UP);
                                          addr167:
                                          while(true)
                                          {
                                             §§push(§§pop() << §§pop());
                                             addr168:
                                             while(true)
                                             {
                                                §§push(§§pop() & §§pop());
                                             }
                                          }
                                          loop20:
                                          while(true)
                                          {
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                §§push(§§pop() & §§pop());
                                                loop21:
                                                while(_loc1_ || _loc2_)
                                                {
                                                   §§push(0);
                                                   loop22:
                                                   while(true)
                                                   {
                                                      if(§§pop() != §§pop())
                                                      {
                                                         loop23:
                                                         while(true)
                                                         {
                                                            this.§,u§.addEventListener(MouseEvent.ROLL_OVER,this.§=!T§);
                                                            loop24:
                                                            while(!_loc2_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(this.§^H§);
                                                                  if(!_loc2_)
                                                                  {
                                                                     if(!_loc1_)
                                                                     {
                                                                        continue loop21;
                                                                     }
                                                                     §§push(1);
                                                                     if(_loc1_)
                                                                     {
                                                                        if(!_loc1_)
                                                                        {
                                                                           continue loop22;
                                                                        }
                                                                        if(_loc2_)
                                                                        {
                                                                           continue loop20;
                                                                        }
                                                                        if(_loc1_)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              if(!_loc1_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                              addr48:
                                                                              §§push(§[!J§);
                                                                              if(!(_loc2_ && _loc2_))
                                                                              {
                                                                                 if(!_loc1_)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§push(§§pop() << §§pop());
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    addr62:
                                                                                    §§push(§§pop() & §§pop());
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       if(_loc1_ || this)
                                                                                       {
                                                                                          addr72:
                                                                                          §§push(0);
                                                                                          if(_loc1_)
                                                                                          {
                                                                                             if(§§pop() != §§pop())
                                                                                             {
                                                                                                if(_loc1_ || _loc1_)
                                                                                                {
                                                                                                   if(!_loc1_)
                                                                                                   {
                                                                                                      continue loop24;
                                                                                                   }
                                                                                                   this.§,u§.addEventListener(MouseEvent.ROLL_OUT,this.§>d§);
                                                                                                }
                                                                                                if(!(_loc1_ || this))
                                                                                                {
                                                                                                   continue loop23;
                                                                                                }
                                                                                                if(_loc1_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                addr218:
                                                                                                addr218:
                                                                                                while(true)
                                                                                                {
                                                                                                   continue loop9;
                                                                                                }
                                                                                                addr218:
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr168);
                                                                                          §§goto(addr218);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(0);
                                                                                          addr170:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                continue loop4;
                                                                                             }
                                                                                             if(§§pop() != §§pop())
                                                                                             {
                                                                                                if(_loc1_)
                                                                                                {
                                                                                                   if(!_loc1_)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§,u§.addEventListener(MouseEvent.MOUSE_UP,this.§function§);
                                                                                                      break loop24;
                                                                                                   }
                                                                                                }
                                                                                                break loop24;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§^H§);
                                                                                                break loop24;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr218);
                                                                                       }
                                                                                       addr169:
                                                                                    }
                                                                                    while(_loc1_)
                                                                                    {
                                                                                       §§push(1);
                                                                                       while(!(_loc2_ && _loc2_))
                                                                                       {
                                                                                          §§push(§^§);
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                                 §§goto(addr72);
                                                                              }
                                                                              while(!_loc2_)
                                                                              {
                                                                                 §§push(§§pop() << §§pop());
                                                                                 continue loop20;
                                                                                 §§goto(addr48);
                                                                              }
                                                                              §§goto(addr167);
                                                                           }
                                                                           §§goto(addr170);
                                                                        }
                                                                        §§goto(addr117);
                                                                     }
                                                                     §§goto(addr72);
                                                                  }
                                                                  §§goto(addr62);
                                                               }
                                                               return;
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr111);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr28);
                                                   }
                                                }
                                                continue loop5;
                                             }
                                             continue loop10;
                                          }
                                       }
                                    }
                                    §§goto(addr169);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr177);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§,u§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4!2§);
            do
            {
               this.§,u§.removeEventListener(MouseEvent.MOUSE_UP,this.§function§);
               do
               {
                  this.§,u§.removeEventListener(MouseEvent.ROLL_OVER,this.§=!T§);
                  do
                  {
                     this.§,u§.removeEventListener(MouseEvent.ROLL_OUT,this.§>d§);
                  }
                  while(_loc1_ && _loc2_);
                  
               }
               while(_loc1_ && _loc1_);
               
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function §4!2§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§#8§[LISTENER_EVENT_MOUSE_DOWN]);
            do
            {
               param1.stopPropagation();
            }
            while(!(_loc3_ || _loc2_));
            
         }
      }
      
      public function §function§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§#8§[LISTENER_EVENT_MOUSE_UP]);
            do
            {
               param1.stopPropagation();
            }
            while(!_loc3_);
            
         }
      }
      
      public function §=!T§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.listenerEventOccured(§^§,this.§#8§[§^§]);
         }
      }
      
      public function §>d§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.listenerEventOccured(§[!J§,this.§#8§[§[!J§]);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.removeEventListeners();
            do
            {
               this.§,u§ = null;
               do
               {
                  this.§#8§ = null;
               }
               while(_loc1_);
               
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
   }
}
