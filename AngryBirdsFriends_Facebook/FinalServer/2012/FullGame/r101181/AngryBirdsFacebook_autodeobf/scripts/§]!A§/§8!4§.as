package §]!A§
{
   import §'6§.§"]§;
   import §+N§.§@!]§;
   import §2h§.§1!^§;
   import §6!B§.§>!E§;
   import §6o§.Base64;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §8!4§ extends EventDispatcher
   {
       
      
      private var §9"$§:Boolean;
      
      private var §^!w§:Stage;
      
      private var §^!C§:Boolean = false;
      
      public function §8!4§(param1:Stage)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super();
            while(true)
            {
               this.§^!w§ = param1;
               loop1:
               while(!(_loc3_ && this))
               {
                  while(true)
                  {
                     this.init();
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr55);
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §@!]§.addCallback("pause",this.§4"7§);
         }
         do
         {
            §@!]§.addCallback("resume",this.§]n§);
         }
         while(!(_loc1_ || this));
         
      }
      
      private function §4"7§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!this.§^!C§)
            {
               loop0:
               while(true)
               {
                  this.§^!C§ = true;
                  addr120:
                  while(true)
                  {
                     §§push(this);
                     §§push(§#6§.isPaused);
                     if(!(_loc2_ && this))
                     {
                        §§push(!§§pop());
                     }
                     §§pop().§9"$§ = §§pop();
                     while(_loc1_ || _loc2_)
                     {
                        §#6§.pause();
                        loop3:
                        while(!_loc2_)
                        {
                           §§push(AngryBirdsFP11.§@<§);
                           loop4:
                           while(true)
                           {
                              §§pop().§#m§();
                              addr76:
                              addr58:
                              while(true)
                              {
                                 this.§!!p§();
                                 continue loop4;
                              }
                              if(!_loc2_)
                              {
                                 continue loop0;
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr120);
      }
      
      private function §]n§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§^!C§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  addr113:
                  return;
               }
               addr105:
               while(true)
               {
                  this.§^!C§ = false;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§push(AngryBirdsFP11.§@<§);
            if(!(_loc1_ && _loc1_))
            {
               §§pop().§0_§();
               if(_loc2_)
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  §§goto(addr86);
               }
               §§goto(addr54);
            }
            §§goto(addr53);
         }
      }
      
      public function §!!p§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §"]§.§!X§.§ "0§ = this.§%r§;
         }
      }
      
      private function §%r§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            dispatchEvent(new Event(Event.INIT));
         }
         §§push(0.25);
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:* = int(this.§^!w§.stageWidth);
         var _loc3_:* = int(this.§^!w§.stageHeight);
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
                  if(!_loc7_)
                  {
                     if(!§§pop())
                     {
                        loop12:
                        while(true)
                        {
                           §§pop();
                           addr164:
                           loop13:
                           while(true)
                           {
                              §§push(_loc3_);
                              addr121:
                              while(true)
                              {
                                 §§push(2);
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() < §§pop());
                                 if(_loc7_ && _loc3_)
                                 {
                                    continue loop12;
                                 }
                                 continue loop13;
                              }
                              continue loop1;
                           }
                        }
                        addr163:
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§push(AngryBirdsFP11.stageWidth);
                              loop4:
                              while(true)
                              {
                                 §§push(int(§§pop()));
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          §§push(AngryBirdsFP11.stageHeight);
                                          if(_loc8_ || _loc2_)
                                          {
                                             if(_loc7_ && this)
                                             {
                                                break;
                                             }
                                             §§push(int(§§pop()));
                                          }
                                          loop7:
                                          while(_loc8_)
                                          {
                                             _loc3_ = §§pop();
                                             loop14:
                                             while(true)
                                             {
                                                addr66:
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(int(Math.max(8,Math.min(_loc2_,2880))));
                                                   loop9:
                                                   while(!_loc7_)
                                                   {
                                                      if(_loc7_ && _loc2_)
                                                      {
                                                         break loop8;
                                                      }
                                                      _loc2_ = §§pop();
                                                      while(true)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            continue loop14;
                                                         }
                                                         if(_loc7_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         if(!(_loc8_ || this))
                                                         {
                                                            continue loop3;
                                                         }
                                                         §§push(int(Math.max(8,Math.min(_loc3_,2880))));
                                                         if(!_loc8_)
                                                         {
                                                            continue loop9;
                                                         }
                                                         if(!_loc8_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         _loc3_ = §§pop();
                                                         if(!_loc8_)
                                                         {
                                                            continue;
                                                         }
                                                         if(false)
                                                         {
                                                            continue loop8;
                                                         }
                                                         var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * _loc1_),Math.floor(_loc3_ * _loc1_),false);
                                                         var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
                                                         if(_loc8_ || _loc1_)
                                                         {
                                                            §"]§.drawToBitmapData(_loc5_);
                                                            if(_loc8_)
                                                            {
                                                               addr199:
                                                               _loc4_.draw(_loc5_,new Matrix(_loc1_,0,0,_loc1_));
                                                            }
                                                            try
                                                            {
                                                               _loc4_.draw(this.§^!w§,new Matrix(_loc1_,0,0,_loc1_));
                                                               if(!_loc7_)
                                                               {
                                                                  addr232:
                                                                  _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
                                                                  if(_loc7_ && _loc3_)
                                                                  {
                                                                  }
                                                                  _loc4_.dispose();
                                                                  §"]§.§!X§.§ "0§ = null;
                                                                  addr270:
                                                                  addr309:
                                                                  if(_loc8_ || _loc3_)
                                                                  {
                                                                     if(_loc8_ || _loc1_)
                                                                     {
                                                                        if(_loc8_ || this)
                                                                        {
                                                                           dispatchEvent(new Event(Event.COMPLETE));
                                                                           if(_loc7_)
                                                                           {
                                                                              §§goto(addr270);
                                                                           }
                                                                           return;
                                                                        }
                                                                        _loc5_.dispose();
                                                                        §§goto(addr309);
                                                                        addr320:
                                                                     }
                                                                     §§goto(addr270);
                                                                  }
                                                                  addr305:
                                                                  §§goto(addr305);
                                                               }
                                                               §@!]§.§9"'§("flashScreenshotReadyHandler",Base64.§ !q§(new §1!^§(70).encode(_loc4_)));
                                                               §§goto(addr320);
                                                            }
                                                            catch(e:Error)
                                                            {
                                                               §§goto(addr232);
                                                            }
                                                            §§goto(addr232);
                                                         }
                                                         §§goto(addr199);
                                                      }
                                                      continue loop14;
                                                   }
                                                   continue loop4;
                                                }
                                             }
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr164);
                                       §§goto(addr121);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr66);
                        §§goto(addr124);
                     }
                  }
                  §§goto(addr163);
               }
            }
         }
         §§goto(addr118);
      }
   }
}
