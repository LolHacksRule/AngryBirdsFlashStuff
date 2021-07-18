package §]2§
{
   import §[!#§.§6v§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   import §return§.§#!D§;
   
   public class §6t§ extends §[4§
   {
      
      public static const §`O§:String = "load";
      
      public static var §=o§:uint = 4000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §6t§))
         {
            §`O§ = "load";
            do
            {
               §=o§ = 4000;
            }
            while(!_loc1_);
            
         }
      }
      
      private var §+q§:Boolean = false;
      
      private var §^!L§:uint;
      
      private var §?,§:Boolean = false;
      
      public var §%!I§:XML;
      
      public var §1e§:XML;
      
      public var §-=§:DisplayObjectContainer;
      
      private var §8R§:String;
      
      private var §<,§:String;
      
      public function §6t§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || this)
         {
            this.§8R§ = param4;
            loop0:
            while(true)
            {
               this.§<,§ = param5;
               while(true)
               {
                  super(param1,param2);
                  addr63:
                  if(_loc6_ || param3)
                  {
                     §=o§ = param3;
                     addr70:
                     if(!_loc7_)
                     {
                        continue loop0;
                     }
                     loop3:
                     while(true)
                     {
                        if(!(_loc6_ || this))
                        {
                           while(true)
                           {
                              §2!@§ = true;
                              continue loop3;
                           }
                           return;
                           addr51:
                           addr86:
                        }
                        §§goto(addr63);
                     }
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.init();
            while(true)
            {
               §6v§.init(§59§("connectionProfileId"));
            }
            addr103:
         }
         loop1:
         while(true)
         {
            §§push(§#!D§.§!!L§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop().§8C§())
               {
                  while(true)
                  {
                     §81§(true);
                     if(_loc2_ && _loc2_)
                     {
                        continue loop1;
                     }
                     if(_loc1_)
                     {
                        return;
                     }
                     addr83:
                  }
                  continue;
               }
               while(true)
               {
                  §§push(§#!D§.§!!L§);
               }
            }
            while(true)
            {
               §§pop().init(§6v§.§&P§(),this.§8R§,this.§<,§,null);
               continue loop1;
            }
         }
      }
      
      public function §-!S§(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§-=§ = param1;
         }
      }
      
      public function §?v§(param1:XML) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§%!I§ = param1;
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activate();
            while(true)
            {
               §9!A§.addChild(this.§-=§);
            }
            addr68:
         }
         loop1:
         while(true)
         {
            this.§!<§(0);
            while(_loc1_)
            {
               this.§^!L§ = getTimer();
               if(!_loc1_)
               {
                  continue;
               }
               if(!_loc2_)
               {
                  break loop1;
               }
               §§goto(addr68);
            }
         }
      }
      
      private function §6u§() : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:XML = null;
         var _loc2_:XML = null;
         if(_loc6_ || this)
         {
            if(§#!D§.§!!L§.§]6§())
            {
               addr34:
               var _loc3_:int = 0;
               var _loc4_:* = this.§%!I§.Library;
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
                              if(_loc6_ || this)
                              {
                                 §#!D§.§!!L§.§0!F§(_loc1_);
                              }
                           }
                        }
                        continue;
                     }
                     if(_loc6_)
                     {
                        if(_loc6_ || _loc1_)
                        {
                           if(!(_loc5_ && _loc1_))
                           {
                              _loc3_ = 0;
                              if(_loc6_ || _loc2_)
                              {
                                 addr108:
                                 _loc4_ = this.§%!I§.packages.pack;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc4_,_loc3_));
                                    break loop0;
                                 }
                                 addr132:
                              }
                              if(!(_loc5_ && _loc3_))
                              {
                                 §#!D§.§!!L§.§#!6§(this.§<!R§);
                                 §§push(true);
                                 addr143:
                              }
                              else
                              {
                                 addr145:
                                 §§push(false);
                                 if(!_loc5_)
                                 {
                                    return §§pop();
                                 }
                              }
                              return §§pop();
                           }
                           §§goto(addr143);
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
                     if(_loc6_ || _loc3_)
                     {
                        §#!D§.§!!L§.§0!F§(_loc2_);
                     }
                     continue;
                  }
                  §§goto(addr108);
               }
            }
            §§goto(addr145);
         }
         §§goto(addr34);
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
            if(!_loc7_)
            {
               if(§§pop() != §[4§.STATE_STATUS_RUNNING)
               {
                  if(_loc6_ || this)
                  {
                     §§goto(addr103);
                  }
                  else
                  {
                     while(true)
                     {
                        loop5:
                        while(_loc6_ || this)
                        {
                           §§push(this.§6u§());
                           if(_loc6_)
                           {
                              if(_loc6_ || _loc3_)
                              {
                                 if(!_loc7_)
                                 {
                                    addr41:
                                    §§push(Boolean(§§pop()));
                                    if(_loc6_ || param1)
                                    {
                                       loop6:
                                       while(§§pop())
                                       {
                                          if(!_loc7_)
                                          {
                                             while(true)
                                             {
                                                this.§?,§ = true;
                                             }
                                             addr52:
                                          }
                                          while(true)
                                          {
                                             if(!(_loc6_ || this))
                                             {
                                                continue loop5;
                                             }
                                             if(true)
                                             {
                                                break loop6;
                                             }
                                             while(true)
                                             {
                                                §§push(this.§?,§);
                                                addr67:
                                                while(true)
                                                {
                                                   §§push(!§§pop());
                                                   addr68:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         continue loop6;
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         continue loop5;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       §§push(Math.min(1,§#!D§.§!!L§.§;_§()) * 9);
                                       if(!_loc7_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc3_:* = §§pop();
                                       var _loc4_:Number = Math.min(1,(getTimer() - this.§^!L§) / §=o§);
                                       §§push(_loc3_);
                                       if(!_loc7_)
                                       {
                                          §§push(§§pop() + _loc4_);
                                          if(!_loc7_)
                                          {
                                             addr136:
                                             §§push(§§pop() / 10);
                                             if(!(_loc7_ && param1))
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc5_:* = §§pop();
                                          if(!(_loc7_ && param1))
                                          {
                                             this.§!<§(_loc5_);
                                             addr202:
                                             §§push(§#!D§.§!!L§);
                                             if(!_loc7_)
                                             {
                                                if(§§pop().§;_§() >= 1)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      addr180:
                                                      §#!D§.§!!L§.§7A§();
                                                   }
                                                   if(!(_loc6_ || this))
                                                   {
                                                      §§goto(addr202);
                                                   }
                                                   return §[4§.STATE_STATUS_COMPLETED;
                                                }
                                                return §[4§.STATE_STATUS_RUNNING;
                                             }
                                          }
                                          §§goto(addr180);
                                       }
                                       §§goto(addr136);
                                    }
                                    §§goto(addr68);
                                 }
                                 §§goto(addr67);
                              }
                              §§goto(addr70);
                           }
                           §§goto(addr41);
                        }
                     }
                  }
               }
               §§goto(addr64);
            }
            addr103:
            return _loc2_;
         }
         §§goto(addr52);
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
            §9!A§.removeChild(this.§-=§);
         }
         while(true)
         {
            this.§-=§ = null;
            while(!(_loc1_ && this))
            {
               super.cleanup();
               if(!(_loc1_ && _loc1_))
               {
                  return;
               }
            }
         }
      }
      
      private function §<!R§() : void
      {
      }
      
      public function §!<§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(!_loc3_)
         {
            §§push(§§pop() * (this.§-=§.getChildByName("Bar") as MovieClip).totalFrames);
         }
         var _loc2_:int = §§pop();
         if(_loc4_)
         {
            (this.§-=§.getChildByName("Bar") as MovieClip).gotoAndStop(_loc2_);
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super.setViewSize(param1,param2);
            loop0:
            while(this.§-=§)
            {
               loop1:
               while(!(_loc3_ && param2))
               {
                  this.§-=§.x = param1 - this.§-=§.width >> 1;
                  while(true)
                  {
                     this.§-=§.y = param2 - this.§-=§.height >> 1;
                     if(!_loc3_)
                     {
                        if(!(_loc3_ && this))
                        {
                           break loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr91);
      }
   }
}
