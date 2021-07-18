package §"§
{
   import §31§.§^!K§;
   import §3@§.§>#§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §;!?§ extends §%!$§
   {
      
      public static const §3!?§:String = "load";
      
      public static var §4!c§:uint = 4000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §3!?§ = "load";
         }
         do
         {
            §4!c§ = 4000;
         }
         while(_loc2_);
         
      }
      
      private var §?![§:Boolean = false;
      
      private var §#M§:uint;
      
      private var §`!K§:Boolean = false;
      
      public var §7!§:XML;
      
      public var §3!0§:XML;
      
      public var §=b§:DisplayObjectContainer;
      
      protected var §1!<§:String;
      
      protected var §,G§:String;
      
      public function §;!?§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || param3)
         {
            this.§1!<§ = param4;
            loop0:
            while(true)
            {
               this.§,G§ = param5;
               while(true)
               {
                  super(param1,param2);
                  continue loop0;
                  addr57:
                  if(_loc7_ || param1)
                  {
                     return;
                     addr64:
                  }
               }
            }
         }
         §§goto(addr92);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            do
            {
               §>#§.init(§'!A§("connectionProfileId"));
               do
               {
                  if(!§^!K§.§'I§.§-!U§())
                  {
                     while(true)
                     {
                        this.§8!b§();
                        while(true)
                        {
                        }
                     }
                     addr56:
                  }
                  do
                  {
                     §>!E§(true);
                     if(!(_loc1_ || _loc1_))
                     {
                        continue;
                     }
                  }
                  while(!_loc1_);
                  
               }
               while(!_loc1_);
               
            }
            while(!_loc1_);
            
            return;
         }
         §§goto(addr56);
      }
      
      protected function §8!b§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §^!K§.§'I§.init(§>#§.§`g§(),this.§1!<§,this.§,G§,null);
         }
      }
      
      public function §=c§(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§=b§ = param1;
         }
      }
      
      public function §8!-§(param1:XML) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§7!§ = param1;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.activate();
         }
         loop0:
         while(true)
         {
            §8!2§.addChild(this.§=b§);
            do
            {
               this.setLoadingPercentage(0);
               continue loop0;
            }
            while(_loc2_);
            
            return;
         }
      }
      
      private function §@V§() : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         if(!(_loc7_ && _loc1_))
         {
            if(§^!K§.§'I§.§?!+§())
            {
               addr36:
               var _loc4_:* = 0;
               var _loc5_:* = this.§7!§.Library;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc5_,_loc4_));
                  if(_loc6_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc4_,_loc5_);
                        if(!_loc7_)
                        {
                           if(_loc1_.@startupLoad.toString().toLowerCase() != "true")
                           {
                              continue;
                           }
                           if(_loc7_ && this)
                           {
                              continue;
                           }
                        }
                        §^!K§.§'I§.§ S§(_loc1_);
                        continue;
                     }
                     if(_loc6_ || _loc2_)
                     {
                        if(_loc6_)
                        {
                           if(!(_loc7_ && _loc2_))
                           {
                              §§push(0);
                              if(!_loc7_)
                              {
                                 _loc4_ = §§pop();
                                 if(_loc6_ || _loc1_)
                                 {
                                    _loc5_ = this.§7!§.libraries.library;
                                    loop1:
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc5_,_loc4_));
                                       if(!_loc7_)
                                       {
                                          if(§§pop())
                                          {
                                             _loc1_ = §§nextvalue(_loc4_,_loc5_);
                                             if(!_loc7_)
                                             {
                                                if(_loc1_.@startupLoad.toString().toLowerCase() != "true")
                                                {
                                                   continue;
                                                }
                                                if(_loc7_ && _loc1_)
                                                {
                                                   continue;
                                                }
                                             }
                                             §^!K§.§'I§.§ S§(_loc1_);
                                             continue;
                                          }
                                          if(!(_loc7_ && _loc1_))
                                          {
                                             addr155:
                                             if(_loc6_)
                                             {
                                                addr158:
                                                if(_loc6_)
                                                {
                                                   §§push(0);
                                                   if(_loc6_ || _loc1_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      if(!_loc7_)
                                                      {
                                                         _loc5_ = this.§7!§.config.xml;
                                                         while(true)
                                                         {
                                                            §§push(§§hasnext(_loc5_,_loc4_));
                                                            if(_loc6_)
                                                            {
                                                               break loop1;
                                                            }
                                                            break loop0;
                                                         }
                                                         addr191:
                                                      }
                                                      addr217:
                                                      _loc5_ = this.§7!§.packages.pack;
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc5_,_loc4_));
                                                         break loop0;
                                                      }
                                                      addr241:
                                                   }
                                                   addr209:
                                                   _loc4_ = §§pop();
                                                   if(!(_loc7_ && this))
                                                   {
                                                      §§goto(addr217);
                                                   }
                                                }
                                                return true;
                                                addr276:
                                             }
                                             addr244:
                                             if(!_loc7_)
                                             {
                                                §^!K§.§'I§.§5!S§(this.§4!f§);
                                             }
                                             §§goto(addr276);
                                          }
                                          §§goto(addr244);
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          if(_loc6_)
                                          {
                                             if(_loc6_)
                                             {
                                                if(!(_loc7_ && _loc1_))
                                                {
                                                   §§goto(addr209);
                                                   §§push(0);
                                                }
                                                §§goto(addr276);
                                             }
                                             §§goto(addr217);
                                          }
                                          §§goto(addr243);
                                       }
                                       else
                                       {
                                          _loc2_ = §§nextvalue(_loc4_,_loc5_);
                                          if(!_loc7_)
                                          {
                                             §^!K§.§'I§.§ S§(_loc2_);
                                          }
                                          §§goto(addr191);
                                       }
                                    }
                                 }
                                 §§goto(addr158);
                              }
                              §§goto(addr209);
                           }
                        }
                        §§goto(addr158);
                     }
                     §§goto(addr155);
                  }
                  break;
               }
               while(§§pop())
               {
                  _loc3_ = §§nextvalue(_loc4_,_loc5_);
                  if(_loc6_ || _loc2_)
                  {
                     §^!K§.§'I§.§ S§(_loc3_);
                  }
                  §§goto(addr241);
               }
               §§goto(addr243);
            }
            else
            {
               §§push(false);
               if(_loc6_)
               {
                  return §§pop();
               }
            }
            §§goto(addr158);
         }
         §§goto(addr36);
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
         if(_loc6_)
         {
            §§push(_loc2_);
            if(!(_loc7_ && param1))
            {
               if(§§pop() == §%!$§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§`!K§);
                     loop1:
                     while(true)
                     {
                        §§push(!§§pop());
                        loop2:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 §§pop();
                                 addr80:
                                 while(true)
                                 {
                                    §§push(this.§@V§());
                                    if(!_loc7_)
                                    {
                                       if(!_loc6_)
                                       {
                                          continue loop3;
                                       }
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(!(_loc6_ || this))
                                    {
                                       break;
                                    }
                                    if(_loc7_)
                                    {
                                       continue loop1;
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                           loop5:
                           while(§§pop())
                           {
                              if(!(_loc7_ && param1))
                              {
                                 if(_loc6_)
                                 {
                                    if(_loc7_ && param1)
                                    {
                                       continue loop0;
                                    }
                                    this.§`!K§ = true;
                                 }
                                 else
                                 {
                                    §§goto(addr80);
                                 }
                              }
                              if(_loc7_ && param1)
                              {
                                 addr93:
                                 return _loc2_;
                                 addr92:
                              }
                              while(true)
                              {
                                 if(true)
                                 {
                                    break loop5;
                                 }
                                 continue loop0;
                              }
                           }
                           §§push(Math.min(1,§^!K§.§'I§.§+!O§()) * 9);
                           if(_loc6_ || _loc3_)
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc3_:* = §§pop();
                           var _loc4_:Number = Math.min(1,(getTimer() - this.§#M§) / §4!c§);
                           §§push(_loc3_);
                           if(_loc6_ || _loc2_)
                           {
                              §§push(§§pop() + _loc4_);
                              if(_loc6_ || param1)
                              {
                                 addr151:
                                 §§push(§§pop() / 10);
                                 if(_loc6_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              var _loc5_:* = §§pop();
                              if(_loc6_)
                              {
                                 this.setLoadingPercentage(_loc5_);
                                 §§push(§^!K§.§'I§);
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    if(§§pop().§+!O§() < 1)
                                    {
                                       return §%!$§.STATE_STATUS_RUNNING;
                                    }
                                    §§push(§^!K§.§'I§);
                                 }
                                 §§pop().§`n§();
                              }
                              return §%!$§.STATE_STATUS_COMPLETED;
                           }
                           §§goto(addr151);
                        }
                     }
                  }
               }
               §§goto(addr92);
            }
            §§goto(addr93);
         }
         §§goto(addr71);
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
            §8!2§.removeChild(this.§=b§);
         }
         while(true)
         {
            this.§=b§ = null;
            while(_loc1_ || _loc2_)
            {
               super.cleanup();
               if(_loc1_ || _loc1_)
               {
                  return;
               }
            }
         }
      }
      
      private function §4!f§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super.setViewSize(param1,param2);
            loop0:
            while(this.§=b§)
            {
               if(_loc3_ || param1)
               {
                  this.§=b§.x = param1 - this.§=b§.width >> 1;
               }
               while(true)
               {
                  this.§=b§.y = param2 - this.§=b§.height >> 1;
                  if(_loc3_ || param2)
                  {
                     if(_loc3_ || param2)
                     {
                        break loop0;
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr95);
      }
   }
}
