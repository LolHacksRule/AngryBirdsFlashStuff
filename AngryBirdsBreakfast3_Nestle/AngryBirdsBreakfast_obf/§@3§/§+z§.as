package §@3§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §+z§ extends EventDispatcher implements §7g§
   {
      
      protected static const §]?§:Number = 500;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §+z§))
         {
            §]?§ = 500;
         }
      }
      
      protected var §[-§:Vector.<MovieClip>;
      
      protected var §;>§:Vector.<MovieClip>;
      
      protected var §]R§:Boolean = false;
      
      protected var §#5§:Boolean = false;
      
      protected var §3T§:Boolean = false;
      
      protected var §,8§:§]K§;
      
      private var §<!s§:Stage;
      
      public function §+z§(param1:Vector.<MovieClip>, param2:Stage)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
         }
         while(true)
         {
            this.§[-§ = param1;
            while(!_loc4_)
            {
               this.stage = param2;
               if(_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      public function get stage() : Stage
      {
         return this.§<!s§;
      }
      
      public function set stage(param1:Stage) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§<!s§ = param1;
         }
      }
      
      public function get §&J§() : Boolean
      {
         return this.§3T§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.stop(false);
         }
         loop0:
         while(true)
         {
            this.§[-§.length = 0;
            do
            {
               this.§;>§.length = 0;
               continue loop0;
            }
            while(_loc1_);
            
            return;
         }
      }
      
      protected function update(param1:Number) : void
      {
         throw "--#AbstractStateTransition[update]:: method must be implemented";
      }
      
      public final function run(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.§3T§)
            {
               if(!_loc2_)
               {
                  §§goto(addr92);
               }
               else
               {
                  loop0:
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        if(!(_loc2_ && param1))
                        {
                           while(true)
                           {
                              this.update(param1);
                              if(_loc2_ && param1)
                              {
                                 continue loop5;
                              }
                              addr35:
                              if(!(_loc2_ && param1))
                              {
                                 return;
                              }
                              addr59:
                              while(true)
                              {
                                 §§push(§]?§);
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 addr68:
                                 while(true)
                                 {
                                    param1 = §§pop();
                                    continue loop5;
                                 }
                                 §§goto(addr35);
                              }
                              continue loop5;
                           }
                           addr24:
                        }
                        continue loop0;
                     }
                  }
                  addr93:
               }
            }
            while(true)
            {
               §§push(param1);
               if(_loc3_)
               {
                  if(§§pop() > §]?§)
                  {
                     §§goto(addr59);
                  }
                  §§goto(addr24);
               }
               §§goto(addr68);
               §§goto(addr93);
            }
         }
         addr92:
      }
      
      public function stop(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(this.§3T§)
            {
               loop0:
               while(true)
               {
                  this.§#5§ = param1;
                  while(true)
                  {
                     if(_loc3_)
                     {
                        this.§]R§ = true;
                        if(!_loc2_)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              break loop0;
                           }
                           if(_loc2_ && this)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue;
                     }
                  }
                  §§goto(addr89);
               }
               return;
            }
            dispatchEvent(new Event(Event.COMPLETE));
            addr89:
            return;
         }
         §§goto(addr69);
      }
      
      public function start(param1:§]K§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§3T§ = true;
            while(true)
            {
               this.§]R§ = false;
               addr41:
               if(_loc4_ && param1)
               {
                  continue;
               }
               this.§;>§ = new Vector.<MovieClip>();
               if(_loc3_)
               {
                  if(false)
                  {
                     loop2:
                     while(true)
                     {
                        this.§,8§ = param1;
                        addr34:
                        addr53:
                        while(!(_loc4_ && _loc2_))
                        {
                           §§goto(addr41);
                        }
                        while(true)
                        {
                           continue loop2;
                           §§goto(addr34);
                        }
                     }
                  }
                  var _loc2_:* = int(this.§[-§.length - 1);
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!(_loc4_ && param1))
                     {
                        if(_loc3_ || param1)
                        {
                           if(§§pop() < 0)
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                              loop5:
                              while(!(_loc3_ || param1))
                              {
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    continue loop5;
                                 }
                              }
                              continue;
                           }
                           this.§1!v§(this.§[-§[_loc2_]);
                           while(true)
                           {
                              §§push(_loc2_);
                           }
                        }
                        while(true)
                        {
                        }
                     }
                     §§goto(addr101);
                  }
                  return;
               }
               §§goto(addr34);
            }
         }
         §§goto(addr53);
      }
      
      protected function §1!v§(param1:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(this.§73§(param1,this.§,8§.startLabel));
            loop0:
            while(!§§pop())
            {
               §§push(this.§73§(param1,this.§,8§.defaultStartLabel));
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        param1.gotoAndStop(this.§,8§.defaultStartLabel);
                        while(true)
                        {
                           if(_loc3_ && _loc2_)
                           {
                              break loop0;
                           }
                           this.§;>§.push(param1);
                           if(_loc3_)
                           {
                              continue;
                           }
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           if(_loc2_)
                           {
                              if(_loc3_ && param1)
                              {
                                 break;
                              }
                           }
                        }
                        addr110:
                        this.§;>§.push(param1);
                        §§goto(addr87);
                     }
                  }
                  return;
               }
            }
            param1.gotoAndStop(this.§,8§.startLabel);
            §§goto(addr110);
         }
         §§goto(addr87);
      }
      
      protected function §&3§(param1:MovieClip, param2:Boolean = false) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            if(param1.currentFrame < param1.totalFrames)
            {
               loop0:
               while(true)
               {
                  if(param1.currentFrameLabel)
                  {
                     if(!(_loc4_ && param1))
                     {
                        if(param1.currentFrameLabel.indexOf(this.§,8§.§7!r§) != 0)
                        {
                           loop1:
                           while(true)
                           {
                              §§push(param2);
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop3:
                                 while(_loc3_)
                                 {
                                    §§push(§§pop());
                                    loop4:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop5:
                                          while(true)
                                          {
                                             §§pop();
                                             loop6:
                                             while(!(_loc4_ && this))
                                             {
                                                §§push(Boolean(this.§,8§.§1Q§));
                                                loop7:
                                                while(true)
                                                {
                                                   if(!(_loc3_ || param2))
                                                   {
                                                      continue loop5;
                                                   }
                                                   §§push(§§pop());
                                                   if(!_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr120:
                                                         addr168:
                                                         while(true)
                                                         {
                                                            if(_loc3_)
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  §§push(param1.currentFrameLabel.indexOf(this.§,8§.§1Q§) == 0);
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     if(!_loc3_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                  }
                                                                  addr98:
                                                                  return §§pop();
                                                               }
                                                               addr160:
                                                               if(!(_loc4_ && param1))
                                                               {
                                                                  §§push(true);
                                                                  break;
                                                               }
                                                               addr185:
                                                               §§push(true);
                                                               break loop3;
                                                            }
                                                            continue loop6;
                                                         }
                                                         return §§pop();
                                                      }
                                                   }
                                                }
                                                continue loop4;
                                             }
                                             continue loop0;
                                          }
                                       }
                                       §§goto(addr76);
                                    }
                                 }
                                 return §§pop();
                              }
                              addr179:
                              while(true)
                              {
                                 continue loop1;
                              }
                           }
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr179);
                  }
                  §§goto(addr24);
               }
            }
            §§goto(addr185);
         }
         §§goto(addr97);
      }
      
      protected function §73§(param1:MovieClip, param2:String) : Boolean
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:FrameLabel = null;
         if(_loc7_ || param1)
         {
            if(param2 == "")
            {
               if(!(_loc8_ && param2))
               {
                  return false;
               }
            }
         }
         var _loc3_:Array = param1.currentLabels;
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.name.indexOf(param2) == 0)
            {
               if(_loc7_)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function hide() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this.§;>§.length)
            {
               if(_loc2_ || this)
               {
                  break;
               }
               loop1:
               while(_loc3_ && this)
               {
                  while(true)
                  {
                     _loc1_++;
                     continue loop1;
                  }
               }
               continue;
            }
            this.§;>§[_loc1_].visible = false;
            §§goto(addr73);
         }
      }
      
      public function show() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this.§;>§.length)
            {
               if(!_loc3_)
               {
                  continue;
               }
               if(!_loc2_)
               {
                  break;
               }
            }
            else
            {
               this.§;>§[_loc1_].visible = true;
            }
            _loc1_++;
         }
      }
   }
}
