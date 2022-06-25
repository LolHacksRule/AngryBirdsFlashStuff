package §6H§
{
   import §+!@§.§!T§;
   import §5m§.§2!&§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §?i§ extends §>3§
   {
      
      public static const §-!A§:String = "load";
      
      public static var §3g§:uint = 4000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §-!A§ = "load";
            if(!_loc2_)
            {
               addr23:
               §3g§ = 4000;
            }
            return;
         }
         §§goto(addr23);
      }
      
      private var §]]§:Boolean = false;
      
      private var §]!"§:uint;
      
      private var §=!6§:Boolean = false;
      
      public var §?h§:XML;
      
      public var §^;§:XML;
      
      public var §8a§:DisplayObjectContainer;
      
      private var §0u§:String;
      
      private var §]X§:String;
      
      public function §?i§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.§0u§ = param4;
            if(_loc7_)
            {
               this.§]X§ = param5;
               if(_loc7_)
               {
                  addr39:
                  super(param1,param2);
                  if(_loc7_ || param2)
                  {
                     §`D§ = true;
                     if(_loc7_)
                     {
                        §3g§ = param3;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.init();
            if(_loc2_ || _loc2_)
            {
               §2!&§.init(§&A§("connectionProfileId"));
               if(!_loc1_)
               {
                  addr50:
                  §§push(§!T§.§@j§);
                  if(_loc2_ || _loc1_)
                  {
                     if(!§§pop().§=P§())
                     {
                        if(_loc2_)
                        {
                           addr75:
                           §!T§.§@j§.init(§2!&§.§5O§(),this.§0u§,this.§]X§,null);
                           addr73:
                           if(_loc1_ && _loc1_)
                           {
                           }
                        }
                        §§goto(addr93);
                     }
                     §9"§(true);
                     addr93:
                     return;
                  }
                  §§goto(addr75);
               }
               §§goto(addr73);
            }
            §§goto(addr50);
         }
         §§goto(addr75);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§8a§ = param1;
         }
      }
      
      public function §`8§(param1:XML) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§?h§ = param1;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.activate();
            if(_loc1_)
            {
               addr37:
               §62§.addChild(this.§8a§);
               if(!(_loc2_ && _loc1_))
               {
                  this.setLoadingPercentage(0);
                  if(!_loc1_)
                  {
                  }
                  §§goto(addr57);
               }
               this.§]!"§ = getTimer();
            }
            addr57:
            return;
         }
         §§goto(addr37);
      }
      
      private function §9i§() : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(_loc5_)
         {
            if(§!T§.§@j§.§8!%§())
            {
               addr28:
               var _loc3_:int = 0;
               var _loc4_:* = this.§?h§.Library;
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
                           if(_loc1_.@startupLoad.toString().toLowerCase() != "true")
                           {
                              continue;
                           }
                           if(_loc6_ && _loc2_)
                           {
                              continue;
                           }
                        }
                        §!T§.§@j§.§0+§(_loc1_);
                        continue;
                     }
                     if(!(_loc6_ && _loc1_))
                     {
                        if(_loc5_)
                        {
                           if(_loc5_ || _loc3_)
                           {
                              _loc3_ = 0;
                              if(_loc5_)
                              {
                                 addr107:
                                 _loc4_ = this.§?h§.packages.pack;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc4_,_loc3_));
                                    break loop0;
                                 }
                                 addr141:
                              }
                              if(_loc5_)
                              {
                                 §§goto(addr147);
                              }
                              §§goto(addr154);
                           }
                           addr147:
                           §!T§.§@j§.§>c§(this.§%!,§);
                           if(!_loc6_)
                           {
                              addr154:
                              §§push(true);
                              if(_loc5_)
                              {
                                 return §§pop();
                              }
                           }
                           else
                           {
                              addr158:
                              §§push(false);
                           }
                           return §§pop();
                        }
                     }
                     §§goto(addr107);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc3_,_loc4_);
                     if(!(_loc6_ && _loc2_))
                     {
                        §!T§.§@j§.§0+§(_loc2_);
                     }
                     continue;
                  }
                  §§goto(addr107);
               }
            }
            §§goto(addr158);
         }
         §§goto(addr28);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(super.run(param1));
         if(_loc6_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc6_)
         {
            §§push(_loc2_);
            if(!_loc7_)
            {
               if(§§pop() != §>3§.STATE_STATUS_RUNNING)
               {
                  if(!_loc7_)
                  {
                     §§push(_loc2_);
                  }
                  else
                  {
                     addr84:
                     this.§=!6§ = true;
                     addr87:
                     §§push(Math.min(1,§!T§.§@j§.§6k§()) * 9);
                     if(!_loc7_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     var _loc4_:Number = Math.min(1,(getTimer() - this.§]!"§) / §3g§);
                     §§push(_loc3_);
                     if(_loc6_ || _loc3_)
                     {
                        §§push(§§pop() + _loc4_);
                        if(_loc6_ || _loc2_)
                        {
                           addr138:
                           §§push(§§pop() / 10);
                           if(_loc6_ || this)
                           {
                              addr147:
                              §§push(Number(§§pop()));
                           }
                           var _loc5_:* = §§pop();
                           if(_loc6_)
                           {
                              this.setLoadingPercentage(_loc5_);
                              if(!(_loc7_ && this))
                              {
                                 addr161:
                                 §§push(§!T§.§@j§);
                                 if(_loc6_ || _loc2_)
                                 {
                                    if(§§pop().§6k§() >= 1)
                                    {
                                       if(_loc6_ || param1)
                                       {
                                          addr192:
                                          §!T§.§@j§.§,w§();
                                          if(_loc6_ || _loc3_)
                                          {
                                             §§goto(addr200);
                                          }
                                       }
                                       §§goto(addr200);
                                    }
                                    return §>3§.STATE_STATUS_RUNNING;
                                 }
                                 §§goto(addr192);
                              }
                              addr200:
                              return §>3§.STATE_STATUS_COMPLETED;
                           }
                           §§goto(addr161);
                        }
                        §§goto(addr147);
                     }
                     §§goto(addr138);
                  }
               }
               else
               {
                  §§push(this.§=!6§);
                  if(_loc6_ || _loc2_)
                  {
                     §§push(!§§pop());
                     if(!(_loc7_ && param1))
                     {
                        if(§§pop())
                        {
                           if(!_loc7_)
                           {
                              addr63:
                              §§pop();
                              if(!(_loc7_ && param1))
                              {
                                 §§push(this.§9i§());
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    addr80:
                                    §§push(Boolean(§§pop()));
                                 }
                              }
                              §§goto(addr87);
                           }
                        }
                        if(§§pop())
                        {
                           if(!_loc6_)
                           {
                           }
                        }
                        §§goto(addr84);
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr63);
               }
               §§goto(addr84);
            }
            return §§pop();
         }
         §§goto(addr84);
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
         if(_loc2_ || _loc1_)
         {
            §62§.removeChild(this.§8a§);
            if(!_loc1_)
            {
               this.§8a§ = null;
               if(!_loc2_)
               {
               }
               §§goto(addr47);
            }
            super.cleanup();
         }
         addr47:
      }
      
      private function §%!,§() : void
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
            if(!(_loc3_ && this))
            {
               if(this.§8a§)
               {
                  if(_loc4_)
                  {
                     this.§8a§.x = param1 - this.§8a§.width >> 1;
                     if(!(_loc3_ && param2))
                     {
                        addr72:
                        this.§8a§.y = param2 - this.§8a§.height >> 1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr72);
      }
   }
}
