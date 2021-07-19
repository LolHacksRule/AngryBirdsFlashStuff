package §8!B§
{
   import §&^§.§[!7§;
   import §5Z§.§[Z§;
   import §7L§.§%!,§;
   import §@B§.§8V§;
   import §`K§.Base64;
   import flash.display.BitmapData;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.filters.BlurFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class § 7§ extends EventDispatcher
   {
       
      
      private var §[+§:Boolean;
      
      private var §@&§:Stage;
      
      private var §4@§:Boolean = false;
      
      public function § 7§(param1:Stage)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super();
            while(true)
            {
               this.§@&§ = param1;
               while(!(_loc3_ && param1))
               {
                  this.init();
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  return;
                  addr58:
               }
            }
         }
         §§goto(addr58);
      }
      
      private function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §8V§.addCallback("pause",this.§"&§);
         }
         do
         {
            §8V§.addCallback("resume",this.§^1§);
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      private function §"&§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(!this.§4@§)
            {
               if(!(_loc1_ && this))
               {
                  this.§4@§ = true;
               }
               while(true)
               {
                  §§push(this);
                  §§push(§#! §.isPaused);
                  if(!_loc1_)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().§[+§ = §§pop();
                  §#! §.pause();
                  loop1:
                  while(true)
                  {
                     §§push(AngryBirdsFP11.§`y§);
                     loop2:
                     while(true)
                     {
                        §§pop().§@9§();
                        do
                        {
                           this.§1=§();
                        }
                        while(!_loc2_);
                        
                        addr60:
                        while(true)
                        {
                           §§push(AngryBirdsFP11.§`y§);
                           if(_loc2_)
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                        §§goto(addr54);
                     }
                  }
                  if(_loc1_ && this)
                  {
                     continue;
                  }
                  §§goto(addr54);
               }
            }
            addr54:
            return;
         }
         §§goto(addr60);
      }
      
      private function §^1§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§4@§);
            loop0:
            while(§§pop())
            {
               while(true)
               {
                  this.§4@§ = false;
                  §§push(this.§[+§);
                  if(_loc2_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     §#! §.resume();
                     loop2:
                     while(_loc1_ || _loc2_)
                     {
                        while(true)
                        {
                           §[!7§.§%R§(AngryBirdsFP11.§"!5§);
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        §§push(AngryBirdsFP11.§`y§);
                        while(true)
                        {
                           §§pop().externalResume();
                           while(true)
                           {
                              §§push(AngryBirdsFP11.§`y§);
                              if(!(_loc1_ || this))
                              {
                                 break;
                              }
                              §§pop().§ §();
                              if(_loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    return;
                                 }
                                 break loop0;
                              }
                           }
                        }
                     }
                     continue;
                  }
                  §§goto(addr59);
               }
            }
         }
      }
      
      public function §1=§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §[Z§.§%m§.§?! § = this.§3E§;
         }
      }
      
      private function §3E§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && _loc2_))
         {
            dispatchEvent(new Event(Event.INIT));
         }
         §§push(0.25);
         if(_loc7_ || _loc1_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         var _loc2_:* = int(this.§@&§.stageWidth);
         var _loc3_:* = int(this.§@&§.stageHeight);
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
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr180:
                           while(true)
                           {
                              §§push(_loc3_);
                              while(true)
                              {
                                 §§push(2);
                                 if(_loc8_ && _loc2_)
                                 {
                                    break;
                                 }
                                 §§push(§§pop() < §§pop());
                                 if(!(_loc7_ || this))
                                 {
                                    continue loop3;
                                 }
                                 if(!(_loc7_ || _loc2_))
                                 {
                                    continue loop2;
                                 }
                                 addr115:
                                 if(!(_loc7_ || _loc1_))
                                 {
                                    continue;
                                 }
                                 §§push(int(§§pop()));
                                 loop9:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    addr87:
                                    while(true)
                                    {
                                       §§push(int(Math.max(8,Math.min(_loc2_,2880))));
                                       loop11:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          addr97:
                                          while(true)
                                          {
                                             §§push(int(Math.max(8,Math.min(_loc3_,2880))));
                                             if(_loc7_ || this)
                                             {
                                                if(_loc7_)
                                                {
                                                   continue loop0;
                                                }
                                                continue loop9;
                                             }
                                             continue loop11;
                                          }
                                          addr181:
                                          var _loc4_:BitmapData = new BitmapData(Math.floor(_loc2_ * _loc1_),Math.floor(_loc3_ * _loc1_),false);
                                          var _loc5_:BitmapData = new BitmapData(_loc2_,_loc3_,false);
                                          if(_loc7_)
                                          {
                                             §[Z§.drawToBitmapData(_loc5_);
                                             if(_loc7_ || _loc3_)
                                             {
                                                addr215:
                                                _loc4_.draw(_loc5_,new Matrix(_loc1_,0,0,_loc1_));
                                             }
                                             try
                                             {
                                                _loc4_.draw(this.§@&§,new Matrix(_loc1_,0,0,_loc1_));
                                                if(!(_loc8_ && _loc3_))
                                                {
                                                   addr253:
                                                   _loc4_.applyFilter(_loc4_,_loc4_.rect,new Point(0,0),new BlurFilter());
                                                   §8V§.§^^§("flashScreenshotReadyHandler",Base64.§,v§(new §%!,§(70).encode(_loc4_)));
                                                   while(true)
                                                   {
                                                      _loc5_.dispose();
                                                   }
                                                   addr327:
                                                }
                                             }
                                             catch(e:Error)
                                             {
                                                §§goto(addr253);
                                             }
                                             while(true)
                                             {
                                                _loc4_.dispose();
                                                while(!_loc8_)
                                                {
                                                   §[Z§.§%m§.§?! § = null;
                                                   do
                                                   {
                                                      dispatchEvent(new Event(Event.COMPLETE));
                                                   }
                                                   while(_loc8_ && _loc2_);
                                                   
                                                   if(_loc7_ || this)
                                                   {
                                                      return;
                                                   }
                                                }
                                                §§goto(addr327);
                                             }
                                          }
                                          §§goto(addr215);
                                       }
                                    }
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc7_ || _loc1_)
                           {
                              §§push(int(AngryBirdsFP11.stageWidth));
                              loop7:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 addr173:
                                 while(true)
                                 {
                                    §§push(AngryBirdsFP11.stageHeight);
                                    if(_loc7_ || _loc1_)
                                    {
                                       continue loop7;
                                    }
                                    §§goto(addr123);
                                 }
                              }
                           }
                           §§goto(addr180);
                        }
                        §§goto(addr87);
                     }
                  }
               }
            }
         }
         §§goto(addr97);
      }
   }
}
