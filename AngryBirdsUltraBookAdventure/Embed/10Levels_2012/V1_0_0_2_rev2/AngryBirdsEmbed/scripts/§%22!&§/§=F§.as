package §"!&§
{
   import §+?§.§03§;
   import §9>§.§"!C§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §=F§ extends §#!,§
   {
      
      public static const §?x§:String = "load";
      
      public static var §?+§:uint = 4000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §?x§ = "load";
            if(!_loc2_)
            {
               addr23:
               §?+§ = 4000;
            }
            return;
         }
         §§goto(addr23);
      }
      
      private var §;!7§:Boolean = false;
      
      private var §,!?§:uint;
      
      private var § =§:Boolean = false;
      
      public var §=!>§:XML;
      
      public var §@]§:XML;
      
      public var §&G§:DisplayObjectContainer;
      
      private var §!!4§:String;
      
      private var §4! §:String;
      
      public function §=F§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param3))
         {
            this.§!!4§ = param4;
            if(!_loc7_)
            {
               addr38:
               this.§4! § = param5;
               if(_loc6_)
               {
                  super(param1,param2);
                  if(_loc6_)
                  {
                     §[z§ = true;
                     if(!_loc7_)
                     {
                        addr54:
                        §?+§ = param3;
                     }
                     return;
                  }
               }
            }
            §§goto(addr54);
         }
         §§goto(addr38);
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
               §03§.init(§,!<§("connectionProfileId"));
               if(!_loc2_)
               {
               }
               addr75:
               §"!C§.§^n§.init(§03§.§3!-§(),this.§!!4§,this.§4! §,null);
               §§goto(addr73);
            }
            §§push(§"!C§.§^n§);
            if(!(_loc1_ && _loc1_))
            {
               if(!§§pop().§-6§())
               {
                  if(!(_loc1_ && this))
                  {
                     addr73:
                     if(_loc2_)
                     {
                        addr85:
                        §7!2§(true);
                     }
                     return;
                  }
               }
               §§goto(addr85);
            }
         }
         §§goto(addr75);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&G§ = param1;
         }
      }
      
      public function §&!C§(param1:XML) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§=!>§ = param1;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.activate();
            if(!_loc2_)
            {
               §[0§.addChild(this.§&G§);
               if(!(_loc2_ && this))
               {
                  addr48:
                  this.setLoadingPercentage(0);
                  if(!_loc2_)
                  {
                     this.§,!?§ = getTimer();
                  }
               }
            }
            return;
         }
         §§goto(addr48);
      }
      
      private function §#!C§() : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(!(_loc5_ && _loc1_))
         {
            if(§"!C§.§^n§.§^E§())
            {
               addr34:
               var _loc3_:int = 0;
               var _loc4_:* = this.§=!>§.Library;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(_loc6_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(_loc6_ || this)
                        {
                           if(_loc1_.@startupLoad.toString().toLowerCase() != "true")
                           {
                              continue;
                           }
                           if(_loc5_)
                           {
                              continue;
                           }
                        }
                        §"!C§.§^n§.§>!3§(_loc1_);
                        continue;
                     }
                     if(!(_loc5_ && this))
                     {
                        if(_loc6_ || _loc3_)
                        {
                           if(_loc6_)
                           {
                              _loc3_ = 0;
                              if(_loc6_ || _loc1_)
                              {
                                 _loc4_ = this.§=!>§.packages.pack;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc4_,_loc3_));
                                    break loop0;
                                 }
                                 addr140:
                                 if(!_loc5_)
                                 {
                                    §"!C§.§^n§.§7p§(this.§?!G§);
                                    if(!(_loc5_ && this))
                                    {
                                       addr155:
                                       §§push(true);
                                       if(_loc6_ || _loc3_)
                                       {
                                          return §§pop();
                                       }
                                    }
                                    else
                                    {
                                       addr164:
                                       §§push(false);
                                    }
                                    return §§pop();
                                 }
                                 §§goto(addr164);
                                 addr139:
                                 addr137:
                              }
                              §§goto(addr140);
                           }
                           §§goto(addr155);
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr139);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc3_,_loc4_);
                     if(!_loc5_)
                     {
                        §"!C§.§^n§.§>!3§(_loc2_);
                     }
                     continue;
                  }
                  §§goto(addr140);
               }
            }
            §§goto(addr164);
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
         if(!_loc6_)
         {
            §§push(_loc2_);
            if(!_loc6_)
            {
               if(§§pop() != §#!,§.STATE_STATUS_RUNNING)
               {
                  if(_loc7_ || _loc3_)
                  {
                     §§goto(addr40);
                  }
               }
               §§push(this.§ =§);
               if(!_loc6_)
               {
                  §§push(!§§pop());
                  if(!(_loc6_ && _loc3_))
                  {
                     addr60:
                     if(§§pop())
                     {
                        if(!_loc6_)
                        {
                           addr64:
                           §§pop();
                           if(_loc7_ || _loc2_)
                           {
                              addr72:
                              §§push(this.§#!C§());
                              if(_loc7_)
                              {
                                 addr77:
                                 addr76:
                                 if(§§pop())
                                 {
                                    if(_loc7_ || param1)
                                    {
                                       addr95:
                                       this.§ =§ = true;
                                    }
                                 }
                                 §§push(Math.min(1,§"!C§.§^n§.§4"§()) * 9);
                                 if(_loc7_ || _loc2_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc3_:* = §§pop();
                                 var _loc4_:Number = Math.min(1,(getTimer() - this.§,!?§) / §?+§);
                                 §§push(_loc3_);
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() + _loc4_);
                                    if(_loc7_ || _loc3_)
                                    {
                                       §§push(§§pop() / 10);
                                       if(!(_loc6_ && param1))
                                       {
                                          addr148:
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc5_:* = §§pop();
                                    if(_loc7_)
                                    {
                                       this.setLoadingPercentage(_loc5_);
                                       if(_loc7_)
                                       {
                                          §§push(§"!C§.§^n§);
                                          if(_loc7_)
                                          {
                                             if(§§pop().§4"§() >= 1)
                                             {
                                                if(_loc7_ || param1)
                                                {
                                                   addr183:
                                                   §"!C§.§^n§.§`5§();
                                                   if(!_loc6_)
                                                   {
                                                      §§goto(addr186);
                                                   }
                                                }
                                             }
                                             return §#!,§.STATE_STATUS_RUNNING;
                                          }
                                       }
                                       §§goto(addr183);
                                    }
                                    addr186:
                                    return §#!,§.STATE_STATUS_COMPLETED;
                                 }
                                 §§goto(addr148);
                              }
                              §§goto(addr77);
                           }
                           §§goto(addr95);
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr64);
               }
               §§goto(addr60);
            }
            addr40:
            return _loc2_;
         }
         §§goto(addr72);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
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
            §[0§.removeChild(this.§&G§);
            if(!_loc1_)
            {
               this.§&G§ = null;
               if(_loc2_ || _loc1_)
               {
                  addr45:
                  super.cleanup();
               }
               return;
            }
         }
         §§goto(addr45);
      }
      
      private function §?!G§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            super.setViewSize(param1,param2);
            if(!_loc3_)
            {
               if(this.§&G§)
               {
                  if(_loc3_ && this)
                  {
                  }
               }
               §§goto(addr87);
            }
            this.§&G§.x = param1 - this.§&G§.width >> 1;
            if(!(_loc3_ && this))
            {
               this.§&G§.y = param2 - this.§&G§.height >> 1;
            }
         }
         addr87:
      }
   }
}
