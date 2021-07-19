package §<!X§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §^"G§ extends EventDispatcher implements §09§
   {
      
      protected static const §!n§:Number = 500;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §!n§ = 500;
         }
      }
      
      protected var §&M§:Vector.<MovieClip>;
      
      protected var §'G§:Vector.<MovieClip>;
      
      protected var §!7§:Boolean = false;
      
      protected var §'g§:Boolean = false;
      
      protected var § else§:Boolean = false;
      
      protected var §0";§:§7C§;
      
      private var §#[§:Stage;
      
      public function §^"G§(param1:Vector.<MovieClip>, param2:Stage)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            do
            {
               this.§&M§ = param1;
               do
               {
                  this.stage = param2;
               }
               while(_loc3_ && param2);
               
            }
            while(!(_loc4_ || _loc3_));
            
         }
      }
      
      public function get stage() : Stage
      {
         return this.§#[§;
      }
      
      public function set stage(param1:Stage) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§#[§ = param1;
         }
      }
      
      public function get §=!"§() : Boolean
      {
         return this.§ else§;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.stop(false);
            while(true)
            {
               this.§&M§.length = 0;
               while(true)
               {
                  this.§'G§.length = 0;
                  §§goto(addr60);
               }
            }
         }
         addr60:
         while(true)
         {
            this.§ else§ = false;
            if(!(_loc1_ && _loc2_))
            {
               if(!(_loc1_ && _loc2_))
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      protected function update(param1:Number) : void
      {
         throw "--#AbstractStateTransition[update]:: method must be implemented";
      }
      
      public final function run(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(this.§ else§)
            {
               while(true)
               {
                  §§push(param1);
                  if(_loc2_)
                  {
                     if(§§pop() > §!n§)
                     {
                        if(_loc2_ || this)
                        {
                           if(!(_loc2_ || _loc3_))
                           {
                              continue;
                           }
                           if(!_loc2_)
                           {
                              §§goto(addr91);
                           }
                           §§push(§!n§);
                           if(_loc2_ || _loc2_)
                           {
                              break;
                           }
                           param1 = §§pop();
                        }
                        loop1:
                        while(true)
                        {
                           addr28:
                           while(true)
                           {
                              this.update(param1);
                              if(!_loc3_)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                        }
                        return;
                     }
                     §§goto(addr28);
                  }
                  break;
               }
               §§goto(addr86);
               §§push(Number(§§pop()));
            }
         }
         addr91:
      }
      
      public function stop(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(this.§ else§)
            {
               loop0:
               while(true)
               {
                  this.§'g§ = param1;
                  while(true)
                  {
                     if(!(_loc2_ && param1))
                     {
                        this.§!7§ = true;
                        if(!_loc2_)
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              break loop0;
                           }
                           if(!(_loc3_ || _loc2_))
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue;
                     }
                  }
                  §§goto(addr94);
               }
               return;
               addr52:
            }
            dispatchEvent(new Event(Event.COMPLETE));
            addr94:
            return;
         }
         §§goto(addr52);
      }
      
      public function start(param1:§7C§, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            this.§ else§ = true;
            loop0:
            while(true)
            {
               this.§!7§ = false;
               loop1:
               while(true)
               {
                  addr43:
                  while(true)
                  {
                     this.§0";§ = param1;
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         while(false)
         {
            §§goto(addr43);
         }
         var _loc3_:* = int(this.§&M§.length - 1);
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_)
            {
               if(§§pop() < 0)
               {
                  if(!_loc5_)
                  {
                     continue;
                  }
                  if(_loc5_)
                  {
                     break;
                  }
               }
               else
               {
                  this.§7!V§(this.§&M§[_loc3_],param2);
               }
               §§push(_loc3_);
               if(!_loc4_)
               {
                  §§push(§§pop() - 1);
               }
            }
            _loc3_ = §§pop();
         }
      }
      
      protected function §7!V§(param1:MovieClip, param2:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.§&"B§(param1,this.§0";§.startLabel));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  continue;
               }
               if(_loc4_ || this)
               {
                  addr123:
                  param1.gotoAndStop(this.§0";§.startLabel);
               }
               while(true)
               {
                  this.§'G§.push(param1);
                  addr98:
                  while(true)
                  {
                     break loop0;
                  }
                  addr80:
                  if(_loc3_ && this)
                  {
                     continue;
                  }
                  param1.gotoAndStop(this.§0";§.defaultStartLabel);
                  loop6:
                  while(true)
                  {
                     this.§'G§.push(param1);
                     addr41:
                     loop4:
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           continue loop6;
                        }
                        if(!(_loc3_ && param1))
                        {
                           addr50:
                           break loop0;
                        }
                        addr78:
                        while(true)
                        {
                           if(_loc3_)
                           {
                              break loop4;
                           }
                           §§goto(addr80);
                        }
                        continue loop6;
                     }
                     §§goto(addr98);
                  }
               }
            }
            while(true)
            {
               param1.visible = param2;
               if(_loc4_ || param2)
               {
                  break;
               }
               §§goto(addr41);
               §§goto(addr50);
            }
            return;
         }
         §§goto(addr123);
      }
      
      protected function §]"3§(param1:MovieClip, param2:Boolean = false) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(param1.currentFrame < param1.totalFrames)
            {
               loop0:
               while(true)
               {
                  if(param1.currentFrameLabel)
                  {
                     if(!_loc3_)
                     {
                        if(param1.currentFrameLabel.indexOf(this.§0";§.§%!D§) != 0)
                        {
                           loop1:
                           while(true)
                           {
                              §§push(param2);
                              loop2:
                              while(!_loc3_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(§§pop());
                                    loop3:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             §§pop();
                                             loop9:
                                             while(true)
                                             {
                                                §§push(Boolean(this.§0";§.§>!F§));
                                                loop5:
                                                while(_loc4_ || this)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc4_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop7:
                                                         while(true)
                                                         {
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               §§push(param1.currentFrameLabel.indexOf(this.§0";§.§>!F§) == 0);
                                                               if(!_loc3_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  if(_loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(Boolean(§§pop()));
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr50:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!(_loc3_ && this))
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr166:
                                                                                    §§push(true);
                                                                                    break loop5;
                                                                                 }
                                                                                 §§push(true);
                                                                              }
                                                                              else
                                                                              {
                                                                                 if(_loc3_ && this)
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                                 if(_loc3_ && param2)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(false);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop8;
                                                                                       }
                                                                                       continue loop11;
                                                                                    }
                                                                                 }
                                                                                 return §§pop();
                                                                                 addr20:
                                                                              }
                                                                           }
                                                                           §§goto(addr20);
                                                                        }
                                                                        continue loop1;
                                                                        addr50:
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                               }
                                                               return §§pop();
                                                            }
                                                            addr148:
                                                            §§push(true);
                                                            break loop2;
                                                         }
                                                         continue loop2;
                                                      }
                                                   }
                                                   §§goto(addr50);
                                                }
                                                return §§pop();
                                             }
                                          }
                                          addr132:
                                       }
                                       §§goto(addr50);
                                    }
                                 }
                                 §§goto(addr132);
                              }
                              return §§pop();
                           }
                        }
                        §§goto(addr148);
                     }
                     §§goto(addr160);
                  }
                  §§goto(addr20);
               }
            }
            §§goto(addr166);
         }
         §§goto(addr160);
      }
      
      protected function §&"B§(param1:MovieClip, param2:String) : Boolean
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:FrameLabel = null;
         if(!(_loc8_ && param2))
         {
            if(param2 == "")
            {
               if(_loc7_ || _loc3_)
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
               if(!_loc8_)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function hide() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= this.§'G§.length)
            {
               if(!(_loc3_ || this))
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
               this.§'G§[_loc1_].visible = false;
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
            if(_loc1_ >= this.§'G§.length)
            {
               if(!_loc2_)
               {
                  continue;
               }
               if(_loc2_ || _loc3_)
               {
                  break;
               }
            }
            else
            {
               this.§'G§[_loc1_].visible = true;
            }
            _loc1_++;
         }
      }
   }
}
