package §1N§
{
   import § !§.LoadManager;
   import §^!7§.Server;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class StateLoad extends StateBase
   {
      
      public static const STATE_NAME:String = "load";
      
      public static var §2g§:uint = 4000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && StateLoad))
         {
            STATE_NAME = "load";
         }
         do
         {
            §2g§ = 4000;
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      private var §^'§:Boolean = false;
      
      private var §9^§:uint;
      
      private var §1!?§:Boolean = false;
      
      public var §!U§:XML;
      
      public var §6V§:XML;
      
      public var §6!W§:DisplayObjectContainer;
      
      private var §+&§:String;
      
      private var §#!B§:String;
      
      public function StateLoad(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.§+&§ = param4;
         }
         loop0:
         while(true)
         {
            this.§#!B§ = param5;
            do
            {
               super(param1,param2);
               continue loop0;
            }
            while(_loc7_ && param1);
            
            return;
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
            while(true)
            {
               Server.init(§!!Z§("connectionProfileId"));
               addr38:
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               return;
               addr45:
            }
         }
         loop1:
         while(true)
         {
            §§push(LoadManager.§7!E§);
            if(_loc2_ || this)
            {
               §§push(§§pop().§]L§());
               if(_loc2_ || this)
               {
                  §§push(!§§pop());
               }
               if(!§§pop())
               {
                  while(true)
                  {
                     §,!]§(true);
                     if(_loc1_ && _loc2_)
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        §§goto(addr38);
                     }
                  }
                  continue;
                  addr24:
               }
               while(true)
               {
                  §§push(LoadManager.§7!E§);
               }
            }
            while(true)
            {
               §§pop().init(Server.§'!%§(),this.§+&§,this.§#!B§,null);
               continue loop1;
            }
         }
         §§goto(addr45);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§6!W§ = param1;
         }
      }
      
      public function §'e§(param1:XML) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§!U§ = param1;
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
               §"!,§.addChild(this.§6!W§);
               §§goto(addr78);
            }
         }
         addr78:
         while(true)
         {
            this.setLoadingPercentage(0);
            do
            {
               this.§9^§ = getTimer();
            }
            while(!(_loc1_ || _loc1_));
            
            if(_loc1_ || _loc2_)
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §=!§() : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(_loc5_ || this)
         {
            if(LoadManager.§7!E§.§ n§())
            {
               addr34:
               var _loc3_:int = 0;
               var _loc4_:* = this.§!U§.Library;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(_loc5_ || _loc1_)
                        {
                           if(_loc1_.@startupLoad.toString().toLowerCase() != "true")
                           {
                              continue;
                           }
                           if(!(_loc5_ || this))
                           {
                              continue;
                           }
                        }
                        LoadManager.§7!E§.§1!=§(_loc1_);
                        continue;
                     }
                     if(!(_loc6_ && _loc2_))
                     {
                        if(_loc5_)
                        {
                           if(!(_loc6_ && _loc2_))
                           {
                              _loc3_ = 0;
                              if(_loc5_ || this)
                              {
                                 _loc4_ = this.§!U§.packages.pack;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc4_,_loc3_));
                                    break loop0;
                                 }
                                 addr139:
                                 if(_loc5_ || _loc1_)
                                 {
                                    LoadManager.§7!E§.§,!H§(this.§0!i§);
                                    §§push(true);
                                 }
                                 else
                                 {
                                    addr159:
                                    §§push(false);
                                    if(_loc5_ || _loc2_)
                                    {
                                       return §§pop();
                                    }
                                    addr180:
                                 }
                                 return §§pop();
                                 addr138:
                                 addr136:
                              }
                              §§goto(addr139);
                           }
                           §§goto(addr180);
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr138);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc3_,_loc4_);
                     if(_loc5_)
                     {
                        LoadManager.§7!E§.§1!=§(_loc2_);
                     }
                     continue;
                  }
                  §§goto(addr139);
               }
            }
            §§goto(addr159);
         }
         §§goto(addr34);
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
         if(_loc7_)
         {
            §§push(_loc2_);
            if(!(_loc6_ && param1))
            {
               if(§§pop() != StateBase.STATE_STATUS_RUNNING)
               {
                  if(_loc7_ || param1)
                  {
                     §§goto(addr136);
                  }
                  else
                  {
                     while(true)
                     {
                        addr80:
                        if(_loc7_ || _loc2_)
                        {
                           if(false)
                           {
                              while(true)
                              {
                                 §§push(this.§1!?§);
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
                                          if(!(_loc6_ && param1))
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(§§pop())
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                §§pop();
                                                addr105:
                                                while(true)
                                                {
                                                   §§push(this.§=!§());
                                                   if(!(_loc6_ && _loc2_))
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      if(!(_loc6_ && _loc3_))
                                                      {
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            continue loop5;
                                                         }
                                                         continue loop2;
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop4;
                                             }
                                          }
                                          while(§§pop())
                                          {
                                             if(_loc7_ || _loc2_)
                                             {
                                                if(_loc7_ || _loc2_)
                                                {
                                                   this.§1!?§ = true;
                                                }
                                                else
                                                {
                                                   §§goto(addr105);
                                                }
                                             }
                                             §§goto(addr80);
                                          }
                                       }
                                    }
                                 }
                              }
                              addr89:
                           }
                           §§push(Math.min(1,LoadManager.§7!E§.§"U§()) * 9);
                           if(_loc7_)
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc3_:* = §§pop();
                           var _loc4_:Number = Math.min(1,(getTimer() - this.§9^§) / §2g§);
                           §§push(_loc3_);
                           if(!(_loc6_ && this))
                           {
                              §§push(§§pop() + _loc4_);
                              if(_loc7_ || this)
                              {
                                 §§push(§§pop() / 10);
                                 if(_loc7_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                           }
                           var _loc5_:* = §§pop();
                           if(_loc7_)
                           {
                              this.setLoadingPercentage(_loc5_);
                              §§push(LoadManager.§7!E§);
                              if(!(_loc6_ && this))
                              {
                                 if(§§pop().§"U§() >= 1)
                                 {
                                    if(_loc7_)
                                    {
                                       addr248:
                                       LoadManager.§7!E§.§<L§();
                                    }
                                    return StateBase.STATE_STATUS_COMPLETED;
                                 }
                                 §§goto(addr192);
                              }
                              §§goto(addr248);
                           }
                           addr192:
                           return StateBase.STATE_STATUS_RUNNING;
                        }
                     }
                  }
               }
               §§goto(addr89);
            }
            §§goto(addr136);
         }
         addr136:
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §"!,§.removeChild(this.§6!W§);
            do
            {
               this.§6!W§ = null;
               do
               {
                  super.cleanup();
               }
               while(!_loc1_);
               
            }
            while(_loc2_);
            
         }
      }
      
      private function §0!i§() : void
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
         while(this.§6!W§)
         {
            if(_loc4_)
            {
               this.§6!W§.x = param1 - this.§6!W§.width >> 1;
            }
            do
            {
               this.§6!W§.y = param2 - this.§6!W§.height >> 1;
            }
            while(_loc3_ && _loc3_);
            
            if(!(_loc3_ && this))
            {
               break;
            }
         }
      }
   }
}
