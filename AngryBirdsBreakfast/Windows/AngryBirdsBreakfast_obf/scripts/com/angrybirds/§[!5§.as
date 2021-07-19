package com.angrybirds
{
   import §-!;§.§[!F§;
   import §1T§.§'!c§;
   import §<G§.§2C§;
   import §[O§.§0`§;
   import §`!a§.§1"&§;
   import each.Base64;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §[!5§ extends EventDispatcher
   {
       
      
      private var §+!E§:Boolean;
      
      private var §7Y§:Stage;
      
      private var §=2§:Boolean = false;
      
      public function §[!5§(param1:Stage)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super();
            do
            {
               this.§7Y§ = param1;
               do
               {
                  this.init();
               }
               while(_loc3_ && _loc2_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      public function §6q§() : Boolean
      {
         return this.§=2§;
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §2C§.addCallback("pause",this.§`"+§);
            while(true)
            {
               §2C§.addCallback("resume",this.§0!P§);
               while(_loc2_ || this)
               {
                  §2C§.addCallback("resumeOnError",this.§0!P§);
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr42:
               }
            }
         }
         §§goto(addr42);
      }
      
      private function §`"+§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(!this.§=2§)
            {
               while(true)
               {
                  this.§=2§ = true;
                  loop1:
                  while(true)
                  {
                     §§push(this);
                     §§push(§&!"§.isPaused);
                     if(!(_loc1_ && _loc1_))
                     {
                        §§push(!§§pop());
                     }
                     §§pop().§+!E§ = §§pop();
                     loop2:
                     while(true)
                     {
                        dispatchEvent(new §[!F§(§[!F§.§'Z§));
                        loop3:
                        while(true)
                        {
                           §§push(§6!!§.singleton);
                           loop4:
                           while(true)
                           {
                              §§pop().§#N§();
                              while(_loc2_)
                              {
                                 if(!_loc1_)
                                 {
                                    this.§[!!§();
                                    while(!_loc1_)
                                    {
                                       continue loop3;
                                       §§pop().§"!O§();
                                       if(!(_loc1_ && _loc1_))
                                       {
                                          addr25:
                                          return;
                                          addr42:
                                       }
                                    }
                                    continue;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                              addr72:
                              while(true)
                              {
                                 §§push(§6!!§.singleton);
                                 if(_loc1_)
                                 {
                                    continue loop4;
                                 }
                                 §§goto(addr34);
                              }
                              §§goto(addr42);
                           }
                        }
                     }
                  }
                  if(_loc1_ && _loc1_)
                  {
                     continue;
                  }
                  §§goto(addr72);
               }
            }
            §§goto(addr25);
         }
         §§goto(addr72);
      }
      
      private function §0!P§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§=2§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§=2§ = false;
                     addr103:
                     while(!(_loc2_ && _loc2_))
                     {
                        if(_loc1_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr72);
      }
      
      public function §[!!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §1"&§.§1i§.§7!]§ = this.§8!S§;
         }
      }
      
      private function §8!S§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && _loc2_))
         {
            dispatchEvent(new Event(Event.INIT));
         }
         §§push(0.25);
         if(!(_loc8_ && _loc1_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:* = int(this.§7Y§.stageWidth);
         var _loc3_:* = int(this.§7Y§.stageHeight);
         if(!_loc8_)
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
                  if(!(_loc8_ && _loc1_))
                  {
                     if(!§§pop())
                     {
                        loop12:
                        while(true)
                        {
                           §§pop();
                           loop10:
                           while(true)
                           {
                              §§push(_loc3_);
                              if(!(_loc8_ && _loc3_))
                              {
                                 §§push(2);
                                 if(!(_loc7_ || _loc3_))
                                 {
                                    continue loop1;
                                 }
                                 addr126:
                                 §§push(§§pop() < §§pop());
                                 if(!(_loc7_ || _loc2_))
                                 {
                                    continue loop12;
                                 }
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       if(!(_loc8_ && _loc1_))
                                       {
                                          while(true)
                                          {
                                             §§push(§6!!§.stageWidth);
                                             break loop10;
                                          }
                                          addr143:
                                       }
                                       loop3:
                                       while(true)
                                       {
                                          §§push(§6!!§.stageHeight);
                                          loop4:
                                          while(!(_loc8_ && this))
                                          {
                                             §§push(int(§§pop()));
                                             loop5:
                                             while(true)
                                             {
                                                _loc3_ = §§pop();
                                                loop6:
                                                while(_loc7_)
                                                {
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(int(Math.max(8,Math.min(_loc2_,2880))));
                                                      loop8:
                                                      while(_loc7_)
                                                      {
                                                         _loc2_ = §§pop();
                                                         while(_loc7_)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               §§push(int(Math.max(8,Math.min(_loc3_,2880))));
                                                               if(!_loc8_)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        break loop10;
                                                                     }
                                                                     _loc3_ = §§pop();
                                                                     if(!(_loc7_ || _loc2_))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(false)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * _loc1_),Math.floor(_loc3_ * _loc1_),false);
                                                                     var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
                                                                     if(_loc7_ || _loc1_)
                                                                     {
                                                                        §1"&§.drawToBitmapData(_loc5_);
                                                                        if(!(_loc8_ && _loc3_))
                                                                        {
                                                                           _loc4_.draw(_loc5_,new Matrix(_loc1_,0,0,_loc1_));
                                                                        }
                                                                     }
                                                                     try
                                                                     {
                                                                        _loc4_.draw(this.§7Y§,new Matrix(_loc1_,0,0,_loc1_));
                                                                        if(!(_loc8_ && this))
                                                                        {
                                                                           addr251:
                                                                           _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
                                                                           if(_loc7_ || _loc2_)
                                                                           {
                                                                              §2C§.§^!A§("flashScreenshotReadyHandler",Base64.§`d§(new §0`§(70).encode(_loc4_)));
                                                                              _loc5_.dispose();
                                                                              _loc4_.dispose();
                                                                              §1"&§.§1i§.§7!]§ = null;
                                                                              addr323:
                                                                              addr319:
                                                                              if(!(_loc8_ && this))
                                                                              {
                                                                                 dispatchEvent(new Event(Event.COMPLETE));
                                                                                 if(!(_loc8_ && _loc3_))
                                                                                 {
                                                                                    if(!(_loc8_ && this))
                                                                                    {
                                                                                       if(!(_loc7_ || _loc3_))
                                                                                       {
                                                                                          §§goto(addr323);
                                                                                       }
                                                                                       return;
                                                                                       addr302:
                                                                                    }
                                                                                    §§goto(addr319);
                                                                                 }
                                                                                 §§goto(addr323);
                                                                              }
                                                                              addr344:
                                                                              §§goto(addr344);
                                                                           }
                                                                        }
                                                                     }
                                                                     catch(e:Error)
                                                                     {
                                                                        §§goto(addr251);
                                                                     }
                                                                     §§goto(addr302);
                                                                     continue;
                                                                  }
                                                                  continue loop5;
                                                               }
                                                               continue loop8;
                                                            }
                                                            continue loop10;
                                                         }
                                                         continue loop6;
                                                      }
                                                      continue loop4;
                                                   }
                                                   continue loop0;
                                                }
                                                continue loop3;
                                             }
                                          }
                                          addr148:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             continue loop3;
                                          }
                                       }
                                    }
                                    §§goto(addr77);
                                    §§goto(addr126);
                                 }
                              }
                              break;
                           }
                           while(true)
                           {
                              if(!_loc7_)
                              {
                                 continue loop0;
                              }
                              §§goto(addr148);
                              §§push(int(§§pop()));
                           }
                        }
                        addr162:
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr162);
               }
            }
         }
         §§goto(addr143);
      }
   }
}
