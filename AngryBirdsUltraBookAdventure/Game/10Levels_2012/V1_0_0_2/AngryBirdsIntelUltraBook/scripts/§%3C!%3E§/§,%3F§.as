package §<!>§
{
   import §;!5§.§5>§;
   import §^;§.§6!S§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §,?§ extends §?Y§
   {
      
      public static const §?h§:String = "load";
      
      public static var §&!7§:uint = 4000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §?h§ = "load";
            do
            {
               §&!7§ = 4000;
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      private var §`S§:Boolean = false;
      
      private var §5!m§:uint;
      
      private var §9V§:Boolean = false;
      
      public var §5h§:XML;
      
      public var §7y§:XML;
      
      public var §0!0§:DisplayObjectContainer;
      
      private var §>_§:String;
      
      private var §6!4§:String;
      
      public function §,?§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && this))
         {
            this.§>_§ = param4;
         }
         loop0:
         while(true)
         {
            this.§6!4§ = param5;
            while(true)
            {
               super(param1,param2);
               while(_loc6_)
               {
                  if(_loc6_)
                  {
                     §8g§ = true;
                     do
                     {
                        §&!7§ = param3;
                     }
                     while(_loc7_);
                     
                     if(!(_loc7_ && param1))
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
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            while(true)
            {
               §5>§.init(§&!I§("connectionProfileId"));
            }
            addr93:
         }
         while(true)
         {
            §§push(§6!S§.§<d§);
            if(_loc1_ || this)
            {
               if(!§§pop().§?!H§())
               {
                  while(_loc1_)
                  {
                     if(!_loc2_)
                     {
                        §§push(§6!S§.§<d§);
                        while(true)
                        {
                           §§pop().init(§5>§.§?T§(),this.§>_§,this.§6!4§,null);
                           addr83:
                           while(true)
                           {
                           }
                        }
                        addr75:
                     }
                     else
                     {
                        §§goto(addr93);
                     }
                  }
                  continue;
                  addr69:
               }
               while(true)
               {
                  §62§(true);
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  if(_loc1_)
                  {
                     break;
                  }
                  §§goto(addr69);
               }
               return;
            }
            §§goto(addr75);
         }
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§0!0§ = param1;
         }
      }
      
      public function §;w§(param1:XML) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§5h§ = param1;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super.activate();
            while(true)
            {
               §8X§.addChild(this.§0!0§);
               while(!_loc1_)
               {
                  while(_loc2_ || this)
                  {
                     this.§5!m§ = getTimer();
                     if(_loc2_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.setLoadingPercentage(0);
            §§goto(addr61);
         }
      }
      
      private function §5x§() : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(!_loc5_)
         {
            if(§6!S§.§<d§.§%G§())
            {
               addr29:
               var _loc3_:int = 0;
               var _loc4_:* = this.§5h§.Library;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!(_loc5_ && _loc1_))
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(!(_loc5_ && this))
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
                        §6!S§.§<d§.§]!$§(_loc1_);
                        continue;
                     }
                     if(!(_loc5_ && _loc3_))
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           if(_loc6_ || _loc1_)
                           {
                              _loc3_ = 0;
                              if(!_loc5_)
                              {
                                 addr108:
                                 _loc4_ = this.§5h§.packages.pack;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc4_,_loc3_));
                                    break loop0;
                                 }
                                 addr142:
                              }
                              if(_loc6_)
                              {
                                 §6!S§.§<d§.§7![§(this.§7>§);
                                 addr148:
                              }
                              §§goto(addr158);
                           }
                           §§goto(addr148);
                        }
                     }
                     §§goto(addr108);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc3_,_loc4_);
                     if(!(_loc5_ && this))
                     {
                        §6!S§.§<d§.§]!$§(_loc2_);
                     }
                     continue;
                  }
                  §§goto(addr108);
               }
            }
            else
            {
               §§push(false);
               if(!_loc5_)
               {
                  return §§pop();
               }
            }
            addr158:
            return true;
         }
         §§goto(addr29);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(super.run(param1));
         if(!(_loc6_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc7_ || _loc3_)
         {
            §§push(_loc2_);
            if(_loc7_ || _loc3_)
            {
               if(§§pop() != §?Y§.STATE_STATUS_RUNNING)
               {
                  if(!_loc6_)
                  {
                     §§goto(addr114);
                  }
                  else
                  {
                     while(true)
                     {
                        addr70:
                        if(!(_loc7_ || _loc3_))
                        {
                           continue;
                        }
                        this.§9V§ = true;
                        addr80:
                        if(false)
                        {
                           while(true)
                           {
                              §§push(this.§9V§);
                              loop2:
                              while(true)
                              {
                                 §§push(!§§pop());
                                 loop3:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop4:
                                       while(true)
                                       {
                                          §§pop();
                                          addr89:
                                          while(true)
                                          {
                                             §§push(this.§5x§());
                                             if(_loc7_ || this)
                                             {
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(!(_loc7_ || param1))
                                             {
                                                continue loop4;
                                             }
                                             if(_loc6_)
                                             {
                                                continue loop3;
                                             }
                                          }
                                          continue loop2;
                                       }
                                    }
                                    while(§§pop())
                                    {
                                       if(_loc7_ || _loc3_)
                                       {
                                          if(!_loc6_)
                                          {
                                             §§goto(addr70);
                                          }
                                          else
                                          {
                                             §§goto(addr89);
                                          }
                                       }
                                       §§goto(addr80);
                                    }
                                 }
                              }
                           }
                           addr82:
                        }
                        §§push(Math.min(1,§6!S§.§<d§.§4!C§()) * 9);
                        if(_loc7_ || _loc2_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc3_:* = §§pop();
                        var _loc4_:Number = Math.min(1,(getTimer() - this.§5!m§) / §&!7§);
                        §§push(_loc3_);
                        if(!_loc6_)
                        {
                           §§push(§§pop() + _loc4_);
                           if(_loc7_ || param1)
                           {
                              §§push(§§pop() / 10);
                              if(_loc7_ || this)
                              {
                              }
                              addr167:
                              var _loc5_:* = §§pop();
                              if(_loc7_)
                              {
                                 this.setLoadingPercentage(_loc5_);
                                 §§push(§6!S§.§<d§);
                                 if(_loc7_ || _loc2_)
                                 {
                                    if(§§pop().§4!C§() < 1)
                                    {
                                       return §?Y§.STATE_STATUS_RUNNING;
                                    }
                                    addr216:
                                    §§push(§6!S§.§<d§);
                                 }
                                 §§pop().§4!B§();
                                 return §?Y§.STATE_STATUS_COMPLETED;
                              }
                              §§goto(addr216);
                           }
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr167);
                     }
                  }
               }
               §§goto(addr82);
            }
            §§goto(addr114);
         }
         addr114:
         return _loc2_;
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
         if(!(_loc1_ && _loc2_))
         {
            §8X§.removeChild(this.§0!0§);
            while(true)
            {
               this.§0!0§ = null;
               §§goto(addr56);
            }
         }
         addr56:
         while(true)
         {
            super.cleanup();
            if(!(_loc1_ && _loc2_))
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §7>§() : void
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
         loop0:
         while(this.§0!0§)
         {
            do
            {
               this.§0!0§.x = param1 - this.§0!0§.width >> 1;
               while(!(_loc4_ && param1))
               {
                  this.§0!0§.y = param2 - this.§0!0§.height >> 1;
                  if(!_loc3_)
                  {
                     continue;
                  }
                  §§goto(addr46);
               }
               continue loop0;
            }
            while(!(_loc3_ || param2));
            
            break;
         }
      }
   }
}
