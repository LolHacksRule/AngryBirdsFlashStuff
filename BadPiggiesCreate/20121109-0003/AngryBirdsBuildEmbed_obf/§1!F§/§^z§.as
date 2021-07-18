package §1!F§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §#!4§.§+!S§;
   import §5#§.§]]§;
   import §<!<§.§;§;
   import §<!B§.b2Vec2;
   import §=!3§.§;!!§;
   import §>!'§.§<!3§;
   import §?!-§.§'!V§;
   import §@!X§.§7j§;
   import §`a§.§ !U§;
   import §`a§.§,!-§;
   
   public class §^z§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "SplashScreenState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            STATE_NAME = "SplashScreenState";
         }
      }
      
      private var §7!D§:§]]§ = null;
      
      public function §^z§(param1:Boolean = false, param2:String = "SplashScreenState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            if(!(_loc2_ && _loc2_))
            {
               §+!$§ = new §2U§(this);
               if(_loc2_)
               {
               }
               §§goto(addr64);
            }
            §+!$§.init(§=!Z§.§;K§.Views.View_SplashScreen[0]);
            if(!_loc1_)
            {
            }
            §§goto(addr64);
         }
         addr64:
         this.§7!D§ = new §]]§(§'!V§.§1!2§,"BACKGROUND_RED_FLOWERS",false);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         super.activate();
         if(_loc2_ || _loc1_)
         {
            §§push(§7j§.§else§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     addr45:
                     §7j§.§else§.start();
                     §§goto(addr46);
                  }
                  §§goto(addr56);
               }
               addr46:
               §'!V§.§1!2§.§-I§(true);
               if(!_loc1_)
               {
                  addr52:
                  §'!V§.§>_§(this.§7!D§);
                  addr56:
                  this.§7!D§.init();
               }
               return;
            }
            §§goto(addr45);
         }
         §§goto(addr52);
      }
      
      protected function getCamera() : §,!-§
      {
         return §'!V§.§1!2§.camera as §,!-§;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = null;
         var _loc10_:§,!-§ = null;
         var _loc11_:§<!3§ = null;
         var _loc12_:Array = null;
         §§push(super.run(param1));
         if(_loc14_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc14_)
         {
            §§push(_loc2_);
            if(_loc14_)
            {
               if(§§pop() != §;!!§.STATE_STATUS_RUNNING)
               {
                  §§push(_loc2_);
                  if(!(_loc13_ && param1))
                  {
                     §§goto(addr69);
                  }
                  else
                  {
                     §§goto(addr132);
                  }
               }
               else
               {
                  this.§7!D§.update(param1);
                  addr76:
                  §§push(Math.random() * 2000);
                  §§push(param1);
                  if(!(_loc13_ && param1))
                  {
                     if(§§pop() < §§pop())
                     {
                        §§push(-Math.random());
                        if(_loc14_)
                        {
                           §§push(10);
                           if(!_loc13_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc14_)
                              {
                                 addr101:
                                 §§push(Number(§§pop() - 10));
                                 if(!(_loc13_ && param1))
                                 {
                                    _loc4_ = §§pop();
                                    §§push(§;§.§5B§);
                                 }
                                 §§push(Math.random() * 0.2);
                                 if(_loc14_)
                                 {
                                    addr119:
                                    §§push(§§pop() + 0.7);
                                 }
                                 _loc5_ = §§pop() * §§pop();
                                 if(!(_loc13_ && _loc3_))
                                 {
                                    addr132:
                                    §§push(§§pop() + Math.random() * 10);
                                    if(!_loc13_)
                                    {
                                       _loc6_ = §§pop();
                                       if(_loc14_)
                                       {
                                          §§goto(addr153);
                                       }
                                       §§goto(addr194);
                                    }
                                    addr153:
                                    _loc7_ = _loc5_ * Math.cos(_loc6_ / 180 * Math.PI);
                                    if(_loc14_ || _loc3_)
                                    {
                                       §§push(-_loc5_ * Math.sin(_loc6_ / 180 * Math.PI));
                                       if(_loc14_ || this)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       _loc8_ = §§pop();
                                       if(!_loc13_)
                                       {
                                          addr194:
                                          _loc10_ = this.getCamera();
                                          if(_loc14_)
                                          {
                                             if(Math.random() > 0.1)
                                             {
                                                if(_loc14_)
                                                {
                                                   §§push("RED");
                                                   if(!_loc13_)
                                                   {
                                                      _loc12_ = null;
                                                      if(!(_loc13_ && _loc2_))
                                                      {
                                                         §§push("BIRD_");
                                                         if(_loc14_)
                                                         {
                                                            §§push(§§pop() + _loc12_[Math.floor(Math.random() * _loc12_.length)]);
                                                         }
                                                         _loc9_ = §§pop();
                                                         if(_loc14_ || param1)
                                                         {
                                                            addr248:
                                                            §§push(_loc10_.xCenterB2);
                                                            if(_loc14_ || _loc3_)
                                                            {
                                                               §§push(§ !U§.SCREEN_WIDTH_B2);
                                                               if(_loc14_)
                                                               {
                                                                  §§push(§§pop() / 2);
                                                                  if(!(_loc13_ && this))
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!_loc13_)
                                                                     {
                                                                        addr277:
                                                                        addr273:
                                                                        §§push(§§pop() - Math.random() * 10);
                                                                        if(_loc14_ || _loc2_)
                                                                        {
                                                                           addr285:
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        _loc3_ = §§pop();
                                                                        addr350:
                                                                        (_loc11_ = §'!V§.§1!2§.objects.addObject(_loc9_,_loc3_,_loc4_,0,false)).§`w§(new b2Vec2(_loc7_,_loc8_),false,false);
                                                                        if(mNextState.length > 0)
                                                                        {
                                                                           §§goto(addr373);
                                                                        }
                                                                        else
                                                                        {
                                                                           return §;!!§.STATE_STATUS_RUNNING;
                                                                        }
                                                                        addr287:
                                                                     }
                                                                     §§goto(addr285);
                                                                  }
                                                               }
                                                               §§goto(addr277);
                                                            }
                                                            §§goto(addr273);
                                                         }
                                                         §§goto(addr287);
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                   §§goto(addr350);
                                                }
                                                §§goto(addr277);
                                             }
                                             else
                                             {
                                                §§push("PIG_BASIC_BIG");
                                             }
                                             _loc9_ = §§pop();
                                             if(!(_loc13_ && this))
                                             {
                                                _loc7_ = -_loc7_;
                                                if(!(_loc13_ && param1))
                                                {
                                                   §§push(_loc10_.xCenterB2);
                                                   §§push(§ !U§.SCREEN_WIDTH_B2);
                                                   if(_loc14_)
                                                   {
                                                      §§push(§§pop() / 2);
                                                      if(!_loc13_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc13_ && _loc3_))
                                                         {
                                                            addr330:
                                                            §§push(§§pop() + Math.random() * 10);
                                                            if(_loc14_ || param1)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
                                                         _loc3_ = §§pop();
                                                         §§goto(addr277);
                                                      }
                                                   }
                                                   §§goto(addr330);
                                                }
                                             }
                                          }
                                          §§goto(addr277);
                                       }
                                    }
                                    addr373:
                                    return §;!!§.STATE_STATUS_COMPLETED;
                                    §§push(20);
                                 }
                              }
                              §§goto(addr153);
                           }
                           §§goto(addr101);
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr277);
                  }
                  §§goto(addr119);
               }
               §§goto(addr153);
            }
            addr69:
            return §§pop();
         }
         §§goto(addr76);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && this))
         {
            if("PLAY" === _loc4_)
            {
               addr59:
               §§push(0);
               if(_loc6_ && param2)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  mNextState = §-G§.STATE_NAME;
                  if(!_loc6_)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr59);
      }
   }
}
