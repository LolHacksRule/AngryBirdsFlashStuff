package §5";§
{
   import §,!,§.§0!d§;
   import §,!,§.§4§;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   
   public class §%#"§ extends EventDispatcher
   {
       
      
      protected var §]"S§:MovieClip;
      
      protected var §%t§:Class;
      
      protected var §+Q§:§4#9§;
      
      protected var §^M§:§0!d§;
      
      protected var §["S§:Boolean = false;
      
      public function §%#"§(param1:MovieClip, param2:Class, param3:Array = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            super();
            while(true)
            {
               this.§]"S§ = param1;
               loop1:
               for(; !_loc4_; while(!(_loc4_ && param1))
               {
                  param1.scrollerContainer.addChild(this.§+Q§.scrollerSprite);
                  §§goto(addr138);
               })
               {
                  this.§%t§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§^M§ = new this.§%t§();
                     while(true)
                     {
                        this.§]"S§.gotoAndStop("close");
                        addr169:
                        addr138:
                        while(true)
                        {
                           this.§+Q§ = new §4#9§(100,100,param3,this.§%t§);
                           continue loop1;
                        }
                        loop6:
                        for(; !(_loc4_ && this); while(_loc5_ || param3)
                        {
                           §§goto(addr121);
                        })
                        {
                           param1.selectedValue.addChild(this.§^M§);
                           loop7:
                           for(; !_loc4_; if(!(_loc5_ || param2))
                           {
                              continue;
                           },if(_loc5_)
                           {
                              loop9:
                              while(true)
                              {
                                 this.§]"S§.addEventListener(Event.REMOVED_FROM_STAGE,this.§+y§);
                                 while(!_loc4_)
                                 {
                                    this.§]"S§.addEventListener(MouseEvent.MOUSE_DOWN,this.§;E§);
                                    if(!(_loc5_ || param2))
                                    {
                                       continue;
                                    }
                                    §§goto(addr44);
                                 }
                                 continue loop1;
                                 addr121:
                                 while(true)
                                 {
                                    continue loop9;
                                 }
                              }
                              §§goto(addr80);
                           },§§goto(addr169))
                           {
                              if(!this.§]"S§.stage)
                              {
                                 this.§]"S§.addEventListener(Event.ADDED_TO_STAGE,this.§]"9§);
                                 while(true)
                                 {
                                    if(_loc5_ || param2)
                                    {
                                       continue loop7;
                                    }
                                    addr44:
                                    if(_loc5_ || param2)
                                    {
                                       if(!(_loc4_ && param1))
                                       {
                                          return;
                                       }
                                       continue loop6;
                                    }
                                 }
                                 §§goto(addr169);
                                 addr80:
                              }
                              while(true)
                              {
                                 this.§]"9§();
                                 continue loop6;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr121);
      }
      
      protected function §]"9§(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§]"S§.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.§4#E§);
         }
      }
      
      private function §4#E§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            §§push(this.§["S§);
            if(_loc2_ || _loc3_)
            {
               §§push(Boolean(§§pop()));
               if(_loc2_ || _loc2_)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr93:
                        loop2:
                        while(true)
                        {
                           §§push(!this.§]"S§.hitTestPoint(param1.stageX,param1.stageY));
                           if(_loc2_ || _loc2_)
                           {
                              while(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    this.close();
                                 }
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop2;
                              }
                              return;
                              addr54:
                           }
                        }
                     }
                     addr92:
                  }
                  §§goto(addr54);
               }
            }
            §§goto(addr92);
         }
         §§goto(addr93);
      }
      
      public function get data() : Array
      {
         return this.§+Q§.data;
      }
      
      public function set data(param1:Array) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§+Q§.data = this.data;
         }
      }
      
      public function set §>#_§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+Q§.setWidth(param1);
         }
      }
      
      public function set §>"b§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+Q§.setHeight(param1);
         }
      }
      
      public function set §3"1§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(!this.data);
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(param1);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop() < 0);
                              if(!_loc2_)
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                this.§^M§.data = this.data[param1];
                                                loop8:
                                                while(!_loc2_)
                                                {
                                                   while(true)
                                                   {
                                                      dispatchEvent(new Event(Event.CHANGE));
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         if(_loc3_ || _loc2_)
                                                         {
                                                            if(_loc3_ || _loc3_)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop3;
                                                            }
                                                            continue loop4;
                                                         }
                                                         continue loop7;
                                                      }
                                                      continue loop8;
                                                   }
                                                   return;
                                                }
                                             }
                                          }
                                          throw new ArgumentError("Index is out of range.");
                                       }
                                       addr110:
                                    }
                                 }
                                 continue loop1;
                                 addr123:
                              }
                              addr138:
                              while(true)
                              {
                                 §§pop();
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr123);
               }
               if(!(_loc3_ || _loc3_))
               {
                  continue;
               }
               §§goto(addr110);
            }
         }
         §§goto(addr80);
      }
      
      public function get §3"1§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(!this.§^M§.data)
            {
               if(!(_loc1_ && this))
               {
                  §§goto(addr55);
               }
            }
            return this.data.indexOf(this.§]#5§);
         }
         addr55:
         return -1;
      }
      
      public function get §]#5§() : Object
      {
         return this.§^M§.data;
      }
      
      protected function §;E§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§["S§);
            while(§§pop())
            {
               §§push(param1.target is §0!d§);
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
               if(§§pop())
               {
                  while(true)
                  {
                     this.§3"1§ = this.data.indexOf(§0!d§(param1.target).data);
                     while(true)
                     {
                        §§goto(addr28);
                     }
                  }
               }
               addr28:
               while(true)
               {
                  this.close();
                  if(!(_loc3_ && this))
                  {
                     continue loop1;
                  }
                  continue loop2;
               }
               §§goto(addr55);
            }
            this.open();
         }
         addr55:
         if(_loc2_)
         {
            if(_loc2_ || _loc3_)
            {
               §§goto(addr24);
            }
            break loop0;
         }
         addr24:
      }
      
      public function open() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!this.isOpen)
            {
               do
               {
                  this.§["S§ = true;
                  do
                  {
                     this.§]"S§.gotoAndStop("open");
                     do
                     {
                        dispatchEvent(new Event(Event.OPEN));
                     }
                     while(!_loc1_);
                     
                  }
                  while(_loc2_);
                  
               }
               while(!_loc1_);
               
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.isOpen)
            {
               loop0:
               while(true)
               {
                  this.§["S§ = false;
                  while(true)
                  {
                     this.§]"S§.gotoAndStop("close");
                     loop2:
                     while(_loc1_)
                     {
                        if(_loc1_)
                        {
                           while(true)
                           {
                              dispatchEvent(new Event(Event.CLOSE));
                              if(!_loc2_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           if(_loc1_ || _loc2_)
                           {
                              return;
                           }
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr64);
      }
      
      public function get isOpen() : Boolean
      {
         return this.§["S§;
      }
      
      public function get §^"T§() : §0!d§
      {
         return this.§^M§;
      }
      
      protected function §+y§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§]"S§.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.§4#E§);
         }
      }
   }
}
