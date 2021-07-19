package §]!$§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §4@§ extends EventDispatcher implements §>!!§
   {
      
      protected static const §8!V§:Number = 500;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §8!V§ = 500;
         }
      }
      
      protected var §#<§:Vector.<MovieClip>;
      
      protected var §[I§:Vector.<MovieClip>;
      
      protected var §5!z§:Boolean = false;
      
      protected var §7a§:Boolean = false;
      
      protected var §&#6§:Boolean = false;
      
      protected var §7#§:§6y§;
      
      private var § "u§:Stage;
      
      public function §4@§(param1:Vector.<MovieClip>, param2:Stage)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param2))
         {
            super();
            while(true)
            {
               this.§#<§ = param1;
               §§goto(addr66);
            }
         }
         addr66:
         while(true)
         {
            this.stage = param2;
            if(_loc3_ || param1)
            {
               if(_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get stage() : Stage
      {
         return this.§ "u§;
      }
      
      public function set stage(param1:Stage) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§ "u§ = param1;
         }
      }
      
      public function get isRunning() : Boolean
      {
         return this.§&#6§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.stop(false);
            do
            {
               this.§#<§.length = 0;
               do
               {
                  this.§[I§.length = 0;
                  do
                  {
                     this.§&#6§ = false;
                  }
                  while(!(_loc1_ || _loc1_));
                  
               }
               while(_loc2_ && this);
               
            }
            while(_loc2_);
            
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
            if(!this.§&#6§)
            {
               if(_loc3_ || _loc2_)
               {
                  return;
               }
               while(true)
               {
               }
               addr98:
            }
            while(true)
            {
               §§push(param1);
               if(_loc3_ || _loc2_)
               {
                  if(§§pop() > §8!V§)
                  {
                     while(_loc3_ || param1)
                     {
                        §§push(§8!V§);
                        if(_loc3_ || _loc2_)
                        {
                           while(true)
                           {
                              §§push(Number(§§pop()));
                           }
                           addr74:
                        }
                        while(true)
                        {
                           param1 = §§pop();
                           addr76:
                           while(true)
                           {
                           }
                        }
                        if(_loc2_ && _loc3_)
                        {
                           continue;
                        }
                        return;
                        addr37:
                     }
                     continue;
                  }
                  while(true)
                  {
                     this.update(param1);
                     if(_loc2_)
                     {
                        continue;
                     }
                     §§goto(addr30);
                  }
                  §§goto(addr37);
               }
               §§goto(addr74);
            }
         }
         §§goto(addr98);
      }
      
      public function stop(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(!this.§&#6§)
            {
               if(!_loc2_)
               {
                  dispatchEvent(new Event(Event.COMPLETE));
               }
            }
            else
            {
               loop0:
               while(true)
               {
                  this.§7a§ = param1;
                  while(_loc3_ || this)
                  {
                     if(!(_loc2_ && param1))
                     {
                        this.§5!z§ = true;
                        if(_loc3_)
                        {
                           return;
                        }
                        continue;
                     }
                  }
                  addr67:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr67);
      }
      
      public function start(param1:§6y§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            this.§&#6§ = true;
            while(true)
            {
               this.§5!z§ = false;
               while(!_loc3_)
               {
                  loop2:
                  while(true)
                  {
                     this.§7#§ = param1;
                     do
                     {
                        this.§[I§ = new Vector.<MovieClip>();
                     }
                     while(_loc3_ && this);
                     
                     if(!(_loc3_ && _loc3_))
                     {
                        while(false)
                        {
                           continue loop2;
                        }
                        var _loc2_:* = int(this.§#<§.length - 1);
                        while(true)
                        {
                           §§push(_loc2_);
                           if(_loc4_)
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 if(§§pop() < 0)
                                 {
                                    if(!(_loc4_ || param1))
                                    {
                                       continue;
                                    }
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    this.startAnimation(this.§#<§[_loc2_]);
                                 }
                                 §§push(_loc2_);
                              }
                              §§push(§§pop() - 1);
                           }
                           _loc2_ = §§pop();
                        }
                        return;
                        addr46:
                     }
                     break;
                  }
               }
            }
         }
         §§goto(addr46);
      }
      
      protected function startAnimation(param1:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§<1§(param1,this.§7#§.startLabel));
            loop0:
            while(!§§pop())
            {
               §§push(this.§<1§(param1,this.§7#§.defaultStartLabel));
               if(_loc3_)
               {
                  continue;
               }
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     if(!(_loc3_ && param1))
                     {
                        param1.gotoAndStop(this.§7#§.defaultStartLabel);
                        do
                        {
                           if(_loc2_)
                           {
                              continue;
                           }
                           addr105:
                           while(true)
                           {
                              this.§[I§.push(param1);
                           }
                        }
                        while(this.§[I§.push(param1), _loc3_ && this);
                        
                        addr19:
                        return;
                        addr72:
                     }
                     while(!_loc2_)
                     {
                        break loop0;
                        §§goto(addr105);
                     }
                     §§goto(addr19);
                  }
                  §§goto(addr72);
               }
               §§goto(addr19);
            }
            while(true)
            {
               param1.gotoAndStop(this.§7#§.startLabel);
            }
         }
         §§goto(addr105);
      }
      
      protected function §0#H§(param1:MovieClip, param2:Boolean = false) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(param1.currentFrame >= param1.totalFrames)
            {
               if(_loc3_)
               {
                  addr160:
                  §§push(true);
               }
               else
               {
                  while(true)
                  {
                     addr124:
                     loop1:
                     while(true)
                     {
                        if(param1.currentFrameLabel)
                        {
                           if(!_loc4_)
                           {
                              if(param1.currentFrameLabel.indexOf(this.§7#§.§%#N§) == 0)
                              {
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                 }
                                 addr142:
                              }
                              loop3:
                              while(true)
                              {
                                 §§push(param2);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop6:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                §§pop();
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(Boolean(this.§7#§.§`"i§));
                                                   if(!(_loc4_ && param2))
                                                   {
                                                      §§push(§§pop());
                                                      if(!_loc4_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                         }
                                                         loop12:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(true);
                                                                        break;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  addr112:
                                                                  while(!_loc4_)
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     §§push(param1.currentFrameLabel.indexOf(this.§7#§.§`"i§) == 0);
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                  }
                                                                  continue loop3;
                                                               }
                                                               addr19:
                                                               do
                                                               {
                                                                  §§push(false);
                                                                  if(_loc4_ && _loc3_)
                                                                  {
                                                                     break loop12;
                                                                  }
                                                               }
                                                               while(!_loc3_);
                                                               
                                                               return §§pop();
                                                               addr19:
                                                               while(_loc3_)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  continue loop7;
                                                               }
                                                               addr58:
                                                            }
                                                            §§goto(addr19);
                                                         }
                                                         if(!_loc4_)
                                                         {
                                                            if(_loc3_ || param1)
                                                            {
                                                               return §§pop();
                                                            }
                                                            addr161:
                                                            return §§pop();
                                                         }
                                                         addr141:
                                                         return §§pop();
                                                         addr62:
                                                      }
                                                      break;
                                                   }
                                                   while(!_loc4_)
                                                   {
                                                      §§pop();
                                                      §§goto(addr112);
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop6;
                                             }
                                          }
                                          §§goto(addr62);
                                       }
                                    }
                                 }
                              }
                           }
                           break;
                        }
                        §§goto(addr19);
                     }
                     §§goto(addr141);
                  }
               }
               §§goto(addr161);
            }
            §§goto(addr124);
         }
         §§goto(addr160);
      }
      
      protected function §<1§(param1:MovieClip, param2:String) : Boolean
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:FrameLabel = null;
         if(_loc8_)
         {
            if(param2 == "")
            {
               if(_loc8_)
               {
                  §§goto(addr27);
               }
            }
            var _loc3_:Array = param1.currentLabels;
            for each(_loc4_ in _loc3_)
            {
               if(_loc4_.name.indexOf(param2) == 0)
               {
                  if(_loc8_ || this)
                  {
                     return true;
                  }
               }
            }
            return false;
         }
         addr27:
         return false;
      }
      
      public function hide() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this.§[I§.length)
            {
               if(!_loc2_)
               {
                  continue;
               }
               if(!_loc3_)
               {
                  break;
               }
            }
            else
            {
               this.§[I§[_loc1_].visible = false;
            }
            _loc1_++;
         }
      }
      
      public function show() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this.§[I§.length)
            {
               if(_loc2_ || _loc2_)
               {
                  break;
               }
            }
            else
            {
               this.§[I§[_loc1_].visible = true;
               while(true)
               {
                  _loc1_++;
               }
               addr68:
            }
            while(!_loc2_)
            {
               §§goto(addr68);
            }
         }
      }
   }
}
