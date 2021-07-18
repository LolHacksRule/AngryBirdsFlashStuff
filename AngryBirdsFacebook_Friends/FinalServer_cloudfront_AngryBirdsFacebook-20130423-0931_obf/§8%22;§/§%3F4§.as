package §8";§
{
   import §#"A§.§'"U§;
   import §2<§.§8M§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §?4§ extends §+d§
   {
      
      public static const STATE_NAME:String = "load";
      
      public static var §6!C§:uint = 4000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            STATE_NAME = "load";
         }
         do
         {
            §6!C§ = 4000;
         }
         while(!_loc1_);
         
      }
      
      private var §8r§:Boolean = false;
      
      private var §^!=§:uint;
      
      private var § g§:Boolean = false;
      
      public var §'!i§:XML;
      
      public var §-"Z§:XML;
      
      public var §+"K§:DisplayObjectContainer;
      
      protected var §?!<§:String;
      
      protected var §>"Y§:String;
      
      public function §?4§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            this.§?!<§ = param4;
            while(true)
            {
               this.§>"Y§ = param5;
               loop1:
               while(_loc6_ || param2)
               {
                  super(param1,param2);
                  do
                  {
                     §]!§ = true;
                     while(!(_loc7_ && this))
                     {
                        §6!C§ = param3;
                        if(_loc7_)
                        {
                           continue;
                        }
                        §§goto(addr39);
                     }
                     continue loop1;
                  }
                  while(!_loc6_);
                  
                  return;
               }
            }
         }
         §§goto(addr69);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            while(true)
            {
               §8M§.init(§+!a§("connectionProfileId"));
               loop1:
               while(true)
               {
                  if(§'"U§.§&"5§.§+@§())
                  {
                     while(true)
                     {
                        §get §(true);
                        if(_loc1_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  else
                  {
                     addr23:
                  }
                  if(!(_loc2_ && _loc2_))
                  {
                     this.initLoadManager();
                  }
                  continue;
                  return;
               }
               if(_loc2_ && this)
               {
                  continue;
               }
               while(true)
               {
                  §§goto(addr23);
               }
               addr78:
            }
         }
         §§goto(addr78);
      }
      
      protected function initLoadManager() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §'"U§.§&"5§.init(§8M§.§+!y§(),this.§?!<§,this.§>"Y§,null);
         }
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§+"K§ = param1;
         }
      }
      
      public function §,"0§(param1:XML) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§'!i§ = param1;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.activate();
            while(true)
            {
               §?!T§.addChild(this.§+"K§);
               addr56:
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               return;
               addr63:
            }
         }
         while(true)
         {
            this.setLoadingPercentage(0);
            while(_loc2_)
            {
               this.§^!=§ = getTimer();
               if(!_loc2_)
               {
                  continue;
               }
               §§goto(addr56);
            }
         }
         §§goto(addr63);
      }
      
      private function §&!p§() : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         if(_loc6_)
         {
            if(§'"U§.§&"5§.§3!,§())
            {
               addr31:
               var _loc4_:* = 0;
               var _loc5_:* = this.§'!i§.Library;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc5_,_loc4_));
                  if(!(_loc7_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc4_,_loc5_);
                        if(!(_loc7_ && _loc3_))
                        {
                           if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
                           {
                              if(!(_loc7_ && _loc3_))
                              {
                                 §'"U§.§&"5§.§!x§(_loc1_);
                              }
                           }
                        }
                        continue;
                     }
                     if(_loc6_)
                     {
                        if(_loc6_)
                        {
                           if(!_loc7_)
                           {
                              §§push(0);
                              if(!(_loc7_ && _loc3_))
                              {
                                 _loc4_ = §§pop();
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    _loc5_ = this.§'!i§.libraries.library;
                                    addr272:
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc5_,_loc4_));
                                       if(!(_loc7_ && _loc1_))
                                       {
                                          break loop0;
                                       }
                                       break;
                                    }
                                    loop3:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          addr274:
                                          if(_loc6_)
                                          {
                                             §'"U§.§&"5§.§+g§(this.§3e§);
                                             §§push(true);
                                             addr277:
                                             addr301:
                                          }
                                          else
                                          {
                                             addr279:
                                             §§push(false);
                                             if(!(_loc7_ && _loc3_))
                                             {
                                                return §§pop();
                                             }
                                          }
                                          return §§pop();
                                          addr273:
                                       }
                                       _loc3_ = §§nextvalue(_loc4_,_loc5_);
                                       if(_loc6_ || _loc1_)
                                       {
                                          §'"U§.§&"5§.§!x§(_loc3_);
                                       }
                                       addr271:
                                       while(true)
                                       {
                                          continue loop3;
                                       }
                                       §§goto(addr273);
                                    }
                                    addr272:
                                    addr134:
                                 }
                                 addr163:
                                 if(!_loc7_)
                                 {
                                    §§push(0);
                                    if(_loc6_ || this)
                                    {
                                       _loc4_ = §§pop();
                                       if(_loc6_ || _loc1_)
                                       {
                                          _loc5_ = this.§'!i§.config.xml;
                                          while(true)
                                          {
                                             §§push(§§hasnext(_loc5_,_loc4_));
                                             if(!_loc7_)
                                             {
                                                if(§§pop())
                                                {
                                                   _loc2_ = §§nextvalue(_loc4_,_loc5_);
                                                   if(!(_loc7_ && _loc1_))
                                                   {
                                                      §'"U§.§&"5§.§!x§(_loc2_);
                                                   }
                                                   continue;
                                                }
                                                if(_loc6_ || this)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      if(_loc6_ || _loc1_)
                                                      {
                                                         addr229:
                                                         _loc4_ = 0;
                                                         if(!(_loc7_ && _loc1_))
                                                         {
                                                            addr237:
                                                            _loc5_ = this.§'!i§.packages.pack;
                                                            §§goto(addr271);
                                                         }
                                                         §§goto(addr274);
                                                      }
                                                      §§goto(addr277);
                                                   }
                                                }
                                                §§goto(addr274);
                                             }
                                             §§goto(addr272);
                                          }
                                       }
                                       §§goto(addr274);
                                    }
                                 }
                              }
                              §§goto(addr229);
                           }
                           §§goto(addr301);
                        }
                     }
                     §§goto(addr274);
                  }
                  break;
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     if(!_loc7_)
                     {
                        if(_loc6_ || _loc1_)
                        {
                           §§goto(addr163);
                        }
                        §§goto(addr237);
                     }
                     §§goto(addr274);
                  }
                  else
                  {
                     _loc1_ = §§nextvalue(_loc4_,_loc5_);
                     if(_loc6_)
                     {
                        if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
                        {
                           if(!(_loc7_ && this))
                           {
                              addr130:
                              §'"U§.§&"5§.§!x§(_loc1_);
                           }
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr130);
                  }
               }
            }
            §§goto(addr279);
         }
         §§goto(addr31);
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
         if(_loc6_ || _loc2_)
         {
            §§push(_loc2_);
            if(!(_loc7_ && param1))
            {
               if(§§pop() == §+d§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§ g§);
                     if(!_loc7_)
                     {
                        §§push(!§§pop());
                        loop1:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              while(true)
                              {
                                 loop3:
                                 while(§§pop())
                                 {
                                    if(_loc6_ || _loc2_)
                                    {
                                       if(_loc7_ && this)
                                       {
                                          loop4:
                                          while(!_loc7_)
                                          {
                                             §§push(this.§&!p§());
                                             if(!(_loc7_ && param1))
                                             {
                                                if(_loc6_ || _loc3_)
                                                {
                                                   continue loop1;
                                                }
                                                while(true)
                                                {
                                                   §§pop();
                                                   continue loop4;
                                                }
                                                continue;
                                             }
                                             continue loop3;
                                          }
                                          continue loop0;
                                       }
                                       if(!_loc6_)
                                       {
                                          break loop0;
                                       }
                                       this.§ g§ = true;
                                    }
                                    if(true)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                                 §§push(Math.min(1,§'"U§.§&"5§.§-Z§()) * 9);
                                 if(!_loc7_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc3_:* = §§pop();
                                 var _loc4_:Number = Math.min(1,(getTimer() - this.§^!=§) / §6!C§);
                                 §§push(_loc3_);
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    §§push(§§pop() + _loc4_);
                                    if(!_loc7_)
                                    {
                                       addr151:
                                       §§push(§§pop() / 10);
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          addr160:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc5_:* = §§pop();
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          this.setLoadingPercentage(_loc5_);
                                          addr227:
                                          §§push(§'"U§.§&"5§);
                                          if(_loc6_ || this)
                                          {
                                             if(§§pop().§-Z§() >= 1)
                                             {
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   addr220:
                                                   §'"U§.§&"5§.§8!`§();
                                                }
                                                if(_loc7_)
                                                {
                                                   §§goto(addr227);
                                                }
                                                return §+d§.STATE_STATUS_COMPLETED;
                                                addr223:
                                             }
                                             return §+d§.STATE_STATUS_RUNNING;
                                          }
                                          §§goto(addr220);
                                       }
                                       §§goto(addr223);
                                    }
                                    §§goto(addr160);
                                 }
                                 §§goto(addr151);
                              }
                              continue;
                              addr56:
                           }
                        }
                     }
                     §§goto(addr87);
                  }
                  addr112:
                  §§push(_loc2_);
               }
               §§goto(addr112);
            }
            return §§pop();
         }
         §§goto(addr112);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
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
            §?!T§.removeChild(this.§+"K§);
            do
            {
               this.§+"K§ = null;
               do
               {
                  super.cleanup();
               }
               while(!_loc2_);
               
            }
            while(_loc1_ && this);
            
         }
      }
      
      private function §3e§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            super.setViewSize(param1,param2);
            while(this.§+"K§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  if(!_loc4_)
                  {
                     continue;
                  }
                  this.§+"K§.x = param1 - this.§+"K§.width >> 1;
               }
               do
               {
                  this.§+"K§.y = param2 - this.§+"K§.height >> 1;
               }
               while(_loc3_);
               
               break;
            }
            return;
         }
         §§goto(addr76);
      }
   }
}
