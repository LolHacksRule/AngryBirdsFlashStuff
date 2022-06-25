package §_-qO§
{
   import §_-04w§.§_-xS§;
   import §_-0BH§.Base64;
   import §_-0Ea§.§_-AY§;
   import §_-4g§.§_-pX§;
   import §_-Y8§.§_-05J§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §_-T0§ extends EventDispatcher
   {
       
      
      private var §_-0ET§:Boolean;
      
      private var §_-qN§:Stage;
      
      private var §_-A5§:Boolean = false;
      
      public function §_-T0§(param1:Stage)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            super();
            do
            {
               this.§_-qN§ = param1;
               do
               {
                  this.init();
               }
               while(_loc2_);
               
            }
            while(!_loc3_);
            
         }
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-05J§.addCallback("pause",this.§_-xy§);
            do
            {
               §_-05J§.addCallback("resume",this.§_-A4§);
            }
            while(!_loc1_);
            
         }
      }
      
      private function §_-xy§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!this.§_-A5§)
            {
               loop0:
               while(true)
               {
                  this.§_-A5§ = true;
                  loop1:
                  while(true)
                  {
                     §§push(this);
                     §§push(§ in§.isPaused);
                     if(!_loc1_)
                     {
                        §§push(!§§pop());
                     }
                     §§pop().§_-0ET§ = §§pop();
                     addr94:
                     loop2:
                     while(true)
                     {
                        § in§.pause();
                        loop3:
                        while(true)
                        {
                           if(!(_loc2_ || this))
                           {
                              continue loop2;
                           }
                           if(_loc1_)
                           {
                              break;
                           }
                           §§push(AngryBirdsFP11.§_-07§);
                           while(true)
                           {
                              §§pop().§_-DE§();
                              addr72:
                              while(true)
                              {
                                 this.§_-03v§();
                                 continue loop0;
                              }
                              addr57:
                              §§push(AngryBirdsFP11.§_-07§);
                              continue loop3;
                              if(_loc1_)
                              {
                                 continue;
                              }
                              §§pop().externalPause();
                              if(_loc1_)
                              {
                                 continue loop0;
                              }
                              if(_loc2_)
                              {
                                 continue loop3;
                              }
                              §§goto(addr72);
                           }
                        }
                        continue loop1;
                     }
                  }
               }
            }
            §§goto(addr20);
         }
         §§goto(addr94);
      }
      
      private function §_-A4§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§_-A5§);
            loop0:
            for(; §§pop(); loop2:
            while(true)
            {
               §§push(this.§_-0ET§);
               if(!_loc2_)
               {
                  break;
               }
               if(§§pop())
               {
                  while(true)
                  {
                     § in§.resume();
                     addr99:
                     while(true)
                     {
                     }
                     addr65:
                     if(!(_loc2_ || _loc1_))
                     {
                        continue;
                     }
                     addr82:
                     §§push(AngryBirdsFP11.§_-07§);
                     if(_loc2_ || this)
                     {
                        §§pop().§_-PO§();
                        if(_loc2_ || _loc2_)
                        {
                           if(!_loc2_)
                           {
                              while(!_loc1_)
                              {
                                 while(true)
                                 {
                                    §§push(AngryBirdsFP11.§_-07§);
                                    addr62:
                                    while(true)
                                    {
                                       §§pop().externalResume();
                                       addr63:
                                       while(!_loc1_)
                                       {
                                          §§goto(addr65);
                                       }
                                       §§goto(addr99);
                                       §§goto(addr82);
                                    }
                                 }
                              }
                              §§goto(addr100);
                              addr88:
                           }
                           if(_loc2_)
                           {
                              if(!_loc1_)
                              {
                                 return;
                              }
                              break loop0;
                           }
                           continue loop2;
                        }
                        §§goto(addr63);
                     }
                     §§goto(addr62);
                  }
               }
               while(true)
               {
                  §_-pX§.§_-bg§(AngryBirdsFP11.§_-gR§);
                  §§goto(addr88);
                  §§goto(addr99);
               }
            })
            {
               while(true)
               {
                  this.§_-A5§ = false;
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr90);
      }
      
      public function §_-03v§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §_-AY§.§_-un§.§_-NL§ = this.§_-02q§;
         }
      }
      
      private function §_-02q§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || _loc2_)
         {
            dispatchEvent(new Event(Event.INIT));
         }
         §§push(0.25);
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:* = int(this.§_-qN§.stageWidth);
         var _loc3_:* = int(this.§_-qN§.stageHeight);
         if(_loc8_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(2);
               addr170:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  addr171:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                        }
                        addr173:
                     }
                     else
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop7:
                              while(true)
                              {
                                 §§push(AngryBirdsFP11.stageWidth);
                                 if(_loc8_ || _loc2_)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 loop8:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    loop9:
                                    while(_loc8_ || _loc3_)
                                    {
                                       §§push(AngryBirdsFP11.stageHeight);
                                       while(true)
                                       {
                                          §§push(int(§§pop()));
                                          addr106:
                                          while(!(_loc7_ && _loc2_))
                                          {
                                             _loc3_ = §§pop();
                                             while(true)
                                             {
                                             }
                                          }
                                          addr89:
                                          continue loop0;
                                          loop14:
                                          while(!(_loc7_ && _loc2_))
                                          {
                                             _loc2_ = §§pop();
                                             loop15:
                                             for(; _loc8_; _loc3_ = §§pop(),if(_loc8_ || _loc1_)
                                             {
                                                continue loop7;
                                             })
                                             {
                                                if(_loc8_)
                                                {
                                                   while(true)
                                                   {
                                                      §§push(int(Math.max(8,Math.min(_loc3_,2880))));
                                                      if(_loc7_)
                                                      {
                                                         continue loop14;
                                                      }
                                                      if(!_loc7_)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            continue loop15;
                                                         }
                                                         continue loop8;
                                                      }
                                                      §§goto(addr106);
                                                   }
                                                   var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * _loc1_),Math.floor(_loc3_ * _loc1_),false);
                                                   var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
                                                   if(!_loc7_)
                                                   {
                                                      §_-AY§.drawToBitmapData(_loc5_);
                                                      if(_loc8_ || _loc3_)
                                                      {
                                                         _loc4_.draw(_loc5_,new Matrix(_loc1_,0,0,_loc1_));
                                                      }
                                                   }
                                                   try
                                                   {
                                                      _loc4_.draw(this.§_-qN§,new Matrix(_loc1_,0,0,_loc1_));
                                                      if(!_loc7_)
                                                      {
                                                         §§goto(addr242);
                                                      }
                                                   }
                                                   catch(e:Error)
                                                   {
                                                      addr242:
                                                      _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
                                                      if(!(_loc7_ && this))
                                                      {
                                                         §_-05J§.§_-0At§("flashScreenshotReadyHandler",Base64.§_-UL§(new §_-xS§(70).encode(_loc4_)));
                                                         while(true)
                                                         {
                                                            _loc5_.dispose();
                                                            §§goto(addr309);
                                                         }
                                                      }
                                                      addr309:
                                                      §§goto(addr295);
                                                   }
                                                }
                                                continue loop9;
                                                addr295:
                                                while(true)
                                                {
                                                   _loc4_.dispose();
                                                   do
                                                   {
                                                      §_-AY§.§_-un§.§_-NL§ = null;
                                                      do
                                                      {
                                                         dispatchEvent(new Event(Event.COMPLETE));
                                                      }
                                                      while(!_loc8_);
                                                      
                                                   }
                                                   while(_loc7_);
                                                   
                                                   if(_loc8_)
                                                   {
                                                      if(_loc8_ || _loc3_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop17;
                                                   }
                                                }
                                                return;
                                             }
                                             §§goto(addr114);
                                          }
                                       }
                                    }
                                    addr174:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       continue loop0;
                                    }
                                 }
                                 if(_loc7_ && _loc1_)
                                 {
                                    continue;
                                 }
                                 if(false)
                                 {
                                    while(true)
                                    {
                                       §§goto(addr89);
                                    }
                                    addr80:
                                 }
                                 §§goto(addr175);
                              }
                           }
                           §§goto(addr80);
                        }
                        addr137:
                     }
                     §§goto(addr174);
                  }
               }
            }
         }
         §§goto(addr101);
      }
   }
}
