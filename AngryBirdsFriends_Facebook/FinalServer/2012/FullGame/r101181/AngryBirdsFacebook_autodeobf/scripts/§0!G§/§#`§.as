package §0!G§
{
   import § "C§.§2"=§;
   import §?" §.§=!L§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §#`§ extends §1-§
   {
      
      public static const STATE_NAME:String = "load";
      
      public static var §8"!§:uint = 4000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            STATE_NAME = "load";
            do
            {
               §8"!§ = 4000;
            }
            while(!(_loc2_ || §#`§));
            
         }
      }
      
      private var §?!`§:Boolean = false;
      
      private var § 3§:uint;
      
      private var §9=§:Boolean = false;
      
      public var §^1§:XML;
      
      public var §&j§:XML;
      
      public var §"">§:DisplayObjectContainer;
      
      private var §>!?§:String;
      
      private var §;!k§:String;
      
      public function §#`§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param1))
         {
            this.§>!?§ = param4;
            do
            {
               this.§;!k§ = param5;
               do
               {
                  super(param1,param2);
                  do
                  {
                     §=&§ = true;
                     do
                     {
                        §8"!§ = param3;
                     }
                     while(_loc7_);
                     
                  }
                  while(!_loc6_);
                  
               }
               while(!_loc6_);
               
            }
            while(_loc7_ && param3);
            
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.init();
         }
         loop0:
         while(true)
         {
            §2"=§.init(§5t§("connectionProfileId"));
            while(true)
            {
               §§push(§=!L§.§;"§);
               if(!(_loc1_ && _loc1_))
               {
                  if(§§pop().§6j§())
                  {
                     do
                     {
                        §[#§(true);
                        if(!(_loc2_ || _loc1_))
                        {
                           continue;
                        }
                     }
                     while(!_loc2_);
                     
                     return;
                     addr29:
                  }
                  while(_loc2_)
                  {
                     continue loop0;
                  }
                  continue;
               }
               addr86:
               while(true)
               {
                  §§pop().init(§2"=§.§0!,§(),this.§>!?§,this.§;!k§,null);
               }
               while(true)
               {
                  §§goto(addr29);
               }
            }
         }
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§"">§ = param1;
         }
      }
      
      public function § "-§(param1:XML) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§^1§ = param1;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.activate();
            loop0:
            while(true)
            {
               §3^§.addChild(this.§"">§);
               do
               {
                  this.setLoadingPercentage(0);
                  continue loop0;
               }
               while(!_loc2_);
               
            }
         }
      }
      
      private function §%D§() : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(!_loc5_)
         {
            if(§=!L§.§;"§.§%!D§())
            {
               addr29:
               var _loc3_:* = 0;
               var _loc4_:* = this.§^1§.Library;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!(_loc5_ && _loc3_))
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(_loc6_ || _loc1_)
                        {
                           if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
                           {
                              if(_loc6_)
                              {
                                 §=!L§.§;"§.§+9§(_loc1_);
                              }
                           }
                        }
                        continue;
                     }
                     if(_loc6_)
                     {
                        if(_loc6_)
                        {
                           if(_loc6_)
                           {
                              §§push(0);
                              if(_loc6_ || _loc1_)
                              {
                                 _loc3_ = §§pop();
                                 if(_loc6_)
                                 {
                                    _loc4_ = this.§^1§.libraries.library;
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc4_,_loc3_));
                                       if(!_loc5_)
                                       {
                                          break loop0;
                                       }
                                       break;
                                    }
                                    loop2:
                                    while(§§pop())
                                    {
                                       _loc2_ = §§nextvalue(_loc3_,_loc4_);
                                       if(!(_loc5_ && this))
                                       {
                                          §=!L§.§;"§.§+9§(_loc2_);
                                       }
                                       while(true)
                                       {
                                          continue loop2;
                                       }
                                    }
                                    addr190:
                                    if(!(_loc5_ && _loc3_))
                                    {
                                       §=!L§.§;"§.§@j§(this.§<"A§);
                                       §§push(true);
                                       addr208:
                                    }
                                    else
                                    {
                                       addr210:
                                       §§push(false);
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          return §§pop();
                                       }
                                       addr231:
                                    }
                                    return §§pop();
                                    addr189:
                                    addr137:
                                    addr188:
                                 }
                                 addr156:
                                 if(!_loc5_)
                                 {
                                    addr160:
                                    _loc3_ = 0;
                                    if(_loc6_)
                                    {
                                       addr163:
                                       _loc4_ = this.§^1§.packages.pack;
                                       §§goto(addr187);
                                    }
                                    §§goto(addr190);
                                 }
                                 §§goto(addr231);
                              }
                              §§goto(addr160);
                           }
                           §§goto(addr208);
                        }
                        §§goto(addr163);
                     }
                     §§goto(addr189);
                  }
                  break;
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     if(_loc6_ || this)
                     {
                        if(_loc6_ || this)
                        {
                           §§goto(addr156);
                        }
                        §§goto(addr163);
                     }
                     §§goto(addr190);
                  }
                  else
                  {
                     _loc1_ = §§nextvalue(_loc3_,_loc4_);
                     if(_loc6_ || this)
                     {
                        if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
                        {
                           if(_loc6_ || _loc3_)
                           {
                              §=!L§.§;"§.§+9§(_loc1_);
                           }
                        }
                     }
                     §§goto(addr137);
                  }
               }
            }
            §§goto(addr210);
         }
         §§goto(addr29);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(super.run(param1));
         if(!(_loc6_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc7_ || _loc2_)
         {
            §§push(_loc2_);
            if(_loc7_)
            {
               if(§§pop() != §1-§.STATE_STATUS_RUNNING)
               {
                  if(_loc7_ || this)
                  {
                     §§goto(addr109);
                  }
                  else
                  {
                     while(true)
                     {
                        loop4:
                        for(; !(_loc6_ && this); while(true)
                        {
                           §§pop();
                           continue loop4;
                        })
                        {
                           §§push(this.§%D§());
                           if(_loc7_ || this)
                           {
                              if(!_loc7_)
                              {
                                 continue;
                              }
                              addr49:
                              §§push(Boolean(§§pop()));
                              while(true)
                              {
                                 §§goto(addr49);
                              }
                              addr50:
                           }
                           loop3:
                           while(§§pop())
                           {
                              if(!_loc6_)
                              {
                                 while(true)
                                 {
                                    this.§9=§ = true;
                                 }
                                 addr54:
                              }
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    continue loop4;
                                 }
                                 if(true)
                                 {
                                    break loop3;
                                 }
                                 while(true)
                                 {
                                    §§push(this.§9=§);
                                    if(_loc6_ && _loc2_)
                                    {
                                       continue loop4;
                                    }
                                    §§push(!§§pop());
                                    if(_loc6_)
                                    {
                                       continue loop4;
                                    }
                                    if(§§pop())
                                    {
                                       continue loop4;
                                    }
                                    §§goto(addr50);
                                 }
                              }
                           }
                           §§push(Math.min(1,§=!L§.§;"§.§-!y§()) * 9);
                           if(!_loc6_)
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc3_:* = §§pop();
                           var _loc4_:Number = Math.min(1,(getTimer() - this.§ 3§) / §8"!§);
                           §§push(_loc3_);
                           if(!(_loc6_ && _loc3_))
                           {
                              §§push(§§pop() + _loc4_);
                              if(_loc7_ || _loc2_)
                              {
                                 §§push(§§pop() / 10);
                                 if(_loc6_)
                                 {
                                 }
                                 §§goto(addr157);
                              }
                              §§push(Number(§§pop()));
                           }
                           addr157:
                           var _loc5_:* = §§pop();
                           if(!_loc6_)
                           {
                              this.setLoadingPercentage(_loc5_);
                              addr213:
                              §§push(§=!L§.§;"§);
                              if(!_loc6_)
                              {
                                 if(§§pop().§-!y§() >= 1)
                                 {
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       if(!(_loc7_ || param1))
                                       {
                                          §§goto(addr213);
                                       }
                                       addr208:
                                       §=!L§.§;"§.§5l§();
                                    }
                                    return §1-§.STATE_STATUS_COMPLETED;
                                 }
                                 §§goto(addr161);
                              }
                              §§goto(addr208);
                           }
                           addr161:
                           return §1-§.STATE_STATUS_RUNNING;
                        }
                     }
                  }
               }
               §§goto(addr61);
            }
            addr109:
            return _loc2_;
         }
         §§goto(addr54);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
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
            §3^§.removeChild(this.§"">§);
            while(true)
            {
               this.§"">§ = null;
               while(!_loc2_)
               {
                  super.cleanup();
                  if(_loc1_ || _loc1_)
                  {
                     return;
                     addr43:
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      private function §<"A§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            super.setViewSize(param1,param2);
            while(this.§"">§)
            {
               if(!(_loc3_ && param1))
               {
                  if(!_loc4_)
                  {
                     continue;
                  }
                  this.§"">§.x = param1 - this.§"">§.width >> 1;
                  do
                  {
                     this.§"">§.y = param2 - this.§"">§.height >> 1;
                  }
                  while(!_loc4_);
                  
                  break;
                  addr86:
               }
               §§goto(addr86);
            }
            return;
         }
         §§goto(addr86);
      }
   }
}
