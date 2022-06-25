package §=^§
{
   import §@s§.§9$§;
   import flash.display.MovieClip;
   
   public class §[!B§ extends §9$§
   {
      
      private static const §8L§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §8L§ = 1000 / 60;
         }
      }
      
      private var §;p§:String;
      
      private var §1_§:String;
      
      private var §05§:int = 0;
      
      private var §?r§:int = 0;
      
      private var §@%§:Number = 0;
      
      private var §3s§:Boolean = false;
      
      public function §[!B§(param1:XML, param2:§`f§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1,param2,param3);
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function §+;§(param1:Number) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(_loc6_ || param1)
         {
            §§push(this);
            §§push(this.§@%§);
            if(_loc6_ || _loc2_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§@%§ = §§pop();
            if(!_loc5_)
            {
               §§push(this);
               §§push(this.§@%§);
               if(_loc6_ || _loc2_)
               {
                  §§push(§§pop() / §8L§);
               }
               §§pop().§?r§ = §§pop();
            }
         }
         while(true)
         {
            if(this.§05§ >= this.§?r§)
            {
               if(!(_loc5_ && this))
               {
                  this.§05§ = this.§?r§;
                  if(!_loc5_)
                  {
                     this.§1_§ = this.§;p§;
                     break;
                  }
                  break;
               }
               break;
            }
            var _loc3_:*;
            §§push((_loc3_ = this).§05§);
            if(!_loc5_)
            {
               §§push(§§pop() + 1);
            }
            var _loc4_:* = §§pop();
            if(!_loc5_)
            {
               _loc3_.§05§ = _loc4_;
            }
            if(_loc5_)
            {
               break;
            }
            mClip.gotoAndStop(this.§05§);
            this.§;p§ = mClip.currentLabel;
            if(!_loc5_)
            {
               §§push(this.§;p§);
               if(_loc6_ || _loc2_)
               {
                  if(§§pop() == this.§1_§)
                  {
                     continue;
                  }
                  §§push(this.§;p§);
                  if(_loc6_ || _loc2_)
                  {
                     §§push(§§pop());
                     if(_loc6_ || _loc3_)
                     {
                        _loc2_ = §§pop();
                        addr124:
                        this.§?r§ = this.§05§;
                        this.§@%§ = this.§?r§ * §8L§;
                        continue;
                     }
                  }
               }
               §§goto(addr167);
            }
            §§goto(addr124);
         }
         addr167:
         _loc2_;
         return §§pop();
      }
      
      public function §^!1§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §,,§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §,P§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §'!-§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         mClip.gotoAndStop(param1);
         this.§;p§ = param1;
         if(!(_loc2_ && _loc2_))
         {
            this.§1_§ = param1;
         }
         this.§?r§ = mClip.currentFrame;
         if(!_loc2_)
         {
            this.§05§ = mClip.currentFrame;
            if(!_loc2_)
            {
               this.§@%§ = mClip.currentFrame * §8L§;
            }
         }
      }
      
      public function §#w§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §2@§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §!q§() : Boolean
      {
         return this.§3s§;
      }
      
      public function set §!q§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§3s§ = param1;
         }
      }
   }
}
