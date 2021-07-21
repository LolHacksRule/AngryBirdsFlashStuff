package §@y§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class §0=§
   {
      
      public static const LISTENER_EVENT_MOUSE_DOWN:int = 0;
      
      public static const LISTENER_EVENT_MOUSE_UP:int = 1;
      
      public static const §2!-§:int = 2;
      
      public static const §6!;§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            LISTENER_EVENT_MOUSE_DOWN = 0;
            loop0:
            do
            {
               LISTENER_EVENT_MOUSE_UP = 1;
               while(true)
               {
                  §2!-§ = 2;
                  while(_loc1_)
                  {
                     §6!;§ = 3;
                     if(_loc1_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      private var §6!$§:Sprite;
      
      public var §&6§:int = 0;
      
      public var §&!W§:Array;
      
      public function §0=§(param1:Sprite)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super();
            loop0:
            while(true)
            {
               if(param1)
               {
                  while(true)
                  {
                     this.§6!$§ = param1;
                     addr64:
                     while(_loc2_)
                     {
                        while(true)
                        {
                        }
                     }
                     continue loop0;
                  }
                  addr61:
               }
               while(true)
               {
                  this.§&!W§ = new Array();
                  if(_loc2_)
                  {
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§goto(addr61);
                  }
                  §§goto(addr64);
               }
               return;
            }
         }
         §§goto(addr66);
      }
      
      public function changeMovieClip(param1:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.removeEventListeners();
            while(true)
            {
               this.§6!$§ = param1;
               §§goto(addr60);
            }
         }
         addr60:
         while(true)
         {
            this.addEventListeners();
            if(_loc2_)
            {
               if(_loc2_ || param1)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function goToFrame(param1:int, param2:Boolean) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(Boolean(this.§6!$§));
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(this.§6!$§ is MovieClip);
                        if(_loc3_ || param1)
                        {
                           if(!_loc4_)
                           {
                              if(!_loc4_)
                              {
                                 loop3:
                                 while(§§pop())
                                 {
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§push(param2);
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             (this.§6!$§ as MovieClip).gotoAndStop(param1);
                                             if(_loc3_)
                                             {
                                                break loop3;
                                             }
                                          }
                                          if(_loc4_)
                                          {
                                             break loop2;
                                          }
                                          if(_loc3_)
                                          {
                                             (this.§6!$§ as MovieClip).gotoAndPlay(param1);
                                             break loop2;
                                          }
                                          continue loop2;
                                       }
                                       addr71:
                                    }
                                    break loop2;
                                 }
                                 addr19:
                                 return;
                                 addr61:
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                        §§goto(addr71);
                     }
                     addr92:
                     §§goto(addr19);
                  }
               }
               §§goto(addr61);
            }
         }
         §§goto(addr92);
      }
      
      public function §7"'§(param1:int, param2:String = "", param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(this);
            §§push(this.§&6§);
            if(_loc5_)
            {
               §§push(1);
               if(!(_loc4_ && param2))
               {
                  §§push(§§pop() << param1);
               }
               §§push(§§pop() | §§pop());
            }
            §§pop().§&6§ = §§pop();
         }
         loop0:
         while(true)
         {
            this.§&!W§[param1] = param2.toUpperCase();
            while(param3)
            {
               if(!_loc5_)
               {
                  break;
               }
               addr45:
               if(_loc5_)
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.removeEventListeners();
            loop0:
            while(true)
            {
               §§push(this.§&6§);
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
                              while(true)
                              {
                                 if(§§pop() != §§pop())
                                 {
                                    while(true)
                                    {
                                       this.§6!$§.addEventListener(MouseEvent.MOUSE_DOWN,this.§for§);
                                       addr249:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr232:
                                 }
                                 while(true)
                                 {
                                    §§push(this.§&6§);
                                    loop10:
                                    while(true)
                                    {
                                       §§push(1);
                                       loop11:
                                       while(true)
                                       {
                                          §§push(LISTENER_EVENT_MOUSE_UP);
                                          addr184:
                                          while(!(_loc1_ && _loc2_))
                                          {
                                             §§push(§§pop() << §§pop());
                                             while(true)
                                             {
                                                §§push(§§pop() & §§pop());
                                                addr193:
                                                while(!(_loc1_ && this))
                                                {
                                                   §§push(0);
                                                   while(_loc2_)
                                                   {
                                                      if(§§pop() != §§pop())
                                                      {
                                                         if(!(_loc1_ && this))
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                               this.§6!$§.addEventListener(MouseEvent.MOUSE_UP,this.§^!R§);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr232);
                                                            }
                                                         }
                                                         while(_loc2_)
                                                         {
                                                            if(_loc2_ || _loc2_)
                                                            {
                                                               this.§6!$§.addEventListener(MouseEvent.ROLL_OUT,this.§>!2§);
                                                               addr25:
                                                               return;
                                                               addr143:
                                                            }
                                                         }
                                                         continue loop0;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§&6§);
                                                         continue loop1;
                                                      }
                                                   }
                                                   continue loop4;
                                                }
                                                addr85:
                                                continue loop5;
                                                if(!(_loc2_ || _loc1_))
                                                {
                                                   continue;
                                                }
                                                if(_loc1_)
                                                {
                                                   continue loop11;
                                                }
                                                addr95:
                                                §§push(§§pop() & §§pop());
                                                if(!(_loc1_ && this))
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§push(0);
                                                   if(_loc1_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   if(§§pop() != §§pop())
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            if(!(_loc2_ || this))
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§6!$§.addEventListener(MouseEvent.ROLL_OVER,this.§,F§);
                                                                  addr176:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc1_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§&6§);
                                                                           if(_loc2_ || _loc1_)
                                                                           {
                                                                              continue loop10;
                                                                           }
                                                                           §§goto(addr95);
                                                                        }
                                                                        §§goto(addr25);
                                                                        addr29:
                                                                     }
                                                                     §§goto(addr249);
                                                                  }
                                                               }
                                                               addr169:
                                                            }
                                                            §§goto(addr129);
                                                         }
                                                         §§goto(addr176);
                                                      }
                                                      §§goto(addr143);
                                                   }
                                                   §§goto(addr25);
                                                }
                                                while(!(_loc1_ && this))
                                                {
                                                   §§push(0);
                                                   while(true)
                                                   {
                                                      if(§§pop() != §§pop())
                                                      {
                                                         §§goto(addr169);
                                                      }
                                                      §§goto(addr29);
                                                   }
                                                }
                                                §§goto(addr193);
                                             }
                                          }
                                          continue loop3;
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
         §§goto(addr25);
      }
      
      public function removeEventListeners() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§6!$§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§for§);
            while(true)
            {
               this.§6!$§.removeEventListener(MouseEvent.MOUSE_UP,this.§^!R§);
               while(!_loc2_)
               {
                  this.§6!$§.removeEventListener(MouseEvent.ROLL_OVER,this.§,F§);
                  do
                  {
                     this.§6!$§.removeEventListener(MouseEvent.ROLL_OUT,this.§>!2§);
                  }
                  while(_loc2_);
                  
                  if(_loc1_)
                  {
                     return;
                     addr50:
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      public function §for§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_DOWN,this.§&!W§[LISTENER_EVENT_MOUSE_DOWN]);
            do
            {
               param1.stopPropagation();
            }
            while(!(_loc3_ || _loc2_));
            
         }
      }
      
      public function §^!R§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.listenerEventOccured(LISTENER_EVENT_MOUSE_UP,this.§&!W§[LISTENER_EVENT_MOUSE_UP]);
         }
         do
         {
            param1.stopPropagation();
         }
         while(_loc3_ && _loc2_);
         
      }
      
      public function §,F§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.listenerEventOccured(§2!-§,this.§&!W§[§2!-§]);
         }
      }
      
      public function §>!2§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.listenerEventOccured(§6!;§,this.§&!W§[§6!;§]);
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
               this.§6!$§ = null;
               do
               {
                  this.§&!W§ = null;
               }
               while(_loc1_ && this);
               
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      public function get targetSprite() : Sprite
      {
         return this.§6!$§;
      }
   }
}
