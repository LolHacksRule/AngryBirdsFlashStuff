package §;!y§
{
   import §1!B§.Base64;
   import §2m§.§<!?§;
   import §9-§.§,!q§;
   import §>L§.§+!i§;
   import §[!b§.§-!Q§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §#X§ extends EventDispatcher
   {
       
      
      private var §7!s§:Boolean;
      
      private var §@e§:Stage;
      
      private var §9!U§:Boolean = false;
      
      public function §#X§(param1:Stage)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            super();
            do
            {
               this.§@e§ = param1;
               do
               {
                  this.init();
               }
               while(!(_loc2_ || _loc2_));
               
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §+!i§.addCallback("pause",this.§&!b§);
            do
            {
               §+!i§.addCallback("resume",this.§'!n§);
            }
            while(!_loc1_);
            
         }
      }
      
      private function §&!b§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(!this.§9!U§)
            {
               if(!(_loc1_ && this))
               {
                  this.§9!U§ = true;
                  addr116:
                  while(true)
                  {
                     §§push(this);
                     §§push(§,!s§.isPaused);
                     if(!_loc1_)
                     {
                        §§push(!§§pop());
                     }
                     §§pop().§7!s§ = §§pop();
                     loop1:
                     for(; !(_loc1_ && _loc2_); if(!(_loc2_ || _loc1_))
                     {
                        continue;
                     },§§goto(addr67))
                     {
                        §,!s§.pause();
                        loop2:
                        while(true)
                        {
                           §§push(AngryBirdsFP11.§'!g§);
                           while(true)
                           {
                              §§pop().§5!M§();
                              loop4:
                              while(true)
                              {
                                 this.§#u§();
                                 addr41:
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       continue loop2;
                                    }
                                    continue loop4;
                                 }
                                 continue loop1;
                              }
                              addr67:
                              §§push(AngryBirdsFP11.§'!g§);
                              if(!_loc2_)
                              {
                                 continue;
                              }
                              §§pop().externalPause();
                              if(_loc2_)
                              {
                                 §§goto(addr25);
                              }
                              §§goto(addr41);
                           }
                        }
                     }
                  }
                  addr116:
               }
               §§goto(addr116);
            }
            addr25:
            return;
         }
         §§goto(addr116);
      }
      
      private function §'!n§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§9!U§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§9!U§ = false;
                     continue loop0;
                  }
                  addr109:
               }
            }
         }
         §§goto(addr117);
      }
      
      public function §#u§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §<!?§.§,=§.§"]§ = this.§+^§;
         }
      }
      
      private function §+^§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && this))
         {
            dispatchEvent(new Event(Event.INIT));
         }
         §§push(0.25);
         if(_loc7_ || _loc1_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:* = int(this.§@e§.stageWidth);
         var _loc3_:* = int(this.§@e§.stageHeight);
         if(!(_loc8_ && _loc2_))
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
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        do
                        {
                           if(§§pop())
                           {
                              if(!(_loc7_ || _loc2_))
                              {
                                 loop4:
                                 while(!_loc8_)
                                 {
                                    §§push(AngryBirdsFP11.stageHeight);
                                    if(_loc7_ || _loc1_)
                                    {
                                       §§push(int(§§pop()));
                                    }
                                    loop5:
                                    while(_loc7_)
                                    {
                                       _loc3_ = §§pop();
                                       while(true)
                                       {
                                          addr106:
                                          while(true)
                                          {
                                             §§push(int(Math.max(8,Math.min(_loc2_,2880))));
                                             loop9:
                                             while(_loc7_)
                                             {
                                                _loc2_ = §§pop();
                                                while(true)
                                                {
                                                   §§push(int(Math.max(8,Math.min(_loc3_,2880))));
                                                   if(_loc7_)
                                                   {
                                                      if(!(_loc7_ || this))
                                                      {
                                                         break;
                                                      }
                                                      if(_loc7_ || _loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop9;
                                                }
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   continue loop4;
                                                }
                                             }
                                             continue loop5;
                                          }
                                          continue loop0;
                                          if(_loc8_ && _loc2_)
                                          {
                                             continue;
                                          }
                                          if(_loc8_ && _loc3_)
                                          {
                                             continue loop4;
                                          }
                                          if(false)
                                          {
                                             §§goto(addr106);
                                          }
                                          var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * _loc1_),Math.floor(_loc3_ * _loc1_),false);
                                          var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
                                          if(_loc7_ || _loc1_)
                                          {
                                             §<!?§.drawToBitmapData(_loc5_);
                                             if(!_loc8_)
                                             {
                                                addr228:
                                                _loc4_.draw(_loc5_,new Matrix(_loc1_,0,0,_loc1_));
                                             }
                                             try
                                             {
                                                _loc4_.draw(this.§@e§,new Matrix(_loc1_,0,0,_loc1_));
                                                if(!(_loc8_ && _loc3_))
                                                {
                                                   addr266:
                                                   _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
                                                   if(_loc7_)
                                                   {
                                                      §+!i§.§>!y§("flashScreenshotReadyHandler",Base64.§8!1§(new §,!q§(70).encode(_loc4_)));
                                                   }
                                                   §<!?§.§,=§.§"]§ = null;
                                                   addr309:
                                                   addr324:
                                                   if(!_loc8_)
                                                   {
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            dispatchEvent(new Event(Event.COMPLETE));
                                                            if(!_loc7_)
                                                            {
                                                               §§goto(addr309);
                                                            }
                                                            return;
                                                         }
                                                         _loc5_.dispose();
                                                         addr339:
                                                      }
                                                      _loc4_.dispose();
                                                      §§goto(addr324);
                                                   }
                                                   §§goto(addr309);
                                                }
                                                §§goto(addr339);
                                             }
                                             catch(e:Error)
                                             {
                                                §§goto(addr266);
                                             }
                                             §§goto(addr266);
                                          }
                                          §§goto(addr228);
                                       }
                                    }
                                    §§push(2);
                                    if(_loc8_ && _loc2_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(§§pop() < §§pop());
                                    if(!(_loc8_ && _loc1_))
                                    {
                                       continue loop3;
                                    }
                                    addr192:
                                    addr192:
                                    while(true)
                                    {
                                       §§pop();
                                       break loop4;
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr136);
                                    §§goto(addr192);
                                 }
                                 continue loop1;
                              }
                              while(true)
                              {
                                 §§push(AngryBirdsFP11.stageWidth);
                                 continue loop0;
                              }
                           }
                           §§goto(addr106);
                        }
                        while(!_loc8_);
                        
                        continue;
                     }
                     §§goto(addr192);
                  }
               }
            }
         }
         §§goto(addr173);
      }
   }
}
