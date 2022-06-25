package §8,§
{
   import §"i§.§5V§;
   import §4!C§.§,!l§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §5T§ extends §+_§
   {
      
      public static const §3F§:String = "load";
      
      public static var §+3§:uint = 4000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §3F§ = "load";
         }
         do
         {
            §+3§ = 4000;
         }
         while(!_loc1_);
         
      }
      
      private var §+d§:Boolean = false;
      
      private var §7!%§:uint;
      
      private var §%!K§:Boolean = false;
      
      public var §,!j§:XML;
      
      public var §6x§:XML;
      
      public var §,!4§:DisplayObjectContainer;
      
      private var §5!i§:String;
      
      private var §6!u§:String;
      
      public function §5T§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.§5!i§ = param4;
            while(true)
            {
               this.§6!u§ = param5;
               while(true)
               {
                  super(param1,param2);
                  §§goto(addr82);
               }
            }
         }
         addr82:
         while(true)
         {
            §39§ = true;
            do
            {
               §+3§ = param3;
            }
            while(!(_loc7_ || param1));
            
            if(!_loc6_)
            {
               if(!(_loc6_ && param2))
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr71:
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            do
            {
               §,!l§.init(§`!g§("connectionProfileId"));
               loop1:
               do
               {
                  §§push(§5V§.§^Z§);
                  if(_loc1_ || _loc1_)
                  {
                     if(!§§pop().§@!h§())
                     {
                        while(true)
                        {
                           §§push(§5V§.§^Z§);
                           addr80:
                           while(true)
                           {
                              §§pop().init(§,!l§.§"!D§(),this.§5!i§,this.§6!u§,null);
                              addr88:
                              while(true)
                              {
                              }
                           }
                           addr34:
                           if(_loc1_)
                           {
                              continue loop1;
                           }
                        }
                     }
                     while(true)
                     {
                        §!u§(true);
                        if(!(_loc1_ || _loc1_))
                        {
                           continue;
                        }
                        §§goto(addr34);
                     }
                     continue;
                  }
                  §§goto(addr80);
               }
               while(!(_loc1_ || this));
               
            }
            while(!_loc1_);
            
         }
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,!4§ = param1;
         }
      }
      
      public function §9l§(param1:XML) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§,!j§ = param1;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.activate();
         }
         loop0:
         while(true)
         {
            §8!9§.addChild(this.§,!4§);
            loop1:
            do
            {
               this.setLoadingPercentage(0);
               while(_loc1_)
               {
                  this.§7!%§ = getTimer();
                  if(!(_loc2_ && _loc1_))
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(!(_loc1_ || this));
            
            return;
         }
      }
      
      private function §?!Z§() : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(_loc5_)
         {
            if(§5V§.§^Z§.§?r§())
            {
               addr28:
               var _loc3_:int = 0;
               var _loc4_:* = this.§,!j§.Library;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(!(_loc6_ && this))
                        {
                           if(_loc1_.@startupLoad.toString().toLowerCase() != "true")
                           {
                              continue;
                           }
                           if(_loc6_ && _loc2_)
                           {
                              continue;
                           }
                        }
                        §5V§.§^Z§.§@e§(_loc1_);
                        continue;
                     }
                     if(!(_loc6_ && _loc1_))
                     {
                        if(!(_loc6_ && this))
                        {
                           if(_loc5_ || this)
                           {
                              _loc3_ = 0;
                              if(!_loc6_)
                              {
                                 _loc4_ = this.§,!j§.packages.pack;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc4_,_loc3_));
                                    break loop0;
                                 }
                                 addr144:
                                 if(!_loc6_)
                                 {
                                    §5V§.§^Z§.§-u§(this.§-!B§);
                                    §§push(true);
                                 }
                                 else
                                 {
                                    addr149:
                                    §§push(false);
                                    if(!_loc6_)
                                    {
                                       return §§pop();
                                    }
                                    addr160:
                                 }
                                 return §§pop();
                                 addr143:
                                 addr141:
                              }
                              §§goto(addr144);
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr143);
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
                        §5V§.§^Z§.§@e§(_loc2_);
                     }
                     continue;
                  }
                  §§goto(addr144);
               }
            }
            §§goto(addr149);
         }
         §§goto(addr28);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(super.run(param1));
         if(_loc7_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc6_ && _loc3_))
         {
            §§push(_loc2_);
            if(!(_loc6_ && _loc2_))
            {
               if(§§pop() == §+_§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§%!K§);
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
                                 addr86:
                                 while(true)
                                 {
                                    §§push(this.§?!Z§());
                                    if(!_loc6_)
                                    {
                                       if(!(_loc7_ || param1))
                                       {
                                          break;
                                       }
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(!(_loc7_ || _loc3_))
                                    {
                                       continue loop3;
                                    }
                                    if(_loc6_)
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
                              if(_loc7_ || param1)
                              {
                                 if(_loc7_)
                                 {
                                    while(true)
                                    {
                                       this.§%!K§ = true;
                                    }
                                    addr70:
                                 }
                                 else
                                 {
                                    §§goto(addr86);
                                 }
                              }
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    if(true)
                                    {
                                       break loop5;
                                    }
                                 }
                                 continue loop0;
                              }
                              return _loc2_;
                           }
                           §§push(Math.min(1,§5V§.§^Z§.§#Y§()) * 9);
                           if(_loc7_)
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc3_:* = §§pop();
                           var _loc4_:Number = Math.min(1,(getTimer() - this.§7!%§) / §+3§);
                           §§push(_loc3_);
                           if(!_loc6_)
                           {
                              §§push(§§pop() + _loc4_);
                              if(!_loc6_)
                              {
                                 §§push(§§pop() / 10);
                                 if(_loc7_ || this)
                                 {
                                    addr151:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc5_:* = §§pop();
                                 if(_loc7_)
                                 {
                                    this.setLoadingPercentage(_loc5_);
                                    while(true)
                                    {
                                       §§push(§5V§.§^Z§);
                                       if(_loc6_ && _loc3_)
                                       {
                                          break;
                                       }
                                       if(§§pop().§#Y§() < 1)
                                       {
                                          return §+_§.STATE_STATUS_RUNNING;
                                       }
                                       if(_loc7_)
                                       {
                                          §§push(§5V§.§^Z§);
                                          break;
                                       }
                                    }
                                    §§pop().§?!^§();
                                 }
                                 return §+_§.STATE_STATUS_COMPLETED;
                              }
                           }
                           §§goto(addr151);
                        }
                     }
                  }
               }
               §§goto(addr108);
            }
            §§goto(addr109);
         }
         §§goto(addr70);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
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
            §8!9§.removeChild(this.§,!4§);
            do
            {
               this.§,!4§ = null;
               do
               {
                  super.cleanup();
               }
               while(!_loc2_);
               
            }
            while(_loc1_ && _loc2_);
            
         }
      }
      
      private function §-!B§() : void
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
            while(this.§,!4§)
            {
               if(_loc4_)
               {
                  if(!_loc4_)
                  {
                     continue;
                  }
                  this.§,!4§.x = param1 - this.§,!4§.width >> 1;
               }
               do
               {
                  this.§,!4§.y = param2 - this.§,!4§.height >> 1;
               }
               while(!_loc4_);
               
               break;
            }
            return;
         }
         §§goto(addr57);
      }
   }
}
