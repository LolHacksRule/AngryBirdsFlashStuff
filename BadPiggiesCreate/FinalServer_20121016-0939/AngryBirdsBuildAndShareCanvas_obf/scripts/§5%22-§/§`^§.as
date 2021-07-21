package §5"-§
{
   import §4!D§.§3!7§;
   import §@!v§.§6!Q§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §`^§ extends §5y§
   {
      
      public static const §'=§:String = "load";
      
      public static var §<n§:uint = 4000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §'=§ = "load";
            do
            {
               §<n§ = 4000;
            }
            while(_loc1_ && §`^§);
            
         }
      }
      
      private var §3M§:Boolean = false;
      
      private var §&7§:uint;
      
      private var §2!n§:Boolean = false;
      
      public var §"G§:XML;
      
      public var §=X§:XML;
      
      public var §+!U§:DisplayObjectContainer;
      
      private var §!!+§:String;
      
      private var §,j§:String;
      
      public function §`^§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param2))
         {
            this.§!!+§ = param4;
            loop0:
            while(true)
            {
               this.§,j§ = param5;
               do
               {
                  super(param1,param2);
                  loop2:
                  do
                  {
                     §&!z§ = true;
                     while(_loc7_)
                     {
                        §<n§ = param3;
                        if(!(_loc6_ && this))
                        {
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
                  while(!_loc7_);
                  
               }
               while(!_loc7_);
               
            }
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            loop0:
            while(true)
            {
               §6!Q§.init(§"!>§("connectionProfileId"));
               while(true)
               {
                  §§push(§3!7§.§2=§);
                  if(_loc2_)
                  {
                     break;
                  }
                  if(!§§pop().§%",§())
                  {
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                        continue;
                     }
                     addr78:
                     while(true)
                     {
                     }
                     addr78:
                  }
                  while(true)
                  {
                     §9!j§(true);
                     if(_loc1_ || _loc2_)
                     {
                        break;
                     }
                     §§goto(addr78);
                  }
               }
               addr70:
               §§pop().init(§6!Q§.§]!q§(),this.§!!+§,this.§,j§,null);
               §§goto(addr78);
            }
         }
      }
      
      public function §&!6§(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§+!U§ = param1;
         }
      }
      
      public function §#'§(param1:XML) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§"G§ = param1;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.activate();
            while(true)
            {
               §!&§.addChild(this.§+!U§);
               while(true)
               {
                  this.setLoadingPercentage(0);
                  §§goto(addr69);
               }
            }
         }
         addr69:
         while(true)
         {
            this.§&7§ = getTimer();
            if(_loc1_ || this)
            {
               if(_loc1_)
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      private function §4"8§() : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(!_loc5_)
         {
            if(§3!7§.§2=§.§6"5§())
            {
               addr29:
               var _loc3_:* = 0;
               var _loc4_:* = this.§"G§.Library;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(_loc6_)
                  {
                     if(§§pop())
                     {
                        _loc1_ = §§nextvalue(_loc3_,_loc4_);
                        if(_loc6_ || _loc1_)
                        {
                           if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
                           {
                              if(_loc6_)
                              {
                                 §3!7§.§2=§.§^A§(_loc1_);
                              }
                           }
                        }
                        continue;
                     }
                     if(_loc6_ || _loc1_)
                     {
                        if(_loc6_)
                        {
                           if(_loc6_ || _loc3_)
                           {
                              §§push(0);
                              if(_loc6_)
                              {
                                 _loc3_ = §§pop();
                                 if(!(_loc5_ && this))
                                 {
                                    _loc4_ = this.§"G§.libraries.library;
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc4_,_loc3_));
                                       if(!_loc5_)
                                       {
                                          break loop0;
                                       }
                                       break;
                                    }
                                    loop2:
                                    while(§§pop())
                                    {
                                       _loc2_ = §§nextvalue(_loc3_,_loc4_);
                                       if(!_loc5_)
                                       {
                                          §3!7§.§2=§.§^A§(_loc2_);
                                       }
                                       while(true)
                                       {
                                          continue loop2;
                                       }
                                    }
                                    addr189:
                                    addr142:
                                    addr188:
                                 }
                                 §§goto(addr190);
                              }
                              §§goto(addr160);
                           }
                           §§goto(addr226);
                        }
                        §§goto(addr168);
                     }
                     §§goto(addr189);
                  }
                  break;
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     if(!_loc5_)
                     {
                        if(_loc6_)
                        {
                           if(!(_loc5_ && _loc1_))
                           {
                              addr160:
                              _loc3_ = §§pop();
                              if(_loc6_ || this)
                              {
                                 addr168:
                                 _loc4_ = this.§"G§.packages.pack;
                                 §§goto(addr187);
                              }
                              addr190:
                              if(_loc6_ || _loc1_)
                              {
                                 §3!7§.§2=§.§,!'§(this.§]!E§);
                                 §§push(true);
                                 addr232:
                              }
                              else
                              {
                                 addr200:
                                 §§push(false);
                                 if(_loc6_ || _loc2_)
                                 {
                                    return §§pop();
                                 }
                                 addr226:
                              }
                              return §§pop();
                              §§push(0);
                           }
                           §§goto(addr232);
                        }
                        §§goto(addr190);
                     }
                     §§goto(addr189);
                  }
                  else
                  {
                     _loc1_ = §§nextvalue(_loc3_,_loc4_);
                     if(_loc6_ || this)
                     {
                        if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
                        {
                           if(_loc6_ || this)
                           {
                              addr138:
                              §3!7§.§2=§.§^A§(_loc1_);
                           }
                        }
                        §§goto(addr142);
                     }
                     §§goto(addr138);
                  }
               }
            }
            §§goto(addr200);
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
         if(_loc6_)
         {
            §§push(_loc2_);
            if(!(_loc7_ && param1))
            {
               if(§§pop() == §5y§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§2!n§);
                     loop1:
                     while(true)
                     {
                        §§push(!§§pop());
                        if(!_loc7_)
                        {
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§pop();
                                 addr68:
                                 addr34:
                                 while(true)
                                 {
                                    if(!_loc6_)
                                    {
                                       return _loc2_;
                                    }
                                    addr82:
                                    §§push(this.§4"8§());
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    if(!_loc7_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 if(_loc7_ && _loc2_)
                                 {
                                    continue loop1;
                                 }
                              }
                              addr67:
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc7_)
                                 {
                                    if(_loc6_ || _loc3_)
                                    {
                                       this.§2!n§ = true;
                                    }
                                    else
                                    {
                                       §§goto(addr68);
                                    }
                                 }
                                 if(_loc6_)
                                 {
                                    if(false)
                                    {
                                       continue loop0;
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       continue loop0;
                                    }
                                    addr84:
                                 }
                              }
                              §§push(Math.min(1,§3!7§.§2=§.§-!E§()) * 9);
                              if(_loc6_ || param1)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc3_:* = §§pop();
                              var _loc4_:Number = Math.min(1,(getTimer() - this.§&7§) / §<n§);
                              §§push(_loc3_);
                              if(_loc6_ || this)
                              {
                                 §§push(§§pop() + _loc4_);
                                 if(_loc6_ || _loc2_)
                                 {
                                    §§push(§§pop() / 10);
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       addr150:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc5_:* = §§pop();
                                    if(_loc6_)
                                    {
                                       this.setLoadingPercentage(_loc5_);
                                       §§push(§3!7§.§2=§);
                                       if(!_loc7_)
                                       {
                                          if(§§pop().§-!E§() < 1)
                                          {
                                             return §5y§.STATE_STATUS_RUNNING;
                                          }
                                          §§push(§3!7§.§2=§);
                                       }
                                       §§pop().§'e§();
                                    }
                                    return §5y§.STATE_STATUS_COMPLETED;
                                 }
                              }
                              §§goto(addr150);
                              §§goto(addr34);
                           }
                           continue;
                        }
                        §§goto(addr67);
                     }
                  }
               }
            }
            §§goto(addr82);
         }
         §§goto(addr84);
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §!&§.removeChild(this.§+!U§);
         }
         while(true)
         {
            this.§+!U§ = null;
            while(_loc1_)
            {
               super.cleanup();
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      private function §]!E§() : void
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
            for(; this.§+!U§; do
            {
               this.§+!U§.y = param2 - this.§+!U§.height >> 1;
            }
            while(!_loc3_);
            ,if(_loc3_)
            {
               break;
            })
            {
               if(_loc4_ && param1)
               {
                  continue;
               }
            }
            return;
         }
         while(true)
         {
            this.§+!U§.x = param1 - this.§+!U§.width >> 1;
            §§goto(addr80);
         }
      }
   }
}
