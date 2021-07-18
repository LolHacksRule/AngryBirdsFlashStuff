package § "!§
{
   import §!"@§.§]"1§;
   import §,%§.§<D§;
   import §4y§.§0"H§;
   import §4y§.Item;
   import §@!"§.§?l§;
   import §]!w§.§[!X§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §]"@§ extends §2w§
   {
      
      private static const §<"Q§:§,"@§;
      
      private static const §%!=§:§,"@§;
      
      private static const §?!u§:§,"@§;
      
      private static const §1!T§:Array;
      
      private static const §#"6§:Array;
      
      private static var §["O§:§04§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §<"Q§ = new §,"@§(15,40);
            while(true)
            {
               §%!=§ = new §,"@§(115,131);
               while(!_loc2_)
               {
                  §?!u§ = new §,"@§(132,145);
                  loop2:
                  while(!(_loc2_ && §]"@§))
                  {
                     while(true)
                     {
                        §1!T§ = [§<"Q§,§%!=§,§?!u§];
                        do
                        {
                           §#"6§ = [§<"Q§,§?!u§];
                        }
                        while(!_loc1_);
                        
                        if(_loc1_ || _loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      private var §]^§:§,"@§;
      
      private var §1"A§:§[!X§;
      
      private var §#s§:int;
      
      private var §8w§:Timer;
      
      private var §<!,§:int = 30;
      
      private var §"G§:Number = 0;
      
      private var §+!6§:Number = 0;
      
      private var §2z§:Number = 40.0;
      
      private var §2'§:Array;
      
      private var §9!Q§:Bitmap;
      
      public function §]"@§(param1:String, param2:String, param3:Boolean = false)
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:Item = null;
         var _loc6_:§0"H§ = null;
         if(_loc9_)
         {
            this.§2'§ = [];
         }
         var _loc4_:Array = §<D§.§'!^§(param1);
         for each(_loc5_ in _loc4_)
         {
            if(_loc5_.§;"V§ == "CategoryBirds")
            {
               _loc6_ = §]"1§.§&"5§.characters.§>"!§(_loc5_.§&N§);
               if(!_loc10_)
               {
                  this.§1"A§ = new §[!X§(_loc6_);
               }
            }
         }
         if(_loc9_ || param3)
         {
            super(param1,param2,param3);
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:BitmapData = null;
         if(_loc5_ || _loc1_)
         {
            §?l§.§ "G§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            while(true)
            {
               §§goto(addr48);
            }
         }
         while(true)
         {
            this.§8w§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§ !§);
            do
            {
               this.§8w§.stop();
            }
            while(_loc4_ && _loc2_);
            
            if(!(_loc4_ && _loc2_))
            {
               if(false)
               {
                  addr48:
                  §§goto(addr75);
               }
               addr75:
               while(this.§8w§)
               {
                  continue loop0;
               }
               var _loc2_:int = 0;
               for each(_loc1_ in this.§2'§)
               {
                  if(!_loc4_)
                  {
                     if(_loc1_)
                     {
                        if(_loc5_ || _loc2_)
                        {
                           _loc1_.dispose();
                        }
                     }
                  }
               }
               if(!_loc4_)
               {
                  this.§2'§ = [];
                  loop4:
                  for(; §9"W§; if(!(_loc5_ || _loc2_))
                  {
                     continue;
                  },§§goto(addr141))
                  {
                     if(_loc5_)
                     {
                        continue;
                     }
                     addr180:
                     loop8:
                     while(true)
                     {
                        addr141:
                        while(true)
                        {
                           if(§9"W§.numChildren <= 0)
                           {
                              break loop4;
                           }
                           §9"W§.removeChildAt(0);
                           continue loop8;
                        }
                     }
                  }
                  while(true)
                  {
                     addr157:
                     while(true)
                     {
                        §9"W§ = null;
                        addr160:
                        while(!_loc4_)
                        {
                        }
                        §§goto(addr180);
                     }
                  }
               }
               while(this.§9!Q§)
               {
                  if(!_loc4_)
                  {
                     if(!(_loc4_ && this))
                     {
                        this.§9!Q§ = null;
                        addr138:
                        if(!_loc4_)
                        {
                           break;
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr160);
                  }
                  §§goto(addr138);
               }
               return;
            }
            §§goto(addr52);
         }
      }
      
      public function § I§(param1:§,"@§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§]^§ = param1;
            while(true)
            {
               this.§#s§ = param1.start;
               loop1:
               while(!(_loc2_ && _loc3_))
               {
                  while(true)
                  {
                     §?l§.§ "G§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                     if(!(_loc2_ && param1))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr77);
      }
      
      override protected function sendAvatarToRenderer() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §6!w§.render(§+!Q§,this.renderAvatar,§ ^§(),§=U§,null,null,this.§<!,§);
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(getTimer() - this.§"G§);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(this);
            §§push(this.§+!6§);
            if(!_loc4_)
            {
               §§push(§§pop() + _loc2_);
            }
            §§pop().§+!6§ = §§pop();
            loop0:
            while(true)
            {
               if(this.§+!6§ > this.§2z§)
               {
                  if(_loc3_)
                  {
                     this.§#s§ += 1;
                  }
                  while(true)
                  {
                     addr143:
                     this.§+!6§ = 0;
                     addr147:
                     while(_loc3_)
                     {
                     }
                     continue loop0;
                  }
                  addr164:
               }
               while(true)
               {
                  if(this.§2'§[this.§#s§] != null)
                  {
                     this.renderAvatar(BitmapData(this.§2'§[this.§#s§]));
                     loop4:
                     do
                     {
                        loop5:
                        while(true)
                        {
                           if(this.§#s§ >= this.§]^§.end)
                           {
                              loop6:
                              while(_loc3_ || param1)
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    §?l§.§ "G§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                                    loop7:
                                    while(_loc3_)
                                    {
                                       while(true)
                                       {
                                          this.§"G§ = getTimer();
                                          if(_loc3_)
                                          {
                                             if(_loc3_ || _loc3_)
                                             {
                                                break;
                                             }
                                             continue loop6;
                                          }
                                          continue loop7;
                                       }
                                       continue loop4;
                                    }
                                    §§goto(addr147);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §6!w§.render(§+!Q§,this.renderAvatar,§ ^§(),§=U§,this.§#s§,this.§1"A§,this.§<!,§);
                                       break loop6;
                                    }
                                    addr116:
                                 }
                              }
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    break loop5;
                                 }
                                 continue loop5;
                              }
                              §§goto(addr143);
                           }
                           §§goto(addr32);
                        }
                        §§goto(addr164);
                     }
                     while(!(_loc3_ || this));
                     
                     return;
                     addr53:
                  }
                  §§goto(addr116);
               }
            }
         }
         §§goto(addr53);
      }
      
      public function § "Y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.sendAvatarToRenderer();
            loop0:
            while(true)
            {
               if(this.§8w§)
               {
                  if(!_loc2_)
                  {
                     this.§8w§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§ !§);
                  }
                  while(true)
                  {
                     this.§8w§.stop();
                     addr99:
                     while(true)
                     {
                     }
                  }
                  addr113:
               }
               while(true)
               {
                  this.§8w§ = new Timer(3000 + Math.random() * 1000,1);
                  loop4:
                  for(; !_loc2_; if(_loc2_ && this)
                  {
                     continue;
                  },§§goto(addr41))
                  {
                     this.§8w§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§ !§);
                     loop5:
                     while(!_loc2_)
                     {
                        continue loop0;
                        while(true)
                        {
                           this.§8w§.start();
                           if(!_loc2_)
                           {
                              continue loop4;
                           }
                           continue loop5;
                        }
                        return;
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr99);
               }
            }
         }
         §§goto(addr69);
      }
      
      private function § !§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§ n§();
            do
            {
               this.§ "Y§();
            }
            while(_loc2_);
            
         }
      }
      
      public function § n§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Array = §1!T§;
         if(_loc4_)
         {
            §§push(§+!Q§.indexOf("M50003") == -1);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(_loc4_)
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        if(_loc4_)
                        {
                           §§pop();
                           loop2:
                           while(true)
                           {
                              addr92:
                              while(true)
                              {
                                 §§push(§+!Q§.indexOf("M50006") == -1);
                                 if(_loc4_)
                                 {
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    §§push(!§§pop());
                                    if(_loc4_)
                                    {
                                       addr105:
                                       §§push(§§pop());
                                       loop6:
                                       for(; !_loc3_; loop7:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc4_ || _loc3_))
                                          {
                                             continue loop6;
                                          }
                                          if(!§§pop())
                                          {
                                             if(!_loc3_)
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   §§pop();
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         continue loop2;
                                                      }
                                                      loop5:
                                                      while(true)
                                                      {
                                                         §§push(§+!Q§.indexOf("C10005") == -1);
                                                         if(_loc3_)
                                                         {
                                                            continue loop8;
                                                         }
                                                         if(_loc4_ || _loc3_)
                                                         {
                                                            §§push(!§§pop());
                                                            if(_loc3_ && _loc1_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  break;
                                                               }
                                                               var _loc2_:int = Math.floor(Math.random() * _loc1_.length);
                                                            }
                                                            else
                                                            {
                                                               addr147:
                                                               addr143:
                                                            }
                                                            continue loop7;
                                                            if(_loc4_)
                                                            {
                                                               this.§ I§(_loc1_[_loc2_]);
                                                            }
                                                            return;
                                                         }
                                                         addr109:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            continue loop5;
                                                         }
                                                      }
                                                   }
                                                   _loc1_ = §#"6§;
                                                   §§goto(addr147);
                                                }
                                             }
                                             else
                                             {
                                                addr142:
                                                §§push(!§§pop());
                                             }
                                          }
                                          §§goto(addr143);
                                       })
                                       {
                                          if(!§§pop())
                                          {
                                             continue;
                                          }
                                       }
                                       continue loop1;
                                    }
                                    §§goto(addr109);
                                 }
                                 §§goto(addr105);
                              }
                              continue loop0;
                              if(_loc3_ && _loc3_)
                              {
                                 continue;
                              }
                              while(true)
                              {
                                 if(false)
                                 {
                                    §§goto(addr92);
                                 }
                                 else
                                 {
                                    §§push(§+!Q§.indexOf("M50010") == -1);
                                    if(_loc4_)
                                    {
                                       §§goto(addr142);
                                    }
                                 }
                                 §§goto(addr147);
                              }
                           }
                        }
                        §§goto(addr142);
                     }
                     §§goto(addr46);
                  }
               }
               §§goto(addr142);
            }
         }
         §§goto(addr90);
      }
      
      override public function renderAvatar(param1:BitmapData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(§9"W§ == null)
            {
               addr156:
               while(true)
               {
                  §9"W§ = new Sprite();
                  addr160:
                  while(true)
                  {
                  }
               }
               addr156:
            }
            while(§9"W§.parent != this)
            {
               if(_loc2_)
               {
                  if(_loc3_)
                  {
                     §§goto(addr160);
                     continue;
                  }
                  if(_loc2_ || param1)
                  {
                     addChild(§9"W§);
                  }
                  else
                  {
                     §§goto(addr156);
                  }
               }
               break;
            }
            loop1:
            while(true)
            {
               if(§9"W§.numChildren > 0)
               {
                  §9"W§.removeChildAt(0);
                  continue;
               }
               while(true)
               {
                  this.§9!Q§ = new Bitmap(param1,PixelSnapping.ALWAYS,true);
                  loop3:
                  while(true)
                  {
                     §9"W§.addChild(this.§9!Q§);
                     loop4:
                     while(true)
                     {
                        this.§9!Q§.x = -10;
                        loop5:
                        while(_loc2_)
                        {
                           if(!_loc3_)
                           {
                              this.§9!Q§.y = -10 - this.§<!,§;
                              do
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop4;
                                 }
                                 continue loop5;
                              }
                              while(!(_loc2_ || _loc2_));
                              
                              addr19:
                              return;
                           }
                           continue loop1;
                        }
                        continue loop3;
                     }
                  }
               }
            }
         }
         §§goto(addr156);
      }
   }
}
