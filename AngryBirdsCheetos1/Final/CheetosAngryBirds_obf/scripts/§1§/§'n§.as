package §1§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §'n§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §6!A§:int = 2;
      
      public static const §'!#§:int = 3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            LISTENER_EVENT_MOUSE_DOWN = 0;
         }
         loop0:
         do
         {
            LISTENER_EVENT_MOUSE_UP = 1;
            while(true)
            {
               §6!A§ = 2;
               while(!(_loc1_ && §'n§))
               {
                  §'!#§ = 3;
                  if(_loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc1_ && §'n§);
         
      }
      
      private var §`U§:Sprite;
      
      public var §`<§:int = 0;
      
      public var §2!;§:Array;
      
      public function §'n§(param1:Sprite)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
         }
         loop0:
         while(true)
         {
            if(!param1)
            {
               while(true)
               {
                  this.§2!;§ = new Array();
                  if(_loc3_)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
            else
            {
               addr24:
            }
            if(_loc3_)
            {
               this.§`U§ = param1;
            }
            continue;
            return;
         }
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.removeEventListeners();
            do
            {
               this.§`U§ = param1;
               do
               {
                  this.addEventListeners();
               }
               while(!(_loc2_ || _loc2_));
               
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            §§push(Boolean(this.§`U§));
            if(_loc3_ || param2)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr104:
                     loop4:
                     while(true)
                     {
                        §§push(this.§`U§ is MovieClip);
                        if(_loc3_)
                        {
                           if(!_loc4_)
                           {
                              loop0:
                              while(§§pop())
                              {
                                 if(_loc3_)
                                 {
                                    §§push(param2);
                                    loop1:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          (this.§`U§ as MovieClip).gotoAndStop(param1);
                                          if(_loc3_ || _loc3_)
                                          {
                                             if(!_loc4_)
                                             {
                                                break loop0;
                                             }
                                             addr72:
                                             while(true)
                                             {
                                                if(!_loc4_)
                                                {
                                                   (this.§`U§ as MovieClip).gotoAndPlay(param1);
                                                   break loop1;
                                                }
                                                continue loop4;
                                             }
                                          }
                                          break;
                                       }
                                       continue loop4;
                                    }
                                    break;
                                    addr71:
                                 }
                                 §§goto(addr72);
                              }
                              return;
                              addr66:
                           }
                           continue;
                        }
                        §§goto(addr71);
                     }
                  }
                  addr103:
               }
               §§goto(addr66);
            }
            §§goto(addr103);
         }
         §§goto(addr104);
      }
      
      public function §2!4§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(this);
            §§push(this.§`<§);
            if(_loc5_ || this)
            {
               §§push(1);
               if(!_loc4_)
               {
                  §§push(§§pop() << param1);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§`<§ = §§pop();
         }
         loop0:
         while(true)
         {
            this.§2!;§[param1] = param2.toUpperCase();
            while(param3)
            {
               if(!(_loc4_ && this))
               {
                  if(!_loc4_)
                  {
                     this.addEventListeners();
                     continue loop0;
                  }
                  continue;
               }
               continue loop0;
            }
            addr20:
            return;
         }
      }
      
      public function listenerEventOccured(param1:int, param2:String) : void
      {
      }
      
      public function addEventListeners() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.removeEventListeners();
            loop0:
            while(true)
            {
               §§push(this.§`<§);
               loop1:
               while(true)
               {
                  §§push(1);
                  if(_loc2_)
                  {
                     §§push(LISTENER_EVENT_MOUSE_DOWN);
                     while(true)
                     {
                        §§push(§§pop() << §§pop());
                     }
                     addr218:
                  }
                  loop3:
                  while(true)
                  {
                     §§push(§§pop() & §§pop());
                     loop4:
                     while(true)
                     {
                        §§push(0);
                        loop5:
                        while(true)
                        {
                           if(§§pop() != §§pop())
                           {
                              while(true)
                              {
                                 this.§`U§.addEventListener(MouseEvent.MOUSE_DOWN,this.§`i§);
                                 addr239:
                                 while(true)
                                 {
                                 }
                              }
                              addr222:
                           }
                           while(true)
                           {
                              §§push(this.§`<§);
                              loop9:
                              while(true)
                              {
                                 §§push(1);
                                 loop10:
                                 while(true)
                                 {
                                    §§push(LISTENER_EVENT_MOUSE_UP);
                                    loop11:
                                    while(true)
                                    {
                                       §§push(§§pop() << §§pop());
                                       loop12:
                                       while(true)
                                       {
                                          §§push(§§pop() & §§pop());
                                          loop13:
                                          while(true)
                                          {
                                             §§push(0);
                                             loop14:
                                             while(true)
                                             {
                                                if(§§pop() != §§pop())
                                                {
                                                   if(_loc2_)
                                                   {
                                                      this.§`U§.addEventListener(MouseEvent.MOUSE_UP,this.§+z§);
                                                   }
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         while(true)
                                                         {
                                                         }
                                                         addr210:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr222);
                                                      }
                                                      addr163:
                                                      while(true)
                                                      {
                                                         if(!(_loc1_ && _loc2_))
                                                         {
                                                            continue loop0;
                                                         }
                                                         continue loop15;
                                                         addr126:
                                                         if(_loc2_ || this)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               §§goto(addr25);
                                                            }
                                                            break loop15;
                                                         }
                                                      }
                                                      continue loop0;
                                                   }
                                                   §§goto(addr239);
                                                }
                                                while(true)
                                                {
                                                   §§push(this.§`<§);
                                                   loop17:
                                                   while(_loc2_ || _loc2_)
                                                   {
                                                      §§push(1);
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §§push(§6!A§);
                                                         loop19:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() << §§pop());
                                                            if(_loc2_)
                                                            {
                                                               §§push(§§pop() & §§pop());
                                                               loop20:
                                                               while(_loc2_)
                                                               {
                                                                  §§push(0);
                                                                  addr34:
                                                                  if(_loc1_ && this)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(1);
                                                                  if(!_loc2_)
                                                                  {
                                                                     continue loop18;
                                                                  }
                                                                  if(!(_loc2_ || _loc2_))
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  if(_loc1_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  if(!(_loc2_ || _loc1_))
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  if(_loc1_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  §§push(§'!#§);
                                                                  if(!_loc2_)
                                                                  {
                                                                     continue loop19;
                                                                  }
                                                                  if(_loc1_ && _loc2_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  if(_loc2_)
                                                                  {
                                                                     §§push(§§pop() << §§pop());
                                                                     if(_loc2_)
                                                                     {
                                                                        continue loop18;
                                                                     }
                                                                     addr97:
                                                                     if(_loc2_)
                                                                     {
                                                                        if(§§pop() != §§pop())
                                                                        {
                                                                           if(_loc2_ || _loc1_)
                                                                           {
                                                                              if(_loc1_)
                                                                              {
                                                                                 loop23:
                                                                                 while(true)
                                                                                 {
                                                                                    addr29:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§`<§);
                                                                                       if(!_loc1_)
                                                                                       {
                                                                                          §§goto(addr34);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr85:
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             continue loop17;
                                                                                          }
                                                                                          if(_loc1_)
                                                                                          {
                                                                                             continue loop9;
                                                                                          }
                                                                                          if(!(_loc2_ || _loc2_))
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          §§push(0);
                                                                                       }
                                                                                       §§goto(addr97);
                                                                                       continue loop23;
                                                                                    }
                                                                                    continue loop20;
                                                                                 }
                                                                                 addr184:
                                                                              }
                                                                              this.§`U§.addEventListener(MouseEvent.ROLL_OUT,this.§!d§);
                                                                           }
                                                                           §§goto(addr126);
                                                                        }
                                                                        addr25:
                                                                        return;
                                                                     }
                                                                     while(_loc2_ || _loc1_)
                                                                     {
                                                                        if(§§pop() == §§pop())
                                                                        {
                                                                           §§goto(addr29);
                                                                        }
                                                                        §§goto(addr163);
                                                                     }
                                                                     continue loop5;
                                                                     addr155:
                                                                  }
                                                                  §§goto(addr218);
                                                               }
                                                               continue loop1;
                                                            }
                                                            §§goto(addr155);
                                                         }
                                                      }
                                                   }
                                                   continue loop13;
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr210);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§`U§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§`i§);
         }
         loop0:
         while(true)
         {
            this.§`U§.removeEventListener(MouseEvent.MOUSE_UP,this.§+z§);
            do
            {
               this.§`U§.removeEventListener(MouseEvent.ROLL_OVER,this.§]v§);
               continue loop0;
            }
            while(_loc2_ && _loc1_);
            
            return;
         }
      }
      
      public function §`i§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§2!;§[LISTENER_EVENT_MOUSE_DOWN]);
         }
         do
         {
            param1.stopPropagation();
         }
         while(_loc3_ && _loc2_);
         
      }
      
      public function §+z§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§2!;§[LISTENER_EVENT_MOUSE_UP]);
         }
         do
         {
            param1.stopPropagation();
         }
         while(!_loc2_);
         
      }
      
      public function §]v§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.listenerEventOccured(§6!A§,this.§2!;§[§6!A§]);
         }
      }
      
      public function §!d§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.listenerEventOccured(§'!#§,this.§2!;§[§'!#§]);
         }
      }
      
      public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.removeEventListeners();
            while(true)
            {
               this.§`U§ = null;
               while(!_loc2_)
               {
                  this.§2!;§ = null;
                  if(!(_loc2_ && _loc2_))
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
   }
}
