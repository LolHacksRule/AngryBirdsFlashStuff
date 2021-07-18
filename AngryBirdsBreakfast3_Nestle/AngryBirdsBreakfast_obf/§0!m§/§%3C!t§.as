package §0!m§
{
   import §!!!§.§6!l§;
   import §!""§.§5!8§;
   import §24§.Base64;
   import §;V§.§%c§;
   import §?@§.§5"'§;
   import §[!Z§.§>D§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §<!t§ extends EventDispatcher
   {
       
      
      private var §5"6§:Boolean;
      
      private var §<!s§:Stage;
      
      private var §7!J§:Boolean = false;
      
      public function §<!t§(param1:Stage)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super();
            do
            {
               this.§<!s§ = param1;
               do
               {
                  this.init();
               }
               while(!_loc2_);
               
            }
            while(!(_loc2_ || param1));
            
         }
      }
      
      public function §+F§() : Boolean
      {
         return this.§7!J§;
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §%c§.addCallback("pause",this.§-X§);
         }
         while(true)
         {
            §%c§.addCallback("resume",this.§!!v§);
            while(_loc1_ || _loc1_)
            {
               §%c§.addCallback("resumeOnError",this.§!!v§);
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      private function §-X§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!this.§7!J§)
            {
               loop0:
               while(true)
               {
                  this.§7!J§ = true;
                  loop1:
                  while(true)
                  {
                     §§push(this);
                     §§push(§@!S§.isPaused);
                     if(!(_loc1_ && _loc2_))
                     {
                        §§push(!§§pop());
                     }
                     §§pop().§5"6§ = §§pop();
                     while(true)
                     {
                        dispatchEvent(new §5!8§(§5!8§.§7!`§));
                        loop3:
                        while(!_loc1_)
                        {
                           if(_loc1_)
                           {
                              continue loop1;
                           }
                           §§push(§ !4§.§%"7§);
                           loop4:
                           while(true)
                           {
                              §§pop().§,a§();
                              while(_loc2_)
                              {
                                 this.§2!6§();
                                 while(_loc2_)
                                 {
                                    continue loop0;
                                    §§pop().§0B§();
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       addr20:
                                       return;
                                       addr37:
                                    }
                                 }
                              }
                              continue loop3;
                              addr55:
                              while(true)
                              {
                                 §§push(§ !4§.§%"7§);
                                 if(_loc1_)
                                 {
                                    continue loop4;
                                 }
                                 §§goto(addr29);
                              }
                              §§goto(addr37);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr20);
         }
         §§goto(addr55);
      }
      
      private function §!!v§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§7!J§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && this))
                  {
                     break;
                  }
                  addr127:
                  while(true)
                  {
                  }
               }
               while(true)
               {
                  this.§7!J§ = false;
                  continue loop0;
               }
            }
            return;
         }
         §§goto(addr80);
      }
      
      public function §2!6§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §6!l§.§+J§.§6!z§ = this.§["5§;
         }
      }
      
      private function §["5§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            dispatchEvent(new Event(Event.INIT));
         }
         §§push(0.25);
         if(!(_loc8_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:* = int(this.§<!s§.stageWidth);
         var _loc3_:* = int(this.§<!s§.stageHeight);
         if(!(_loc8_ && _loc1_))
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
                              if(_loc7_ || _loc2_)
                              {
                                 §§push(2);
                                 if(_loc8_ && _loc3_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() < §§pop());
                                 if(_loc8_ && _loc2_)
                                 {
                                    continue loop3;
                                 }
                                 if(_loc8_ && this)
                                 {
                                    continue loop2;
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§push(§ !4§.stageWidth);
                                          addr167:
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             addr178:
                                             loop5:
                                             while(_loc7_)
                                             {
                                                _loc2_ = §§pop();
                                                loop14:
                                                while(true)
                                                {
                                                   §§push(§ !4§.stageHeight);
                                                   if(!(_loc8_ && _loc2_))
                                                   {
                                                      §§push(int(§§pop()));
                                                   }
                                                   addr120:
                                                   loop12:
                                                   while(true)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      _loc3_ = §§pop();
                                                      while(true)
                                                      {
                                                         if(!(_loc8_ && _loc3_))
                                                         {
                                                            break loop12;
                                                         }
                                                         continue loop14;
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop0;
                                          }
                                       }
                                       addr165:
                                    }
                                    loop9:
                                    while(true)
                                    {
                                       §§push(int(Math.max(8,Math.min(_loc2_,2880))));
                                       loop10:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          while(true)
                                          {
                                             §§push(int(Math.max(8,Math.min(_loc3_,2880))));
                                             if(_loc7_)
                                             {
                                                if(_loc7_ || _loc1_)
                                                {
                                                   if(!(_loc8_ && this))
                                                   {
                                                      _loc3_ = §§pop();
                                                      if(_loc8_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            if(_loc7_ || _loc2_)
                                                            {
                                                               if(true)
                                                               {
                                                                  break loop9;
                                                               }
                                                               continue loop9;
                                                            }
                                                            continue loop4;
                                                         }
                                                         §§goto(addr165);
                                                      }
                                                      §§goto(addr123);
                                                   }
                                                   §§goto(addr167);
                                                }
                                                break;
                                             }
                                             continue loop10;
                                          }
                                          §§goto(addr120);
                                       }
                                    }
                                    var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * _loc1_),Math.floor(_loc3_ * _loc1_),false);
                                    var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
                                    if(!(_loc8_ && _loc1_))
                                    {
                                       §6!l§.drawToBitmapData(_loc5_);
                                       if(!(_loc8_ && _loc3_))
                                       {
                                          addr228:
                                          _loc4_.draw(_loc5_,new Matrix(_loc1_,0,0,_loc1_));
                                       }
                                       try
                                       {
                                          _loc4_.draw(this.§<!s§,new Matrix(_loc1_,0,0,_loc1_));
                                          if(_loc7_ || _loc3_)
                                          {
                                             addr266:
                                             _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
                                             if(_loc7_)
                                             {
                                                §%c§.§6"§("flashScreenshotReadyHandler",Base64.§[!u§(new §5"'§(70).encode(_loc4_)));
                                                _loc5_.dispose();
                                                _loc4_.dispose();
                                                §6!l§.§+J§.§6!z§ = null;
                                                addr333:
                                                addr354:
                                                if(_loc7_ || _loc3_)
                                                {
                                                   if(_loc7_ || this)
                                                   {
                                                      dispatchEvent(new Event(Event.COMPLETE));
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         if(_loc8_ && _loc3_)
                                                         {
                                                            §§goto(addr333);
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr333);
                                                      addr325:
                                                   }
                                                   §§goto(addr354);
                                                }
                                                addr329:
                                                §§goto(addr329);
                                             }
                                             §§goto(addr325);
                                          }
                                       }
                                       catch(e:Error)
                                       {
                                          §§goto(addr266);
                                       }
                                       §§goto(addr333);
                                    }
                                    §§goto(addr228);
                                 }
                              }
                              §§goto(addr178);
                           }
                           continue loop1;
                        }
                     }
                     §§goto(addr163);
                  }
               }
            }
         }
         §§goto(addr181);
      }
   }
}
