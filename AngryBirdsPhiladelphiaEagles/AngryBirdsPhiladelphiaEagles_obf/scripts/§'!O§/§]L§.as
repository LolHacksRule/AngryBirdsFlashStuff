package §'!O§
{
   import §2!<§.§;!M§;
   import §;f§.§7P§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §]L§ extends §'!#§
   {
      
      public static const §-A§:String = "load";
      
      public static var §8w§:uint = 4000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §]L§)
         {
            §-A§ = "load";
            do
            {
               §8w§ = 4000;
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      private var §`W§:Boolean = false;
      
      private var §0!$§:uint;
      
      private var §%F§:Boolean = false;
      
      public var §[!I§:XML;
      
      public var §^!"§:XML;
      
      public var §#s§:DisplayObjectContainer;
      
      private var §`]§:String;
      
      private var §+X§:String;
      
      public function §]L§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            this.§`]§ = param4;
            loop0:
            while(true)
            {
               this.§+X§ = param5;
               while(true)
               {
                  super(param1,param2);
                  loop2:
                  while(_loc7_ || param3)
                  {
                     while(true)
                     {
                        §?q§ = true;
                        do
                        {
                           §8w§ = param3;
                        }
                        while(!(_loc7_ || param2));
                        
                        if(_loc7_ || param3)
                        {
                           if(_loc7_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            loop0:
            while(true)
            {
               §7P§.init(§5F§("connectionProfileId"));
               do
               {
                  if(!_loc1_)
                  {
                     continue loop0;
                  }
                  §§push(§;!M§.§>o§);
                  if(_loc1_)
                  {
                     if(!§§pop().§;Y§())
                     {
                        addr71:
                        while(true)
                        {
                           §§push(§;!M§.§>o§);
                           addr73:
                           while(true)
                           {
                              §§pop().init(§7P§.§'g§(),this.§`]§,this.§+X§,null);
                              addr81:
                              while(true)
                              {
                              }
                           }
                        }
                        addr71:
                     }
                     while(true)
                     {
                        §<O§(true);
                        if(!_loc1_)
                        {
                           continue;
                        }
                        if(!(_loc2_ && this))
                        {
                           break;
                        }
                        §§goto(addr71);
                     }
                     continue;
                  }
                  §§goto(addr73);
               }
               while(_loc2_ && _loc2_);
               
               return;
            }
         }
         §§goto(addr71);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§#s§ = param1;
         }
      }
      
      public function §#W§(param1:XML) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[!I§ = param1;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.activate();
         }
         loop0:
         do
         {
            §8A§.addChild(this.§#s§);
            while(true)
            {
               this.setLoadingPercentage(0);
               while(!(_loc1_ && this))
               {
                  this.§0!$§ = getTimer();
                  if(_loc2_ || _loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!_loc2_);
         
      }
      
      private function §4W§() : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(!(_loc5_ && _loc1_))
         {
            if(§;!M§.§>o§.§0!C§())
            {
               addr34:
               var _loc3_:int = 0;
               var _loc4_:* = this.§[!I§.Library;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(_loc6_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(_loc6_)
                        {
                           if(_loc1_.@startupLoad.toString().toLowerCase() != "true")
                           {
                              continue;
                           }
                           if(_loc5_ && _loc1_)
                           {
                              continue;
                           }
                        }
                        §;!M§.§>o§.§?t§(_loc1_);
                        continue;
                     }
                     if(_loc6_ || _loc3_)
                     {
                        if(_loc6_ || this)
                        {
                           if(_loc6_)
                           {
                              _loc3_ = 0;
                              if(!(_loc5_ && _loc2_))
                              {
                                 _loc4_ = this.§[!I§.packages.pack;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc4_,_loc3_));
                                    break loop0;
                                 }
                                 addr145:
                                 if(_loc6_)
                                 {
                                    §;!M§.§>o§.§&p§(this.§%^§);
                                 }
                                 addr144:
                                 addr142:
                              }
                              §§goto(addr145);
                           }
                           §§goto(addr158);
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr144);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc3_,_loc4_);
                     if(!(_loc5_ && _loc1_))
                     {
                        §;!M§.§>o§.§?t§(_loc2_);
                     }
                     continue;
                  }
                  §§goto(addr145);
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
         §§goto(addr34);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(super.run(param1));
         if(_loc6_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc6_ || this)
         {
            §§push(_loc2_);
            if(!_loc7_)
            {
               if(§§pop() != §'!#§.STATE_STATUS_RUNNING)
               {
                  if(!(_loc7_ && _loc2_))
                  {
                     §§goto(addr108);
                  }
                  else
                  {
                     while(true)
                     {
                        addr55:
                        if(!(_loc6_ || _loc2_))
                        {
                           continue;
                        }
                        while(true)
                        {
                           this.§%F§ = true;
                           loop8:
                           while(true)
                           {
                              if(!(_loc7_ && _loc3_))
                              {
                                 if(false)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§%F§);
                                       if(_loc6_)
                                       {
                                          §§push(!§§pop());
                                       }
                                       loop2:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop3:
                                             while(true)
                                             {
                                                §§pop();
                                                addr83:
                                                loop4:
                                                while(true)
                                                {
                                                   §§push(this.§4W§());
                                                   if(_loc6_)
                                                   {
                                                      if(_loc7_ && param1)
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(!_loc6_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§push(Boolean(§§pop()));
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         break loop4;
                                                      }
                                                      if(_loc7_)
                                                      {
                                                         continue loop8;
                                                      }
                                                      §§goto(addr55);
                                                   }
                                                }
                                                addr110:
                                                §§push(Math.min(1,§;!M§.§>o§.§#Q§()) * 9);
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc3_:* = §§pop();
                                                var _loc4_:Number = Math.min(1,(getTimer() - this.§0!$§) / §8w§);
                                                §§push(_loc3_);
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop() + _loc4_);
                                                   if(_loc6_ || this)
                                                   {
                                                      §§push(§§pop() / 10);
                                                      if(_loc7_ && param1)
                                                      {
                                                      }
                                                      addr161:
                                                      var _loc5_:* = §§pop();
                                                      if(_loc6_)
                                                      {
                                                         this.setLoadingPercentage(_loc5_);
                                                      }
                                                      §§push(§;!M§.§>o§);
                                                      if(_loc6_)
                                                      {
                                                         if(§§pop().§#Q§() >= 1)
                                                         {
                                                            if(_loc6_ || _loc2_)
                                                            {
                                                               addr207:
                                                               §;!M§.§>o§.§`b§();
                                                            }
                                                            return §'!#§.STATE_STATUS_COMPLETED;
                                                         }
                                                         return §'!#§.STATE_STATUS_RUNNING;
                                                      }
                                                      §§goto(addr207);
                                                   }
                                                   §§push(Number(§§pop()));
                                                }
                                                §§goto(addr161);
                                             }
                                          }
                                          §§goto(addr51);
                                       }
                                    }
                                    addr74:
                                 }
                                 §§goto(addr110);
                              }
                              §§goto(addr83);
                           }
                        }
                        addr62:
                     }
                  }
               }
               §§goto(addr74);
            }
            addr108:
            return _loc2_;
         }
         §§goto(addr62);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §8A§.removeChild(this.§#s§);
         }
         while(true)
         {
            this.§#s§ = null;
            while(!_loc2_)
            {
               super.cleanup();
               if(_loc1_ || _loc1_)
               {
                  return;
               }
            }
         }
      }
      
      private function §%^§() : void
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
         }
         while(this.§#s§)
         {
            do
            {
               this.§#s§.x = param1 - this.§#s§.width >> 1;
               do
               {
                  this.§#s§.y = param2 - this.§#s§.height >> 1;
               }
               while(!_loc4_);
               
            }
            while(!_loc4_);
            
            if(!_loc3_)
            {
               break;
            }
         }
      }
   }
}
