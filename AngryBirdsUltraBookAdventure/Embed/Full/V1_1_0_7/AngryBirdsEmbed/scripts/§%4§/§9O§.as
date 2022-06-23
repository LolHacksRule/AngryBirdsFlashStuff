package §%4§
{
   import §0!#§.§0K§;
   import flash.display.MovieClip;
   
   public class §9O§ extends §0K§
   {
      
      private static const §]5§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §]5§ = 1000 / 60;
         }
      }
      
      private var §?J§:String;
      
      private var §6R§:String;
      
      private var § get§:int = 0;
      
      private var §0!=§:int = 0;
      
      private var §"W§:Number = 0;
      
      private var §#s§:Boolean = false;
      
      public function §9O§(param1:XML, param2:§4!=§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            super(param1,param2,param3);
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function §1!§(param1:Number) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(!(_loc5_ && _loc2_))
         {
            §§push(this);
            §§push(this.§"W§);
            if(!_loc5_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§"W§ = §§pop();
            if(_loc6_)
            {
               addr37:
               §§push(this);
               §§push(this.§"W§);
               if(_loc6_)
               {
                  §§push(§§pop() / §]5§);
               }
               §§pop().§0!=§ = §§pop();
            }
            while(this.§ get§ < this.§0!=§)
            {
               var _loc3_:*;
               §§push((_loc3_ = this).§ get§);
               if(_loc6_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc4_:* = §§pop();
               if(!_loc5_)
               {
                  _loc3_.§ get§ = _loc4_;
               }
               mClip.gotoAndStop(this.§ get§);
               this.§?J§ = mClip.currentLabel;
               if(!(_loc6_ || _loc2_))
               {
                  continue;
               }
               §§push(this.§?J§);
               if(!(_loc5_ && _loc3_))
               {
                  if(§§pop() == this.§6R§)
                  {
                     continue;
                  }
                  if(_loc6_)
                  {
                     §§push(this.§?J§);
                     if(_loc6_)
                     {
                        §§push(§§pop());
                        if(_loc5_ && param1)
                        {
                           return §§pop();
                        }
                        addr113:
                        _loc2_ = §§pop();
                        this.§0!=§ = this.§ get§;
                        if(_loc5_ && _loc3_)
                        {
                           break;
                        }
                        addr135:
                        this.§"W§ = this.§0!=§ * §]5§;
                        continue;
                        addr162:
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr135);
               }
               §§goto(addr113);
            }
            this.§ get§ = this.§0!=§;
            if(_loc6_ || _loc2_)
            {
               this.§6R§ = this.§?J§;
            }
            §§goto(addr162);
            §§push(_loc2_);
         }
         §§goto(addr37);
      }
      
      public function §+!8§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §-z§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §3!N§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §3!;§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         mClip.gotoAndStop(param1);
         this.§?J§ = param1;
         this.§6R§ = param1;
         if(_loc2_)
         {
            this.§0!=§ = mClip.currentFrame;
         }
         this.§ get§ = mClip.currentFrame;
         if(!(_loc3_ && param1))
         {
            this.§"W§ = mClip.currentFrame * §]5§;
         }
      }
      
      public function §0e§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §^z§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §]n§() : Boolean
      {
         return this.§#s§;
      }
      
      public function set §]n§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§#s§ = param1;
         }
      }
   }
}
