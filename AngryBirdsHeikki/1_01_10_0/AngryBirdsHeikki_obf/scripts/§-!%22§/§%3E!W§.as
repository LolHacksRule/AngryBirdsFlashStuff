package §-!"§
{
   import §<N§.§'M§;
   import §^V§.§4!H§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   
   public class §>!W§ extends §=p§
   {
      
      public static const §@o§:String = "load";
      
      public static var §3P§:uint = 4000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §@o§ = "load";
            do
            {
               §3P§ = 4000;
            }
            while(!_loc2_);
            
         }
      }
      
      private var §>!_§:Boolean = false;
      
      private var §while§:uint;
      
      private var §'!R§:Boolean = false;
      
      public var §6X§:XML;
      
      public var §,!Y§:XML;
      
      public var §+!E§:DisplayObjectContainer;
      
      private var §2Q§:String;
      
      private var §'!G§:String;
      
      public function §>!W§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param3))
         {
            this.§2Q§ = param4;
            loop0:
            while(true)
            {
               this.§'!G§ = param5;
               loop1:
               do
               {
                  super(param1,param2);
                  while(!_loc7_)
                  {
                     §0!L§ = true;
                     while(!(_loc7_ && param3))
                     {
                        §3P§ = param3;
                        if(!_loc7_)
                        {
                           continue loop1;
                        }
                     }
                  }
                  continue loop0;
               }
               while(_loc7_ && param1);
               
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
         }
         loop0:
         while(true)
         {
            §4!H§.init(§6"§("connectionProfileId"));
            do
            {
               §§push(§'M§.§ s§);
               if(_loc1_)
               {
                  if(§§pop().§<p§())
                  {
                     while(true)
                     {
                        §2[§(true);
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     continue;
                     addr23:
                  }
                  if(!(_loc1_ || this))
                  {
                     continue loop0;
                  }
                  §§push(§'M§.§ s§);
               }
               §§pop().init(§4!H§.§`l§(),this.§2Q§,this.§'!G§,null);
               continue loop0;
            }
            while(_loc2_);
            
            return;
         }
      }
      
      public function §&G§(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§+!E§ = param1;
         }
      }
      
      public function §4!S§(param1:XML) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§6X§ = param1;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.activate();
         }
         do
         {
            §;=§.addChild(this.§+!E§);
            do
            {
               this.setLoadingPercentage(0);
               do
               {
                  this.§while§ = getTimer();
               }
               while(_loc2_ && _loc1_);
               
            }
            while(_loc2_ && this);
            
         }
         while(!_loc1_);
         
      }
      
      private function §'!S§() : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(_loc6_)
         {
            if(§'M§.§ s§.§+!H§())
            {
               addr29:
               var _loc3_:* = 0;
               var _loc4_:* = this.§6X§.Library;
               loop0:
               while(true)
               {
                  §§push(§§hasnext(_loc4_,_loc3_));
                  if(!(_loc5_ && _loc1_))
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
                           if(!_loc6_)
                           {
                              continue;
                           }
                        }
                        §'M§.§ s§.§;n§(_loc1_);
                        continue;
                     }
                     if(!_loc5_)
                     {
                        if(!_loc5_)
                        {
                           if(!(_loc5_ && this))
                           {
                              §§push(0);
                              if(_loc6_)
                              {
                                 _loc3_ = §§pop();
                                 if(_loc6_)
                                 {
                                    _loc4_ = this.§6X§.libraries.library;
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc4_,_loc3_));
                                       if(!(_loc5_ && _loc2_))
                                       {
                                          break loop0;
                                       }
                                       break;
                                    }
                                    loop2:
                                    while(§§pop())
                                    {
                                       _loc2_ = §§nextvalue(_loc3_,_loc4_);
                                       if(_loc6_)
                                       {
                                          §'M§.§ s§.§;n§(_loc2_);
                                       }
                                       while(true)
                                       {
                                          continue loop2;
                                       }
                                    }
                                    addr175:
                                    if(!_loc5_)
                                    {
                                       §'M§.§ s§.§-l§(this.§#!§);
                                    }
                                    return true;
                                    addr174:
                                    addr122:
                                    addr173:
                                 }
                                 §§goto(addr175);
                              }
                              addr150:
                              _loc3_ = §§pop();
                              if(!_loc5_)
                              {
                                 _loc4_ = this.§6X§.packages.pack;
                                 §§goto(addr172);
                              }
                              §§goto(addr175);
                           }
                           addr180:
                           §§push(false);
                           if(_loc6_)
                           {
                              return §§pop();
                           }
                           §§goto(addr175);
                           addr206:
                        }
                        §§goto(addr175);
                     }
                     §§goto(addr174);
                  }
                  break;
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     if(!(_loc5_ && _loc3_))
                     {
                        if(_loc6_ || _loc3_)
                        {
                           if(_loc6_)
                           {
                              §§goto(addr150);
                              §§push(0);
                           }
                           else
                           {
                              §§goto(addr206);
                           }
                        }
                     }
                     §§goto(addr175);
                  }
                  else
                  {
                     _loc1_ = §§nextvalue(_loc3_,_loc4_);
                     if(_loc6_)
                     {
                        if(_loc1_.@startupLoad.toString().toLowerCase() == "true")
                        {
                           if(_loc6_)
                           {
                              §'M§.§ s§.§;n§(_loc1_);
                           }
                        }
                     }
                     §§goto(addr122);
                  }
               }
            }
            §§goto(addr180);
         }
         §§goto(addr29);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(super.run(param1));
         if(_loc7_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc7_ || this)
         {
            §§push(_loc2_);
            if(!_loc6_)
            {
               if(§§pop() != §=p§.STATE_STATUS_RUNNING)
               {
                  if(_loc7_ || _loc3_)
                  {
                     §§goto(addr114);
                  }
                  else
                  {
                     while(true)
                     {
                     }
                     addr115:
                  }
               }
               loop1:
               while(true)
               {
                  §§push(this.§'!R§);
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(!§§pop());
                     loop2:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           while(§§pop())
                           {
                              if(_loc7_)
                              {
                                 if(!(_loc6_ && param1))
                                 {
                                    this.§'!R§ = true;
                                 }
                                 else
                                 {
                                    loop5:
                                    while(true)
                                    {
                                       §§push(this.§'!S§());
                                       if(!(_loc6_ && _loc2_))
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                       if(_loc7_)
                                       {
                                          continue loop2;
                                       }
                                       addr88:
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop5;
                                       }
                                    }
                                    addr89:
                                 }
                              }
                              if(_loc7_)
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              §§goto(addr115);
                           }
                           §§push(Math.min(1,§'M§.§ s§.§#!0§()) * 9);
                           if(_loc7_)
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc3_:* = §§pop();
                           var _loc4_:Number = Math.min(1,(getTimer() - this.§while§) / §3P§);
                           §§push(_loc3_);
                           if(_loc7_)
                           {
                              §§push(§§pop() + _loc4_);
                              if(_loc7_)
                              {
                                 §§push(§§pop() / 10);
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    addr156:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc5_:* = §§pop();
                                 if(!_loc6_)
                                 {
                                    this.setLoadingPercentage(_loc5_);
                                    §§push(§'M§.§ s§);
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       if(§§pop().§#!0§() >= 1)
                                       {
                                          if(_loc7_)
                                          {
                                             addr203:
                                             §'M§.§ s§.§ _§();
                                          }
                                          return §=p§.STATE_STATUS_COMPLETED;
                                       }
                                       return §=p§.STATE_STATUS_RUNNING;
                                    }
                                 }
                                 §§goto(addr203);
                              }
                           }
                           §§goto(addr156);
                           addr57:
                        }
                     }
                  }
                  §§goto(addr88);
               }
            }
            addr114:
            return _loc2_;
         }
         §§goto(addr89);
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
         if(_loc2_)
         {
            §;=§.removeChild(this.§+!E§);
            while(true)
            {
               this.§+!E§ = null;
               §§goto(addr56);
            }
         }
         addr56:
         while(true)
         {
            super.cleanup();
            if(!_loc1_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §#!§() : void
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
         while(this.§+!E§)
         {
            while(_loc3_)
            {
               this.§+!E§.x = param1 - this.§+!E§.width >> 1;
               do
               {
                  this.§+!E§.y = param2 - this.§+!E§.height >> 1;
               }
               while(!(_loc3_ || _loc3_));
               
               if(_loc3_ || this)
               {
                  break loop0;
               }
            }
         }
      }
   }
}
