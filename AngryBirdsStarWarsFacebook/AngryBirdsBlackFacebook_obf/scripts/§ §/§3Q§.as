package § §#8
{
   import §%R§.§["N§;
   import §>@§.§5"H§;
   import §`!o§.§6",§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §3Q§ extends §4#`§
   {
      
      public static const §^!7§:String = "load";
      
      public static var §,#;§:uint = 4000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §3Q§)
         {
            §^!7§ = "load";
            do
            {
               §,#;§ = 4000;
            }
            while(_loc1_);
            
         }
      }
      
      private var §%q§:Boolean = false;
      
      private var §&#Z§:uint;
      
      private var §6"L§:Boolean = false;
      
      public var §&"x§:XML;
      
      public var §<""§:XML;
      
      public var §'#F§:DisplayObjectContainer;
      
      protected var §2e§:String;
      
      protected var §;#[§:String;
      
      private var §7>§:Boolean = false;
      
      public function §3Q§(param1:§5"H§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            this.§2e§ = param5;
            loop0:
            do
            {
               this.§;#[§ = param6;
               loop1:
               while(true)
               {
                  super(param2,param3,param1);
                  loop2:
                  do
                  {
                     §[L§ = true;
                     while(_loc7_)
                     {
                        §,#;§ = param4;
                        if(!_loc8_)
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  while(_loc8_ && param2);
                  
                  continue loop0;
               }
            }
            while(_loc8_);
            
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.init();
            loop0:
            while(true)
            {
               §6",§.init(§?#>§("connectionProfileId"));
               do
               {
                  if(_loc2_ || _loc1_)
                  {
                     if(!§["N§.§%!E§.§8!#§())
                     {
                        addr67:
                        if(!(_loc1_ && _loc2_))
                        {
                           this.§8!t§();
                        }
                        while(true)
                        {
                        }
                        addr67:
                     }
                     while(true)
                     {
                        §8"5§(true);
                        if(!_loc1_)
                        {
                           break;
                        }
                        §§goto(addr67);
                     }
                     continue;
                  }
                  continue loop0;
               }
               while(!(_loc2_ || this));
               
               return;
            }
         }
         §§goto(addr67);
      }
      
      protected function §8!t§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §["N§.§%!E§.init(§6",§.§<[§(),this.§2e§,this.§;#[§,null);
         }
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§'#F§ = param1;
         }
      }
      
      public function §+!^§(param1:XML) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§&"x§ = param1;
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               §%G§.addChild(this.§'#F§);
               addr70:
               while(true)
               {
                  this.setLoadingPercentage(0);
                  continue loop0;
               }
            }
         }
         §§goto(addr54);
      }
      
      private function §'"n§() : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         if(!(_loc7_ && this))
         {
            if(§["N§.§%!E§.§;r§())
            {
               addr36:
               var _loc4_:* = 0;
               var _loc5_:* = this.§&"x§.Library;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc5_,_loc4_));
                  if(!(_loc7_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc4_,_loc5_);
                        if(!(_loc7_ && _loc2_))
                        {
                           if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
                           {
                              if(_loc6_ || this)
                              {
                                 §["N§.§%!E§.§"#]§(_loc1_);
                              }
                           }
                        }
                        continue;
                     }
                     if(_loc6_ || this)
                     {
                        if(!(_loc7_ && _loc1_))
                        {
                           if(!_loc7_)
                           {
                              §§push(0);
                              if(_loc6_ || _loc1_)
                              {
                                 _loc4_ = §§pop();
                                 if(_loc6_)
                                 {
                                    _loc5_ = this.§&"x§.libraries.library;
                                    loop1:
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc5_,_loc4_));
                                       if(!_loc7_)
                                       {
                                          if(!§§pop())
                                          {
                                             if(_loc6_ || _loc1_)
                                             {
                                                if(!(_loc7_ && _loc1_))
                                                {
                                                   addr168:
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      §§push(0);
                                                      if(_loc6_)
                                                      {
                                                         _loc4_ = §§pop();
                                                         if(_loc6_)
                                                         {
                                                            addr182:
                                                            _loc5_ = this.§&"x§.config.xml;
                                                            while(true)
                                                            {
                                                               §§push(§§hasnext(_loc5_,_loc4_));
                                                               if(!(_loc7_ && this))
                                                               {
                                                                  break loop1;
                                                               }
                                                               break loop0;
                                                            }
                                                            addr206:
                                                         }
                                                         addr220:
                                                         if(!_loc7_)
                                                         {
                                                            §§goto(addr224);
                                                         }
                                                      }
                                                      addr224:
                                                      _loc4_ = 0;
                                                      addr223:
                                                      if(!_loc7_)
                                                      {
                                                         _loc5_ = this.§&"x§.packages.pack;
                                                         while(true)
                                                         {
                                                            §§push(§§hasnext(_loc5_,_loc4_));
                                                            break loop0;
                                                         }
                                                         addr246:
                                                      }
                                                      §§goto(addr249);
                                                   }
                                                   §§goto(addr252);
                                                }
                                                §§goto(addr182);
                                             }
                                             if(_loc6_)
                                             {
                                                §§goto(addr220);
                                             }
                                             addr249:
                                          }
                                          _loc1_ = §§nextvalue(_loc4_,_loc5_);
                                          if(!_loc7_)
                                          {
                                             if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
                                             {
                                                if(_loc6_)
                                                {
                                                   §["N§.§%!E§.§"#]§(_loc1_);
                                                }
                                             }
                                          }
                                          continue;
                                          if(_loc6_)
                                          {
                                             §["N§.§%!E§.§,=§(this.§[P§);
                                             §§push(true);
                                             addr252:
                                          }
                                          else
                                          {
                                             addr254:
                                             §§push(false);
                                             if(_loc6_ || _loc3_)
                                             {
                                                return §§pop();
                                             }
                                          }
                                          return §§pop();
                                       }
                                       break;
                                    }
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          _loc2_ = §§nextvalue(_loc4_,_loc5_);
                                          if(!(_loc7_ && this))
                                          {
                                             §["N§.§%!E§.§"#]§(_loc2_);
                                          }
                                          continue;
                                       }
                                       if(!_loc7_)
                                       {
                                          §§goto(addr217);
                                       }
                                       §§goto(addr224);
                                    }
                                 }
                                 §§goto(addr182);
                              }
                              §§goto(addr224);
                           }
                           §§goto(addr223);
                        }
                        §§goto(addr168);
                     }
                     §§goto(addr217);
                  }
                  break;
               }
               while(§§pop())
               {
                  _loc3_ = §§nextvalue(_loc4_,_loc5_);
                  if(_loc6_)
                  {
                     §["N§.§%!E§.§"#]§(_loc3_);
                  }
                  §§goto(addr246);
               }
               §§goto(addr248);
            }
            §§goto(addr254);
         }
         §§goto(addr36);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(this.§6"L§);
            if(!_loc5_)
            {
               §§push(!§§pop());
               if(_loc6_)
               {
                  if(§§pop())
                  {
                     if(_loc6_ || param1)
                     {
                        §§pop();
                        if(!(_loc5_ && _loc3_))
                        {
                           addr43:
                           §§push(this.§'"n§());
                           if(!_loc5_)
                           {
                              addr48:
                              if(§§pop())
                              {
                                 if(_loc6_)
                                 {
                                    this.§6"L§ = true;
                                 }
                              }
                           }
                           §§goto(addr48);
                        }
                        §§push(Math.min(1,§["N§.§%!E§.§]!c§()) * 9);
                        if(!(_loc5_ && param1))
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        var _loc3_:Number = Math.min(1,(getTimer() - this.§&#Z§) / §,#;§);
                        §§push(_loc2_);
                        if(_loc6_ || _loc3_)
                        {
                           §§push(§§pop() + _loc3_);
                           if(_loc6_ || _loc3_)
                           {
                              §§push(§§pop() / 10);
                              if(!_loc5_)
                              {
                                 addr114:
                                 §§push(Number(§§pop()));
                              }
                              var _loc4_:* = §§pop();
                              if(_loc6_ || param1)
                              {
                                 this.setLoadingPercentage(_loc4_);
                                 loop0:
                                 while(true)
                                 {
                                    §§push(this.§7>§);
                                    if(_loc6_ || _loc3_)
                                    {
                                       §§push(!§§pop());
                                       loop1:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop2:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                addr222:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr223:
                                                   while(true)
                                                   {
                                                      §§push(§["N§.§%!E§);
                                                      addr173:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().§]!c§());
                                                         addr174:
                                                         while(true)
                                                         {
                                                            §§push(1);
                                                            addr175:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() >= §§pop());
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                addr222:
                                             }
                                             while(true)
                                             {
                                                loop4:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      loop5:
                                                      while(true)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§goto(addr222);
                                                         addr150:
                                                         §§push(§§pop() >= §§pop());
                                                         if(_loc5_ && param1)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc5_)
                                                         {
                                                            continue loop4;
                                                         }
                                                         while(§§pop())
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               §§push(§["N§.§%!E§);
                                                               if(!_loc5_)
                                                               {
                                                                  §§pop().§6q§();
                                                                  do
                                                                  {
                                                                     this.setLoadingReady();
                                                                  }
                                                                  while(_loc5_);
                                                                  
                                                                  addr169:
                                                                  if(_loc6_ || _loc3_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        addr142:
                                                                        break;
                                                                     }
                                                                     break loop5;
                                                                  }
                                                                  continue loop0;
                                                                  addr169:
                                                               }
                                                               §§goto(addr173);
                                                            }
                                                            §§goto(addr169);
                                                         }
                                                         return;
                                                         addr160:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr160);
                                                   }
                                                   §§goto(addr223);
                                                }
                                                continue loop2;
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr222);
                                 }
                              }
                              §§goto(addr142);
                           }
                        }
                        §§goto(addr114);
                     }
                  }
                  §§goto(addr48);
               }
            }
            §§goto(addr48);
         }
         §§goto(addr43);
      }
      
      protected function setLoadingReady() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§7>§ = true;
            do
            {
               § g§(§"l§);
            }
            while(!_loc1_);
            
         }
      }
      
      public function isLoadingReady() : Boolean
      {
         return this.§7>§;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
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
            §%G§.removeChild(this.§'#F§);
         }
         while(true)
         {
            this.§'#F§ = null;
            while(!_loc1_)
            {
               super.cleanup();
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      private function §[P§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super.setViewSize(param1,param2);
            loop0:
            while(this.§'#F§)
            {
               if(!(_loc4_ && param1))
               {
                  this.§'#F§.x = param1 - this.§'#F§.width >> 1;
               }
               loop1:
               while(_loc3_ || param2)
               {
                  while(true)
                  {
                     this.§'#F§.y = param2 - this.§'#F§.height >> 1;
                     if(!_loc4_)
                     {
                        break loop0;
                     }
                     continue loop1;
                  }
               }
            }
            return;
         }
         §§goto(addr90);
      }
   }
}
