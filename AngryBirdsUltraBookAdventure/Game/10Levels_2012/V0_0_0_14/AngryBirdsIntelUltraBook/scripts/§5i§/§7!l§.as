package §5i§
{
   import §&9§.§1?§;
   import §1!T§.§6!H§;
   import §6z§.Base64;
   import §;e§.§if§;
   import §@4§.§,!]§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §7!l§ extends EventDispatcher
   {
       
      
      private var §'m§:Boolean;
      
      private var §24§:Stage;
      
      private var §#m§:Boolean = false;
      
      public function §7!l§(param1:Stage)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§24§ = param1;
               §§goto(addr55);
            }
         }
         addr55:
         while(true)
         {
            this.init();
            if(!(_loc3_ && param1))
            {
               if(!(_loc3_ && param1))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §1?§.addCallback("pause",this.§2h§);
            do
            {
               §1?§.addCallback("resume",this.§!§);
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      private function §2h§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!this.§#m§)
            {
               loop0:
               while(true)
               {
                  this.§#m§ = true;
                  addr116:
                  while(true)
                  {
                     §§push(this);
                     §§push(§4!]§.isPaused);
                     if(!(_loc1_ && this))
                     {
                        §§push(!§§pop());
                     }
                     §§pop().§'m§ = §§pop();
                     addr109:
                     while(true)
                     {
                        §4!]§.pause();
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr69);
      }
      
      private function §!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§#m§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§#m§ = false;
                     addr106:
                     while(_loc1_ || this)
                     {
                        continue loop0;
                     }
                  }
                  addr102:
               }
               return;
            }
         }
         §§goto(addr99);
      }
      
      public function §^!-§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §,!]§.§!9§.§;!,§ = this.§73§;
         }
      }
      
      private function §73§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            dispatchEvent(new Event(Event.INIT));
         }
         §§push(0.25);
         if(_loc8_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:* = int(this.§24§.stageWidth);
         var _loc3_:* = int(this.§24§.stageHeight);
         if(!(_loc7_ && this))
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(2);
               loop1:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  if(_loc8_ || _loc2_)
                  {
                     if(!§§pop())
                     {
                        loop13:
                        while(true)
                        {
                           §§pop();
                           addr189:
                           loop7:
                           while(true)
                           {
                              §§push(_loc3_);
                              addr141:
                              while(true)
                              {
                                 §§push(2);
                                 if(_loc7_)
                                 {
                                    break loop7;
                                 }
                                 §§push(§§pop() < §§pop());
                                 if(!(_loc8_ || _loc1_))
                                 {
                                    continue loop13;
                                 }
                              }
                              continue loop13;
                           }
                           continue loop1;
                        }
                        addr188:
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc8_ || this)
                           {
                              while(true)
                              {
                                 §§push(AngryBirdsFP11.stageWidth);
                                 addr173:
                                 while(true)
                                 {
                                    §§push(int(§§pop()));
                                    addr174:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                    }
                                 }
                              }
                              addr171:
                           }
                           loop3:
                           while(true)
                           {
                              §§push(AngryBirdsFP11.stageHeight);
                              loop4:
                              for(; !_loc7_; if(!(_loc8_ || _loc1_))
                              {
                                 continue;
                              },§§goto(addr83))
                              {
                                 §§push(int(§§pop()));
                                 loop5:
                                 while(true)
                                 {
                                    if(_loc8_)
                                    {
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          _loc3_ = §§pop();
                                          loop6:
                                          for(; !_loc7_; while(!(_loc7_ && this))
                                          {
                                             §§push(int(Math.max(8,Math.min(_loc3_,2880))));
                                             if(!(_loc7_ && _loc1_))
                                             {
                                                continue loop5;
                                             }
                                             §§goto(addr104);
                                             _loc3_ = §§pop();
                                             if(_loc7_ && _loc2_)
                                             {
                                                continue;
                                             }
                                             if(!_loc8_)
                                             {
                                                continue loop3;
                                             }
                                             §§goto(addr93);
                                          })
                                          {
                                             do
                                             {
                                                §§push(int(Math.max(8,Math.min(_loc2_,2880))));
                                                while(true)
                                                {
                                                   if(_loc8_ || _loc2_)
                                                   {
                                                      _loc2_ = §§pop();
                                                      continue loop6;
                                                   }
                                                   §§goto(addr173);
                                                }
                                             }
                                             while(false);
                                             
                                             var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * _loc1_),Math.floor(_loc3_ * _loc1_),false);
                                             var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
                                             if(_loc8_)
                                             {
                                                §,!]§.drawToBitmapData(_loc5_);
                                                if(_loc8_)
                                                {
                                                   addr219:
                                                   _loc4_.draw(_loc5_,new Matrix(_loc1_,0,0,_loc1_));
                                                }
                                                try
                                                {
                                                   _loc4_.draw(this.§24§,new Matrix(_loc1_,0,0,_loc1_));
                                                   if(_loc8_)
                                                   {
                                                      addr252:
                                                      _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
                                                      if(!_loc7_)
                                                      {
                                                         §1?§.§>!X§("flashScreenshotReadyHandler",Base64.§>!8§(new §if§(70).encode(_loc4_)));
                                                         _loc5_.dispose();
                                                         _loc4_.dispose();
                                                         addr301:
                                                         addr325:
                                                         if(!_loc7_)
                                                         {
                                                            if(!(_loc7_ && _loc3_))
                                                            {
                                                               §,!]§.§!9§.§;!,§ = null;
                                                               dispatchEvent(new Event(Event.COMPLETE));
                                                               if(!_loc7_)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§goto(addr301);
                                                                  }
                                                                  return;
                                                                  addr281:
                                                               }
                                                               addr297:
                                                               §§goto(addr297);
                                                               addr310:
                                                            }
                                                            §§goto(addr325);
                                                         }
                                                         addr314:
                                                         §§goto(addr314);
                                                      }
                                                      §§goto(addr310);
                                                   }
                                                }
                                                catch(e:Error)
                                                {
                                                   §§goto(addr252);
                                                }
                                                §§goto(addr281);
                                             }
                                             §§goto(addr219);
                                          }
                                          §§goto(addr189);
                                       }
                                       break;
                                    }
                                    §§goto(addr174);
                                    if(_loc8_ || _loc3_)
                                    {
                                       continue loop4;
                                    }
                                 }
                                 §§goto(addr141);
                              }
                              continue loop0;
                           }
                        }
                        §§goto(addr95);
                        §§goto(addr144);
                     }
                  }
                  §§goto(addr188);
               }
            }
         }
         §§goto(addr171);
      }
   }
}
