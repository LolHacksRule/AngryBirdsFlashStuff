package
{
   import §05§.§?s§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §!]§ extends MovieClip
   {
      
      private static const §&!U§:int = 130;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §&!U§ = 130;
         }
      }
      
      private var §-"7§:LoadingScreen;
      
      private var §3!<§:MovieClip;
      
      private var §,!o§:MovieClip;
      
      public function §!]§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§-"7§ = new LoadingScreen();
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  §?s§.registerMethod("resize",this.§ !f§);
                  while(true)
                  {
                     addChild(this.§-"7§);
                     loop3:
                     while(true)
                     {
                        this.§3!<§ = new LoadingScreenBar().getChildAt(0) as MovieClip;
                        addr140:
                        while(_loc1_)
                        {
                           this.§3!<§.gotoAndStop(1);
                           while(true)
                           {
                              addChild(this.§3!<§);
                              addr43:
                              if(_loc1_ || this)
                              {
                                 continue loop3;
                              }
                           }
                           if(_loc1_ || _loc1_)
                           {
                              continue loop1;
                           }
                        }
                        continue loop0;
                     }
                     addr75:
                     while(!(_loc2_ && _loc1_))
                     {
                        addEventListener(Event.REMOVED_FROM_STAGE,this.§8!_§);
                        §§goto(addr65);
                        §§goto(addr36);
                     }
                  }
               }
            }
         }
         §§goto(addr124);
      }
      
      protected function §8!_§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(stage)
            {
               while(true)
               {
                  stage.color = 0;
                  addr75:
                  while(true)
                  {
                  }
                  addr52:
                  if(!(_loc2_ || _loc3_))
                  {
                     continue;
                  }
                  removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
                  addr69:
                  if(!_loc2_)
                  {
                     while(!_loc3_)
                     {
                        §§goto(addr52);
                        §§goto(addr69);
                     }
                     §§goto(addr75);
                     addr50:
                  }
                  return;
                  addr42:
               }
            }
            while(true)
            {
               removeEventListener(Event.ENTER_FRAME,this.onResize);
               §§goto(addr50);
               §§goto(addr75);
            }
         }
         §§goto(addr42);
      }
      
      protected function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            addEventListener(Event.ENTER_FRAME,this.onResize);
         }
         while(stage)
         {
            if(!_loc3_)
            {
               break;
            }
            addr59:
            if(!(_loc3_ || _loc3_))
            {
               continue;
            }
            stage.color = 16777215;
            §§goto(addr59);
         }
      }
      
      public function § !f§(param1:Object = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.onResize(null);
         }
      }
      
      protected function onResize(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = NaN;
         if(!(_loc3_ && this))
         {
            if(stage)
            {
               loop0:
               while(true)
               {
                  §§push(this.§-"7§);
                  loop1:
                  while(true)
                  {
                     §§push(stage.stageHeight / 2);
                     if(_loc4_)
                     {
                        §§push(this.§-"7§);
                        while(true)
                        {
                           §§push(§§pop().height / 2);
                           addr197:
                           while(true)
                           {
                              §§push(§§pop() - §§pop());
                           }
                           addr134:
                           §§push(this.§-"7§);
                           if(_loc3_ && _loc3_)
                           {
                              continue;
                           }
                           §§push(§§pop().width / 2);
                           if(!(_loc3_ && _loc3_))
                           {
                              addr154:
                              §§pop().x = §§pop() - §§pop();
                              loop8:
                              while(true)
                              {
                                 this.§3!<§.x = stage.stageWidth / 2 - this.§3!<§.width / 2 + 2;
                                 loop9:
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       if(!_loc4_)
                                       {
                                          break;
                                       }
                                       §§push(Number(stage.stageHeight));
                                       loop10:
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          loop11:
                                          while(!_loc3_)
                                          {
                                             §§push(this.§-"7§);
                                             if(_loc4_ || this)
                                             {
                                                if(§§pop().height > stage.stageHeight)
                                                {
                                                   loop12:
                                                   while(_loc4_)
                                                   {
                                                      §§push(this.§-"7§);
                                                      loop14:
                                                      while(true)
                                                      {
                                                         if(_loc4_ || this)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(Number(§§pop().height + §&!U§));
                                                            if(_loc3_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            _loc2_ = §§pop();
                                                            loop15:
                                                            while(true)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.x = 0;
                                                                     if(_loc3_ && this)
                                                                     {
                                                                        continue loop15;
                                                                     }
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr27:
                                                                        return;
                                                                        addr46:
                                                                     }
                                                                     addr171:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§-"7§);
                                                                     }
                                                                     continue loop15;
                                                                  }
                                                                  addr31:
                                                               }
                                                               continue loop11;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(stage.stageWidth / 2);
                                                            if(!_loc3_)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  §§goto(addr134);
                                                               }
                                                               while(true)
                                                               {
                                                                  §§pop().y = §§pop();
                                                                  addr199:
                                                                  while(true)
                                                                  {
                                                                     this.§3!<§.y = this.§-"7§.y + this.§-"7§.height / 2 + 150;
                                                                     §§goto(addr171);
                                                                  }
                                                               }
                                                               addr198:
                                                            }
                                                            §§goto(addr154);
                                                            continue loop14;
                                                         }
                                                         §§goto(addr197);
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop8;
                                                }
                                                §§goto(addr31);
                                             }
                                             §§goto(addr65);
                                          }
                                          continue loop9;
                                       }
                                    }
                                    §§goto(addr199);
                                 }
                                 continue loop0;
                              }
                           }
                           §§goto(addr197);
                        }
                     }
                     §§goto(addr198);
                  }
               }
            }
            §§goto(addr27);
         }
         §§goto(addr46);
      }
   }
}
