package § " §
{
   import §!"=§.§8S§;
   import §!K§.Item;
   import §!K§.§]q§;
   import §#!H§.§=!F§;
   import §0p§.§3!D§;
   import §]!A§.;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.PixelSnapping;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class §3!"§ extends §3P§
   {
      
      private static const §2f§:§+!t§;
      
      private static const §[m§:§+!t§;
      
      private static const §'Q§:§+!t§;
      
      private static const §@!B§:Array;
      
      private static const §,!9§:Array;
      
      private static var §9l§:§@Y§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §2f§ = new §+!t§(15,40);
         }
         loop0:
         while(true)
         {
            §[m§ = new §+!t§(115,131);
            while(true)
            {
               §'Q§ = new §+!t§(132,145);
               while(_loc1_)
               {
                  continue loop0;
                  §@!B§ = [§2f§,§[m§,§'Q§];
                  do
                  {
                     §,!9§ = [§2f§,§'Q§];
                  }
                  while(!_loc1_);
                  
                  if(_loc1_ || §3!"§)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      private var §%">§:§+!t§;
      
      private var §;O§:§8S§;
      
      private var §&"B§:int;
      
      private var §'!q§:Timer;
      
      private var §@"3§:int = 30;
      
      private var §0! §:Number = 0;
      
      private var §+!1§:Number = 0;
      
      private var §?!g§:Number = 40.0;
      
      private var §@!A§:Array;
      
      private var §;!X§:Bitmap;
      
      public function §3!"§(param1:String, param2:String, param3:Boolean = false)
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:Item = null;
         var _loc6_:§]q§ = null;
         if(_loc10_)
         {
            this.§@!A§ = [];
         }
         var _loc4_:Array = §3!D§.§!!@§(param1);
         for each(_loc5_ in _loc4_)
         {
            if(_loc5_.§[C§ == "CategoryBirds")
            {
               _loc6_ = §=!F§.§;"§.characters.§4"3§(_loc5_.§;!Y§);
               if(_loc10_ || param3)
               {
                  this.§;O§ = new §8S§(_loc6_);
               }
            }
         }
         if(!(_loc9_ && param3))
         {
            super(param1,param2,param3);
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:BitmapData = null;
         if(!_loc4_)
         {
            §#6§.§ q§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            loop0:
            while(true)
            {
               addr33:
               addr55:
               while(this.§'!q§)
               {
                  if(!_loc4_)
                  {
                     this.§'!q§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§'t§);
                  }
                  continue loop0;
               }
               var _loc3_:* = this.§@!A§;
               for each(_loc1_ in _loc3_)
               {
                  if(!_loc4_)
                  {
                     if(_loc1_)
                     {
                        if(_loc5_)
                        {
                           _loc1_.dispose();
                        }
                     }
                  }
               }
               if(_loc5_)
               {
                  this.§@!A§ = [];
                  loop3:
                  while(true)
                  {
                     if(§62§)
                     {
                        continue;
                     }
                     loop6:
                     while(true)
                     {
                        while(true)
                        {
                           §62§ = null;
                           addr103:
                           if(_loc4_ && _loc3_)
                           {
                              continue;
                           }
                           this.§;!X§ = null;
                           addr113:
                           if(!(_loc5_ || this))
                           {
                              while(this.§;!X§)
                              {
                                 if(_loc5_)
                                 {
                                    §§goto(addr103);
                                 }
                                 §§goto(addr113);
                              }
                              addr93:
                              return;
                              addr154:
                           }
                           if(_loc5_ || _loc3_)
                           {
                              addr127:
                              if(!(_loc5_ || _loc3_))
                              {
                                 continue loop3;
                              }
                              §§goto(addr93);
                           }
                           else
                           {
                              loop9:
                              while(true)
                              {
                                 addr145:
                                 while(true)
                                 {
                                    if(§62§.numChildren <= 0)
                                    {
                                       continue loop6;
                                    }
                                    §62§.removeChildAt(0);
                                    continue loop9;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr154);
            }
            addr54:
         }
         while(true)
         {
            this.§'!q§.stop();
            if(_loc4_)
            {
               continue;
            }
            if(!_loc4_)
            {
               if(false)
               {
                  §§goto(addr33);
               }
               §§goto(addr55);
            }
            else
            {
               §§goto(addr54);
            }
         }
      }
      
      public function §;Z§(param1:§+!t§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§%">§ = param1;
         }
         do
         {
            this.§&"B§ = param1.start;
            do
            {
               §#6§.§ q§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            }
            while(_loc3_ && param1);
            
         }
         while(_loc3_ && this);
         
      }
      
      override protected function sendAvatarToRenderer() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §'"=§.render(§@!0§,this.renderAvatar,§#D§(),§&%§,null,null,this.§@"3§);
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(getTimer() - this.§0! §);
         if(!(_loc4_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && this))
         {
            §§push(this);
            §§push(this.§+!1§);
            if(!_loc4_)
            {
               §§push(§§pop() + _loc2_);
            }
            §§pop().§+!1§ = §§pop();
            loop0:
            while(true)
            {
               if(this.§+!1§ > this.§?!g§)
               {
                  loop1:
                  while(true)
                  {
                     this.§&"B§ += 1;
                     addr164:
                     while(true)
                     {
                        this.§+!1§ = 0;
                        continue loop1;
                     }
                  }
               }
               while(true)
               {
                  if(this.§@!A§[this.§&"B§] != null)
                  {
                     this.renderAvatar(BitmapData(this.§@!A§[this.§&"B§]));
                     loop5:
                     while(true)
                     {
                        if(!_loc4_)
                        {
                           if(_loc4_)
                           {
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    break loop5;
                                 }
                                 continue loop0;
                              }
                              continue loop0;
                              addr106:
                           }
                           if(_loc4_)
                           {
                              §§goto(addr144);
                           }
                        }
                        else
                        {
                           while(true)
                           {
                           }
                           addr129:
                        }
                        while(true)
                        {
                           if(this.§&"B§ >= this.§%">§.end)
                           {
                              if(_loc3_)
                              {
                                 §#6§.§ q§.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
                              }
                              while(true)
                              {
                              }
                              addr68:
                           }
                           while(true)
                           {
                              this.§0! § = getTimer();
                              if(!_loc4_)
                              {
                                 break;
                              }
                              §§goto(addr68);
                           }
                           if(_loc3_)
                           {
                              return;
                           }
                           continue loop5;
                        }
                     }
                     §§goto(addr164);
                  }
                  §§goto(addr106);
               }
            }
         }
         while(true)
         {
            §'"=§.render(§@!0§,this.renderAvatar,§#D§(),§&%§,this.§&"B§,this.§;O§,this.§@"3§);
            §§goto(addr129);
         }
      }
      
      public function §^!6§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.sendAvatarToRenderer();
            loop0:
            while(true)
            {
               if(this.§'!q§)
               {
                  loop1:
                  while(true)
                  {
                     this.§'!q§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§'t§);
                     addr109:
                     while(true)
                     {
                        this.§'!q§.stop();
                        addr95:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                        }
                        continue loop1;
                     }
                  }
                  addr102:
               }
               while(true)
               {
                  this.§'!q§ = new Timer(3000 + Math.random() * 1000,1);
                  while(_loc2_)
                  {
                     this.§'!q§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§'t§);
                     while(!_loc1_)
                     {
                        this.§'!q§.start();
                        if(!_loc2_)
                        {
                           continue;
                        }
                        if(_loc2_ || _loc2_)
                        {
                           if(!_loc1_)
                           {
                              return;
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr109);
                     }
                  }
                  §§goto(addr95);
               }
            }
         }
         §§goto(addr109);
      }
      
      private function §'t§(param1:TimerEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§@!S§();
         }
         do
         {
            this.§^!6§();
         }
         while(_loc2_);
         
      }
      
      public function §@!S§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Array = §@!B§;
         if(_loc4_ || _loc1_)
         {
            §§push(§@!0§.indexOf("M50003") == -1);
            if(_loc4_)
            {
               §§push(!§§pop());
               if(!(_loc3_ && _loc3_))
               {
                  §§push(§§pop());
                  if(_loc4_)
                  {
                     if(!§§pop())
                     {
                        if(_loc4_)
                        {
                           §§pop();
                           if(_loc4_)
                           {
                              §§push(§@!0§.indexOf("M50006") == -1);
                              if(!_loc3_)
                              {
                                 §§push(!§§pop());
                                 if(_loc4_ || _loc3_)
                                 {
                                 }
                              }
                              §§goto(addr101);
                           }
                           §§goto(addr102);
                        }
                        §§push(§§pop());
                     }
                     §§goto(addr101);
                  }
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        if(!_loc3_)
                        {
                           §§push(§@!0§.indexOf("C10005") == -1);
                           if(!_loc4_)
                           {
                           }
                           §§goto(addr101);
                        }
                        §§goto(addr102);
                     }
                     §§goto(addr101);
                  }
                  addr101:
                  §§goto(addr100);
               }
               addr100:
               if(!§§pop())
               {
                  addr102:
                  _loc1_ = §,!9§;
               }
               var _loc2_:int = Math.floor(Math.random() * _loc1_.length);
               if(!_loc3_)
               {
                  this.§;Z§(_loc1_[_loc2_]);
               }
               return;
            }
            §§goto(addr101);
         }
         §§goto(addr102);
      }
      
      override public function renderAvatar(param1:BitmapData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(§62§ == null)
            {
               if(_loc3_ || param1)
               {
                  §62§ = new Sprite();
               }
               while(true)
               {
               }
               addr176:
            }
            for(; §62§.parent != this; §§goto(addr176))
            {
               if(!_loc2_)
               {
                  if(!_loc2_)
                  {
                     addChild(§62§);
                     addr161:
                     break;
                  }
                  continue;
               }
               §§goto(addr161);
            }
            loop2:
            while(true)
            {
               if(§62§.numChildren > 0)
               {
                  §62§.removeChildAt(0);
                  continue;
               }
               loop3:
               while(true)
               {
                  this.§;!X§ = new Bitmap(param1,PixelSnapping.ALWAYS,true);
                  loop4:
                  while(true)
                  {
                     §62§.addChild(this.§;!X§);
                     loop5:
                     do
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           if(!_loc2_)
                           {
                              this.§;!X§.x = -10;
                              loop6:
                              while(_loc3_ || param1)
                              {
                                 this.§;!X§.y = -10 - this.§@"3§;
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       §§push(this.§@!A§);
                                       if(_loc2_ && param1)
                                       {
                                          addr59:
                                          break;
                                       }
                                       §§push(this.§&"B§);
                                       if(!(_loc2_ && this))
                                       {
                                          if(§§pop()[§§pop()] != null)
                                          {
                                             return;
                                          }
                                          addr25:
                                          if(!_loc2_)
                                          {
                                             if(!_loc2_)
                                             {
                                                §§push(this.§@!A§);
                                                break;
                                             }
                                             continue;
                                          }
                                          continue loop5;
                                       }
                                       §§pop()[§§pop()] = param1;
                                       continue loop5;
                                    }
                                    continue loop6;
                                 }
                                 §§goto(addr59);
                                 §§push(this.§&"B§);
                              }
                              continue loop4;
                           }
                           continue loop2;
                        }
                        continue loop3;
                     }
                     while(_loc2_ && this);
                     
                     §§goto(addr25);
                  }
               }
            }
         }
         §§goto(addr161);
      }
   }
}
