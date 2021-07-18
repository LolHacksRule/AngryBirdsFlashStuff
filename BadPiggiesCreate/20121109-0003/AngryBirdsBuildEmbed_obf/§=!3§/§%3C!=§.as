package §=!3§
{
   import §&!0§.§%!`§;
   import §7v§.§%!M§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §<!=§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "load";
      
      public static var §[!W§:uint = 4000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            STATE_NAME = "load";
            if(!_loc2_)
            {
               addr23:
               §[!W§ = 4000;
            }
            return;
         }
         §§goto(addr23);
      }
      
      private var §?D§:Boolean = false;
      
      private var §,!8§:uint;
      
      private var §<!9§:Boolean = false;
      
      public var §-j§:XML;
      
      public var §[i§:XML;
      
      public var §^U§:DisplayObjectContainer;
      
      private var §]?§:String;
      
      private var §&V§:String;
      
      public function §<!=§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            this.§]?§ = param4;
            if(!(_loc7_ && param1))
            {
               this.§&V§ = param5;
               if(!(_loc7_ && this))
               {
                  super(param1,param2);
                  if(!_loc6_)
                  {
                  }
                  §§goto(addr77);
               }
            }
            §=u§ = true;
            if(_loc6_ || param1)
            {
               §[!W§ = param3;
            }
         }
         addr77:
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
            if(!(_loc1_ && _loc1_))
            {
               §%!`§.init(§ !<§("connectionProfileId"));
               if(_loc2_ || _loc2_)
               {
                  §§push(§%!M§.§`!t§);
                  if(!(_loc1_ && _loc1_))
                  {
                     if(§§pop().§7! §())
                     {
                     }
                     §§goto(addr95);
                  }
                  §§pop().init(§%!`§.§[!6§(),this.§]?§,this.§&V§,null);
                  if(!_loc2_)
                  {
                  }
                  §§goto(addr95);
               }
            }
            §§goto(addr83);
         }
         addr95:
         if(!(_loc1_ && this))
         {
            addr83:
            §§push(§%!M§.§`!t§);
         }
         §5!e§(true);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§^U§ = param1;
         }
      }
      
      public function §4f§(param1:XML) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§-j§ = param1;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.activate();
            if(_loc2_ || this)
            {
               §§goto(addr38);
            }
            §§goto(addr54);
         }
         addr38:
         §>E§.addChild(this.§^U§);
         if(!(_loc1_ && _loc2_))
         {
            this.setLoadingPercentage(0);
            if(_loc2_)
            {
               addr54:
               this.§,!8§ = getTimer();
            }
         }
      }
      
      private function §;!l§() : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(!(_loc6_ && _loc2_))
         {
            if(§%!M§.§`!t§.§<C§())
            {
               addr33:
               var _loc3_:int = 0;
               var _loc4_:* = this.§-j§.Library;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!(_loc6_ && this))
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(_loc5_ || _loc3_)
                        {
                           if(_loc1_.@startupLoad.toString().toLowerCase() != "true")
                           {
                              continue;
                           }
                           if(_loc6_)
                           {
                              continue;
                           }
                        }
                        §%!M§.§`!t§.§^!K§(_loc1_);
                        continue;
                     }
                     if(_loc5_ || this)
                     {
                        if(_loc5_ || _loc1_)
                        {
                           if(!(_loc6_ && _loc1_))
                           {
                              _loc3_ = 0;
                              if(_loc5_ || this)
                              {
                                 addr117:
                                 _loc4_ = this.§-j§.packages.pack;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc4_,_loc3_));
                                    break loop0;
                                 }
                                 addr151:
                              }
                              if(!_loc6_)
                              {
                                 §%!M§.§`!t§.§7S§(this.§9!m§);
                                 if(_loc5_)
                                 {
                                    addr164:
                                    §§push(true);
                                    if(_loc5_ || _loc2_)
                                    {
                                       return §§pop();
                                    }
                                 }
                                 else
                                 {
                                    addr173:
                                    §§push(false);
                                 }
                                 return §§pop();
                              }
                              §§goto(addr164);
                           }
                           §§goto(addr173);
                        }
                     }
                     §§goto(addr117);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc3_,_loc4_);
                     if(!(_loc6_ && _loc2_))
                     {
                        §%!M§.§`!t§.§^!K§(_loc2_);
                     }
                     continue;
                  }
                  §§goto(addr117);
               }
            }
            §§goto(addr173);
         }
         §§goto(addr33);
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
         if(_loc6_)
         {
            §§push(_loc2_);
            if(_loc6_ || param1)
            {
               if(§§pop() != §;!!§.STATE_STATUS_RUNNING)
               {
                  if(!_loc7_)
                  {
                     §§push(_loc2_);
                  }
                  else
                  {
                     addr94:
                     this.§<!9§ = true;
                     §§push(Math.min(1,§%!M§.§`!t§.§ %§()) * 9);
                     if(!(_loc7_ && _loc3_))
                     {
                        §§push(Number(§§pop()));
                     }
                     var _loc3_:* = §§pop();
                     var _loc4_:Number = Math.min(1,(getTimer() - this.§,!8§) / §[!W§);
                     §§push(_loc3_);
                     if(!_loc7_)
                     {
                        §§push(§§pop() + _loc4_);
                        if(_loc6_)
                        {
                           §§push(§§pop() / 10);
                           if(!(_loc7_ && _loc2_))
                           {
                              addr142:
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc5_:* = §§pop();
                        if(!_loc7_)
                        {
                           this.setLoadingPercentage(_loc5_);
                           if(_loc6_ || this)
                           {
                              §§push(§%!M§.§`!t§);
                              if(_loc6_ || param1)
                              {
                                 if(§§pop().§ %§() >= 1)
                                 {
                                    if(_loc6_)
                                    {
                                       addr182:
                                       §%!M§.§`!t§.§`g§();
                                       if(!_loc6_)
                                       {
                                          §§goto(addr188);
                                       }
                                    }
                                    return §;!!§.STATE_STATUS_COMPLETED;
                                 }
                                 §§goto(addr188);
                              }
                              §§goto(addr182);
                           }
                           addr188:
                           return §;!!§.STATE_STATUS_RUNNING;
                        }
                        §§goto(addr182);
                     }
                     §§goto(addr142);
                  }
               }
               else
               {
                  §§push(this.§<!9§);
                  if(!(_loc7_ && _loc2_))
                  {
                     §§push(!§§pop());
                     if(!(_loc7_ && _loc3_))
                     {
                        if(§§pop())
                        {
                           if(!(_loc7_ && param1))
                           {
                              addr68:
                              §§pop();
                              if(_loc6_)
                              {
                                 §§push(this.§;!l§());
                                 if(!_loc6_)
                                 {
                                 }
                                 addr76:
                                 if(§§pop())
                                 {
                                    if(_loc7_ && _loc3_)
                                    {
                                    }
                                 }
                              }
                              §§goto(addr94);
                           }
                           §§goto(addr76);
                           §§push(Boolean(§§pop()));
                        }
                        §§goto(addr76);
                     }
                     §§goto(addr68);
                  }
                  §§goto(addr76);
               }
               §§goto(addr94);
            }
            return §§pop();
         }
         §§goto(addr94);
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
         if(!_loc1_)
         {
            §>E§.removeChild(this.§^U§);
            if(!_loc1_)
            {
               this.§^U§ = null;
               if(!_loc1_)
               {
                  addr30:
                  super.cleanup();
               }
            }
            return;
         }
         §§goto(addr30);
      }
      
      private function §9!m§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(!_loc4_)
         {
            §§push(§§pop() * (this.§^U§.getChildByName("Bar") as MovieClip).totalFrames);
         }
         var _loc2_:int = §§pop();
         if(!(_loc4_ && _loc2_))
         {
            (this.§^U§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super.setViewSize(param1,param2);
            if(_loc4_ || param1)
            {
               if(this.§^U§)
               {
                  if(!(_loc3_ && param1))
                  {
                     addr65:
                     this.§^U§.x = param1 - this.§^U§.width >> 1;
                     if(_loc4_ || param1)
                     {
                     }
                     §§goto(addr92);
                  }
                  this.§^U§.y = param2 - this.§^U§.height >> 1;
               }
            }
            addr92:
            return;
         }
         §§goto(addr65);
      }
   }
}
