package §37§
{
   import §"!w§.§6!E§;
   import §,M§.§+f§;
   import §2!&§.§+h§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §4=§ extends §9!c§
   {
      
      public static const §8"%§:String = "load";
      
      public static var §-?§:uint = 4000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §8"%§ = "load";
            do
            {
               §-?§ = 4000;
            }
            while(!(_loc1_ || _loc2_));
            
         }
      }
      
      private var §4!R§:Boolean = false;
      
      private var §1u§:uint;
      
      private var §false§:Boolean = false;
      
      public var §>!c§:XML;
      
      public var §+&§:XML;
      
      public var §=x§:DisplayObjectContainer;
      
      protected var §4"1§:String;
      
      protected var §?k§:String;
      
      private var §"!l§:Boolean = false;
      
      public function §4=§(param1:§+f§, param2:Boolean = true, param3:String = "load", param4:Number = 1000, param5:String = "", param6:String = "")
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            this.§4"1§ = param5;
            do
            {
               this.§?k§ = param6;
               loop1:
               do
               {
                  super(param2,param3,param1);
                  while(true)
                  {
                     §8!$§ = true;
                     while(_loc7_)
                     {
                        §-?§ = param4;
                        if(_loc7_ || param1)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
               while(!_loc7_);
               
            }
            while(!_loc7_);
            
         }
      }
      
      override protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.init();
            while(true)
            {
               §+h§.init(§!6§("connectionProfileId"));
               while(!_loc2_)
               {
                  if(!§6!E§.§,2§.§&;§())
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        while(true)
                        {
                           this.§,!,§();
                        }
                        addr57:
                     }
                     loop2:
                     while(_loc1_)
                     {
                        while(true)
                        {
                           §`Y§(true);
                           if(!(_loc2_ && _loc1_))
                           {
                              break;
                           }
                           continue loop2;
                        }
                        return;
                     }
                     continue;
                  }
                  §§goto(addr23);
               }
            }
         }
         §§goto(addr57);
      }
      
      protected function §,!,§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §6!E§.§,2§.init(§+h§.§^!W§(),this.§4"1§,this.§?k§,null);
         }
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§=x§ = param1;
         }
      }
      
      public function §^'§(param1:XML) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§>!c§ = param1;
         }
      }
      
      override public function activate(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super.activate(param1);
            loop0:
            while(true)
            {
               §&%§.addChild(this.§=x§);
               while(true)
               {
                  this.setLoadingPercentage(0);
                  loop2:
                  while(!(_loc3_ && this))
                  {
                     if(!_loc3_)
                     {
                        while(true)
                        {
                           this.§1u§ = getTimer();
                           if(!(_loc3_ && _loc2_))
                           {
                              break;
                           }
                           continue loop2;
                        }
                        return;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      private function §1!&§() : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(_loc6_)
         {
            if(§6!E§.§,2§.§#y§())
            {
               addr29:
               var _loc3_:* = 0;
               var _loc4_:* = this.§>!c§.Library;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(_loc6_)
                        {
                           if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
                           {
                              if(!(_loc5_ && _loc2_))
                              {
                                 §6!E§.§,2§.§#X§(_loc1_);
                              }
                           }
                        }
                        continue;
                     }
                     if(!_loc5_)
                     {
                        if(_loc6_ || _loc2_)
                        {
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(0);
                              if(!(_loc5_ && _loc2_))
                              {
                                 _loc3_ = §§pop();
                                 if(_loc6_)
                                 {
                                    _loc4_ = this.§>!c§.libraries.library;
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc4_,_loc3_));
                                       if(_loc6_ || _loc2_)
                                       {
                                          if(§§pop())
                                          {
                                             _loc1_ = §§nextvalue(_loc3_,_loc4_);
                                             if(_loc6_ || _loc1_)
                                             {
                                                if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      §6!E§.§,2§.§#X§(_loc1_);
                                                   }
                                                }
                                             }
                                             continue;
                                          }
                                          if(_loc6_)
                                          {
                                             addr148:
                                             if(!(_loc5_ && _loc1_))
                                             {
                                                if(!(_loc5_ && this))
                                                {
                                                   addr165:
                                                   _loc3_ = 0;
                                                   addr164:
                                                   if(!_loc5_)
                                                   {
                                                      _loc4_ = this.§>!c§.packages.pack;
                                                      while(true)
                                                      {
                                                         §§push(§§hasnext(_loc4_,_loc3_));
                                                         break loop0;
                                                      }
                                                      addr187:
                                                   }
                                                   §§goto(addr190);
                                                }
                                                §§goto(addr198);
                                             }
                                          }
                                          §§goto(addr190);
                                       }
                                       break loop0;
                                    }
                                 }
                                 addr190:
                                 if(!(_loc5_ && this))
                                 {
                                    §6!E§.§,2§.§&!L§(this.§0!Q§);
                                    §§push(true);
                                    addr198:
                                 }
                                 else
                                 {
                                    addr200:
                                    §§push(false);
                                    if(_loc6_ || _loc3_)
                                    {
                                       return §§pop();
                                    }
                                 }
                                 return §§pop();
                              }
                              §§goto(addr165);
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr165);
                     }
                     §§goto(addr148);
                  }
                  break;
               }
               while(§§pop())
               {
                  _loc2_ = §§nextvalue(_loc3_,_loc4_);
                  if(_loc6_)
                  {
                     §6!E§.§,2§.§#X§(_loc2_);
                  }
                  §§goto(addr187);
               }
               §§goto(addr189);
            }
            §§goto(addr200);
         }
         §§goto(addr29);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && _loc2_))
         {
            §§push(this.§false§);
            if(!(_loc6_ && _loc3_))
            {
               §§push(!§§pop());
               if(_loc5_)
               {
                  if(§§pop())
                  {
                     if(_loc5_ || this)
                     {
                        §§pop();
                        if(_loc5_)
                        {
                           addr47:
                           §§push(this.§1!&§());
                           if(!_loc6_)
                           {
                              addr52:
                              if(§§pop())
                              {
                                 if(!(_loc6_ && this))
                                 {
                                    this.§false§ = true;
                                 }
                              }
                           }
                           §§goto(addr52);
                        }
                        §§push(Math.min(1,§6!E§.§,2§.§#"3§()) * 9);
                        if(!(_loc6_ && this))
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        var _loc3_:Number = Math.min(1,(getTimer() - this.§1u§) / §-?§);
                        §§push(_loc2_);
                        if(_loc5_ || _loc3_)
                        {
                           §§push(§§pop() + _loc3_);
                           if(!(_loc6_ && _loc2_))
                           {
                              §§push(§§pop() / 10);
                              if(_loc6_)
                              {
                              }
                              addr124:
                              var _loc4_:* = §§pop();
                              if(_loc5_)
                              {
                                 this.setLoadingPercentage(_loc4_);
                                 loop0:
                                 while(true)
                                 {
                                    §§push(this.§"!l§);
                                    loop1:
                                    while(true)
                                    {
                                       §§push(!§§pop());
                                       if(_loc5_)
                                       {
                                          if(§§pop())
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                §§pop();
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(§6!E§.§,2§);
                                                   if(!_loc6_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   addr175:
                                                   while(true)
                                                   {
                                                      §§pop().§#!?§();
                                                      addr176:
                                                      while(true)
                                                      {
                                                         this.§7_§();
                                                         if(_loc5_)
                                                         {
                                                            if(!(_loc6_ && _loc2_))
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  §§goto(addr128);
                                                               }
                                                               continue loop6;
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                                continue loop1;
                                             }
                                             addr195:
                                          }
                                          while(§§pop())
                                          {
                                             continue loop0;
                                          }
                                          addr128:
                                          return;
                                       }
                                       §§goto(addr195);
                                    }
                                 }
                              }
                              §§goto(addr176);
                           }
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr124);
                     }
                  }
               }
            }
            §§goto(addr52);
         }
         §§goto(addr47);
      }
      
      protected function §7_§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§"!l§ = true;
         }
         do
         {
            §7"6§(§8!w§);
         }
         while(_loc1_ && _loc2_);
         
      }
      
      public function isLoadingReady() : Boolean
      {
         return this.§"!l§;
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
         if(!_loc1_)
         {
            §&%§.removeChild(this.§=x§);
            while(true)
            {
               this.§=x§ = null;
               while(!_loc1_)
               {
                  super.cleanup();
                  if(!(_loc1_ && _loc1_))
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      private function §0!Q§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.setViewSize(param1,param2);
         }
         loop0:
         while(this.§=x§)
         {
            loop1:
            do
            {
               this.§=x§.x = param1 - this.§=x§.width >> 1;
               while(_loc3_)
               {
                  this.§=x§.y = param2 - this.§=x§.height >> 1;
                  if(_loc3_ || _loc3_)
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(!_loc3_);
            
            break;
         }
      }
   }
}
