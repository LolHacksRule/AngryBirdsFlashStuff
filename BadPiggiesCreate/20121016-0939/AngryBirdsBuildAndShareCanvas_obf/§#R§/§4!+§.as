package §#R§
{
   import §%"$§.§[!0§;
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §8" §.Quest;
   import §@"5§.§1k§;
   import com.rovio.assets.§>!]§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class §4!+§ extends Sprite
   {
      
      private static const §=!N§:int = 5000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §=!N§ = 5000;
         }
      }
      
      private var §'r§:Quest;
      
      private var §^%§:MovieClip;
      
      private var §!!-§:MovieClip;
      
      private var §!!N§:TextField;
      
      private var §]!=§:§3^§;
      
      private var §-U§:Timer;
      
      public function §4!+§(param1:Quest)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super();
            loop0:
            while(true)
            {
               this.§'r§ = param1;
               loop1:
               while(true)
               {
                  addr36:
                  while(true)
                  {
                     §§push(this.§'r§);
                     loop3:
                     while(true)
                     {
                        §§push(§1k§.§1g§);
                        loop4:
                        while(true)
                        {
                           §§pop().addEventListener(§§pop(),this.onStateChange);
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 if(!_loc4_)
                                 {
                                    §§push(this.§'r§);
                                    if(!_loc4_)
                                    {
                                       §§push(§1k§.§3!u§);
                                       if(_loc5_)
                                       {
                                          §§pop().addEventListener(§§pop(),this.onStateChange);
                                          if(_loc5_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop4;
                                    }
                                    continue loop3;
                                 }
                                 continue loop0;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr36);
         }
         var _loc2_:Class = §>!]§.§1!8§("hint_bubble");
         if(_loc5_)
         {
            this.§^%§ = new _loc2_();
            while(true)
            {
               this.§^%§.scaleX = 0;
               loop8:
               while(true)
               {
                  addr74:
                  while(true)
                  {
                     this.§^%§.scaleY = 0;
                     continue loop8;
                  }
               }
               if(_loc4_ && _loc2_)
               {
                  continue;
               }
               while(true)
               {
                  addChild(this.§^%§);
                  if(!_loc4_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr79);
               }
               var _loc3_:Class = §>!]§.§1!8§("HelperPig");
               if(!(_loc4_ && _loc2_))
               {
                  this.§!!-§ = new _loc3_();
                  loop12:
                  while(true)
                  {
                     this.§!!-§.buttonMode = true;
                     while(true)
                     {
                        this.§!!-§.addEventListener(MouseEvent.CLICK,this.§]!Y§);
                        loop14:
                        for(; _loc5_ || _loc2_; loop16:
                        while(!(_loc4_ && param1))
                        {
                           while(true)
                           {
                              this.§!!N§.autoSize = "center";
                              do
                              {
                                 addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
                              }
                              while(_loc4_);
                              
                              if(_loc4_ && _loc3_)
                              {
                                 continue loop16;
                              }
                              if(!_loc4_)
                              {
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 continue loop12;
                              }
                              §§goto(addr181);
                           }
                           return;
                        })
                        {
                           addChild(this.§!!-§);
                           while(true)
                           {
                              this.§!!N§ = this.§^%§.getChildByName("text") as TextField;
                              continue loop14;
                           }
                        }
                     }
                  }
               }
               §§goto(addr175);
               addr93:
            }
         }
         §§goto(addr93);
      }
      
      private function §]!Y§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(Boolean(this.§-U§));
            if(!(_loc2_ && param1))
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr83:
                     while(true)
                     {
                        §§push(Boolean(this.§-U§.running));
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr82:
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        this.§0-§(false);
                        break;
                     }
                     break;
                  }
                  this.§0-§(true);
                  if(!_loc3_)
                  {
                     break;
                  }
                  if(_loc3_)
                  {
                     §§goto(addr20);
                  }
                  §§goto(addr83);
               }
               addr20:
               return;
               addr59:
            }
            §§goto(addr82);
         }
         §§goto(addr59);
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         do
         {
            addEventListener(Event.REMOVED_FROM_STAGE,this.§?!N§);
            do
            {
               this.onEnterFrame();
            }
            while(_loc3_);
            
         }
         while(_loc3_);
         
      }
      
      private function §?!N§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         do
         {
            removeEventListener(Event.REMOVED_FROM_STAGE,this.§?!N§);
         }
         while(!(_loc2_ || this));
         
      }
      
      private function onEnterFrame(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§!!-§.x = stage.stageWidth - this.§!!-§.width;
            while(true)
            {
               this.§!!-§.y = 40;
               while(true)
               {
                  this.§^%§.x = this.§!!-§.x + this.§!!-§.width / 2;
                  §§goto(addr77);
               }
            }
         }
         addr77:
         while(true)
         {
            this.§^%§.y = this.§!!-§.y + this.§!!-§.height / 2;
            if(!_loc2_)
            {
               if(_loc3_ || _loc3_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr63:
      }
      
      private function onStateChange(param1:§1k§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§[!0§ = this.§'r§.§#D§();
         var _loc3_:Boolean = false;
         var _loc4_:* = "";
         if(_loc6_)
         {
            if(!_loc2_)
            {
               §§push(this.§'r§);
               loop0:
               while(true)
               {
                  §§push(§§pop().§-!$§);
                  loop1:
                  while(true)
                  {
                     §§push(Quest.§-!z§);
                     while(true)
                     {
                        if(§§pop() != §§pop())
                        {
                           §§push(this.§'r§);
                           if(!_loc6_)
                           {
                              break;
                           }
                           §§push(§§pop().§-!$§);
                           loop3:
                           while(true)
                           {
                              §§push(Quest.§9!h§);
                              if(_loc5_)
                              {
                                 break;
                              }
                              if(§§pop() == §§pop())
                              {
                                 while(true)
                                 {
                                    _loc4_ = "Play";
                                 }
                                 addr151:
                              }
                              loop5:
                              while(true)
                              {
                                 §§push(_loc4_);
                                 loop6:
                                 while(_loc6_)
                                 {
                                    if(_loc6_)
                                    {
                                       §§push(§§pop() == this.§!!N§.text);
                                       loop7:
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                          loop8:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop9:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr135:
                                                   loop10:
                                                   while(true)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         §§push(_loc4_);
                                                         if(_loc5_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         if(!_loc6_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         if(!(_loc6_ || param1))
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop() == "");
                                                         if(!_loc5_)
                                                         {
                                                            continue loop7;
                                                         }
                                                         addr79:
                                                         if(!(_loc6_ || _loc3_))
                                                         {
                                                            continue loop9;
                                                         }
                                                         if(!_loc6_)
                                                         {
                                                            continue loop8;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc2_.description);
                                                            break loop10;
                                                         }
                                                         addr178:
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      addr181:
                                                      while(true)
                                                      {
                                                         _loc4_ = §§pop();
                                                         addr182:
                                                         while(true)
                                                         {
                                                            continue loop5;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             while(§§pop())
                                             {
                                                while(true)
                                                {
                                                   if(!(_loc5_ && _loc3_))
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         this.§!!N§.text = _loc4_;
                                                         while(true)
                                                         {
                                                            if(!(_loc5_ && _loc2_))
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr135);
                                                   }
                                                   §§goto(addr182);
                                                }
                                                §§goto(addr151);
                                             }
                                             return;
                                          }
                                       }
                                    }
                                    §§goto(addr181);
                                 }
                                 continue loop3;
                              }
                           }
                           continue;
                        }
                        §§goto(addr163);
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr178);
         }
         §§goto(addr109);
      }
      
      private function §0-§(param1:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(this.§]!=§);
            if(!(_loc6_ && param1))
            {
               if(§§pop())
               {
                  addr33:
                  if(_loc5_)
                  {
                     §§push(this.§]!=§);
                  }
                  var _loc2_:Object = {
                     "scaleX":this.§^%§.scaleX,
                     "scaleY":this.§^%§.scaleY
                  };
                  if(!_loc6_)
                  {
                     if(param1)
                     {
                        addr48:
                        §§push(Number(1));
                        if(!_loc6_)
                        {
                           addr59:
                           §§push(Number(§§pop()));
                        }
                        else
                        {
                           addr56:
                           §§push(Number(§§pop()));
                           if(_loc5_)
                           {
                              §§goto(addr59);
                           }
                        }
                        var _loc3_:* = §§pop();
                        var _loc4_:Object = {
                           "scaleX":_loc3_,
                           "scaleY":_loc3_
                        };
                        if(_loc5_ || param1)
                        {
                           this.§]!=§ = §7!E§.§2=§.§<!C§(this.§^%§,_loc4_,_loc2_,0.4,§7!E§.§#r§);
                           while(true)
                           {
                              this.§]!=§.play();
                              loop4:
                              while(_loc5_ || _loc2_)
                              {
                                 §§push(Boolean(this.§-U§.running));
                                 loop5:
                                 while(true)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             this.§-U§.stop();
                                             addr167:
                                             while(!_loc6_)
                                             {
                                             }
                                             continue loop4;
                                          }
                                          addr164:
                                       }
                                       loop9:
                                       while(true)
                                       {
                                          §§push(param1);
                                          if(!_loc5_)
                                          {
                                             continue loop6;
                                          }
                                          if(_loc5_ || _loc2_)
                                          {
                                             addr126:
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc5_ || this)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         addr143:
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            this.§-U§ = new Timer(§=!N§,1);
                                                            while(true)
                                                            {
                                                               this.§-U§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§7x§);
                                                               while(!(_loc6_ && param1))
                                                               {
                                                                  this.§-U§.start();
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!_loc6_)
                                                                  {
                                                                     break loop9;
                                                                  }
                                                                  §§goto(addr167);
                                                               }
                                                            }
                                                            addr156:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(Boolean(this.§-U§));
                                                               addr174:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     continue loop5;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     continue loop4;
                                                                  }
                                                                  §§goto(addr126);
                                                               }
                                                               §§goto(addr143);
                                                            }
                                                            addr189:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr164);
                                                      }
                                                      §§goto(addr167);
                                                   }
                                                   §§goto(addr156);
                                                }
                                                break;
                                             }
                                             §§goto(addr174);
                                          }
                                          §§goto(addr176);
                                       }
                                       return;
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr189);
                     }
                     else
                     {
                        §§push(0);
                        if(_loc5_)
                        {
                           §§goto(addr56);
                        }
                     }
                     §§goto(addr59);
                  }
                  §§goto(addr48);
               }
               §§goto(addr33);
            }
            §§pop().stop();
         }
         §§goto(addr33);
      }
      
      private function §7x§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§0-§(false);
         }
      }
   }
}
