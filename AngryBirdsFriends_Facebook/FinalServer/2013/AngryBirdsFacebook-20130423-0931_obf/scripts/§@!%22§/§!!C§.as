package §@!"§
{
   import §"a§.§!"J§;
   import §+!c§.Base64;
   import §2!%§.§-K§;
   import §30§.§'"+§;
   import §8m§.§@"M§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §!!C§ extends EventDispatcher
   {
       
      
      private var §;!_§:Boolean;
      
      private var §,">§:Stage;
      
      private var §[$§:Boolean = false;
      
      public function §!!C§(param1:Stage)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            super();
            while(true)
            {
               this.§,">§ = param1;
               §§goto(addr51);
            }
         }
         addr51:
         while(true)
         {
            this.init();
            if(_loc3_)
            {
               if(_loc3_)
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
            §'"+§.addCallback("pause",this.§;"Q§);
         }
         do
         {
            §'"+§.addCallback("resume",this.§ "$§);
         }
         while(!(_loc2_ || this));
         
      }
      
      private function §;"Q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(!this.§[$§)
            {
               loop0:
               while(true)
               {
                  this.§[$§ = true;
                  addr126:
                  loop1:
                  while(true)
                  {
                     §§push(this);
                     §§push(§?l§.isPaused);
                     if(!(_loc1_ && this))
                     {
                        §§push(!§§pop());
                     }
                     §§pop().§;!_§ = §§pop();
                     loop2:
                     while(true)
                     {
                        §?l§.pause();
                        loop3:
                        do
                        {
                           §§push(AngryBirdsFP11.§>m§);
                           while(true)
                           {
                              §§pop().§^X§();
                              continue loop0;
                              addr79:
                              §§push(AngryBirdsFP11.§>m§);
                              if(_loc2_ || this)
                              {
                                 addr39:
                                 §§pop().externalPause();
                                 if(_loc2_ || this)
                                 {
                                    continue loop3;
                                 }
                                 addr70:
                                 while(!(_loc1_ && _loc1_))
                                 {
                                    if(_loc1_)
                                    {
                                       continue loop2;
                                    }
                                    §§goto(addr79);
                                    §§goto(addr39);
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        while(!(_loc2_ || this));
                        
                        if(!_loc2_)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr126);
      }
      
      private function § "$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§[$§);
            loop0:
            while(§§pop())
            {
               while(true)
               {
                  this.§[$§ = false;
                  continue loop0;
               }
            }
            addr123:
            return;
            addr122:
         }
         loop2:
         while(true)
         {
            §§push(this.§;!_§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     if(_loc2_)
                     {
                        §?l§.resume();
                     }
                     else
                     {
                        §§goto(addr115);
                     }
                  }
                  while(true)
                  {
                     if(_loc1_ && _loc2_)
                     {
                        §§goto(addr123);
                     }
                     addr42:
                     if(_loc2_ || this)
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           return;
                        }
                        continue loop2;
                     }
                  }
               }
               while(true)
               {
                  §@"M§.§'!v§(AngryBirdsFP11.§["J§);
                  loop5:
                  while(true)
                  {
                     §§push(AngryBirdsFP11.§>m§);
                     loop6:
                     while(true)
                     {
                        §§pop().externalResume();
                        addr71:
                        while(!_loc1_)
                        {
                           continue loop6;
                        }
                        continue loop5;
                     }
                  }
               }
            }
            else
            {
               §§goto(addr122);
            }
            §§goto(addr115);
         }
      }
      
      public function §4!g§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §!"J§.§1&§.§`3§ = this.§ "O§;
         }
      }
      
      private function § "O§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && _loc1_))
         {
            dispatchEvent(new Event(Event.INIT));
         }
         §§push(0.25);
         if(!(_loc8_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:* = int(this.§,">§.stageWidth);
         var _loc3_:* = int(this.§,">§.stageHeight);
         if(!_loc8_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(2);
               addr167:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  if(!(_loc8_ && this))
                  {
                     if(!§§pop())
                     {
                        addr177:
                        while(true)
                        {
                           §§pop();
                        }
                        addr177:
                     }
                     else
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc7_)
                              {
                                 while(true)
                                 {
                                    §§push(AngryBirdsFP11.stageWidth);
                                    if(_loc7_ || _loc1_)
                                    {
                                       §§push(int(§§pop()));
                                    }
                                    addr163:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                    }
                                 }
                                 addr143:
                              }
                              loop3:
                              while(true)
                              {
                                 §§push(AngryBirdsFP11.stageHeight);
                                 while(!_loc8_)
                                 {
                                    §§push(int(§§pop()));
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       addr113:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr65:
                                    if(_loc8_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    _loc3_ = §§pop();
                                    if(_loc7_)
                                    {
                                       if(!_loc8_)
                                       {
                                          if(false)
                                          {
                                             while(true)
                                             {
                                                §§push(int(Math.max(8,Math.min(_loc2_,2880))));
                                                loop8:
                                                while(_loc7_)
                                                {
                                                   _loc2_ = §§pop();
                                                   while(_loc7_ || _loc1_)
                                                   {
                                                      if(_loc8_ && _loc3_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            break loop8;
                                                            §§goto(addr177);
                                                         }
                                                         continue loop0;
                                                         addr178:
                                                      }
                                                      §§push(int(Math.max(8,Math.min(_loc3_,2880))));
                                                      if(_loc8_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      if(_loc7_)
                                                      {
                                                         §§goto(addr65);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr112);
                                                      }
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop0;
                                             }
                                             addr79:
                                          }
                                          var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * _loc1_),Math.floor(_loc3_ * _loc1_),false);
                                          var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
                                          if(_loc7_ || _loc1_)
                                          {
                                             §!"J§.drawToBitmapData(_loc5_);
                                             if(!_loc8_)
                                             {
                                                _loc4_.draw(_loc5_,new Matrix(_loc1_,0,0,_loc1_));
                                             }
                                          }
                                          try
                                          {
                                             _loc4_.draw(this.§,">§,new Matrix(_loc1_,0,0,_loc1_));
                                             if(_loc7_)
                                             {
                                                addr246:
                                                _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
                                                if(!_loc8_)
                                                {
                                                   §'"+§.§'!#§("flashScreenshotReadyHandler",Base64.§3q§(new §-K§(70).encode(_loc4_)));
                                                   _loc5_.dispose();
                                                   addr311:
                                                   if(!(_loc8_ && _loc3_))
                                                   {
                                                      _loc4_.dispose();
                                                      §!"J§.§1&§.§`3§ = null;
                                                      addr286:
                                                      if(!(_loc8_ && _loc2_))
                                                      {
                                                         dispatchEvent(new Event(Event.COMPLETE));
                                                         if(_loc7_ || _loc1_)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               §§goto(addr311);
                                                            }
                                                            return;
                                                         }
                                                         §§goto(addr286);
                                                      }
                                                      addr307:
                                                      §§goto(addr307);
                                                      addr318:
                                                   }
                                                   addr329:
                                                   §§goto(addr329);
                                                }
                                             }
                                             §§goto(addr318);
                                          }
                                          catch(e:Error)
                                          {
                                          }
                                          §§goto(addr246);
                                       }
                                       §§goto(addr113);
                                    }
                                    §§goto(addr91);
                                 }
                                 §§goto(addr163);
                              }
                           }
                           §§goto(addr79);
                           addr131:
                           §§push(§§pop() < §§pop());
                           if(!(_loc8_ && this))
                           {
                              continue;
                           }
                           §§goto(addr177);
                        }
                     }
                     §§goto(addr178);
                  }
                  §§goto(addr177);
               }
            }
         }
         §§goto(addr143);
      }
   }
}
