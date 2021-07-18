package §]4§
{
   import §&N§.§[-§;
   import §'V§.§>!8§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class § !G§ extends §-§
   {
      
      public static const §?B§:String = "load";
      
      public static var §;P§:uint = 4000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §?B§ = "load";
            do
            {
               §;P§ = 4000;
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      private var §8!D§:Boolean = false;
      
      private var §?!D§:uint;
      
      private var §]2§:Boolean = false;
      
      public var §;q§:XML;
      
      public var §>!'§:XML;
      
      public var §=Z§:DisplayObjectContainer;
      
      private var §@3§:String;
      
      private var §!!1§:String;
      
      public function § !G§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param2))
         {
            this.§@3§ = param4;
            while(true)
            {
               this.§!!1§ = param5;
               loop1:
               for(; !_loc7_; if(!(_loc6_ || param2))
               {
                  continue;
               })
               {
                  super(param1,param2);
                  while(true)
                  {
                     §%3§ = true;
                     loop3:
                     while(_loc6_)
                     {
                        continue loop1;
                        while(true)
                        {
                           §;P§ = param3;
                           if(_loc6_ || param1)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.init();
            loop0:
            while(true)
            {
               §[-§.init(§8!1§("connectionProfileId"));
               while(true)
               {
                  §§push(§>!8§.§[8§);
                  if(!(_loc2_ && _loc1_))
                  {
                     if(!§§pop().§73§())
                     {
                        if(_loc2_)
                        {
                           loop2:
                           while(true)
                           {
                              addr28:
                              while(true)
                              {
                                 §?y§(true);
                                 if(!(_loc2_ && this))
                                 {
                                    break loop2;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        if(!_loc1_)
                        {
                           continue;
                        }
                        if(_loc1_)
                        {
                           addr78:
                           §§push(§>!8§.§[8§);
                           break;
                        }
                        continue loop0;
                        return;
                        addr88:
                     }
                     §§goto(addr28);
                  }
                  break;
               }
               §§pop().init(§[-§.§]B§(),this.§@3§,this.§!!1§,null);
               §§goto(addr88);
            }
         }
         §§goto(addr78);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§=Z§ = param1;
         }
      }
      
      public function §=T§(param1:XML) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§;q§ = param1;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.activate();
         }
         loop0:
         do
         {
            §1-§.addChild(this.§=Z§);
            while(true)
            {
               this.setLoadingPercentage(0);
               while(_loc1_ || _loc1_)
               {
                  this.§?!D§ = getTimer();
                  if(!_loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(_loc2_);
         
      }
      
      private function §;y§() : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(_loc5_)
         {
            if(§>!8§.§[8§.§9R§())
            {
               addr28:
               var _loc3_:int = 0;
               var _loc4_:* = this.§;q§.Library;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!(_loc6_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(!(_loc6_ && _loc3_))
                        {
                           if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
                           {
                              if(!_loc6_)
                              {
                                 §>!8§.§[8§.§34§(_loc1_);
                              }
                           }
                        }
                        continue;
                     }
                     if(!_loc6_)
                     {
                        if(!_loc6_)
                        {
                           if(_loc5_)
                           {
                              _loc3_ = 0;
                              if(!(_loc6_ && _loc2_))
                              {
                                 addr97:
                                 _loc4_ = this.§;q§.packages.pack;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc4_,_loc3_));
                                    break loop0;
                                 }
                                 addr116:
                              }
                              if(!(_loc6_ && _loc3_))
                              {
                                 §>!8§.§[8§.§&q§(this.§<]§);
                              }
                           }
                           §§goto(addr152);
                        }
                     }
                     §§goto(addr97);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc3_,_loc4_);
                     if(!_loc6_)
                     {
                        §>!8§.§[8§.§34§(_loc2_);
                     }
                     continue;
                  }
                  §§goto(addr97);
               }
            }
            else
            {
               §§push(false);
               if(!(_loc6_ && _loc2_))
               {
                  return §§pop();
               }
            }
            addr152:
            return true;
         }
         §§goto(addr28);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(super.run(param1));
         if(_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc7_ && _loc3_))
         {
            §§push(_loc2_);
            if(_loc6_ || _loc2_)
            {
               if(§§pop() == §-§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§]2§);
                     loop1:
                     while(true)
                     {
                        §§push(!§§pop());
                        loop2:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 §§pop();
                                 addr85:
                                 while(true)
                                 {
                                    §§push(this.§;y§());
                                    if(_loc6_)
                                    {
                                       if(_loc7_ && this)
                                       {
                                          break;
                                       }
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(_loc7_ && _loc3_)
                                    {
                                       continue loop3;
                                    }
                                    if(!_loc6_)
                                    {
                                       continue loop2;
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                           while(§§pop())
                           {
                              if(!(_loc7_ && param1))
                              {
                                 this.§]2§ = true;
                              }
                              if(_loc6_)
                              {
                                 if(!(_loc7_ && param1))
                                 {
                                    if(!_loc6_)
                                    {
                                       return _loc2_;
                                    }
                                    addr107:
                                    if(true)
                                    {
                                       break;
                                    }
                                 }
                                 continue loop0;
                              }
                              §§goto(addr85);
                           }
                           §§push(Math.min(1,§>!8§.§[8§.§^1§()) * 9);
                           if(_loc6_)
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc3_:* = §§pop();
                           var _loc4_:Number = Math.min(1,(getTimer() - this.§?!D§) / §;P§);
                           §§push(_loc3_);
                           if(!_loc7_)
                           {
                              §§push(§§pop() + _loc4_);
                              if(_loc6_ || param1)
                              {
                                 §§push(§§pop() / 10);
                                 if(_loc6_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                           }
                           var _loc5_:* = §§pop();
                           if(!_loc7_)
                           {
                              this.setLoadingPercentage(_loc5_);
                              addr212:
                              §§push(§>!8§.§[8§);
                              if(!(_loc7_ && this))
                              {
                                 if(§§pop().§^1§() >= 1)
                                 {
                                    if(_loc7_)
                                    {
                                       §§goto(addr212);
                                    }
                                    addr207:
                                    §>!8§.§[8§.§2O§();
                                    return §-§.STATE_STATUS_COMPLETED;
                                    addr205:
                                 }
                                 return §-§.STATE_STATUS_RUNNING;
                              }
                              §§goto(addr207);
                           }
                           §§goto(addr205);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr107);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §1-§.removeChild(this.§=Z§);
         }
         while(true)
         {
            this.§=Z§ = null;
            while(_loc1_)
            {
               super.cleanup();
               if(_loc1_ || this)
               {
                  return;
               }
            }
         }
      }
      
      private function §<]§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(_loc3_ || this)
         {
            §§push(§§pop() * (this.§=Z§.getChildByName("Bar") as MovieClip).totalFrames);
         }
         var _loc2_:int = §§pop();
         if(!(_loc4_ && this))
         {
            (this.§=Z§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super.setViewSize(param1,param2);
            loop0:
            while(this.§=Z§)
            {
               loop1:
               while(true)
               {
                  this.§=Z§.x = param1 - this.§=Z§.width >> 1;
                  addr85:
                  while(true)
                  {
                     this.§=Z§.y = param2 - this.§=Z§.height >> 1;
                     if(!(_loc4_ && param1))
                     {
                        if(_loc3_)
                        {
                           if(_loc3_)
                           {
                              break loop0;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr85);
      }
   }
}
