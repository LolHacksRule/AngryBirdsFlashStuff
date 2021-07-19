package §,P§
{
   import §#";§.§0"#§;
   import §%!j§.§%K§;
   import §6U§.§-!U§;
   import §6]§.Base64;
   import §[!8§.§6!H§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §1T§ extends EventDispatcher
   {
       
      
      private var §7]§:Boolean;
      
      private var §0"§:Stage;
      
      private var §`!-§:Boolean = false;
      
      public function §1T§(param1:Stage)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            while(true)
            {
               this.§0"§ = param1;
               loop1:
               while(_loc3_)
               {
                  while(true)
                  {
                     this.init();
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §6!H§.addCallback("pause",this.§^!u§);
         }
         do
         {
            §6!H§.addCallback("resume",this.§+b§);
         }
         while(!_loc1_);
         
      }
      
      private function §^!u§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!this.§`!-§)
            {
               while(true)
               {
                  this.§`!-§ = true;
                  loop1:
                  while(true)
                  {
                     §§push(this);
                     §§push(§'_§.isPaused);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(!§§pop());
                     }
                     §§pop().§7]§ = §§pop();
                     while(true)
                     {
                        §'_§.pause();
                        loop3:
                        while(true)
                        {
                           §§push(AngryBirdsFP11.§@"7§);
                           while(true)
                           {
                              §§pop().§>!A§();
                              addr78:
                              while(_loc1_ || this)
                              {
                                 this.§'" §();
                                 continue loop3;
                              }
                              addr73:
                              continue loop1;
                              §§goto(addr19);
                           }
                        }
                     }
                  }
               }
            }
            addr19:
            while(true)
            {
               §§push(AngryBirdsFP11.§@"7§);
               if(_loc2_ && this)
               {
                  continue loop4;
               }
               §§pop().§[0§();
               if(_loc2_ && _loc1_)
               {
                  continue loop3;
               }
               if(_loc1_ || _loc1_)
               {
                  if(_loc1_)
                  {
                     break;
                  }
                  continue loop0;
               }
               §§goto(addr78);
            }
            return;
         }
         §§goto(addr73);
      }
      
      private function §+b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§`!-§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     break;
                  }
                  while(true)
                  {
                     addr34:
                     if(_loc2_ || this)
                     {
                        return;
                        addr41:
                     }
                  }
               }
               while(true)
               {
                  this.§`!-§ = false;
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr73);
      }
      
      public function §'" §() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §%K§.§`9§.§>"§ = this.§=!3§;
         }
      }
      
      private function §=!3§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            dispatchEvent(new Event(Event.INIT));
         }
         §§push(0.25);
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:* = int(this.§0"§.stageWidth);
         var _loc3_:* = int(this.§0"§.stageHeight);
         if(!_loc7_)
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
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(_loc3_);
                              loop5:
                              while(!_loc7_)
                              {
                                 §§push(2);
                                 if(_loc7_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(§§pop() < §§pop());
                                 if(_loc7_ && _loc3_)
                                 {
                                    continue loop3;
                                 }
                                 if(_loc7_)
                                 {
                                    continue loop2;
                                 }
                                 addr54:
                                 if(!(_loc8_ || _loc3_))
                                 {
                                    continue;
                                 }
                                 addr61:
                                 _loc3_ = §§pop();
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    if(!_loc7_)
                                    {
                                       if(false)
                                       {
                                          loop9:
                                          while(true)
                                          {
                                             §§push(int(Math.max(8,Math.min(_loc2_,2880))));
                                             loop10:
                                             while(!(_loc7_ && _loc1_))
                                             {
                                                if(!_loc7_)
                                                {
                                                   _loc2_ = §§pop();
                                                   while(true)
                                                   {
                                                      §§push(int(Math.max(8,Math.min(_loc3_,2880))));
                                                      if(_loc7_)
                                                      {
                                                         continue loop10;
                                                      }
                                                      §§goto(addr54);
                                                      §§goto(addr61);
                                                   }
                                                   continue loop5;
                                                   addr92:
                                                }
                                                loop12:
                                                while(true)
                                                {
                                                   if(!(_loc7_ && _loc1_))
                                                   {
                                                      §§push(int(§§pop()));
                                                      break loop10;
                                                   }
                                                   addr139:
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      addr140:
                                                      while(_loc8_)
                                                      {
                                                         while(true)
                                                         {
                                                            continue loop12;
                                                         }
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                                continue loop9;
                                             }
                                             while(true)
                                             {
                                                _loc3_ = §§pop();
                                                addr105:
                                                while(true)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      §§goto(addr140);
                                                   }
                                                   §§goto(addr107);
                                                }
                                             }
                                          }
                                          addr73:
                                       }
                                       var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * _loc1_),Math.floor(_loc3_ * _loc1_),false);
                                       var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
                                       if(_loc8_ || _loc2_)
                                       {
                                          §%K§.drawToBitmapData(_loc5_);
                                          if(_loc8_)
                                          {
                                             _loc4_.draw(_loc5_,new Matrix(_loc1_,0,0,_loc1_));
                                          }
                                       }
                                       try
                                       {
                                          _loc4_.draw(this.§0"§,new Matrix(_loc1_,0,0,_loc1_));
                                          if(!_loc7_)
                                          {
                                             addr227:
                                             _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
                                             if(_loc8_ || this)
                                             {
                                                §6!H§.§2!i§("flashScreenshotReadyHandler",Base64.§7o§(new §-!U§(70).encode(_loc4_)));
                                                _loc5_.dispose();
                                                _loc4_.dispose();
                                                §%K§.§`9§.§>"§ = null;
                                                addr310:
                                                addr289:
                                                if(_loc8_ || _loc3_)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      dispatchEvent(new Event(Event.COMPLETE));
                                                      if(!_loc7_)
                                                      {
                                                         if(_loc7_ && _loc3_)
                                                         {
                                                            §§goto(addr310);
                                                         }
                                                         return;
                                                         addr266:
                                                      }
                                                      §§goto(addr310);
                                                      addr281:
                                                   }
                                                   §§goto(addr289);
                                                }
                                                addr285:
                                                §§goto(addr285);
                                             }
                                             §§goto(addr281);
                                          }
                                          §§goto(addr266);
                                       }
                                       catch(e:Error)
                                       {
                                       }
                                       §§goto(addr227);
                                    }
                                    §§goto(addr105);
                                 }
                                 §§goto(addr92);
                              }
                              continue loop0;
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc8_ || this)
                           {
                              §§push(AngryBirdsFP11.stageWidth);
                              if(!_loc7_)
                              {
                                 §§push(int(§§pop()));
                              }
                              §§goto(addr139);
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr73);
                     }
                  }
               }
            }
         }
         §§goto(addr142);
      }
   }
}
