package §8!H§
{
   import §-^§.§?7§;
   import §-o§.§4w§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §"_§ extends §9![§
   {
      
      public static const §'!q§:String = "load";
      
      public static var §-[§:uint = 4000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §'!q§ = "load";
         }
         do
         {
            §-[§ = 4000;
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      private var §4!V§:Boolean = false;
      
      private var §^O§:uint;
      
      private var §,!%§:Boolean = false;
      
      public var §=K§:XML;
      
      public var § ]§:XML;
      
      public var §1!W§:DisplayObjectContainer;
      
      protected var §"!p§:String;
      
      protected var §`!f§:String;
      
      public function §"_§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            this.§"!p§ = param4;
            loop0:
            while(true)
            {
               this.§`!f§ = param5;
               while(true)
               {
                  super(param1,param2);
                  while(_loc6_)
                  {
                     while(_loc6_ || param2)
                     {
                        §-[§ = param3;
                        if(!(_loc7_ && param2))
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §-O§ = true;
            §§goto(addr61);
         }
         §§goto(addr56);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
            do
            {
               §?7§.init(§+!1§("connectionProfileId"));
               do
               {
                  if(!§4w§.§[U§.§`q§())
                  {
                     while(true)
                     {
                        this.§#!?§();
                        addr79:
                        while(true)
                        {
                        }
                     }
                     addr77:
                  }
                  while(true)
                  {
                     §8^§(true);
                     if(_loc1_ && _loc2_)
                     {
                        continue;
                     }
                     if(!_loc1_)
                     {
                        break;
                     }
                     §§goto(addr77);
                  }
               }
               while(!(_loc2_ || _loc1_));
               
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      protected function §#!?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §4w§.§[U§.init(§?7§.§7h§(),this.§"!p§,this.§`!f§,null);
         }
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§1!W§ = param1;
         }
      }
      
      public function §<M§(param1:XML) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§=K§ = param1;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.activate();
            while(true)
            {
               §]2§.addChild(this.§1!W§);
               §§goto(addr76);
            }
         }
         addr76:
         while(true)
         {
            this.setLoadingPercentage(0);
            do
            {
               this.§^O§ = getTimer();
            }
            while(!_loc2_);
            
            if(!_loc1_)
            {
               if(_loc2_ || _loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §3i§() : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         if(_loc6_ || _loc1_)
         {
            if(§4w§.§[U§.§5@§())
            {
               addr36:
               var _loc4_:* = 0;
               var _loc5_:* = this.§=K§.Library;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc5_,_loc4_));
                  if(_loc6_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc4_,_loc5_);
                        if(_loc6_ || _loc2_)
                        {
                           if(_loc1_.@startupLoad.toString().toLowerCase() != "true")
                           {
                              continue;
                           }
                           if(!_loc6_)
                           {
                              continue;
                           }
                        }
                        §4w§.§[U§.§&!D§(_loc1_);
                        continue;
                     }
                     if(_loc6_ || _loc3_)
                     {
                        if(!_loc7_)
                        {
                           if(!(_loc7_ && _loc2_))
                           {
                              §§push(0);
                              if(_loc6_ || this)
                              {
                                 _loc4_ = §§pop();
                                 if(!_loc7_)
                                 {
                                    _loc5_ = this.§=K§.libraries.library;
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc5_,_loc4_));
                                       if(!_loc7_)
                                       {
                                          if(§§pop())
                                          {
                                             _loc1_ = §§nextvalue(_loc4_,_loc5_);
                                             if(_loc6_)
                                             {
                                                if(_loc1_.@startupLoad.toString().toLowerCase() != "true")
                                                {
                                                   continue;
                                                }
                                                if(_loc7_)
                                                {
                                                   continue;
                                                }
                                             }
                                             §4w§.§[U§.§&!D§(_loc1_);
                                             continue;
                                          }
                                          if(_loc6_)
                                          {
                                             if(_loc6_ || _loc2_)
                                             {
                                                if(_loc6_)
                                                {
                                                   addr161:
                                                   §§push(0);
                                                   if(_loc6_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      if(!(_loc7_ && _loc1_))
                                                      {
                                                         addr172:
                                                         _loc5_ = this.§=K§.config.xml;
                                                         while(true)
                                                         {
                                                            §§push(§§hasnext(_loc5_,_loc4_));
                                                            if(!_loc7_)
                                                            {
                                                               break loop0;
                                                            }
                                                            addr257:
                                                            loop4:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  addr259:
                                                                  if(_loc6_)
                                                                  {
                                                                     §4w§.§[U§.§!e§(this.§46§);
                                                                     addr262:
                                                                  }
                                                                  return true;
                                                                  addr258:
                                                                  addr281:
                                                               }
                                                               _loc3_ = §§nextvalue(_loc4_,_loc5_);
                                                               if(_loc6_ || _loc2_)
                                                               {
                                                                  §4w§.§[U§.§&!D§(_loc3_);
                                                               }
                                                               addr256:
                                                               while(true)
                                                               {
                                                                  continue loop4;
                                                               }
                                                               §§goto(addr258);
                                                            }
                                                         }
                                                         addr196:
                                                      }
                                                      addr222:
                                                      _loc5_ = this.§=K§.packages.pack;
                                                      §§goto(addr256);
                                                   }
                                                   addr214:
                                                   _loc4_ = §§pop();
                                                   if(_loc6_ || _loc1_)
                                                   {
                                                      §§goto(addr222);
                                                   }
                                                   §§goto(addr259);
                                                }
                                                §§goto(addr262);
                                             }
                                             §§goto(addr222);
                                          }
                                          if(!_loc7_)
                                          {
                                             if(!_loc7_)
                                             {
                                                §§goto(addr214);
                                                §§push(0);
                                             }
                                             §§goto(addr281);
                                          }
                                          §§goto(addr222);
                                       }
                                       break loop0;
                                    }
                                 }
                                 §§goto(addr172);
                              }
                              §§goto(addr214);
                           }
                           §§goto(addr161);
                        }
                     }
                     §§goto(addr259);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc4_,_loc5_);
                     if(!(_loc7_ && _loc3_))
                     {
                        §4w§.§[U§.§&!D§(_loc2_);
                     }
                     continue;
                  }
                  if(_loc6_ || this)
                  {
                     §§goto(addr207);
                  }
                  §§goto(addr259);
               }
               §§goto(addr257);
            }
            else
            {
               §§push(false);
               if(!_loc7_)
               {
                  return §§pop();
               }
            }
            §§goto(addr259);
         }
         §§goto(addr36);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(super.run(param1));
         if(_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc7_ || _loc2_)
         {
            §§push(_loc2_);
            if(_loc7_)
            {
               if(§§pop() == §9![§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§,!%§);
                     if(!(_loc6_ && _loc2_))
                     {
                        §§push(!§§pop());
                        loop1:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(§§pop())
                              {
                                 if(!(_loc6_ && this))
                                 {
                                    if(!(_loc7_ || _loc3_))
                                    {
                                       loop3:
                                       for(; !_loc6_; while(true)
                                       {
                                          §§pop();
                                          continue loop3;
                                       })
                                       {
                                          while(true)
                                          {
                                             §§push(this.§3i§());
                                             if(_loc7_)
                                             {
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(_loc7_ || _loc3_)
                                             {
                                                continue loop1;
                                             }
                                             continue loop3;
                                          }
                                       }
                                       addr109:
                                       return _loc2_;
                                       addr108:
                                    }
                                    if(_loc6_)
                                    {
                                       continue loop0;
                                    }
                                    this.§,!%§ = true;
                                 }
                                 if(true)
                                 {
                                    break;
                                 }
                                 continue loop0;
                              }
                              §§push(Math.min(1,§4w§.§[U§.§=!^§()) * 9);
                              if(!_loc6_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc3_:* = §§pop();
                              var _loc4_:Number = Math.min(1,(getTimer() - this.§^O§) / §-[§);
                              §§push(_loc3_);
                              if(_loc7_ || _loc2_)
                              {
                                 §§push(§§pop() + _loc4_);
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(§§pop() / 10);
                                    if(!_loc6_)
                                    {
                                       addr156:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc5_:* = §§pop();
                                    if(!(_loc6_ && this))
                                    {
                                       this.setLoadingPercentage(_loc5_);
                                       addr213:
                                       §§push(§4w§.§[U§);
                                       if(!_loc6_)
                                       {
                                          if(§§pop().§=!^§() >= 1)
                                          {
                                             if(_loc7_ || _loc3_)
                                             {
                                                if(_loc6_)
                                                {
                                                   §§goto(addr213);
                                                }
                                                addr208:
                                                §4w§.§[U§.§]!@§();
                                             }
                                             return §9![§.STATE_STATUS_COMPLETED;
                                          }
                                          §§goto(addr166);
                                       }
                                       §§goto(addr208);
                                    }
                                    addr166:
                                    return §9![§.STATE_STATUS_RUNNING;
                                 }
                              }
                              §§goto(addr156);
                              addr52:
                           }
                        }
                     }
                     §§goto(addr88);
                  }
               }
               §§goto(addr108);
            }
            §§goto(addr109);
         }
         §§goto(addr91);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §]2§.removeChild(this.§1!W§);
            do
            {
               this.§1!W§ = null;
               do
               {
                  super.cleanup();
               }
               while(_loc1_);
               
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      private function §46§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super.setViewSize(param1,param2);
            loop0:
            while(this.§1!W§)
            {
               loop1:
               while(true)
               {
                  this.§1!W§.x = param1 - this.§1!W§.width >> 1;
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        this.§1!W§.y = param2 - this.§1!W§.height >> 1;
                        if(_loc4_)
                        {
                           continue loop1;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr74);
      }
   }
}
