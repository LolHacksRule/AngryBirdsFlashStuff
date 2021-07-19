package §>1§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §7O§ extends EventDispatcher implements §;=§
   {
      
      protected static const §&b§:Number = 500;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §&b§ = 500;
         }
      }
      
      protected var §2Y§:Vector.<MovieClip>;
      
      protected var §?!a§:Vector.<MovieClip>;
      
      protected var §^!4§:Boolean = false;
      
      protected var §-!"§:Boolean = false;
      
      protected var §!D§:Boolean = false;
      
      protected var §=d§:§2B§;
      
      private var §7Y§:Stage;
      
      public function §7O§(param1:Vector.<MovieClip>, param2:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
         }
         do
         {
            this.§2Y§ = param1;
            do
            {
               this.stage = param2;
            }
            while(!(_loc4_ || param2));
            
         }
         while(_loc3_);
         
      }
      
      public function get stage() : Stage
      {
         return this.§7Y§;
      }
      
      public function set stage(param1:Stage) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§7Y§ = param1;
         }
      }
      
      public function get §`!m§() : Boolean
      {
         return this.§!D§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.stop(false);
            while(true)
            {
               this.§2Y§.length = 0;
               loop1:
               while(_loc2_)
               {
                  this.§?!a§.length = 0;
                  while(true)
                  {
                     this.§!D§ = false;
                     if(!_loc1_)
                     {
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr48);
      }
      
      protected function update(param1:Number) : void
      {
         throw "--#AbstractStateTransition[update]:: method must be implemented";
      }
      
      public final function run(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§!D§)
            {
               loop0:
               do
               {
                  §§push(param1);
                  if(_loc2_ || _loc2_)
                  {
                     if(§§pop() > §&b§)
                     {
                        while(true)
                        {
                           §§push(§&b§);
                           if(_loc2_ || _loc2_)
                           {
                              addr69:
                              §§push(Number(§§pop()));
                              while(true)
                              {
                                 param1 = §§pop();
                                 addr70:
                                 while(true)
                                 {
                                    if(_loc3_ && _loc3_)
                                    {
                                       §§goto(addr91);
                                    }
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              addr69:
                           }
                           §§goto(addr69);
                           addr29:
                           if(!(_loc3_ && this))
                           {
                              continue loop0;
                           }
                        }
                     }
                     while(true)
                     {
                        this.update(param1);
                        if(!_loc3_)
                        {
                           §§goto(addr29);
                        }
                        §§goto(addr70);
                        §§goto(addr87);
                     }
                     continue;
                  }
                  §§goto(addr69);
               }
               while(!_loc2_);
               
               return;
            }
            addr91:
            return;
         }
         §§goto(addr87);
      }
      
      public function stop(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§!D§)
            {
               loop0:
               do
               {
                  this.§-!"§ = param1;
                  while(!_loc3_)
                  {
                     this.§^!4§ = true;
                     if(!_loc3_)
                     {
                        continue loop0;
                     }
                  }
               }
               while(!_loc2_);
               
               return;
            }
            if(_loc2_ || param1)
            {
               dispatchEvent(new Event(Event.COMPLETE));
            }
         }
      }
      
      public function start(param1:§2B§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§!D§ = true;
            while(true)
            {
               this.§^!4§ = false;
               loop3:
               while(!(_loc4_ && param1))
               {
                  this.§?!a§ = new Vector.<MovieClip>();
                  if(!(_loc3_ || _loc3_))
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     if(false)
                     {
                        while(true)
                        {
                           this.§=d§ = param1;
                           continue loop3;
                        }
                        addr68:
                        var _loc2_:* = int(this.§2Y§.length - 1);
                        addr37:
                     }
                     else
                     {
                        §§goto(addr68);
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                        if(!(_loc4_ && _loc2_))
                        {
                           if(§§pop() < 0)
                           {
                              if(!(_loc3_ || param1))
                              {
                                 continue;
                              }
                              if(_loc3_)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              this.§!A§(this.§2Y§[_loc2_]);
                           }
                           §§push(_loc2_);
                           if(!(_loc4_ && this))
                           {
                              §§push(§§pop() - 1);
                           }
                        }
                        _loc2_ = §§pop();
                     }
                     return;
                  }
                  addr53:
                  while(true)
                  {
                  }
                  §§goto(addr37);
               }
            }
         }
         §§goto(addr53);
      }
      
      protected function §!A§(param1:MovieClip) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this.§'!-§(param1,this.§=d§.startLabel));
            while(!§§pop())
            {
               §§push(this.§'!-§(param1,this.§=d§.defaultStartLabel));
               if(!(_loc3_ || this))
               {
                  continue;
               }
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     if(!_loc2_)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        param1.gotoAndStop(this.§=d§.defaultStartLabel);
                        do
                        {
                           this.§?!a§.push(param1);
                        }
                        while(!_loc3_);
                        
                        if(_loc3_ || this)
                        {
                           §§goto(addr25);
                        }
                        else
                        {
                           this.§?!a§.push(param1);
                           addr111:
                        }
                        addr25:
                        return;
                        addr82:
                     }
                     §§goto(addr25);
                     addr88:
                  }
                  §§goto(addr82);
               }
               §§goto(addr25);
            }
            param1.gotoAndStop(this.§=d§.startLabel);
            §§goto(addr111);
         }
         §§goto(addr88);
      }
      
      protected function §5t§(param1:MovieClip, param2:Boolean = false) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(param1.currentFrame < param1.totalFrames)
            {
               loop0:
               while(true)
               {
                  if(param1.currentFrameLabel)
                  {
                     loop1:
                     while(true)
                     {
                        if(_loc3_)
                        {
                           if(param1.currentFrameLabel.indexOf(this.§=d§.§'!J§) == 0)
                           {
                              if(_loc3_)
                              {
                                 §§push(true);
                                 break;
                              }
                              while(_loc3_ || param1)
                              {
                                 loop8:
                                 while(_loc3_ || param1)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(Boolean(this.§=d§.§1!p§));
                                    while(!_loc4_)
                                    {
                                       addr110:
                                       §§push(§§pop());
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          if(!§§pop())
                                          {
                                             loop11:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc4_ && param2))
                                                   {
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         §§push(true);
                                                      }
                                                      else
                                                      {
                                                         addr120:
                                                         while(true)
                                                         {
                                                            §§push(param1.currentFrameLabel.indexOf(this.§=d§.§1!p§) == 0);
                                                            if(!(_loc3_ || _loc3_))
                                                            {
                                                               continue loop11;
                                                            }
                                                            §§push(Boolean(§§pop()));
                                                            if(_loc3_)
                                                            {
                                                               continue loop11;
                                                            }
                                                         }
                                                         addr120:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr19:
                                                      while(true)
                                                      {
                                                         §§push(false);
                                                         if(_loc3_ || this)
                                                         {
                                                            addr28:
                                                            if(!(_loc4_ && _loc3_))
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                                  break loop1;
                                                               }
                                                               addr181:
                                                               §§goto(addr124);
                                                            }
                                                            addr119:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               §§goto(addr120);
                                                               §§goto(addr28);
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               continue loop8;
                                                            }
                                                            addr128:
                                                         }
                                                      }
                                                      addr19:
                                                   }
                                                   while(_loc4_)
                                                   {
                                                      §§goto(addr128);
                                                   }
                                                   return §§pop();
                                                }
                                                §§goto(addr19);
                                             }
                                             addr69:
                                          }
                                          §§goto(addr119);
                                       }
                                       §§goto(addr127);
                                       if(_loc4_ && param1)
                                       {
                                          continue;
                                       }
                                       §§goto(addr69);
                                    }
                                    while(true)
                                    {
                                       addr124:
                                       while(!_loc4_)
                                       {
                                          §§push(§§pop());
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                continue loop11;
                                             }
                                             §§goto(addr110);
                                          }
                                       }
                                       return §§pop();
                                    }
                                 }
                              }
                              continue loop0;
                           }
                           while(true)
                           {
                              §§goto(addr123);
                           }
                        }
                        else
                        {
                           addr180:
                           §§push(true);
                        }
                        §§goto(addr181);
                     }
                     return §§pop();
                  }
                  §§goto(addr19);
               }
            }
            §§goto(addr180);
         }
         §§goto(addr120);
      }
      
      protected function §'!-§(param1:MovieClip, param2:String) : Boolean
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:FrameLabel = null;
         if(!_loc8_)
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
               if(_loc7_ || this)
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
            if(_loc1_ >= this.§?!a§.length)
            {
               if(_loc2_ || _loc3_)
               {
                  break;
               }
            }
            else
            {
               this.§?!a§[_loc1_].visible = false;
               while(true)
               {
                  _loc1_++;
               }
               addr68:
            }
            while(_loc3_)
            {
               §§goto(addr68);
            }
         }
      }
      
      public function show() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this.§?!a§.length)
            {
               if(!_loc3_)
               {
                  continue;
               }
               if(!(_loc2_ && _loc3_))
               {
                  break;
               }
            }
            else
            {
               this.§?!a§[_loc1_].visible = true;
            }
            _loc1_++;
         }
      }
   }
}
