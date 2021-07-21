package §+V§
{
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §4m§.§9g§;
   import §;" §.Quest;
   import §`!,§.§[!&§;
   import com.rovio.assets.§69§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class §-!g§ extends Sprite
   {
      
      private static const §8O§:int = 5000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §8O§ = 5000;
         }
      }
      
      private var §[o§:Quest;
      
      private var §0p§:MovieClip;
      
      private var §0!m§:MovieClip;
      
      private var §-"1§:TextField;
      
      private var §]!k§:§=!r§;
      
      private var §>!M§:Timer;
      
      public function §-!g§(param1:Quest)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.§[o§ = param1;
               while(_loc4_)
               {
                  while(true)
                  {
                     §§push(this.§[o§);
                     addr50:
                     while(true)
                     {
                        §§push(§[!&§.§#+§);
                        addr52:
                        while(true)
                        {
                           §§pop().addEventListener(§§pop(),this.onStateChange);
                        }
                     }
                  }
                  if(!(_loc4_ || this))
                  {
                     continue;
                  }
                  if(false)
                  {
                     §§goto(addr47);
                  }
                  var _loc2_:Class = §69§.§ 0§("hint_bubble");
                  if(!(_loc5_ && param1))
                  {
                     this.§0p§ = new _loc2_();
                     while(true)
                     {
                        this.§0p§.scaleX = 0;
                        addr100:
                        if(_loc5_ && this)
                        {
                           continue;
                        }
                        addChild(this.§0p§);
                        if(_loc4_ || this)
                        {
                           if(false)
                           {
                              loop8:
                              while(true)
                              {
                                 this.§0p§.scaleY = 0;
                                 addr98:
                                 addr123:
                                 while(_loc4_)
                                 {
                                    §§goto(addr100);
                                 }
                                 while(true)
                                 {
                                    continue loop8;
                                 }
                              }
                           }
                           var _loc3_:Class = §69§.§ 0§("HelperPig");
                           if(!(_loc5_ && _loc2_))
                           {
                              this.§0!m§ = new _loc3_();
                              loop10:
                              while(true)
                              {
                                 this.§0!m§.buttonMode = true;
                                 while(true)
                                 {
                                    this.§0!m§.addEventListener(MouseEvent.CLICK,this.§["8§);
                                    continue loop10;
                                    loop14:
                                    while(!(_loc5_ && this))
                                    {
                                       loop15:
                                       while(true)
                                       {
                                          this.§-"1§.autoSize = "center";
                                          addr163:
                                          addr193:
                                          while(!(_loc5_ && param1))
                                          {
                                             addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
                                             if(!_loc5_)
                                             {
                                                if(_loc4_)
                                                {
                                                   break loop15;
                                                }
                                                continue loop14;
                                             }
                                          }
                                          while(!(_loc5_ && _loc2_))
                                          {
                                             this.§-"1§ = this.§0p§.getChildByName("text") as TextField;
                                             continue loop14;
                                             §§goto(addr163);
                                          }
                                          continue loop10;
                                       }
                                       return;
                                    }
                                 }
                              }
                           }
                           §§goto(addr187);
                        }
                        §§goto(addr98);
                     }
                  }
                  §§goto(addr123);
               }
            }
         }
         while(true)
         {
            §§push(this.§[o§);
            if(_loc4_)
            {
               §§push(§[!&§.§^[§);
               if(!(_loc5_ && _loc2_))
               {
                  §§pop().addEventListener(§§pop(),this.onStateChange);
                  if(!_loc4_)
                  {
                     continue;
                  }
                  §§goto(addr38);
               }
               §§goto(addr52);
            }
            §§goto(addr50);
         }
         §§goto(addr66);
      }
      
      private function §["8§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(Boolean(this.§>!M§));
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr92:
                     while(true)
                     {
                        §§push(Boolean(this.§>!M§.running));
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr91:
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     this.§=!y§(true);
                     if(_loc2_)
                     {
                        if(_loc2_ || param1)
                        {
                           §§goto(addr24);
                        }
                        addr63:
                        this.§=!y§(false);
                     }
                     if(!(_loc3_ && this))
                     {
                        break;
                     }
                     continue;
                  }
                  §§goto(addr63);
               }
               addr24:
               return;
               addr73:
            }
            §§goto(addr91);
         }
         §§goto(addr73);
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         while(true)
         {
            addEventListener(Event.REMOVED_FROM_STAGE,this.§8!_§);
            while(!_loc2_)
            {
               this.onEnterFrame();
               if(_loc3_ || param1)
               {
                  return;
               }
            }
         }
      }
      
      private function §8!_§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         do
         {
            removeEventListener(Event.REMOVED_FROM_STAGE,this.§8!_§);
         }
         while(_loc3_ && this);
         
      }
      
      private function onEnterFrame(param1:Event = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§0!m§.x = stage.stageWidth - this.§0!m§.width;
            while(true)
            {
               this.§0!m§.y = 40;
               while(true)
               {
                  this.§0p§.x = this.§0!m§.x + this.§0!m§.width / 2;
                  §§goto(addr82);
               }
            }
         }
         addr82:
         while(true)
         {
            this.§0p§.y = this.§0!m§.y + this.§0!m§.height / 2;
            if(_loc3_ || this)
            {
               if(!(_loc2_ && param1))
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      private function onStateChange(param1:§[!&§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§9g§ = this.§[o§.§-!t§();
         var _loc3_:Boolean = false;
         var _loc4_:* = "";
         if(_loc6_ || _loc3_)
         {
            if(!_loc2_)
            {
               §§push(this.§[o§);
               loop0:
               while(true)
               {
                  §§push(§§pop().§;!1§);
                  loop1:
                  while(true)
                  {
                     if(!_loc5_)
                     {
                        §§push(Quest.§""0§);
                        while(true)
                        {
                           if(§§pop() != §§pop())
                           {
                              §§push(this.§[o§);
                              if(!_loc6_)
                              {
                                 break;
                              }
                              §§push(§§pop().§;!1§);
                              loop3:
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    §§push(Quest.§0"?§);
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
                                       addr149:
                                    }
                                    loop5:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       loop6:
                                       while(true)
                                       {
                                          §§push(§§pop() == this.§-"1§.text);
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
                                                      loop10:
                                                      while(true)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            if(_loc6_ || _loc2_)
                                                            {
                                                               if(!(_loc5_ && param1))
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(!(_loc5_ && this))
                                                                        {
                                                                           §§push(§§pop() == "");
                                                                           if(_loc6_)
                                                                           {
                                                                              if(_loc5_ && _loc2_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              §§push(!§§pop());
                                                                           }
                                                                           if(_loc6_)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 loop11:
                                                                                 while(§§pop())
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       this.§-"1§.text = _loc4_;
                                                                                    }
                                                                                    loop12:
                                                                                    while(_loc6_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          this.§=!y§(true);
                                                                                          if(_loc5_ && param1)
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                          if(_loc6_ || _loc3_)
                                                                                          {
                                                                                             break loop11;
                                                                                          }
                                                                                          addr163:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc4_ = "Check stability";
                                                                                             continue loop5;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                                 return;
                                                                                 addr96:
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                                  continue loop6;
                                                               }
                                                               addr178:
                                                               while(true)
                                                               {
                                                                  §§push(_loc2_.description);
                                                                  addr180:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     addr181:
                                                                     while(true)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        break loop10;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr149);
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop5;
                                                      }
                                                   }
                                                }
                                                §§goto(addr96);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr180);
                              }
                              continue;
                           }
                           §§goto(addr163);
                        }
                        continue loop0;
                     }
                     §§goto(addr181);
                  }
               }
            }
            §§goto(addr178);
         }
         §§goto(addr106);
      }
      
      private function §=!y§(param1:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(this.§]!k§);
            if(_loc6_)
            {
               if(§§pop())
               {
                  addr34:
                  if(!(_loc5_ && this))
                  {
                     §§push(this.§]!k§);
                  }
                  var _loc2_:Object = {
                     "scaleX":this.§0p§.scaleX,
                     "scaleY":this.§0p§.scaleY
                  };
                  if(_loc6_)
                  {
                     if(param1)
                     {
                        addr61:
                        §§push(Number(1));
                        if(!_loc5_)
                        {
                           addr60:
                           §§push(Number(§§pop()));
                        }
                        var _loc3_:* = §§pop();
                        var _loc4_:Object = {
                           "scaleX":_loc3_,
                           "scaleY":_loc3_
                        };
                        if(_loc6_)
                        {
                           this.§]!k§ = §7I§.§[E§.§ ";§(this.§0p§,_loc4_,_loc2_,0.4,§7I§.§%"'§);
                           loop0:
                           while(true)
                           {
                              this.§]!k§.play();
                              loop1:
                              while(true)
                              {
                                 §§push(Boolean(this.§>!M§));
                                 loop2:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(_loc6_)
                                             {
                                                this.§>!M§.stop();
                                                while(_loc6_)
                                                {
                                                   while(true)
                                                   {
                                                   }
                                                }
                                                continue loop1;
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   §§goto(addr72);
                                                }
                                             }
                                             continue loop0;
                                          }
                                          loop9:
                                          while(true)
                                          {
                                             §§push(param1);
                                             if(_loc5_)
                                             {
                                                break;
                                             }
                                             if(_loc6_)
                                             {
                                                if(§§pop())
                                                {
                                                   loop10:
                                                   do
                                                   {
                                                      this.§>!M§ = new Timer(§8O§,1);
                                                      while(!_loc5_)
                                                      {
                                                         this.§>!M§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§<"§);
                                                         while(!(_loc5_ && _loc3_))
                                                         {
                                                            this.§>!M§.start();
                                                            if(!_loc5_)
                                                            {
                                                               continue loop10;
                                                            }
                                                         }
                                                      }
                                                      addr170:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(this.§>!M§.running));
                                                         break loop9;
                                                      }
                                                   }
                                                   while(!(_loc6_ || _loc2_));
                                                   
                                                   if(_loc6_)
                                                   {
                                                      §§goto(addr101);
                                                   }
                                                   §§goto(addr160);
                                                }
                                                addr72:
                                                return;
                                             }
                                             while(true)
                                             {
                                                §§pop();
                                             }
                                             addr169:
                                             §§goto(addr170);
                                          }
                                          continue loop2;
                                       }
                                       addr153:
                                    }
                                    §§goto(addr169);
                                 }
                              }
                           }
                        }
                        §§goto(addr162);
                     }
                     else
                     {
                        §§push(0);
                        if(!_loc5_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc5_)
                           {
                              §§goto(addr60);
                           }
                           §§goto(addr61);
                        }
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr61);
               }
               §§goto(addr34);
            }
            §§pop().stop();
         }
         §§goto(addr34);
      }
      
      private function §<"§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§=!y§(false);
         }
      }
   }
}
