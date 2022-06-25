package §+0§
{
   import §7X§.§^"§;
   import §[!]§.§ !#§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §;!>§ extends §,!E§
   {
      
      public static const §"!s§:String = "load";
      
      public static var §;!8§:uint = 4000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §"!s§ = "load";
            do
            {
               §;!8§ = 4000;
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      private var §6!3§:Boolean = false;
      
      private var §8!]§:uint;
      
      private var §!!+§:Boolean = false;
      
      public var § !+§:XML;
      
      public var §[!H§:XML;
      
      public var §3!s§:DisplayObjectContainer;
      
      private var §'O§:String;
      
      private var §1q§:String;
      
      public function §;!>§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param2)
         {
            this.§'O§ = param4;
         }
         loop0:
         while(true)
         {
            this.§1q§ = param5;
            while(true)
            {
               super(param1,param2);
               while(_loc7_ || param3)
               {
                  if(_loc7_)
                  {
                     §#!B§ = true;
                     do
                     {
                        §;!8§ = param3;
                     }
                     while(!(_loc7_ || this));
                     
                     if(_loc7_ || param2)
                     {
                        return;
                     }
                     continue;
                     continue;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
         }
         loop0:
         while(true)
         {
            §^"§.init(§+!0§("connectionProfileId"));
            while(true)
            {
               §§push(§ !#§.§7!j§);
               if(_loc2_ || this)
               {
                  if(!§§pop().§ L§())
                  {
                     while(!_loc1_)
                     {
                        §§push(§ !#§.§7!j§);
                        while(true)
                        {
                           §§pop().init(§^"§.§07§(),this.§'O§,this.§1q§,null);
                           addr94:
                           while(true)
                           {
                           }
                        }
                        if(_loc2_ || _loc1_)
                        {
                           continue loop0;
                        }
                     }
                     continue;
                  }
                  while(true)
                  {
                     §6k§(true);
                     if(_loc1_)
                     {
                        continue;
                     }
                     §§goto(addr35);
                  }
                  continue loop0;
               }
               §§goto(addr86);
            }
         }
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§3!s§ = param1;
         }
      }
      
      public function §"!_§(param1:XML) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§ !+§ = param1;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.activate();
            while(true)
            {
               §2O§.addChild(this.§3!s§);
               while(!(_loc2_ && _loc2_))
               {
                  this.setLoadingPercentage(0);
                  do
                  {
                     this.§8!]§ = getTimer();
                  }
                  while(!_loc1_);
                  
                  if(_loc2_ && _loc1_)
                  {
                     continue;
                  }
                  return;
                  addr57:
               }
            }
         }
         §§goto(addr57);
      }
      
      private function § z§() : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(!_loc6_)
         {
            if(§ !#§.§7!j§.§'!P§())
            {
               addr28:
               var _loc3_:int = 0;
               var _loc4_:* = this.§ !+§.Library;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(_loc5_ || this)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(!(_loc6_ && this))
                        {
                           if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
                           {
                              if(!_loc6_)
                              {
                                 § !#§.§7!j§.§]!4§(_loc1_);
                              }
                           }
                        }
                        continue;
                     }
                     if(!_loc6_)
                     {
                        if(_loc5_)
                        {
                           if(!_loc6_)
                           {
                              _loc3_ = 0;
                              if(!(_loc6_ && _loc2_))
                              {
                                 _loc4_ = this.§ !+§.packages.pack;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc4_,_loc3_));
                                    break loop0;
                                 }
                                 addr119:
                                 if(_loc5_ || _loc3_)
                                 {
                                    § !#§.§7!j§.§=g§(this.§2W§);
                                 }
                                 addr118:
                                 addr116:
                              }
                              §§goto(addr119);
                           }
                           §§goto(addr152);
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr118);
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
                        § !#§.§7!j§.§]!4§(_loc2_);
                     }
                     continue;
                  }
                  §§goto(addr119);
               }
            }
            else
            {
               §§push(false);
               if(_loc5_ || _loc1_)
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
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc7_ && param1))
         {
            §§push(_loc2_);
            if(_loc6_)
            {
               if(§§pop() == §,!E§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§!!+§);
                     if(!_loc7_)
                     {
                        §§push(!§§pop());
                        loop1:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop5:
                              while(true)
                              {
                                 §§pop();
                                 loop4:
                                 for(; _loc6_; continue loop5)
                                 {
                                    §§push(this.§ z§());
                                    if(!(_loc7_ && this))
                                    {
                                       if(_loc6_)
                                       {
                                          if(_loc6_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             while(true)
                                             {
                                             }
                                             addr46:
                                          }
                                          continue loop1;
                                       }
                                       continue loop5;
                                    }
                                    while(§§pop())
                                    {
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          if(_loc7_ && param1)
                                          {
                                             continue loop4;
                                          }
                                          this.§!!+§ = true;
                                       }
                                       if(!(_loc6_ || _loc2_))
                                       {
                                          break loop0;
                                       }
                                       if(true)
                                       {
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    §§push(Math.min(1,§ !#§.§7!j§.§7G§()) * 9);
                                    if(!_loc7_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc3_:* = §§pop();
                                    var _loc4_:Number = Math.min(1,(getTimer() - this.§8!]§) / §;!8§);
                                    §§push(_loc3_);
                                    if(!_loc7_)
                                    {
                                       §§push(§§pop() + _loc4_);
                                       if(!(_loc7_ && param1))
                                       {
                                          addr141:
                                          §§push(§§pop() / 10);
                                          if(!(_loc7_ && _loc2_))
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       var _loc5_:* = §§pop();
                                       if(_loc6_ || _loc3_)
                                       {
                                          this.setLoadingPercentage(_loc5_);
                                          §§push(§ !#§.§7!j§);
                                          if(_loc6_)
                                          {
                                             §§goto(addr160);
                                          }
                                          §§pop().§=p§();
                                          addr217:
                                          if(_loc7_ && _loc2_)
                                          {
                                             §§goto(addr217);
                                          }
                                          return §,!E§.STATE_STATUS_COMPLETED;
                                       }
                                       addr160:
                                       if(§§pop().§7G§() >= 1)
                                       {
                                          §§push(§ !#§.§7!j§);
                                       }
                                       return §,!E§.STATE_STATUS_RUNNING;
                                    }
                                    §§goto(addr141);
                                 }
                                 continue loop0;
                              }
                              addr82:
                           }
                           §§goto(addr46);
                        }
                     }
                     §§goto(addr82);
                  }
                  addr92:
                  §§push(_loc2_);
               }
               §§goto(addr92);
            }
            return §§pop();
         }
         §§goto(addr92);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
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
            §2O§.removeChild(this.§3!s§);
         }
         while(true)
         {
            this.§3!s§ = null;
            while(!_loc2_)
            {
               super.cleanup();
               if(!_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      private function §2W§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.setViewSize(param1,param2);
            loop0:
            while(this.§3!s§)
            {
               if(_loc3_ || param1)
               {
                  this.§3!s§.x = param1 - this.§3!s§.width >> 1;
               }
               while(true)
               {
                  this.§3!s§.y = param2 - this.§3!s§.height >> 1;
                  if(_loc3_ || this)
                  {
                     if(!_loc4_)
                     {
                        break loop0;
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr85);
      }
   }
}
