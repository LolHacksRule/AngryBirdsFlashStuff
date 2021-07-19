package §-H§
{
   import §9!=§.§[!6§;
   import §?p§.§@d§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §@!-§ extends §&c§
   {
      
      public static const §9!P§:String = "load";
      
      public static var §#!,§:uint = 4000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §@!-§))
         {
            §9!P§ = "load";
            do
            {
               §#!,§ = 4000;
            }
            while(!_loc2_);
            
         }
      }
      
      private var §9Q§:Boolean = false;
      
      private var §#!P§:uint;
      
      private var §&K§:Boolean = false;
      
      public var §!J§:XML;
      
      public var §;!M§:XML;
      
      public var §2L§:DisplayObjectContainer;
      
      private var §7!E§:String;
      
      private var §",§:String;
      
      public function §@!-§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || this)
         {
            this.§7!E§ = param4;
         }
         while(true)
         {
            this.§",§ = param5;
            while(!_loc7_)
            {
               super(param1,param2);
               do
               {
                  §=!I§ = true;
                  do
                  {
                     §#!,§ = param3;
                  }
                  while(_loc7_);
                  
               }
               while(_loc7_ && param3);
               
               if(!(_loc7_ && param3))
               {
                  return;
               }
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.init();
            while(true)
            {
               §[!6§.init(§ !%§("connectionProfileId"));
               while(true)
               {
                  §§push(§@d§.§%!O§);
                  if(_loc1_ || _loc1_)
                  {
                     if(!§§pop().§&"§())
                     {
                        if(_loc1_)
                        {
                           if(!_loc1_)
                           {
                              break;
                           }
                           while(true)
                           {
                              §§push(§@d§.§%!O§);
                              addr63:
                              while(true)
                              {
                                 §§pop().init(§[!6§.§]Z§(),this.§7!E§,this.§",§,null);
                              }
                           }
                        }
                        while(_loc1_)
                        {
                        }
                        continue;
                        addr71:
                     }
                     while(true)
                     {
                        §^!A§(true);
                        if(!_loc2_)
                        {
                           break;
                        }
                        §§goto(addr71);
                     }
                     return;
                  }
                  §§goto(addr63);
               }
            }
         }
         §§goto(addr61);
      }
      
      public function §3!U§(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§2L§ = param1;
         }
      }
      
      public function §<!!§(param1:XML) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§!J§ = param1;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.activate();
            loop0:
            do
            {
               §?!N§.addChild(this.§2L§);
               while(true)
               {
                  this.setLoadingPercentage(0);
                  while(!(_loc1_ && _loc2_))
                  {
                     this.§#!P§ = getTimer();
                     if(_loc2_ || _loc1_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      private function §1!J§() : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(!(_loc6_ && _loc3_))
         {
            if(§@d§.§%!O§.§@K§())
            {
               addr33:
               var _loc3_:int = 0;
               var _loc4_:* = this.§!J§.Library;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(!(_loc6_ && _loc2_))
                        {
                           if(_loc1_.@startupLoad.toString().toLowerCase() != "true")
                           {
                              continue;
                           }
                           if(!(_loc5_ || _loc3_))
                           {
                              continue;
                           }
                        }
                        §@d§.§%!O§.§%!9§(_loc1_);
                        continue;
                     }
                     if(!_loc6_)
                     {
                        if(!(_loc6_ && _loc2_))
                        {
                           if(!_loc6_)
                           {
                              _loc3_ = 0;
                              if(!_loc6_)
                              {
                                 _loc4_ = this.§!J§.packages.pack;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc4_,_loc3_));
                                    break loop0;
                                 }
                                 addr124:
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    §@d§.§%!O§.§;z§(this.§'@§);
                                    §§push(true);
                                    addr166:
                                 }
                                 else
                                 {
                                    addr134:
                                    §§push(false);
                                    if(!(_loc6_ && this))
                                    {
                                       return §§pop();
                                    }
                                 }
                                 return §§pop();
                                 addr123:
                                 addr121:
                              }
                              §§goto(addr124);
                           }
                           §§goto(addr166);
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr123);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc3_,_loc4_);
                     if(!_loc6_)
                     {
                        §@d§.§%!O§.§%!9§(_loc2_);
                     }
                     continue;
                  }
                  §§goto(addr124);
               }
            }
            §§goto(addr134);
         }
         §§goto(addr33);
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
         if(!(_loc6_ && param1))
         {
            §§push(_loc2_);
            if(!_loc6_)
            {
               if(§§pop() == §&c§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§&K§);
                     if(!_loc6_)
                     {
                        §§push(!§§pop());
                     }
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr96:
                              while(true)
                              {
                                 §§push(this.§1!J§());
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(!(_loc7_ || _loc3_))
                                 {
                                    break;
                                 }
                                 if(!(_loc7_ || this))
                                 {
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        loop4:
                        while(§§pop())
                        {
                           if(!_loc6_)
                           {
                              if(!(_loc7_ || _loc3_))
                              {
                                 continue loop0;
                              }
                              while(true)
                              {
                                 this.§&K§ = true;
                              }
                           }
                           while(true)
                           {
                              if(!(_loc6_ && _loc3_))
                              {
                                 if(!_loc7_)
                                 {
                                    break;
                                 }
                                 if(true)
                                 {
                                    break loop4;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr96);
                           }
                           return _loc2_;
                        }
                        §§push(Math.min(1,§@d§.§%!O§.§ O§()) * 9);
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc3_:* = §§pop();
                        var _loc4_:Number = Math.min(1,(getTimer() - this.§#!P§) / §#!,§);
                        §§push(_loc3_);
                        if(_loc7_ || _loc2_)
                        {
                           §§push(§§pop() + _loc4_);
                           if(_loc7_ || _loc2_)
                           {
                              §§push(§§pop() / 10);
                              if(_loc7_)
                              {
                                 addr166:
                                 §§push(Number(§§pop()));
                              }
                              var _loc5_:* = §§pop();
                              if(_loc7_)
                              {
                                 this.setLoadingPercentage(_loc5_);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§@d§.§%!O§);
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       if(§§pop().§ O§() < 1)
                                       {
                                          return §&c§.STATE_STATUS_RUNNING;
                                       }
                                       if(!_loc7_)
                                       {
                                          continue;
                                       }
                                       while(true)
                                       {
                                          §§push(§@d§.§%!O§);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§pop().§3T§();
                                       continue loop7;
                                    }
                                 }
                                 return §&c§.STATE_STATUS_COMPLETED;
                              }
                              §§goto(addr204);
                           }
                        }
                        §§goto(addr166);
                     }
                  }
               }
               §§goto(addr113);
            }
            §§goto(addr114);
         }
         §§goto(addr73);
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §?!N§.removeChild(this.§2L§);
            while(true)
            {
               this.§2L§ = null;
               while(!(_loc2_ && _loc2_))
               {
                  super.cleanup();
                  if(!(_loc1_ || this))
                  {
                     continue;
                  }
                  return;
                  addr43:
               }
            }
         }
         §§goto(addr43);
      }
      
      private function §'@§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super.setViewSize(param1,param2);
            loop0:
            while(this.§2L§)
            {
               while(true)
               {
                  this.§2L§.x = param1 - this.§2L§.width >> 1;
                  do
                  {
                     this.§2L§.y = param2 - this.§2L§.height >> 1;
                  }
                  while(!_loc3_);
                  
                  if(!_loc4_)
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
         §§goto(addr60);
      }
   }
}
