package com.angrybirds
{
   import §&#H§.§3#J§;
   import §5t§.Base64;
   import §6!A§.§2!6§;
   import §<w§.§9"G§;
   import §="2§.§?!r§;
   import §="V§.§""v§;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class §=O§ extends EventDispatcher
   {
       
      
      private var §3#T§:Boolean;
      
      private var § "u§:Stage;
      
      private var §7!q§:Boolean = false;
      
      public function §=O§(param1:Stage)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            super();
            while(true)
            {
               this.§ "u§ = param1;
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.init();
                     if(_loc3_ || _loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr66);
      }
      
      public function isExternallyPaused() : Boolean
      {
         return this.§7!q§;
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §""v§.addCallback("pause",this.§,#,§);
            while(true)
            {
               §""v§.addCallback("resume",this.§ "8§);
               while(_loc2_)
               {
                  §""v§.addCallback("resumeOnError",this.§ "8§);
                  if(!(_loc1_ && _loc1_))
                  {
                     return;
                     addr52:
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      private function §,#,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(!this.§7!q§)
            {
               loop0:
               while(true)
               {
                  this.§7!q§ = true;
                  while(true)
                  {
                     §§push(this);
                     §§push(§,!q§.isPaused);
                     if(_loc2_ || this)
                     {
                        §§push(!§§pop());
                     }
                     §§pop().§3#T§ = §§pop();
                     while(true)
                     {
                        dispatchEvent(new §9"G§(§9"G§.§`!V§));
                        loop3:
                        while(_loc2_ || _loc1_)
                        {
                           if(_loc1_)
                           {
                              continue loop0;
                           }
                           while(true)
                           {
                              §§push(§4#;§.singleton);
                              loop5:
                              while(true)
                              {
                                 §§pop().§<#'§();
                                 addr77:
                                 while(true)
                                 {
                                    this.§-" §();
                                    addr70:
                                    while(!_loc1_)
                                    {
                                       continue loop5;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr25);
         }
         §§goto(addr94);
      }
      
      private function § "8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§7!q§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  addr127:
                  return;
               }
               addr119:
               while(true)
               {
                  this.§7!q§ = false;
                  continue loop0;
               }
            }
         }
         §§goto(addr88);
      }
      
      public function §-" §() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §3#J§.§2!C§.§0#[§ = this.§6f§;
         }
      }
      
      private function §6f§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && _loc1_))
         {
            dispatchEvent(new Event(Event.INIT));
         }
         §§push(0.25);
         if(!(_loc7_ && _loc1_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:* = int(this.§ "u§.stageWidth);
         var _loc3_:* = int(this.§ "u§.stageHeight);
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
                              while(!_loc7_)
                              {
                                 §§push(2);
                                 if(_loc7_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(§§pop() < §§pop());
                                 if(_loc7_)
                                 {
                                    continue loop3;
                                 }
                                 if(!(_loc8_ || _loc1_))
                                 {
                                    continue loop2;
                                 }
                                 loop10:
                                 for(; !(_loc7_ && _loc2_); if(_loc7_ && this)
                                 {
                                    continue;
                                 },_loc2_ = §§pop(),loop15:
                                 while(_loc8_)
                                 {
                                    if(!(_loc7_ && this))
                                    {
                                       while(true)
                                       {
                                          §§push(int(Math.max(8,Math.min(_loc3_,2880))));
                                          if(_loc8_ || _loc2_)
                                          {
                                             _loc3_ = §§pop();
                                             if(_loc7_)
                                             {
                                                continue loop15;
                                             }
                                             if(true)
                                             {
                                                break;
                                             }
                                             §§goto(addr79);
                                          }
                                          §§goto(addr88);
                                       }
                                       var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * _loc1_),Math.floor(_loc3_ * _loc1_),false);
                                       var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
                                       if(_loc8_)
                                       {
                                          §3#J§.drawToBitmapData(_loc5_);
                                          if(!(_loc7_ && this))
                                          {
                                             addr209:
                                             _loc4_.draw(_loc5_,new Matrix(_loc1_,0,0,_loc1_));
                                          }
                                          try
                                          {
                                             _loc4_.draw(this.§ "u§,new Matrix(_loc1_,0,0,_loc1_));
                                             if(_loc8_ || _loc3_)
                                             {
                                                addr247:
                                                _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
                                                if(_loc8_)
                                                {
                                                   §""v§.§&R§("flashScreenshotReadyHandler",Base64.§-$§(new §2!6§(70).encode(_loc4_)));
                                                   while(true)
                                                   {
                                                      _loc5_.dispose();
                                                   }
                                                   addr320:
                                                }
                                                while(true)
                                                {
                                                   _loc4_.dispose();
                                                }
                                                return;
                                                addr283:
                                                addr299:
                                             }
                                          }
                                          catch(e:Error)
                                          {
                                             §§goto(addr247);
                                          }
                                          while(true)
                                          {
                                             §3#J§.§2!C§.§0#[§ = null;
                                             while(!_loc7_)
                                             {
                                                dispatchEvent(new Event(Event.COMPLETE));
                                                if(_loc7_ && _loc2_)
                                                {
                                                   continue;
                                                }
                                                if(!_loc7_)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      §§goto(addr320);
                                                   }
                                                   §§goto(addr283);
                                                }
                                                §§goto(addr299);
                                             }
                                          }
                                       }
                                       §§goto(addr209);
                                       addr107:
                                    }
                                    §§goto(addr150);
                                 },§§goto(addr124))
                                 {
                                    §§push(int(§§pop()));
                                    loop11:
                                    while(_loc8_)
                                    {
                                       if(_loc8_)
                                       {
                                          _loc3_ = §§pop();
                                          while(true)
                                          {
                                             addr79:
                                             while(true)
                                             {
                                                §§push(int(Math.max(8,Math.min(_loc2_,2880))));
                                                addr88:
                                                while(!_loc7_)
                                                {
                                                   continue loop10;
                                                }
                                                continue loop11;
                                             }
                                          }
                                          addr124:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(int(§§pop()));
                                             break loop11;
                                          }
                                          addr148:
                                       }
                                    }
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       addr150:
                                       while(_loc8_ || _loc1_)
                                       {
                                          §§push(§4#;§.stageHeight);
                                          continue loop10;
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc7_)
                           {
                              §§goto(addr148);
                              §§push(§4#;§.stageWidth);
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr79);
                     }
                  }
               }
            }
         }
         §§goto(addr107);
      }
   }
}
