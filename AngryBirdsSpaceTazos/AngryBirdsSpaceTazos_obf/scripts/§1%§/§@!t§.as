package §1%§
{
   import §%!r§.§3!'§;
   import §+!h§.§#V§;
   import §7!%§.§[K§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §@!t§ extends §0!3§
   {
      
      public static const STATE_NAME:String = "load";
      
      public static var §!"A§:uint = 4000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            STATE_NAME = "load";
            do
            {
               §!"A§ = 4000;
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      private var §<"9§:Boolean = false;
      
      private var §]!Z§:uint;
      
      private var §4r§:Boolean = false;
      
      public var §4!a§:XML;
      
      public var §;!e§:XML;
      
      public var §8!r§:DisplayObjectContainer;
      
      private var §8!6§:String;
      
      private var §6"7§:String;
      
      private var §;Q§:Boolean = false;
      
      public function §@!t§(param1:§3!'§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!(_loc7_ && param1))
         {
            this.§8!6§ = param5;
            loop0:
            while(true)
            {
               this.§6"7§ = param6;
               while(true)
               {
                  super(param2,param3,param1);
                  loop2:
                  while(true)
                  {
                     §=@§ = true;
                     loop3:
                     while(!_loc7_)
                     {
                        while(true)
                        {
                           §!"A§ = param4;
                           if(_loc8_ || param2)
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
         }
         do
         {
            §#V§.init(§>"B§("connectionProfileId"));
            do
            {
               §§push(§[K§.§[!1§);
               if(!_loc1_)
               {
                  if(!§§pop().§;c§())
                  {
                     if(!_loc1_)
                     {
                        addr61:
                        §[K§.§[!1§.init(§#V§.§4!+§(),this.§8!6§,this.§6"7§,null);
                     }
                     while(true)
                     {
                     }
                     addr69:
                  }
                  while(true)
                  {
                     §`j§(true);
                     if(!_loc1_)
                     {
                        break;
                     }
                     §§goto(addr69);
                  }
                  continue;
               }
               §§goto(addr61);
            }
            while(_loc1_);
            
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§8!r§ = param1;
         }
      }
      
      public function §%!,§(param1:XML) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§4!a§ = param1;
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.activate(param1);
            loop0:
            do
            {
               §]!$§.addChild(this.§8!r§);
               while(true)
               {
                  this.setLoadingPercentage(0);
                  while(_loc3_)
                  {
                     this.§]!Z§ = getTimer();
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      private function §<u§() : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(_loc5_)
         {
            if(§[K§.§[!1§.§>!#§())
            {
               addr28:
               var _loc3_:* = 0;
               var _loc4_:* = this.§4!a§.Library;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(_loc5_ || _loc3_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(!_loc6_)
                        {
                           if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
                           {
                              if(_loc5_ || _loc2_)
                              {
                                 §[K§.§[!1§.§4!=§(_loc1_);
                              }
                           }
                        }
                        continue;
                     }
                     if(!(_loc6_ && this))
                     {
                        if(_loc5_)
                        {
                           if(_loc5_ || _loc2_)
                           {
                              §§push(0);
                              if(!(_loc6_ && _loc1_))
                              {
                                 _loc3_ = §§pop();
                                 if(_loc5_)
                                 {
                                    _loc4_ = this.§4!a§.libraries.library;
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc4_,_loc3_));
                                       if(_loc5_ || this)
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
                                          addr189:
                                          if(!_loc6_)
                                          {
                                             §[K§.§[!1§.§#y§(this.§'Y§);
                                             §§push(true);
                                             addr226:
                                          }
                                          else
                                          {
                                             addr194:
                                             §§push(false);
                                             if(!_loc6_)
                                             {
                                                return §§pop();
                                             }
                                             addr220:
                                          }
                                          return §§pop();
                                          addr188:
                                       }
                                       _loc2_ = §§nextvalue(_loc3_,_loc4_);
                                       if(_loc5_)
                                       {
                                          §[K§.§[!1§.§4!=§(_loc2_);
                                       }
                                       addr186:
                                       while(true)
                                       {
                                          continue loop3;
                                       }
                                       §§goto(addr188);
                                    }
                                    addr136:
                                    addr187:
                                 }
                                 addr155:
                                 if(_loc5_)
                                 {
                                    addr159:
                                    _loc3_ = 0;
                                    if(_loc5_ || this)
                                    {
                                       addr167:
                                       _loc4_ = this.§4!a§.packages.pack;
                                       §§goto(addr186);
                                    }
                                    §§goto(addr189);
                                 }
                                 §§goto(addr226);
                              }
                              §§goto(addr159);
                           }
                           §§goto(addr220);
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr189);
                  }
                  break;
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     if(_loc5_)
                     {
                        if(_loc5_ || _loc2_)
                        {
                           §§goto(addr155);
                        }
                        §§goto(addr167);
                     }
                     §§goto(addr189);
                  }
                  else
                  {
                     _loc1_ = §§nextvalue(_loc3_,_loc4_);
                     if(_loc5_)
                     {
                        if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
                        {
                           if(_loc5_)
                           {
                              addr132:
                              §[K§.§[!1§.§4!=§(_loc1_);
                           }
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr132);
                  }
               }
            }
            §§goto(addr194);
         }
         §§goto(addr28);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            §§push(this.§4r§);
            if(!_loc5_)
            {
               §§push(!§§pop());
               if(_loc6_)
               {
                  if(§§pop())
                  {
                     if(_loc6_ || _loc2_)
                     {
                        addr40:
                        §§pop();
                        if(_loc6_)
                        {
                           §§push(this.§<u§());
                           if(_loc6_ || _loc2_)
                           {
                              addr53:
                              if(§§pop())
                              {
                                 if(_loc6_)
                                 {
                                    addr56:
                                    this.§4r§ = true;
                                 }
                              }
                           }
                           §§goto(addr53);
                        }
                        §§push(Math.min(1,§[K§.§[!1§.§'"A§()) * 9);
                        if(!(_loc5_ && _loc2_))
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        var _loc3_:Number = Math.min(1,(getTimer() - this.§]!Z§) / §!"A§);
                        §§push(_loc2_);
                        if(!_loc5_)
                        {
                           §§push(§§pop() + _loc3_);
                           if(!(_loc5_ && param1))
                           {
                              §§push(§§pop() / 10);
                              if(_loc6_ || _loc2_)
                              {
                              }
                              addr120:
                              var _loc4_:* = §§pop();
                              if(!(_loc5_ && _loc2_))
                              {
                                 this.setLoadingPercentage(_loc4_);
                                 loop0:
                                 while(true)
                                 {
                                    §§push(this.§;Q§);
                                    if(_loc6_ || _loc3_)
                                    {
                                       §§push(!§§pop());
                                       if(_loc6_)
                                       {
                                          if(§§pop())
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                §§pop();
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(§[K§.§[!1§);
                                                   if(!_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   addr153:
                                                   §§push(§§pop().§'"A§() >= 1);
                                                   if(!(_loc5_ && this))
                                                   {
                                                      while(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               §§push(§[K§.§[!1§);
                                                               break loop3;
                                                            }
                                                            continue loop3;
                                                         }
                                                         if(!_loc5_)
                                                         {
                                                            addr147:
                                                            break;
                                                         }
                                                         continue loop0;
                                                         §§goto(addr153);
                                                      }
                                                      return;
                                                      addr163:
                                                   }
                                                   continue loop5;
                                                }
                                                §§pop().§`t§();
                                                do
                                                {
                                                   this.§]z§();
                                                }
                                                while(!(_loc6_ || _loc3_));
                                                
                                                if(!_loc6_)
                                                {
                                                   §§goto(addr165);
                                                }
                                                §§goto(addr145);
                                             }
                                             addr196:
                                          }
                                          §§goto(addr163);
                                       }
                                    }
                                    §§goto(addr196);
                                 }
                              }
                              §§goto(addr147);
                           }
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr120);
                     }
                  }
               }
               §§goto(addr53);
            }
            §§goto(addr40);
         }
         §§goto(addr56);
      }
      
      protected function §]z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§;Q§ = true;
            do
            {
               §8!^§(§^![§);
            }
            while(!_loc1_);
            
         }
      }
      
      public function isLoadingReady() : Boolean
      {
         return this.§;Q§;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §]!$§.removeChild(this.§8!r§);
            while(true)
            {
               this.§8!r§ = null;
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     super.cleanup();
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr61);
      }
      
      private function §'Y§() : void
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
            for(; this.§8!r§; do
            {
               this.§8!r§.y = param2 - this.§8!r§.height >> 1;
            }
            while(_loc3_);
            ,if(!_loc3_)
            {
               break;
            })
            {
               if(_loc3_)
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            this.§8!r§.x = param1 - this.§8!r§.width >> 1;
            §§goto(addr76);
         }
      }
   }
}
