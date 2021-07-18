package §_-y7§
{
   import §_-bz§.§_-uC§;
   import §_-wt§.§_-TQ§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §_-YQ§ extends §_-VA§
   {
      
      public static const §_-Az§:String = "load";
      
      public static var §_-m4§:uint = 4000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §_-Az§ = "load";
            if(!(_loc2_ && _loc2_))
            {
               addr44:
               §_-m4§ = 4000;
            }
            return;
         }
         §§goto(addr44);
      }
      
      private var §_-Bl§:Boolean = false;
      
      private var §_-zF§:uint;
      
      private var §_-pL§:Boolean = false;
      
      public var §_-z3§:XML;
      
      public var §_-C§:XML;
      
      public var §_-4O§:DisplayObjectContainer;
      
      private var §_-3§:String;
      
      private var §_-lA§:String;
      
      public function §_-YQ§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            this.§_-3§ = param4;
            if(!(_loc6_ && this))
            {
               this.§_-lA§ = param5;
               if(_loc7_ || this)
               {
                  addr43:
                  super(param1,param2);
                  if(_loc7_ || param3)
                  {
                     §§goto(addr61);
                  }
                  §§goto(addr66);
               }
               addr61:
               §_-u7§ = true;
               if(_loc7_)
               {
                  addr66:
                  §_-m4§ = param3;
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
            if(!(_loc1_ && this))
            {
               §_-uC§.init(§extends§("connectionProfileId"));
               if(!(_loc1_ && _loc1_))
               {
                  if(!§_-TQ§.§_-pc§())
                  {
                     if(_loc2_ || _loc1_)
                     {
                     }
                     §§goto(addr80);
                  }
                  addr77:
                  §_-Uu§(true);
                  §§goto(addr80);
               }
               §_-TQ§.init(§_-uC§.§_-V9§(),this.§_-3§,this.§_-lA§,null);
               if(_loc1_ && this)
               {
               }
               §§goto(addr80);
            }
            §§goto(addr77);
         }
         addr80:
      }
      
      public function §_-rT§(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-4O§ = param1;
         }
      }
      
      public function §_-Mc§(param1:XML) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-z3§ = param1;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.activate();
            if(!_loc2_)
            {
               addr31:
               §_-Cv§.addChild(this.§_-4O§);
               if(_loc1_ || _loc1_)
               {
                  this.§_-e5§(0);
                  if(!_loc2_)
                  {
                     addr54:
                     this.§_-zF§ = getTimer();
                  }
                  return;
               }
            }
            §§goto(addr54);
         }
         §§goto(addr31);
      }
      
      private function §_-Q0§() : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(_loc6_ || _loc3_)
         {
            if(§_-TQ§.§_-ts§())
            {
               addr30:
               var _loc3_:int = 0;
               var _loc4_:* = this.§_-z3§.Library;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!(_loc5_ && _loc1_))
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(_loc6_)
                        {
                           if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
                           {
                              if(_loc6_)
                              {
                                 §_-TQ§.§_-VO§(_loc1_);
                              }
                           }
                        }
                        continue;
                     }
                     if(_loc6_ || _loc3_)
                     {
                        if(!_loc5_)
                        {
                           if(!(_loc5_ && _loc3_))
                           {
                              _loc3_ = 0;
                              if(!(_loc5_ && _loc3_))
                              {
                                 _loc4_ = this.§_-z3§.packages.pack;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc4_,_loc3_));
                                    break loop0;
                                 }
                                 addr126:
                                 if(_loc6_)
                                 {
                                    §_-TQ§.§_-TH§(this.§_-El§);
                                    if(!_loc5_)
                                    {
                                       addr142:
                                       §§push(true);
                                       if(_loc6_)
                                       {
                                          return §§pop();
                                       }
                                    }
                                    else
                                    {
                                       addr146:
                                       §§push(false);
                                    }
                                    return §§pop();
                                 }
                                 §§goto(addr146);
                                 addr125:
                                 addr123:
                              }
                              §§goto(addr126);
                           }
                           §§goto(addr142);
                        }
                        §§goto(addr126);
                     }
                     §§goto(addr125);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc3_,_loc4_);
                     if(_loc6_ || _loc1_)
                     {
                        §_-TQ§.§_-VO§(_loc2_);
                     }
                     continue;
                  }
                  §§goto(addr126);
               }
            }
            §§goto(addr146);
         }
         §§goto(addr30);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(super.run(param1));
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc7_)
         {
            §§push(_loc2_);
            if(_loc6_)
            {
               if(§§pop() != §_-VA§.STATE_STATUS_RUNNING)
               {
                  if(!_loc7_)
                  {
                     §§goto(addr31);
                  }
               }
               §§push(this.§_-pL§);
               if(_loc6_ || this)
               {
                  §§push(!§§pop());
                  if(!(_loc7_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        if(!(_loc7_ && this))
                        {
                           §§goto(addr60);
                        }
                     }
                  }
                  §§goto(addr78);
               }
               addr60:
               §§pop();
               if(!(_loc7_ && param1))
               {
                  §§push(this.§_-Q0§());
                  if(_loc6_ || this)
                  {
                     §§goto(addr78);
                  }
                  addr78:
                  if(§§pop())
                  {
                     if(_loc6_ || this)
                     {
                     }
                  }
                  §§goto(addr96);
               }
               this.§_-pL§ = true;
               §§goto(addr96);
            }
            addr31:
            return _loc2_;
         }
         addr96:
         §§push(Math.min(1,§_-TQ§.§_-1H§()) * 9);
         if(_loc6_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Number = Math.min(1,(getTimer() - this.§_-zF§) / §_-m4§);
         §§push(_loc3_);
         if(!(_loc7_ && _loc2_))
         {
            §§push(§§pop() + _loc4_);
            if(_loc6_)
            {
               §§push(§§pop() / 10);
               if(_loc6_ || this)
               {
                  §§push(Number(§§pop()));
               }
            }
         }
         var _loc5_:* = §§pop();
         if(_loc6_ || _loc2_)
         {
            this.§_-e5§(_loc5_);
            if(_loc6_)
            {
               §§goto(addr159);
            }
            §§goto(addr172);
         }
         addr159:
         if(§_-TQ§.§_-1H§() >= 1)
         {
            if(!_loc7_)
            {
               addr172:
               §_-TQ§.§_-qj§();
               if(!_loc7_)
               {
                  return §_-VA§.STATE_STATUS_COMPLETED;
               }
            }
         }
         return §_-VA§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §_-Cv§.removeChild(this.§_-4O§);
            if(_loc2_)
            {
               this.§_-4O§ = null;
               if(!_loc2_)
               {
               }
               §§goto(addr48);
            }
            super.cleanup();
         }
         addr48:
      }
      
      private function §_-El§() : void
      {
      }
      
      public function §_-e5§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop() * (this.§_-4O§.getChildByName("Bar") as MovieClip).totalFrames);
         }
         var _loc2_:int = §§pop();
         if(!_loc3_)
         {
            (this.§_-4O§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
         }
      }
   }
}
