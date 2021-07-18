package §[v§
{
   import §`W§.§<r§;
   import flash.display.MovieClip;
   
   public class §=!=§ extends §<r§
   {
      
      private static const §9O§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §=!=§))
         {
            §9O§ = 1000 / 60;
         }
      }
      
      private var §="§:String;
      
      private var §>Z§:String;
      
      private var §>!&§:int = 0;
      
      private var §3c§:int = 0;
      
      private var §#P§:Number = 0;
      
      private var §=!4§:Boolean = false;
      
      public function §=!=§(param1:XML, param2:§&F§, param3:MovieClip = null)
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function §8W§(param1:Number) : String
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = null;
         if(_loc5_ || _loc3_)
         {
            §§push(this);
            §§push(this.§#P§);
            if(!_loc6_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§#P§ = §§pop();
            if(_loc5_ || param1)
            {
               §§push(this);
               §§push(this.§#P§);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() / §9O§);
               }
               §§pop().§3c§ = §§pop();
            }
         }
         while(true)
         {
            if(this.§>!&§ >= this.§3c§)
            {
               if(!_loc6_)
               {
                  this.§>!&§ = this.§3c§;
                  do
                  {
                     this.§>Z§ = this.§="§;
                  }
                  while(!(_loc5_ || this));
                  
                  §§push(_loc2_);
                  if(_loc5_)
                  {
                     if(_loc5_)
                     {
                        break;
                     }
                     addr146:
                     if(§§pop() == this.§>Z§)
                     {
                        continue;
                     }
                     §§push(this.§="§);
                     if(_loc5_)
                     {
                        §§push(§§pop());
                     }
                  }
                  _loc2_ = §§pop();
                  this.§3c§ = this.§>!&§;
               }
               this.§#P§ = this.§3c§ * §9O§;
               continue;
            }
            var _loc3_:*;
            §§push((_loc3_ = this).§>!&§);
            if(_loc5_)
            {
               §§push(§§pop() + 1);
            }
            var _loc4_:* = §§pop();
            if(_loc5_)
            {
               _loc3_.§>!&§ = _loc4_;
            }
            if(_loc5_)
            {
               mClip.gotoAndStop(this.§>!&§);
               this.§="§ = mClip.currentLabel;
            }
            §§push(this.§="§);
            §§goto(addr146);
         }
         return §§pop();
      }
      
      public function §%&§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §%s§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §#k§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §'8§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.gotoAndStop(param1);
            while(true)
            {
               this.§="§ = param1;
               loop1:
               for(; _loc2_; if(_loc3_ && _loc3_)
               {
                  continue;
               },§§goto(addr77))
               {
                  this.§>Z§ = param1;
                  this.§3c§ = mClip.currentFrame;
                  loop2:
                  while(true)
                  {
                     this.§>!&§ = mClip.currentFrame;
                     while(true)
                     {
                        if(_loc2_ || this)
                        {
                           continue loop1;
                        }
                        continue loop2;
                        addr77:
                        this.§#P§ = mClip.currentFrame * §9O§;
                        if(!(_loc3_ && this))
                        {
                           return;
                           addr47:
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      public function §^!"§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §"]§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §%!'§() : Boolean
      {
         return this.§=!4§;
      }
      
      public function set §%!'§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§=!4§ = param1;
         }
      }
   }
}
