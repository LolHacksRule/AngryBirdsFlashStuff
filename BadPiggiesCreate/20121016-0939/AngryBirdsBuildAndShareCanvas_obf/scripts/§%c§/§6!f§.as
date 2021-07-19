package §%c§
{
   import §-!n§.§5!U§;
   import §3!t§.§4v§;
   import §6p§.§?%§;
   import §9";§.§#!c§;
   import §=!M§.Base64;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §6!f§ extends EventDispatcher
   {
       
      
      private var §,!"§:Boolean;
      
      private var § "3§:Stage;
      
      private var §93§:Boolean = false;
      
      public function §6!f§(param1:Stage)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            super();
            while(true)
            {
               this.§ "3§ = param1;
               while(_loc3_ || param1)
               {
                  this.init();
                  if(_loc2_)
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
      
      private function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §#!c§.addCallback("pause",this.§4!b§);
         }
         do
         {
            §#!c§.addCallback("resume",this.§4"&§);
         }
         while(_loc2_ && _loc2_);
         
      }
      
      private function §4!b§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!this.§93§)
            {
               loop0:
               while(true)
               {
                  this.§93§ = true;
                  addr120:
                  while(true)
                  {
                     §§push(this);
                     §§push(§=!X§.isPaused);
                     if(_loc1_ || _loc2_)
                     {
                        §§push(!§§pop());
                     }
                     §§pop().§,!"§ = §§pop();
                     continue loop0;
                  }
               }
               addr117:
            }
            §§goto(addr19);
         }
         §§goto(addr117);
      }
      
      private function §4"&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§93§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  addr108:
                  return;
               }
               addr100:
               while(true)
               {
                  this.§93§ = false;
                  continue loop0;
               }
            }
         }
         §§goto(addr39);
      }
      
      public function §2&§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §?%§.§%b§.§[!Z§ = this.§ !7§;
         }
      }
      
      private function § !7§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_ || _loc2_)
         {
            dispatchEvent(new Event(Event.INIT));
         }
         §§push(0.25);
         if(_loc8_ || _loc1_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:* = int(this.§ "3§.stageWidth);
         var _loc3_:* = int(this.§ "3§.stageHeight);
         if(!(_loc7_ && _loc1_))
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
                  if(_loc8_)
                  {
                     if(!§§pop())
                     {
                        loop14:
                        while(true)
                        {
                           §§pop();
                           addr174:
                           loop15:
                           while(true)
                           {
                              §§push(_loc3_);
                              addr131:
                              while(true)
                              {
                                 §§push(2);
                                 if(!(_loc8_ || _loc3_))
                                 {
                                    break;
                                 }
                                 §§push(§§pop() < §§pop());
                                 if(_loc7_)
                                 {
                                    continue loop14;
                                 }
                                 continue loop15;
                              }
                              continue loop1;
                           }
                        }
                        addr173:
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop10:
                           while(true)
                           {
                              §§push(int(Math.max(8,Math.min(_loc2_,2880))));
                              loop11:
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    if(_loc8_)
                                    {
                                       if(!_loc7_)
                                       {
                                          _loc2_ = §§pop();
                                          while(true)
                                          {
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                if(_loc7_ && this)
                                                {
                                                   break;
                                                }
                                                §§push(int(Math.max(8,Math.min(_loc3_,2880))));
                                                if(!(_loc8_ || _loc1_))
                                                {
                                                   continue loop11;
                                                }
                                                _loc3_ = §§pop();
                                                if(!_loc8_)
                                                {
                                                   continue;
                                                }
                                                if(!_loc7_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      if(true)
                                                      {
                                                         break loop10;
                                                      }
                                                      continue loop10;
                                                   }
                                                   addr165:
                                                   while(true)
                                                   {
                                                      §§push(AngryBirdsFP11.stageHeight);
                                                      addr117:
                                                      loop7:
                                                      while(_loc8_ || this)
                                                      {
                                                         §§push(int(§§pop()));
                                                         while(_loc8_)
                                                         {
                                                            _loc3_ = §§pop();
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(int(§§pop()));
                                                            break loop7;
                                                         }
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   continue loop10;
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                }
                                                addr144:
                                             }
                                             §§goto(addr146);
                                          }
                                          §§goto(addr174);
                                       }
                                       break;
                                    }
                                    §§goto(addr117);
                                 }
                                 §§goto(addr125);
                              }
                              §§goto(addr131);
                           }
                           var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * _loc1_),Math.floor(_loc3_ * _loc1_),false);
                           var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
                           if(_loc8_ || this)
                           {
                              §?%§.drawToBitmapData(_loc5_);
                              if(!(_loc7_ && this))
                              {
                                 addr214:
                                 _loc4_.draw(_loc5_,new Matrix(_loc1_,0,0,_loc1_));
                              }
                              try
                              {
                                 _loc4_.draw(this.§ "3§,new Matrix(_loc1_,0,0,_loc1_));
                                 if(!_loc7_)
                                 {
                                    addr247:
                                    _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
                                    if(_loc8_)
                                    {
                                       §#!c§.performCall("flashScreenshotReadyHandler",Base64.§<_§(new §4v§(70).encode(_loc4_)));
                                       _loc5_.dispose();
                                       addr315:
                                    }
                                    _loc4_.dispose();
                                    addr294:
                                 }
                                 §?%§.§%b§.§[!Z§ = null;
                                 addr280:
                                 if(!_loc7_)
                                 {
                                    if(!_loc7_)
                                    {
                                       if(_loc8_)
                                       {
                                          dispatchEvent(new Event(Event.COMPLETE));
                                          if(_loc7_)
                                          {
                                             §§goto(addr280);
                                          }
                                          return;
                                       }
                                       §§goto(addr315);
                                    }
                                    §§goto(addr294);
                                 }
                                 addr290:
                                 §§goto(addr290);
                              }
                              catch(e:Error)
                              {
                              }
                              §§goto(addr247);
                           }
                           §§goto(addr214);
                        }
                        §§goto(addr144);
                     }
                  }
                  §§goto(addr173);
               }
            }
         }
         §§goto(addr174);
      }
   }
}
