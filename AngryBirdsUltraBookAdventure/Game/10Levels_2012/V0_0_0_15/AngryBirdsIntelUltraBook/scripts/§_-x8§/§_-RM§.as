package §_-x8§
{
   import §_-Hb§.§_-ok§;
   import §_-dX§.§_-03L§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §_-RM§ extends §_-nG§
   {
      
      public static const §_-pk§:String = "load";
      
      public static var §_-0CY§:uint = 4000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §_-RM§)
         {
            §_-pk§ = "load";
         }
         do
         {
            §_-0CY§ = 4000;
         }
         while(_loc2_ && _loc2_);
         
      }
      
      private var §_-4h§:Boolean = false;
      
      private var §_-Zz§:uint;
      
      private var §_-V0§:Boolean = false;
      
      public var §_-1C§:XML;
      
      public var §_-yy§:XML;
      
      public var §_-08o§:DisplayObjectContainer;
      
      private var §_-3o§:String;
      
      private var §_-Df§:String;
      
      public function §_-RM§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            this.§_-3o§ = param4;
            loop0:
            do
            {
               this.§_-Df§ = param5;
               while(true)
               {
                  super(param1,param2);
                  while(_loc6_)
                  {
                     §_-9o§ = true;
                     while(!_loc7_)
                     {
                        §_-0CY§ = param3;
                        if(_loc6_ || param3)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
            }
            while(!(_loc6_ || param2));
            
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
            loop0:
            while(true)
            {
               §_-ok§.init(§_-oh§("connectionProfileId"));
               loop1:
               while(true)
               {
                  §§push(§_-03L§.§_-3S§);
                  if(_loc2_ || _loc2_)
                  {
                     if(!§§pop().§_-gB§())
                     {
                        while(true)
                        {
                           §§push(§_-03L§.§_-3S§);
                           addr74:
                           while(true)
                           {
                              §§pop().init(§_-ok§.§_-Ji§(),this.§_-3o§,this.§_-Df§,null);
                              addr82:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        addr72:
                     }
                     while(true)
                     {
                        §_-vO§(true);
                        if(!(_loc2_ || _loc1_))
                        {
                           continue;
                        }
                        if(!_loc1_)
                        {
                           if(_loc2_)
                           {
                              return;
                              addr49:
                           }
                           continue loop0;
                        }
                        §§goto(addr72);
                     }
                     continue;
                  }
                  §§goto(addr74);
               }
            }
         }
         §§goto(addr49);
      }
      
      public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§_-08o§ = param1;
         }
      }
      
      public function §_-kU§(param1:XML) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§_-1C§ = param1;
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
               §_-FQ§.addChild(this.§_-08o§);
               loop1:
               for(; !(_loc1_ && _loc1_); while(_loc2_ || this)
               {
                  this.§_-Zz§ = getTimer();
                  if(!_loc1_)
                  {
                     return;
                  }
               })
               {
                  while(true)
                  {
                     this.setLoadingPercentage(0);
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      private function §_-0Bk§() : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(_loc5_ || _loc3_)
         {
            if(§_-03L§.§_-3S§.§_-02K§())
            {
               addr33:
               var _loc3_:int = 0;
               var _loc4_:* = this.§_-1C§.Library;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!(_loc6_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(!_loc6_)
                        {
                           if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
                           {
                              if(_loc5_)
                              {
                                 §_-03L§.§_-3S§.§_-0Ab§(_loc1_);
                              }
                           }
                        }
                        continue;
                     }
                     if(_loc5_ || _loc1_)
                     {
                        if(!_loc6_)
                        {
                           if(!(_loc6_ && this))
                           {
                              _loc3_ = 0;
                              if(_loc5_ || _loc1_)
                              {
                                 _loc4_ = this.§_-1C§.packages.pack;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc4_,_loc3_));
                                    break loop0;
                                 }
                                 addr139:
                                 if(_loc5_)
                                 {
                                    §_-03L§.§_-3S§.§_-Zb§(this.§_-Q2§);
                                    addr142:
                                 }
                                 return true;
                                 addr138:
                                 addr136:
                              }
                              §§goto(addr139);
                           }
                           §§goto(addr142);
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr138);
                  }
                  break;
               }
               while(true)
               {
                  if(§§pop())
                  {
                     _loc2_ = §§nextvalue(_loc3_,_loc4_);
                     if(_loc5_)
                     {
                        §_-03L§.§_-3S§.§_-0Ab§(_loc2_);
                     }
                     continue;
                  }
                  §§goto(addr139);
               }
            }
            else
            {
               §§push(false);
               if(!(_loc6_ && this))
               {
                  return §§pop();
               }
            }
            §§goto(addr139);
         }
         §§goto(addr33);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(super.run(param1));
         if(!(_loc6_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc7_ || this)
         {
            §§push(_loc2_);
            if(!_loc6_)
            {
               if(§§pop() == §_-nG§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§_-V0§);
                     if(!(_loc6_ && _loc2_))
                     {
                        §§push(!§§pop());
                        if(!(_loc6_ && param1))
                        {
                           addr118:
                           if(§§pop())
                           {
                              loop1:
                              while(true)
                              {
                                 §§pop();
                                 loop2:
                                 while(true)
                                 {
                                    §§push(this.§_-0Bk§());
                                    if(_loc7_ || this)
                                    {
                                       continue loop1;
                                    }
                                    addr56:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          break loop2;
                                       }
                                       if(_loc7_ || this)
                                       {
                                          if(!(_loc7_ || _loc2_))
                                          {
                                             addr129:
                                             return _loc2_;
                                             addr128:
                                          }
                                          this.§_-V0§ = true;
                                       }
                                       if(!(_loc6_ && this))
                                       {
                                          if(_loc7_ || _loc3_)
                                          {
                                             if(true)
                                             {
                                                break loop2;
                                             }
                                          }
                                          continue loop0;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 §§push(Math.min(1,§_-03L§.§_-3S§.§_-B2§()) * 9);
                                 if(_loc7_ || _loc2_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc3_:* = §§pop();
                                 var _loc4_:Number = Math.min(1,(getTimer() - this.§_-Zz§) / §_-0CY§);
                                 §§push(_loc3_);
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    §§push(§§pop() + _loc4_);
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       §§push(§§pop() / 10);
                                       if(!_loc6_)
                                       {
                                          addr181:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc5_:* = §§pop();
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          this.setLoadingPercentage(_loc5_);
                                          §§push(§_-03L§.§_-3S§);
                                          if(_loc7_ || _loc2_)
                                          {
                                             if(§§pop().§_-B2§() < 1)
                                             {
                                                §§goto(addr191);
                                             }
                                             §§push(§_-03L§.§_-3S§);
                                          }
                                          §§pop().§_-0Eu§();
                                          return §_-nG§.STATE_STATUS_COMPLETED;
                                       }
                                       addr191:
                                       return §_-nG§.STATE_STATUS_RUNNING;
                                    }
                                 }
                                 §§goto(addr181);
                              }
                              addr120:
                           }
                           while(true)
                           {
                              §§goto(addr56);
                           }
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr118);
                  }
               }
               §§goto(addr128);
            }
         }
         §§goto(addr129);
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
            §_-FQ§.removeChild(this.§_-08o§);
         }
         do
         {
            this.§_-08o§ = null;
            do
            {
               super.cleanup();
            }
            while(_loc1_ && _loc1_);
            
         }
         while(!(_loc2_ || _loc2_));
         
      }
      
      private function §_-Q2§() : void
      {
      }
      
      public function setLoadingPercentage(param1:Number) : void
      {
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            super.setViewSize(param1,param2);
            loop0:
            while(this.§_-08o§)
            {
               while(true)
               {
                  this.§_-08o§.x = param1 - this.§_-08o§.width >> 1;
                  do
                  {
                     this.§_-08o§.y = param2 - this.§_-08o§.height >> 1;
                  }
                  while(!(_loc3_ || this));
                  
                  if(!_loc4_)
                  {
                     if(_loc3_)
                     {
                        break loop0;
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr75);
      }
   }
}
