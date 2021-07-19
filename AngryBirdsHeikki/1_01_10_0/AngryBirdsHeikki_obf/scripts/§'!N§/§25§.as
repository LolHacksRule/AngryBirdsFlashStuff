package §'!N§
{
   import §8P§.§4!Y§;
   import flash.display.MovieClip;
   
   public class §25§ extends §4!Y§
   {
      
      private static const §9!U§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §9!U§ = 1000 / 60;
         }
      }
      
      private var §'!e§:String;
      
      private var §6v§:String;
      
      private var §1X§:int = 0;
      
      private var §%d§:int = 0;
      
      private var §'n§:Number = 0;
      
      private var §[!T§:Boolean = false;
      
      public function §25§(param1:XML, param2:§2O§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function §>Z§(param1:Number) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(!_loc5_)
         {
            §§push(this);
            §§push(this.§'n§);
            if(_loc6_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§'n§ = §§pop();
            if(!_loc5_)
            {
               addr32:
               §§push(this);
               §§push(this.§'n§);
               if(!(_loc5_ && _loc2_))
               {
                  §§push(§§pop() / §9!U§);
               }
               §§pop().§%d§ = §§pop();
            }
            loop0:
            while(true)
            {
               if(this.§1X§ < this.§%d§)
               {
                  var _loc3_:*;
                  §§push((_loc3_ = this).§1X§);
                  if(!(_loc5_ && _loc2_))
                  {
                     §§push(§§pop() + 1);
                  }
                  var _loc4_:* = §§pop();
                  if(_loc6_ || param1)
                  {
                     _loc3_.§1X§ = _loc4_;
                  }
                  if(_loc6_)
                  {
                     mClip.gotoAndStop(this.§1X§);
                     loop6:
                     while(true)
                     {
                        this.§'!e§ = mClip.currentLabel;
                        addr172:
                        while(true)
                        {
                           if(!(_loc5_ && _loc2_))
                           {
                              break loop6;
                           }
                           continue loop6;
                        }
                     }
                     §§push(this.§'!e§);
                     if(_loc6_ || _loc2_)
                     {
                        if(§§pop() == this.§6v§)
                        {
                           continue;
                        }
                        addr162:
                        while(true)
                        {
                           §§push(this.§'!e§);
                        }
                        addr162:
                     }
                     loop3:
                     while(true)
                     {
                        §§push(§§pop());
                        addr165:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           addr166:
                           while(true)
                           {
                              this.§%d§ = this.§1X§;
                           }
                           continue loop3;
                        }
                     }
                     addr164:
                  }
                  else
                  {
                     loop1:
                     while(true)
                     {
                        this.§1X§ = this.§%d§;
                        do
                        {
                           this.§6v§ = this.§'!e§;
                        }
                        while(!_loc6_);
                        
                        if(_loc6_)
                        {
                           if(!(_loc5_ && param1))
                           {
                              §§push(_loc2_);
                              if(!_loc5_)
                              {
                                 if(!_loc5_)
                                 {
                                    break loop0;
                                 }
                                 §§goto(addr164);
                              }
                              §§goto(addr165);
                           }
                           while(!_loc6_)
                           {
                              §§goto(addr162);
                           }
                           continue loop0;
                           addr140:
                        }
                        else
                        {
                           addr117:
                        }
                        while(!(_loc5_ && this))
                        {
                           if(!_loc5_)
                           {
                              if(_loc6_)
                              {
                                 continue loop1;
                              }
                              §§goto(addr172);
                           }
                        }
                        break;
                        §§goto(addr166);
                     }
                  }
                  while(true)
                  {
                     this.§'n§ = this.§%d§ * §9!U§;
                     §§goto(addr140);
                  }
               }
               §§goto(addr117);
            }
            return §§pop();
         }
         §§goto(addr32);
      }
      
      public function §]I§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §-S§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §]$§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §<v§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.gotoAndStop(param1);
            loop0:
            while(true)
            {
               this.§'!e§ = param1;
               while(true)
               {
                  this.§6v§ = param1;
                  while(_loc2_)
                  {
                     if(!_loc3_)
                     {
                        this.§%d§ = mClip.currentFrame;
                        loop3:
                        while(_loc2_)
                        {
                           this.§1X§ = mClip.currentFrame;
                           do
                           {
                              if(_loc2_)
                              {
                                 continue;
                              }
                              continue loop3;
                           }
                           while(this.§'n§ = mClip.currentFrame * §9!U§, !(_loc2_ || param1));
                           
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function §!o§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §!!S§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §&A§() : Boolean
      {
         return this.§[!T§;
      }
      
      public function set §&A§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[!T§ = param1;
         }
      }
   }
}
