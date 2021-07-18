package §2u§
{
   import §!""§.§]H§;
   import §'"!§.§-!g§;
   import flash.display.MovieClip;
   
   public class §7!m§ extends §-!g§
   {
      
      private static const §0!Z§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §0!Z§ = 1000 / 60;
         }
      }
      
      private var §[L§:String;
      
      private var §6"4§:String;
      
      private var §;"'§:int = 0;
      
      private var §"!J§:int = 0;
      
      private var § !Z§:Number = 0;
      
      private var §"!G§:Boolean = false;
      
      public function §7!m§(param1:XML, param2:§,6§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function listenerUIEventOccured(param1:int, param2:String) : §]H§
      {
         return super.listenerUIEventOccured(param1,param2);
      }
      
      public function §<t§(param1:Number) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(!(_loc5_ && _loc3_))
         {
            §§push(this);
            §§push(this.§ !Z§);
            if(_loc6_ || param1)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§ !Z§ = §§pop();
            if(_loc6_ || param1)
            {
               §§push(this);
               §§push(this.§ !Z§);
               if(_loc6_)
               {
                  §§push(§§pop() / §0!Z§);
               }
               §§pop().§"!J§ = §§pop();
            }
         }
         loop0:
         while(true)
         {
            if(this.§;"'§ >= this.§"!J§)
            {
               loop3:
               while(true)
               {
                  this.§;"'§ = this.§"!J§;
                  loop4:
                  while(_loc6_)
                  {
                     if(!_loc5_)
                     {
                        this.§6"4§ = this.§[L§;
                        if(!_loc6_)
                        {
                           continue;
                        }
                        if(_loc5_)
                        {
                           continue loop3;
                        }
                        if(_loc6_ || param1)
                        {
                           if(_loc6_ || this)
                           {
                              §§push(_loc2_);
                              if(!_loc5_)
                              {
                                 if(!_loc5_)
                                 {
                                    break loop0;
                                 }
                                 while(true)
                                 {
                                    if(§§pop() == this.§6"4§)
                                    {
                                       continue loop0;
                                    }
                                    while(true)
                                    {
                                       §§push(this.§[L§);
                                       if(_loc6_ || _loc3_)
                                       {
                                          §§push(§§pop());
                                       }
                                    }
                                 }
                                 addr167:
                              }
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 addr181:
                                 loop9:
                                 while(true)
                                 {
                                    if(_loc6_ || _loc2_)
                                    {
                                       this.§"!J§ = this.§;"'§;
                                       while(true)
                                       {
                                          this.§ !Z§ = this.§"!J§ * §0!Z§;
                                          break loop4;
                                       }
                                       addr163:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.§[L§ = mClip.currentLabel;
                                          addr204:
                                          while(true)
                                          {
                                             §§goto(addr167);
                                          }
                                          continue loop9;
                                       }
                                       addr209:
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           §§goto(addr170);
                        }
                        §§goto(addr181);
                     }
                     §§goto(addr204);
                  }
                  while(true)
                  {
                     if(_loc5_ && _loc2_)
                     {
                        §§goto(addr163);
                     }
                  }
               }
            }
            else
            {
               var _loc3_:*;
               §§push((_loc3_ = this).§;"'§);
               if(_loc6_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc4_:* = §§pop();
               if(_loc6_ || this)
               {
                  _loc3_.§;"'§ = _loc4_;
               }
               if(!(_loc5_ && this))
               {
                  mClip.gotoAndStop(this.§;"'§);
                  §§goto(addr209);
               }
            }
            §§goto(addr163);
         }
         return §§pop();
      }
      
      public function §#u§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §%" §(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §@!2§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §;U§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            mClip.gotoAndStop(param1);
            while(true)
            {
               this.§[L§ = param1;
            }
            addr112:
         }
         loop1:
         do
         {
            this.§6"4§ = param1;
            while(true)
            {
               this.§"!J§ = mClip.currentFrame;
               loop3:
               for(; !(_loc2_ && _loc3_); if(_loc3_ || param1)
               {
                  continue loop1;
               })
               {
                  this.§;"'§ = mClip.currentFrame;
                  while(_loc3_)
                  {
                     this.§ !Z§ = mClip.currentFrame * §0!Z§;
                     if(!(_loc2_ && this))
                     {
                        continue loop3;
                     }
                  }
                  §§goto(addr112);
               }
            }
         }
         while(!(_loc3_ || param1));
         
      }
      
      public function §&O§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §7!B§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §2x§() : Boolean
      {
         return this.§"!G§;
      }
      
      public function set §2x§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§"!G§ = param1;
         }
      }
   }
}
