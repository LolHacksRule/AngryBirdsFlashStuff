package §?z§
{
   import §1!`§.§8!s§;
   import §;0§.§6h§;
   import §@g§.§;!5§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §%r§ extends §4!C§
   {
      
      public static const §-!q§:String = "load";
      
      public static var §=]§:uint = 4000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §-!q§ = "load";
         }
         do
         {
            §=]§ = 4000;
         }
         while(_loc1_);
         
      }
      
      private var §<o§:Boolean = false;
      
      private var §?[§:uint;
      
      private var §;!F§:Boolean = false;
      
      public var §,#§:XML;
      
      public var §>!E§:XML;
      
      public var §%0§:DisplayObjectContainer;
      
      protected var §-!e§:String;
      
      protected var §]!V§:String;
      
      private var §9!_§:Boolean = false;
      
      public function §%r§(param1:§6h§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            this.§-!e§ = param5;
            while(true)
            {
               this.§]!V§ = param6;
               addr83:
               addr47:
               while(true)
               {
                  super(param2,param3,param1);
               }
               if(!(_loc8_ || param2))
               {
                  continue;
               }
               return;
               addr54:
            }
         }
         loop2:
         while(true)
         {
            §4!R§ = true;
            while(!_loc7_)
            {
               §=]§ = param4;
               if(!_loc7_)
               {
                  continue loop2;
               }
            }
            §§goto(addr83);
         }
         §§goto(addr54);
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
            while(true)
            {
               §8!s§.init(§7X§("connectionProfileId"));
               loop1:
               while(true)
               {
                  if(§;!5§.§2Z§.§8q§())
                  {
                     while(true)
                     {
                        §^?§(true);
                        if(_loc2_ || this)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     return;
                     addr29:
                  }
                  if(!_loc2_)
                  {
                     continue;
                  }
               }
               if(_loc1_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr29);
            }
         }
         while(true)
         {
            this.§'o§();
            §§goto(addr60);
         }
      }
      
      protected function §'o§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §;!5§.§2Z§.init(§8!s§.§3!b§(),this.§-!e§,this.§]!V§,null);
         }
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§%0§ = param1;
         }
      }
      
      public function §6!o§(param1:XML) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§,#§ = param1;
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super.activate(param1);
         }
         loop0:
         while(true)
         {
            §#e§.addChild(this.§%0§);
            while(true)
            {
               this.setLoadingPercentage(0);
               while(_loc2_)
               {
                  if(!_loc3_)
                  {
                     this.§?[§ = getTimer();
                     if(_loc2_ || _loc3_)
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
      
      private function §8b§() : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(!(_loc6_ && _loc1_))
         {
            if(§;!5§.§2Z§.§6S§())
            {
               addr33:
               var _loc3_:* = 0;
               var _loc4_:* = this.§,#§.Library;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!(_loc6_ && _loc1_))
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(!(_loc6_ && _loc2_))
                        {
                           if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
                           {
                              if(_loc5_ || _loc1_)
                              {
                                 §;!5§.§2Z§.§>!&§(_loc1_);
                              }
                           }
                        }
                        continue;
                     }
                     if(!_loc6_)
                     {
                        if(!_loc6_)
                        {
                           if(_loc5_)
                           {
                              §§push(0);
                              if(!(_loc6_ && _loc1_))
                              {
                                 _loc3_ = §§pop();
                                 if(_loc5_ || _loc2_)
                                 {
                                    _loc4_ = this.§,#§.libraries.library;
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc4_,_loc3_));
                                       if(_loc5_ || _loc2_)
                                       {
                                          break loop0;
                                       }
                                       break;
                                    }
                                    loop2:
                                    while(§§pop())
                                    {
                                       _loc2_ = §§nextvalue(_loc3_,_loc4_);
                                       if(!_loc6_)
                                       {
                                          §;!5§.§2Z§.§>!&§(_loc2_);
                                       }
                                       while(true)
                                       {
                                          continue loop2;
                                       }
                                    }
                                    addr208:
                                    addr146:
                                    addr207:
                                 }
                                 addr209:
                                 if(!_loc6_)
                                 {
                                    §;!5§.§2Z§.§>!]§(this.§!$§);
                                    addr227:
                                    return true;
                                    addr246:
                                 }
                                 §§goto(addr246);
                              }
                              addr179:
                              _loc3_ = §§pop();
                              if(!(_loc6_ && _loc3_))
                              {
                                 addr187:
                                 _loc4_ = this.§,#§.packages.pack;
                                 §§goto(addr206);
                              }
                              §§goto(addr209);
                           }
                           §§goto(addr246);
                        }
                        §§goto(addr187);
                     }
                     §§goto(addr208);
                  }
                  break;
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     if(!(_loc6_ && _loc3_))
                     {
                        if(!(_loc6_ && _loc3_))
                        {
                           if(!(_loc6_ && _loc2_))
                           {
                              §§goto(addr179);
                              §§push(0);
                           }
                           else
                           {
                              addr214:
                              §§push(false);
                              if(_loc5_ || _loc3_)
                              {
                                 return §§pop();
                              }
                           }
                           §§goto(addr227);
                        }
                        §§goto(addr209);
                     }
                     §§goto(addr208);
                  }
                  else
                  {
                     _loc1_ = §§nextvalue(_loc3_,_loc4_);
                     if(_loc5_ || this)
                     {
                        if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
                        {
                           if(_loc5_)
                           {
                              addr142:
                              §;!5§.§2Z§.§>!&§(_loc1_);
                           }
                        }
                        §§goto(addr146);
                     }
                     §§goto(addr142);
                  }
               }
            }
            §§goto(addr214);
         }
         §§goto(addr33);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            §§push(this.§;!F§);
            if(!(_loc6_ && this))
            {
               §§push(!§§pop());
               if(_loc5_ || _loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc5_ || this)
                     {
                        addr49:
                        §§pop();
                        if(_loc5_ || _loc3_)
                        {
                           §§push(this.§8b§());
                           if(_loc6_ && _loc3_)
                           {
                           }
                           addr67:
                           if(§§pop())
                           {
                              if(!_loc6_)
                              {
                                 addr70:
                                 this.§;!F§ = true;
                              }
                           }
                           §§push(Math.min(1,§;!5§.§2Z§.§=!H§()) * 9);
                           if(!(_loc6_ && param1))
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc2_:* = §§pop();
                           var _loc3_:Number = Math.min(1,(getTimer() - this.§?[§) / §=]§);
                           §§push(_loc2_);
                           if(!(_loc6_ && this))
                           {
                              §§push(§§pop() + _loc3_);
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(§§pop() / 10);
                                 if(!_loc6_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                           }
                           var _loc4_:* = §§pop();
                           if(!(_loc6_ && this))
                           {
                              this.setLoadingPercentage(_loc4_);
                              loop0:
                              while(true)
                              {
                                 §§push(this.§9!_§);
                                 if(_loc5_)
                                 {
                                    §§push(!§§pop());
                                    if(_loc5_ || param1)
                                    {
                                       addr218:
                                       if(§§pop())
                                       {
                                          loop1:
                                          while(true)
                                          {
                                             §§pop();
                                             loop2:
                                             while(true)
                                             {
                                                §§push(§;!5§.§2Z§);
                                                if(_loc5_ || param1)
                                                {
                                                   §§push(§§pop().§=!H§() >= 1);
                                                   if(_loc6_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         break loop2;
                                                      }
                                                      if(_loc5_ || this)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§;!5§.§2Z§);
                                                            addr186:
                                                            while(true)
                                                            {
                                                               §§pop().§""0§();
                                                            }
                                                         }
                                                         addr184:
                                                      }
                                                      while(_loc5_ || _loc2_)
                                                      {
                                                         this.§,E§();
                                                         if(!(_loc6_ && _loc2_))
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               break loop2;
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                                §§goto(addr186);
                                             }
                                             return;
                                          }
                                          addr220:
                                       }
                                       §§goto(addr175);
                                    }
                                    §§goto(addr220);
                                 }
                                 §§goto(addr218);
                              }
                           }
                           §§goto(addr184);
                        }
                        §§goto(addr70);
                     }
                     §§push(Boolean(§§pop()));
                  }
                  §§goto(addr67);
               }
            }
            §§goto(addr49);
         }
         §§goto(addr70);
      }
      
      protected function §,E§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§9!_§ = true;
         }
         do
         {
            §<f§(§9!T§);
         }
         while(!_loc2_);
         
      }
      
      public function isLoadingReady() : Boolean
      {
         return this.§9!_§;
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §#e§.removeChild(this.§%0§);
            while(true)
            {
               this.§%0§ = null;
               while(_loc2_ || this)
               {
                  super.cleanup();
                  if(_loc1_ && _loc1_)
                  {
                     continue;
                  }
                  return;
                  addr49:
               }
            }
         }
         §§goto(addr49);
      }
      
      private function §!$§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super.setViewSize(param1,param2);
         }
         while(this.§%0§)
         {
            if(_loc3_ || param2)
            {
               this.§%0§.x = param1 - this.§%0§.width >> 1;
            }
            do
            {
               this.§%0§.y = param2 - this.§%0§.height >> 1;
            }
            while(_loc4_ && _loc3_);
            
            if(_loc3_)
            {
               break;
            }
         }
      }
   }
}
