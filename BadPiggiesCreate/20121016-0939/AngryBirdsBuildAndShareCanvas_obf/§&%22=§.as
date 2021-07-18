package
{
   import §%_§.§4m§;
   import com.rovio.assets.LoadingScreen;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §&"=§ extends MovieClip
   {
      
      private static const §7!u§:int = 130;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §7!u§ = 130;
         }
      }
      
      private var §]"6§:LoadingScreen;
      
      private var §'§:MovieClip;
      
      public function §&"=§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§]"6§ = new LoadingScreen();
            loop0:
            while(true)
            {
               super();
               addr144:
               while(true)
               {
                  §4m§.registerMethod("resize",this.§5!y§);
                  addr140:
                  while(true)
                  {
                     addChild(this.§]"6§);
                     addr77:
                     if(!(_loc1_ && _loc1_))
                     {
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr123);
      }
      
      public function §5!y§(param1:Object = null) : void
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
         if(_loc4_ || _loc2_)
         {
            if(stage)
            {
               loop0:
               while(true)
               {
                  §§push(this.§]"6§);
                  loop1:
                  while(true)
                  {
                     §§push(stage.stageHeight / 2);
                     loop2:
                     while(true)
                     {
                        §§push(this.§]"6§);
                        loop3:
                        while(true)
                        {
                           §§push(§§pop().height / 2);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop() - §§pop());
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop() + §7!u§);
                                 loop6:
                                 while(true)
                                 {
                                    §§pop().y = §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       this.§'§.y = this.§]"6§.y + this.§]"6§.height / 2 + 150;
                                       loop8:
                                       while(true)
                                       {
                                          §§push(this.§]"6§);
                                          loop9:
                                          for(; !_loc3_; while(_loc4_ || param1)
                                          {
                                             §§goto(addr105);
                                          })
                                          {
                                             §§push(stage.stageWidth / 2);
                                             if(!_loc3_)
                                             {
                                                if(!_loc4_)
                                                {
                                                   continue loop6;
                                                }
                                                if(_loc3_)
                                                {
                                                   continue loop2;
                                                }
                                                §§push(this.§]"6§);
                                                if(!_loc4_)
                                                {
                                                   continue loop3;
                                                }
                                                §§push(§§pop().width / 2);
                                                if(_loc3_ && _loc3_)
                                                {
                                                   continue loop4;
                                                }
                                                §§push(§§pop() - §§pop());
                                             }
                                             if(_loc3_ && _loc2_)
                                             {
                                                continue loop5;
                                             }
                                             §§pop().x = §§pop();
                                             loop10:
                                             while(true)
                                             {
                                                this.§'§.x = stage.stageWidth / 2 - this.§'§.width / 2 + 2;
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(Number(stage.stageHeight));
                                                   while(true)
                                                   {
                                                      _loc2_ = §§pop();
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(this.§]"6§);
                                                         if(!_loc3_)
                                                         {
                                                            if(§§pop().height > stage.stageHeight)
                                                            {
                                                               continue loop10;
                                                            }
                                                            loop15:
                                                            while(true)
                                                            {
                                                               graphics.beginFill(16777215);
                                                               while(_loc4_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     graphics.drawRect(0,0,stage.stageWidth,_loc2_);
                                                                     while(_loc4_)
                                                                     {
                                                                        graphics.endFill();
                                                                        if(_loc4_ || _loc2_)
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              addr43:
                                                                              if(_loc4_ || this)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 continue loop8;
                                                                              }
                                                                              continue loop10;
                                                                           }
                                                                           continue loop15;
                                                                        }
                                                                     }
                                                                     continue;
                                                                  }
                                                                  continue loop11;
                                                               }
                                                               continue loop13;
                                                            }
                                                            continue loop7;
                                                         }
                                                         continue loop9;
                                                      }
                                                      addr105:
                                                      §§push(Number(§§pop().height + §7!u§));
                                                      if(_loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      _loc2_ = §§pop();
                                                      §§goto(addr122);
                                                   }
                                                }
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr96);
      }
   }
}
