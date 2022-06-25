package §7g§
{
   import §+F§.§"o§;
   import §6!F§.§9A§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §'!;§ extends §1Q§
   {
      
      public static const §>9§:String = "load";
      
      public static var §true§:uint = 4000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §>9§ = "load";
            if(_loc2_ || _loc1_)
            {
               addr29:
               §true§ = 4000;
            }
            return;
         }
         §§goto(addr29);
      }
      
      private var §1V§:Boolean = false;
      
      private var §86§:uint;
      
      private var §%o§:Boolean = false;
      
      public var §extends§:XML;
      
      public var §?!H§:XML;
      
      public var §2-§:DisplayObjectContainer;
      
      protected var §+!2§:String;
      
      protected var §1p§:String;
      
      public function §'!;§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            this.§+!2§ = param4;
            if(_loc6_)
            {
               addr43:
               this.§1p§ = param5;
               if(_loc6_)
               {
                  super(param1,param2);
                  if(_loc6_ || this)
                  {
                     §§goto(addr59);
                  }
               }
               §§goto(addr69);
            }
            addr59:
            §>M§ = true;
            if(!(_loc7_ && this))
            {
               addr69:
               §true§ = param3;
            }
            return;
         }
         §§goto(addr43);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            if(!_loc2_)
            {
               §9A§.init(§'a§("connectionProfileId"));
               if(_loc1_ || _loc1_)
               {
                  if(!§"o§.§@6§.§38§())
                  {
                     if(_loc1_ || this)
                     {
                        addr65:
                        this.§]"§();
                        if(_loc2_)
                        {
                        }
                     }
                     §§goto(addr72);
                  }
                  §#!L§(true);
                  §§goto(addr72);
               }
               addr72:
               return;
            }
         }
         §§goto(addr65);
      }
      
      protected function §]"§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §"o§.§@6§.init(§9A§.§,!5§(),this.§+!2§,this.§1p§,null);
         }
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§2-§ = param1;
         }
      }
      
      public function §'!+§(param1:XML) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§extends§ = param1;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.activate();
            if(_loc2_)
            {
               addr38:
               §,!7§.addChild(this.§2-§);
               if(_loc2_)
               {
                  this.setLoadingPercentage(0);
                  if(_loc1_)
                  {
                  }
                  §§goto(addr53);
               }
               this.§86§ = getTimer();
            }
            addr53:
            return;
         }
         §§goto(addr38);
      }
      
      private function §9!L§() : Boolean
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         if(!(_loc6_ && _loc3_))
         {
            if(§"o§.§@6§.§6!§())
            {
               addr37:
               var _loc4_:* = 0;
               var _loc5_:* = this.§extends§.Library;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc5_,_loc4_));
                  if(_loc7_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc4_,_loc5_);
                        if(!_loc6_)
                        {
                           if(_loc1_.@startupLoad.toString().toLowerCase() != "true")
                           {
                              continue;
                           }
                           if(!(_loc7_ || this))
                           {
                              continue;
                           }
                        }
                        §"o§.§@6§.§]<§(_loc1_);
                        continue;
                     }
                     if(!(_loc6_ && _loc3_))
                     {
                        if(_loc7_ || _loc1_)
                        {
                           if(_loc7_)
                           {
                              §§push(0);
                              if(!(_loc6_ && _loc1_))
                              {
                                 _loc4_ = §§pop();
                                 if(_loc7_)
                                 {
                                    _loc5_ = this.§extends§.libraries.library;
                                    loop1:
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc5_,_loc4_));
                                       if(!(_loc6_ && this))
                                       {
                                          if(§§pop())
                                          {
                                             _loc1_ = §§nextvalue(_loc4_,_loc5_);
                                             if(!(_loc6_ && _loc3_))
                                             {
                                                if(_loc1_.@startupLoad.toString().toLowerCase() != "true")
                                                {
                                                   continue;
                                                }
                                                if(!_loc7_)
                                                {
                                                   continue;
                                                }
                                             }
                                             §"o§.§@6§.§]<§(_loc1_);
                                             continue;
                                          }
                                          if(_loc7_ || _loc1_)
                                          {
                                             addr161:
                                             if(!(_loc6_ && _loc2_))
                                             {
                                                §§push(0);
                                                if(_loc7_)
                                                {
                                                   addr173:
                                                   _loc4_ = §§pop();
                                                   if(!_loc6_)
                                                   {
                                                      _loc5_ = this.§extends§.config.xml;
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc5_,_loc4_));
                                                         if(_loc7_)
                                                         {
                                                            break loop0;
                                                         }
                                                         break loop1;
                                                      }
                                                      addr200:
                                                   }
                                                   addr226:
                                                   _loc5_ = this.§extends§.packages.pack;
                                                   while(true)
                                                   {
                                                      §§push(§§hasnext(_loc5_,_loc4_));
                                                      break loop1;
                                                   }
                                                   addr255:
                                                }
                                                addr218:
                                                _loc4_ = §§pop();
                                                if(!(_loc6_ && _loc2_))
                                                {
                                                   §§goto(addr226);
                                                }
                                                addr258:
                                                if(!_loc7_)
                                                {
                                                }
                                                addr278:
                                                return false;
                                                addr277:
                                             }
                                             §"o§.§@6§.§^]§(this.§&t§);
                                             if(_loc7_ || _loc1_)
                                             {
                                                addr273:
                                                §§push(true);
                                                if(!_loc6_)
                                                {
                                                   return §§pop();
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr277);
                                             }
                                             §§goto(addr278);
                                          }
                                          §§goto(addr258);
                                       }
                                       break;
                                    }
                                    while(§§pop())
                                    {
                                       _loc3_ = §§nextvalue(_loc4_,_loc5_);
                                       if(_loc7_)
                                       {
                                          §"o§.§@6§.§]<§(_loc3_);
                                       }
                                       §§goto(addr255);
                                    }
                                    §§goto(addr257);
                                    addr256:
                                 }
                                 addr209:
                                 if(_loc7_ || _loc2_)
                                 {
                                    addr217:
                                    §§goto(addr218);
                                    §§push(0);
                                 }
                                 §§goto(addr273);
                              }
                              §§goto(addr173);
                           }
                           §§goto(addr217);
                        }
                        §§goto(addr218);
                     }
                     §§goto(addr161);
                  }
                  break;
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     if(!_loc6_)
                     {
                        if(!_loc6_)
                        {
                           §§goto(addr209);
                        }
                        §§goto(addr173);
                     }
                     §§goto(addr257);
                  }
                  else
                  {
                     _loc2_ = §§nextvalue(_loc4_,_loc5_);
                     if(!(_loc6_ && _loc2_))
                     {
                        §"o§.§@6§.§]<§(_loc2_);
                     }
                     §§goto(addr200);
                  }
               }
            }
            §§goto(addr218);
         }
         §§goto(addr37);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(super.run(param1));
         if(!(_loc7_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc6_ || this)
         {
            §§push(_loc2_);
            if(!_loc7_)
            {
               if(§§pop() != §1Q§.STATE_STATUS_RUNNING)
               {
                  if(!_loc7_)
                  {
                     §§push(_loc2_);
                  }
                  else
                  {
                     addr99:
                     this.§%o§ = true;
                     §§push(Math.min(1,§"o§.§@6§.§;W§()) * 9);
                     if(!(_loc7_ && param1))
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     var _loc4_:Number = Math.min(1,(getTimer() - this.§86§) / §true§);
                     §§push(_loc3_);
                     if(!_loc7_)
                     {
                        §§push(§§pop() + _loc4_);
                        if(_loc6_)
                        {
                           §§push(§§pop() / 10);
                           if(!(_loc7_ && _loc2_))
                           {
                              addr147:
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc5_:* = §§pop();
                        if(_loc6_ || _loc2_)
                        {
                           this.setLoadingPercentage(_loc5_);
                           if(!_loc7_)
                           {
                              §§push(§"o§.§@6§);
                              if(_loc6_)
                              {
                                 if(§§pop().§;W§() >= 1)
                                 {
                                 }
                                 §§goto(addr193);
                              }
                              §§pop().§1!8§();
                              if(!_loc7_)
                              {
                                 return §1Q§.STATE_STATUS_COMPLETED;
                              }
                           }
                           addr193:
                           if(!(_loc7_ && this))
                           {
                              addr185:
                              §§push(§"o§.§@6§);
                           }
                           return §1Q§.STATE_STATUS_RUNNING;
                        }
                        §§goto(addr185);
                     }
                     §§goto(addr147);
                  }
               }
               else
               {
                  §§push(this.§%o§);
                  if(!_loc7_)
                  {
                     §§push(!§§pop());
                     if(_loc6_ || this)
                     {
                        if(§§pop())
                        {
                           if(_loc6_ || param1)
                           {
                              §§pop();
                              if(_loc6_)
                              {
                                 §§push(this.§9!L§());
                                 if(_loc6_ || this)
                                 {
                                 }
                                 addr96:
                                 if(§§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                    }
                                 }
                              }
                              §§goto(addr99);
                           }
                        }
                        §§goto(addr96);
                     }
                     §§push(Boolean(§§pop()));
                  }
                  §§goto(addr96);
               }
               §§goto(addr99);
            }
            return §§pop();
         }
         §§goto(addr99);
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
         if(_loc1_ || this)
         {
            §,!7§.removeChild(this.§2-§);
            if(_loc1_)
            {
               §§goto(addr39);
            }
            §§goto(addr49);
         }
         addr39:
         this.§2-§ = null;
         if(_loc1_ || this)
         {
            addr49:
            super.cleanup();
         }
      }
      
      private function §&t§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.setViewSize(param1,param2);
            if(_loc4_)
            {
               if(this.§2-§)
               {
                  if(!_loc3_)
                  {
                     this.§2-§.x = param1 - this.§2-§.width >> 1;
                     if(_loc4_ || _loc3_)
                     {
                     }
                     §§goto(addr77);
                  }
                  this.§2-§.y = param2 - this.§2-§.height >> 1;
               }
            }
         }
         addr77:
      }
   }
}
