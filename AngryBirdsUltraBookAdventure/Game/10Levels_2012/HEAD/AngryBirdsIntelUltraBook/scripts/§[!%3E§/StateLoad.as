package §[!>§
{
   import § $§.Server;
   import §`M§.LoadManager;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class StateLoad extends StateBase
   {
      
      public static const STATE_NAME:String = "load";
      
      public static var §@?§:uint = 4000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && StateLoad))
         {
            STATE_NAME = "load";
         }
         do
         {
            §@?§ = 4000;
         }
         while(!(_loc1_ || _loc2_));
         
      }
      
      private var §%!d§:Boolean = false;
      
      private var §<!A§:uint;
      
      private var §<!J§:Boolean = false;
      
      public var §<K§:XML;
      
      public var §-!f§:XML;
      
      public var §%x§:DisplayObjectContainer;
      
      private var §"!`§:String;
      
      private var §#S§:String;
      
      public function StateLoad(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.§"!`§ = param4;
         }
         loop0:
         while(true)
         {
            this.§#S§ = param5;
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
               Server.init(§5!a§("connectionProfileId"));
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
            §§push(LoadManager.§&!'§);
            if(_loc2_ || this)
            {
               §§push(§§pop().§-B§());
               if(_loc2_ || this)
               {
                  §§push(!§§pop());
               }
               if(!§§pop())
               {
                  while(true)
                  {
                     §!t§(true);
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
                  §§push(LoadManager.§&!'§);
               }
            }
            while(true)
            {
               §§pop().init(Server.§ !T§(),this.§"!`§,this.§#S§,null);
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
            this.§%x§ = param1;
         }
      }
      
      public function §'!+§(param1:XML) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§<K§ = param1;
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
               §1!J§.addChild(this.§%x§);
               §§goto(addr78);
            }
         }
         addr78:
         while(true)
         {
            this.setLoadingPercentage(0);
            do
            {
               this.§<!A§ = getTimer();
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
      
      private function §!@§() : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(_loc5_ || this)
         {
            if(LoadManager.§&!'§.§?>§())
            {
               addr34:
               var _loc3_:int = 0;
               var _loc4_:* = this.§<K§.Library;
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
                        LoadManager.§&!'§.§#!T§(_loc1_);
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
                                 _loc4_ = this.§<K§.packages.pack;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc4_,_loc3_));
                                    break loop0;
                                 }
                                 addr139:
                                 if(_loc5_ || _loc1_)
                                 {
                                    LoadManager.§&!'§.§[!L§(this.§!L§);
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
                        LoadManager.§&!'§.§#!T§(_loc2_);
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
                                 §§push(this.§<!J§);
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
                                                   §§push(this.§!@§());
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
                                                   this.§<!J§ = true;
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
                           §§push(Math.min(1,LoadManager.§&!'§.§?!H§()) * 9);
                           if(_loc7_)
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc3_:* = §§pop();
                           var _loc4_:Number = Math.min(1,(getTimer() - this.§<!A§) / §@?§);
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
                              §§push(LoadManager.§&!'§);
                              if(!(_loc6_ && this))
                              {
                                 if(§§pop().§?!H§() >= 1)
                                 {
                                    if(_loc7_)
                                    {
                                       addr248:
                                       LoadManager.§&!'§.§[y§();
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
            §1!J§.removeChild(this.§%x§);
            do
            {
               this.§%x§ = null;
               do
               {
                  super.cleanup();
               }
               while(!_loc1_);
               
            }
            while(_loc2_);
            
         }
      }
      
      private function §!L§() : void
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
         while(this.§%x§)
         {
            if(_loc4_)
            {
               this.§%x§.x = param1 - this.§%x§.width >> 1;
            }
            do
            {
               this.§%x§.y = param2 - this.§%x§.height >> 1;
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
