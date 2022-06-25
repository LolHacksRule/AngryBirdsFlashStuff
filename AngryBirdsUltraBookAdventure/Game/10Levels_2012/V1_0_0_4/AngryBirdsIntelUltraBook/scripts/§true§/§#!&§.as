package §true§
{
   import §"R§.§ !Q§;
   import §7!J§.§!!k§;
   import §<&§.§^b§;
   import §@i§.§=r§;
   import §^_§.Base64;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §#!&§ extends EventDispatcher
   {
       
      
      private var §>!W§:Boolean;
      
      private var §;p§:Stage;
      
      private var § D§:Boolean = false;
      
      public function §#!&§(param1:Stage)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
         }
         do
         {
            this.§;p§ = param1;
            do
            {
               this.init();
            }
            while(!_loc3_);
            
         }
         while(_loc2_ && _loc3_);
         
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §=r§.addCallback("pause",this.§=!E§);
         }
         do
         {
            §=r§.addCallback("resume",this.§`k§);
         }
         while(_loc2_ && this);
         
      }
      
      private function §=!E§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(!this.§ D§)
            {
               loop0:
               while(true)
               {
                  this.§ D§ = true;
                  loop1:
                  while(true)
                  {
                     §§push(this);
                     §§push(§ _§.isPaused);
                     if(_loc2_ || this)
                     {
                        §§push(!§§pop());
                     }
                     §§pop().§>!W§ = §§pop();
                     loop2:
                     while(true)
                     {
                        § _§.pause();
                        while(!_loc1_)
                        {
                           while(true)
                           {
                              §§push(AngryBirdsFP11.§3!a§);
                              loop5:
                              while(true)
                              {
                                 §§pop().§5C§();
                                 addr82:
                                 while(_loc2_)
                                 {
                                    this.§<!i§();
                                    while(!_loc1_)
                                    {
                                       continue loop5;
                                    }
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                           }
                           if(!(_loc2_ || _loc2_))
                           {
                              continue;
                           }
                           §§goto(addr61);
                        }
                        continue loop0;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr90);
      }
      
      private function §`k§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this.§ D§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     this.§ D§ = false;
                     addr117:
                     addr67:
                     while(true)
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           continue loop0;
                        }
                     }
                     loop7:
                     while(true)
                     {
                        § !Q§.§each §(AngryBirdsFP11.§-!W§);
                        loop4:
                        do
                        {
                           §§push(AngryBirdsFP11.§3!a§);
                           while(true)
                           {
                              §§pop().externalResume();
                              while(true)
                              {
                                 §§push(AngryBirdsFP11.§3!a§);
                                 if(_loc1_ && _loc2_)
                                 {
                                    break;
                                 }
                                 §§pop().§+!R§();
                                 if(_loc2_)
                                 {
                                    continue loop4;
                                 }
                              }
                           }
                        }
                        while(_loc1_ && _loc2_);
                        
                        addr49:
                        if(!_loc1_)
                        {
                           return;
                        }
                        addr110:
                        while(!_loc1_)
                        {
                           continue loop7;
                           §§goto(addr49);
                        }
                        continue loop1;
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr108);
      }
      
      public function §<!i§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §^b§.§9E§.§1E§ = this.§-N§;
         }
      }
      
      private function §-N§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            dispatchEvent(new Event(Event.INIT));
         }
         §§push(0.25);
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:* = int(this.§;p§.stageWidth);
         var _loc3_:* = int(this.§;p§.stageHeight);
         if(_loc7_)
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
                  if(_loc7_ || this)
                  {
                     if(!§§pop())
                     {
                        loop12:
                        while(true)
                        {
                           §§pop();
                           addr168:
                           while(true)
                           {
                              §§push(_loc3_);
                              addr125:
                              while(true)
                              {
                                 §§push(2);
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 continue loop12;
                              }
                              continue loop1;
                           }
                        }
                        addr167:
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
                              while(_loc7_)
                              {
                                 §§push(int(§§pop()));
                                 loop5:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       §§push(AngryBirdsFP11.stageHeight);
                                       loop7:
                                       for(; _loc7_ || _loc2_; while(!(_loc8_ && _loc2_))
                                       {
                                          continue loop5;
                                       })
                                       {
                                          §§push(int(§§pop()));
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             addr120:
                                             while(!_loc8_)
                                             {
                                                while(true)
                                                {
                                                   §§push(int(Math.max(8,Math.min(_loc2_,2880))));
                                                   continue loop7;
                                                }
                                             }
                                             §§goto(addr168);
                                             addr53:
                                             if(!(_loc7_ || this))
                                             {
                                                continue;
                                             }
                                             if(!(_loc7_ || this))
                                             {
                                                continue loop4;
                                             }
                                             addr67:
                                             _loc3_ = §§pop();
                                             if(_loc8_ && _loc3_)
                                             {
                                                while(true)
                                                {
                                                   §§push(int(Math.max(8,Math.min(_loc3_,2880))));
                                                   if(!_loc7_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   §§goto(addr53);
                                                   §§goto(addr67);
                                                }
                                                addr169:
                                                var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * _loc1_),Math.floor(_loc3_ * _loc1_),false);
                                                var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
                                                if(!_loc8_)
                                                {
                                                   §^b§.drawToBitmapData(_loc5_);
                                                   if(!_loc8_)
                                                   {
                                                      _loc4_.draw(_loc5_,new Matrix(_loc1_,0,0,_loc1_));
                                                   }
                                                }
                                                try
                                                {
                                                   _loc4_.draw(this.§;p§,new Matrix(_loc1_,0,0,_loc1_));
                                                   if(_loc7_ || _loc3_)
                                                   {
                                                      addr236:
                                                      _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
                                                      if(_loc7_ || _loc3_)
                                                      {
                                                         §=r§.§[!3§("flashScreenshotReadyHandler",Base64.§6!s§(new §!!k§(70).encode(_loc4_)));
                                                         while(true)
                                                         {
                                                            _loc5_.dispose();
                                                            loop17:
                                                            while(!(_loc8_ && _loc2_))
                                                            {
                                                               _loc4_.dispose();
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §^b§.§9E§.§1E§ = null;
                                                                  do
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        continue loop17;
                                                                     }
                                                                     continue loop18;
                                                                  }
                                                                  while(dispatchEvent(new Event(Event.COMPLETE)), _loc8_);
                                                                  
                                                                  §§goto(addr268);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                catch(e:Error)
                                                {
                                                   §§goto(addr236);
                                                }
                                                addr268:
                                                return;
                                                addr107:
                                             }
                                             if(_loc7_)
                                             {
                                                if(_loc8_)
                                                {
                                                   continue loop6;
                                                }
                                                if(!_loc7_)
                                                {
                                                   continue loop3;
                                                }
                                                if(true)
                                                {
                                                   §§goto(addr169);
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr120);
                                             }
                                             §§goto(addr83);
                                          }
                                       }
                                       §§goto(addr125);
                                    }
                                    if(_loc8_ && _loc2_)
                                    {
                                       continue;
                                    }
                                    _loc2_ = §§pop();
                                    §§goto(addr107);
                                 }
                              }
                              continue loop0;
                           }
                        }
                        §§goto(addr83);
                        §§goto(addr128);
                     }
                  }
                  §§goto(addr167);
               }
            }
         }
         §§goto(addr169);
      }
   }
}
