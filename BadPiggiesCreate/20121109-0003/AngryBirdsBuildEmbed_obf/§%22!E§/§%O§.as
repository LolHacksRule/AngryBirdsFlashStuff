package §"!E§
{
   import §#!4§.§<f§;
   import flash.display.MovieClip;
   
   public class §%O§ extends §<f§
   {
      
      private static const §,!,§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §,!,§ = 1000 / 60;
         }
      }
      
      private var §+5§:String;
      
      private var §@!e§:String;
      
      private var §[!§:int = 0;
      
      private var §9!P§:int = 0;
      
      private var §"!l§:Number = 0;
      
      private var §@L§:Boolean = false;
      
      public function §%O§(param1:XML, param2:§[!s§, param3:MovieClip = null)
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function §92§(param1:Number) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(!_loc6_)
         {
            §§push(this);
            §§push(this.§"!l§);
            if(_loc5_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§"!l§ = §§pop();
            if(!_loc6_)
            {
               §§push(this);
               §§push(this.§"!l§);
               if(!_loc6_)
               {
                  §§push(§§pop() / §,!,§);
               }
               §§pop().§9!P§ = §§pop();
            }
         }
         while(true)
         {
            if(this.§[!§ >= this.§9!P§)
            {
               if(_loc5_)
               {
                  addr151:
                  this.§[!§ = this.§9!P§;
                  this.§@!e§ = this.§+5§;
                  break;
               }
               break;
            }
            var _loc3_:*;
            §§push((_loc3_ = this).§[!§);
            if(!_loc6_)
            {
               §§push(§§pop() + 1);
            }
            var _loc4_:* = §§pop();
            if(!_loc6_)
            {
               _loc3_.§[!§ = _loc4_;
            }
            if(!(_loc6_ && _loc3_))
            {
               mClip.gotoAndStop(this.§[!§);
               this.§+5§ = mClip.currentLabel;
               if(_loc5_ || param1)
               {
                  §§push(this.§+5§);
                  if(_loc5_)
                  {
                     if(§§pop() == this.§@!e§)
                     {
                        continue;
                     }
                     if(_loc5_)
                     {
                        addr97:
                        §§push(this.§+5§);
                        if(_loc5_)
                        {
                           §§push(§§pop());
                           if(_loc6_ && param1)
                           {
                              return §§pop();
                           }
                           §§goto(addr109);
                        }
                     }
                     else
                     {
                        §§goto(addr151);
                     }
                  }
                  addr109:
                  _loc2_ = §§pop();
                  if(_loc5_ || _loc2_)
                  {
                     this.§9!P§ = this.§[!§;
                     this.§"!l§ = this.§9!P§ * §,!,§;
                     if(!(_loc5_ || param1))
                     {
                        break;
                     }
                  }
                  continue;
                  §§goto(addr160);
               }
               §§goto(addr97);
            }
            break;
            §§goto(addr151);
         }
         addr160:
         _loc2_;
      }
      
      public function §]!S§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §#E§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §=Q§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §-!a§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         mClip.gotoAndStop(param1);
         if(!(_loc2_ && param1))
         {
            this.§+5§ = param1;
            this.§@!e§ = param1;
         }
         this.§9!P§ = mClip.currentFrame;
         this.§[!§ = mClip.currentFrame;
         this.§"!l§ = mClip.currentFrame * §,!,§;
      }
      
      public function § !V§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §^!=§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §6e§() : Boolean
      {
         return this.§@L§;
      }
      
      public function set §6e§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§@L§ = param1;
         }
      }
   }
}
