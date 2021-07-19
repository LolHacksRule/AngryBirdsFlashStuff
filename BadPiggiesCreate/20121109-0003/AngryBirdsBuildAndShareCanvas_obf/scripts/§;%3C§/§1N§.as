package §;<§
{
   import §%!K§.§ i§;
   import §^!m§.§6§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §1N§ extends §'B§
   {
      
      public static const §%!Q§:String = "load";
      
      public static var §%H§:uint = 4000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §%!Q§ = "load";
            do
            {
               §%H§ = 4000;
            }
            while(_loc2_);
            
         }
      }
      
      private var §1!r§:Boolean = false;
      
      private var §1"$§:uint;
      
      private var §4T§:Boolean = false;
      
      public var §%"7§:XML;
      
      public var §0r§:XML;
      
      public var §&c§:DisplayObjectContainer;
      
      private var §;N§:String;
      
      private var §5K§:String;
      
      public function §1N§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && this))
         {
            this.§;N§ = param4;
            while(true)
            {
               this.§5K§ = param5;
               while(_loc6_ || param1)
               {
                  §'!d§ = true;
                  loop3:
                  for(; _loc6_ || param2; §%H§ = param3,if(!(_loc7_ && param2))
                  {
                     return;
                  })
                  {
                     addr61:
                     if(_loc6_ || this)
                     {
                        continue;
                     }
                     addr96:
                     while(true)
                     {
                        super(param1,param2);
                        break loop3;
                        §§goto(addr61);
                     }
                  }
               }
            }
         }
         §§goto(addr96);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.init();
            loop0:
            while(true)
            {
               §6§.init(§'M§("connectionProfileId"));
               loop1:
               while(true)
               {
                  §§push(§ i§.§[E§);
                  if(_loc2_)
                  {
                     if(§§pop().§2!;§())
                     {
                        while(true)
                        {
                           §!4§(true);
                           if(_loc2_ || this)
                           {
                              break;
                           }
                           continue loop1;
                        }
                     }
                     else
                     {
                        addr29:
                     }
                     if(_loc1_)
                     {
                        continue;
                     }
                     continue loop0;
                     return;
                  }
                  addr69:
                  §§pop().init(§6§.§25§(),this.§;N§,this.§5K§,null);
               }
            }
         }
         while(true)
         {
            §§goto(addr29);
         }
      }
      
      public function §]""§(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§&c§ = param1;
         }
      }
      
      public function §'X§(param1:XML) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§%"7§ = param1;
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
               § D§.addChild(this.§&c§);
            }
            addr73:
         }
         loop1:
         while(true)
         {
            this.setLoadingPercentage(0);
            while(!(_loc2_ && this))
            {
               this.§1"$§ = getTimer();
               if(!_loc1_)
               {
                  continue;
               }
               if(_loc1_)
               {
                  break loop1;
               }
               §§goto(addr73);
            }
         }
      }
      
      private function §6i§() : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(_loc6_)
         {
            if(§ i§.§[E§.§+!H§())
            {
               addr29:
               var _loc3_:* = 0;
               var _loc4_:* = this.§%"7§.Library;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!(_loc5_ && _loc3_))
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
                           if(!(_loc6_ || _loc1_))
                           {
                              continue;
                           }
                        }
                        § i§.§[E§.§98§(_loc1_);
                        continue;
                     }
                     if(_loc6_ || _loc1_)
                     {
                        if(!_loc5_)
                        {
                           if(!_loc5_)
                           {
                              §§push(0);
                              if(!_loc5_)
                              {
                                 _loc3_ = §§pop();
                                 if(!_loc5_)
                                 {
                                    _loc4_ = this.§%"7§.libraries.library;
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc4_,_loc3_));
                                       if(!_loc5_)
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
                                             § i§.§[E§.§98§(_loc1_);
                                             continue;
                                          }
                                          if(_loc6_)
                                          {
                                             addr143:
                                             if(_loc6_ || this)
                                             {
                                                if(!_loc5_)
                                                {
                                                   addr155:
                                                   _loc3_ = 0;
                                                   if(!_loc5_)
                                                   {
                                                      addr158:
                                                      _loc4_ = this.§%"7§.packages.pack;
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc4_,_loc3_));
                                                         break loop0;
                                                      }
                                                      addr182:
                                                   }
                                                   addr185:
                                                   if(!(_loc5_ && _loc2_))
                                                   {
                                                      § i§.§[E§.§&!@§(this.§;O§);
                                                      addr193:
                                                   }
                                                   return true;
                                                }
                                                else
                                                {
                                                   addr195:
                                                   §§push(false);
                                                   if(!(_loc5_ && this))
                                                   {
                                                      return §§pop();
                                                   }
                                                }
                                                return §§pop();
                                             }
                                             §§goto(addr158);
                                          }
                                       }
                                       break loop0;
                                    }
                                 }
                                 §§goto(addr185);
                              }
                              §§goto(addr155);
                           }
                           §§goto(addr193);
                        }
                        §§goto(addr158);
                     }
                     §§goto(addr143);
                  }
                  break;
               }
               while(§§pop())
               {
                  _loc2_ = §§nextvalue(_loc3_,_loc4_);
                  if(_loc6_ || this)
                  {
                     § i§.§[E§.§98§(_loc2_);
                  }
                  §§goto(addr182);
               }
               §§goto(addr184);
            }
            §§goto(addr195);
         }
         §§goto(addr29);
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
         if(_loc6_ || param1)
         {
            §§push(_loc2_);
            if(_loc6_ || _loc2_)
            {
               if(§§pop() != §'B§.STATE_STATUS_RUNNING)
               {
                  if(!_loc7_)
                  {
                     §§goto(addr108);
                  }
                  else
                  {
                     loop0:
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           if(!(_loc6_ || param1))
                           {
                              continue loop0;
                           }
                           §§push(this.§6i§());
                           if(!_loc7_)
                           {
                              if(_loc6_ || this)
                              {
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    addr51:
                                    §§push(Boolean(§§pop()));
                                    if(_loc6_)
                                    {
                                       while(§§pop())
                                       {
                                          if(_loc6_)
                                          {
                                             if(_loc7_ && this)
                                             {
                                                continue loop5;
                                             }
                                             this.§4T§ = true;
                                          }
                                          if(true)
                                          {
                                             break;
                                          }
                                          while(true)
                                          {
                                             §§push(this.§4T§);
                                             addr72:
                                             while(true)
                                             {
                                                §§push(!§§pop());
                                                break loop5;
                                             }
                                          }
                                       }
                                       §§push(Math.min(1,§ i§.§[E§.§,b§()) * 9);
                                       if(_loc6_ || param1)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc3_:* = §§pop();
                                       var _loc4_:Number = Math.min(1,(getTimer() - this.§1"$§) / §%H§);
                                       §§push(_loc3_);
                                       if(_loc6_)
                                       {
                                          §§push(§§pop() + _loc4_);
                                          if(_loc6_ || param1)
                                          {
                                             §§push(§§pop() / 10);
                                             if(_loc7_)
                                             {
                                             }
                                             §§goto(addr156);
                                          }
                                          §§push(Number(§§pop()));
                                       }
                                       addr156:
                                       var _loc5_:* = §§pop();
                                       if(_loc6_ || _loc2_)
                                       {
                                          this.setLoadingPercentage(_loc5_);
                                          §§goto(addr207);
                                       }
                                       addr165:
                                       if(§§pop().§,b§() >= 1)
                                       {
                                          if(_loc7_)
                                          {
                                             addr207:
                                             §§push(§ i§.§[E§);
                                             if(!_loc7_)
                                             {
                                                §§goto(addr165);
                                             }
                                             §§pop().§ E§();
                                             return §'B§.STATE_STATUS_COMPLETED;
                                          }
                                          §§push(§ i§.§[E§);
                                       }
                                       return §'B§.STATE_STATUS_RUNNING;
                                       addr53:
                                    }
                                    §§goto(addr72);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 §§pop();
                                 continue loop5;
                              }
                              addr75:
                           }
                           §§goto(addr51);
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              §§goto(addr75);
                           }
                           §§goto(addr53);
                        }
                     }
                  }
               }
               §§goto(addr69);
            }
            §§goto(addr108);
         }
         addr108:
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            § D§.removeChild(this.§&c§);
            do
            {
               this.§&c§ = null;
               do
               {
                  super.cleanup();
               }
               while(_loc1_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      private function §;O§() : void
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
            while(this.§&c§)
            {
               if(!_loc3_)
               {
                  this.§&c§.x = param1 - this.§&c§.width >> 1;
               }
               do
               {
                  this.§&c§.y = param2 - this.§&c§.height >> 1;
               }
               while(!(_loc4_ || param1));
               
               if(_loc4_ || _loc3_)
               {
                  addr64:
                  break;
               }
            }
            return;
         }
         §§goto(addr64);
      }
   }
}
