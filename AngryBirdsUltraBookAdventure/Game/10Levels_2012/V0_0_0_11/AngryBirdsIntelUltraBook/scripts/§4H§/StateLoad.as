package §4H§
{
   import §%!T§.LoadManager;
   import §6!a§.Server;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class StateLoad extends StateBase
   {
      
      public static const STATE_NAME:String = "load";
      
      public static var §8J§:uint = 4000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            STATE_NAME = "load";
            do
            {
               §8J§ = 4000;
            }
            while(_loc2_);
            
         }
      }
      
      private var §@D§:Boolean = false;
      
      private var §06§:uint;
      
      private var §"!6§:Boolean = false;
      
      public var §^b§:XML;
      
      public var §0!^§:XML;
      
      public var §0!T§:DisplayObjectContainer;
      
      private var §3>§:String;
      
      private var §-!C§:String;
      
      public function StateLoad(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || this)
         {
            this.§3>§ = param4;
         }
         while(true)
         {
            this.§-!C§ = param5;
            loop1:
            while(true)
            {
               super(param1,param2);
               while(true)
               {
                  §@V§ = true;
                  while(_loc7_ || this)
                  {
                     continue loop1;
                     §8J§ = param3;
                     if(_loc7_)
                     {
                        return;
                     }
                  }
               }
            }
            if(_loc6_ && param3)
            {
               continue;
            }
            §§goto(addr81);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            while(true)
            {
               Server.init(§#1§("connectionProfileId"));
               loop1:
               while(true)
               {
                  §§push(LoadManager.§8!X§);
                  if(_loc1_)
                  {
                     §§push(§§pop().§#3§());
                     if(_loc1_ || _loc1_)
                     {
                        §§push(!§§pop());
                     }
                     if(§§pop())
                     {
                        continue;
                     }
                  }
                  else
                  {
                     while(true)
                     {
                        §§pop().init(Server.§&7§(),this.§3>§,this.§-!C§,null);
                        addr96:
                        while(true)
                        {
                        }
                     }
                     addr86:
                  }
                  while(true)
                  {
                     §+l§(true);
                     if(_loc1_)
                     {
                        addr30:
                        if(!(_loc2_ && _loc2_))
                        {
                           break;
                        }
                        continue loop1;
                     }
                     §§goto(addr96);
                  }
                  return;
               }
            }
         }
         while(true)
         {
            §§goto(addr86);
         }
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§0!T§ = param1;
         }
      }
      
      public function §=!d§(param1:XML) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§^b§ = param1;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activate();
            while(true)
            {
               §'6§.addChild(this.§0!T§);
               addr40:
               if(!(_loc1_ || this))
               {
                  continue;
               }
               return;
               addr57:
            }
         }
         while(true)
         {
            this.setLoadingPercentage(0);
            while(_loc1_ || this)
            {
               this.§06§ = getTimer();
               if(!_loc1_)
               {
                  continue;
               }
               §§goto(addr40);
            }
         }
         §§goto(addr57);
      }
      
      private function §'O§() : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(!(_loc5_ && _loc3_))
         {
            if(LoadManager.§8!X§.§]I§())
            {
               addr35:
               var _loc3_:int = 0;
               var _loc4_:* = this.§^b§.Library;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(!_loc5_)
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
                        LoadManager.§8!X§.§`w§(_loc1_);
                        continue;
                     }
                     if(!(_loc5_ && _loc2_))
                     {
                        if(!(_loc5_ && _loc1_))
                        {
                           if(_loc6_ || _loc1_)
                           {
                              _loc3_ = 0;
                              if(_loc6_)
                              {
                                 _loc4_ = this.§^b§.packages.pack;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc4_,_loc3_));
                                    break loop0;
                                 }
                                 addr135:
                                 if(_loc6_ || _loc2_)
                                 {
                                    LoadManager.§8!X§.§ !L§(this.§9K§);
                                    §§push(true);
                                    addr143:
                                 }
                                 else
                                 {
                                    addr155:
                                    §§push(false);
                                    if(!(_loc5_ && _loc1_))
                                    {
                                       return §§pop();
                                    }
                                 }
                                 return §§pop();
                                 addr134:
                                 addr132:
                              }
                              §§goto(addr135);
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr134);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc3_,_loc4_);
                     if(_loc6_ || _loc2_)
                     {
                        LoadManager.§8!X§.§`w§(_loc2_);
                     }
                     continue;
                  }
                  §§goto(addr135);
               }
            }
            §§goto(addr155);
         }
         §§goto(addr35);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(super.run(param1));
         if(!_loc6_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc6_ && _loc3_))
         {
            §§push(_loc2_);
            if(_loc7_)
            {
               if(§§pop() != StateBase.STATE_STATUS_RUNNING)
               {
                  if(_loc7_)
                  {
                     §§goto(addr121);
                  }
                  else
                  {
                     while(true)
                     {
                        addr80:
                        if(_loc6_ && _loc3_)
                        {
                           continue;
                        }
                        if(false)
                        {
                           while(true)
                           {
                              §§push(this.§"!6§);
                              loop2:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 loop3:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop4:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc7_)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             addr100:
                                             while(true)
                                             {
                                                §§push(this.§'O§());
                                                if(!(_loc6_ && this))
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      continue loop4;
                                                   }
                                                   if(_loc6_ && this)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(Boolean(§§pop()));
                                                }
                                                if(!_loc7_)
                                                {
                                                   continue;
                                                }
                                                if(!(_loc7_ || this))
                                                {
                                                   continue loop3;
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc6_ && param1))
                                             {
                                                this.§"!6§ = true;
                                             }
                                             if(!(_loc6_ && _loc2_))
                                             {
                                                §§goto(addr80);
                                             }
                                             else
                                             {
                                                §§goto(addr100);
                                             }
                                          }
                                          break;
                                          §§goto(addr54);
                                       }
                                    }
                                 }
                              }
                           }
                           addr89:
                        }
                        §§push(Math.min(1,LoadManager.§8!X§.§'!F§()) * 9);
                        if(!(_loc6_ && this))
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc3_:* = §§pop();
                        var _loc4_:Number = Math.min(1,(getTimer() - this.§06§) / §8J§);
                        §§push(_loc3_);
                        if(!(_loc6_ && this))
                        {
                           §§push(§§pop() + _loc4_);
                           if(!_loc6_)
                           {
                              addr168:
                              §§push(§§pop() / 10);
                              if(_loc7_)
                              {
                                 addr172:
                                 §§push(Number(§§pop()));
                              }
                              var _loc5_:* = §§pop();
                              if(!_loc6_)
                              {
                                 this.setLoadingPercentage(_loc5_);
                                 §§push(LoadManager.§8!X§);
                                 if(!_loc6_)
                                 {
                                    if(§§pop().§'!F§() < 1)
                                    {
                                       return StateBase.STATE_STATUS_RUNNING;
                                    }
                                    addr225:
                                    §§push(LoadManager.§8!X§);
                                 }
                                 §§pop().§%!]§();
                                 return StateBase.STATE_STATUS_COMPLETED;
                              }
                              §§goto(addr225);
                           }
                           §§goto(addr172);
                        }
                        §§goto(addr168);
                     }
                  }
               }
               §§goto(addr89);
            }
            addr121:
            return _loc2_;
         }
         §§goto(addr100);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §'6§.removeChild(this.§0!T§);
            while(true)
            {
               this.§0!T§ = null;
               §§goto(addr47);
            }
         }
         addr47:
         while(true)
         {
            super.cleanup();
            if(_loc2_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §9K§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.setViewSize(param1,param2);
         }
         loop0:
         while(this.§0!T§)
         {
            loop1:
            do
            {
               this.§0!T§.x = param1 - this.§0!T§.width >> 1;
               while(_loc4_)
               {
                  this.§0!T§.y = param2 - this.§0!T§.height >> 1;
                  if(!(_loc3_ && param2))
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(_loc3_);
            
            break;
         }
      }
   }
}
