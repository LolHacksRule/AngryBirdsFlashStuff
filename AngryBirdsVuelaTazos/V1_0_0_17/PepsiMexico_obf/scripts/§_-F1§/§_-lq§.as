package §_-F1§
{
   import §_-6r§.§_-h3§;
   import flash.display.MovieClip;
   
   public class §_-lq§ extends §_-h3§
   {
      
      private static const §_-33§:Number = 16.666666666666668;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §_-33§ = 1000 / 60;
         }
      }
      
      private var §_-F§:String;
      
      private var §_-DQ§:String;
      
      private var §_-Mr§:int = 0;
      
      private var §_-iI§:int = 0;
      
      private var §_-3m§:Number = 0;
      
      private var §_-Fv§:Boolean = false;
      
      public function §_-lq§(param1:XML, param2:§_-k4§, param3:MovieClip = null)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            super(param1,param2,param3);
         }
      }
      
      override public function listenerEventOccured(param1:int, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.listenerEventOccured(param1,param2);
         }
      }
      
      public function §_-fu§(param1:Number) : String
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = null;
         if(!_loc5_)
         {
            §§push(this);
            §§push(this.§_-3m§);
            if(_loc6_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§_-3m§ = §§pop();
            if(!_loc5_)
            {
               §§push(this);
               §§push(this.§_-3m§);
               if(_loc6_ || param1)
               {
                  §§push(§§pop() / §_-33§);
               }
               §§pop().§_-iI§ = §§pop();
            }
         }
         while(true)
         {
            if(this.§_-Mr§ < this.§_-iI§)
            {
               var _loc3_:*;
               §§push((_loc3_ = this).§_-Mr§);
               if(!_loc5_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc4_:* = §§pop();
               if(_loc6_)
               {
                  _loc3_.§_-Mr§ = _loc4_;
               }
               if(!(_loc5_ && param1))
               {
                  mClip.gotoAndStop(this.§_-Mr§);
                  this.§_-F§ = mClip.currentLabel;
               }
               §§push(this.§_-F§);
               if(_loc5_)
               {
                  break;
               }
               if(§§pop() != this.§_-DQ§)
               {
                  if(!_loc5_)
                  {
                     §§push(this.§_-F§);
                     if(!(_loc5_ && _loc2_))
                     {
                        §§push(§§pop());
                        if(!_loc6_)
                        {
                        }
                        break;
                     }
                     _loc2_ = §§pop();
                     this.§_-iI§ = this.§_-Mr§;
                     if(_loc6_ || _loc3_)
                     {
                        this.§_-3m§ = this.§_-iI§ * §_-33§;
                        if(_loc6_)
                        {
                           continue;
                        }
                     }
                     §§goto(addr134);
                  }
                  addr142:
                  §§push(_loc2_);
                  break;
               }
               continue;
            }
            addr134:
            this.§_-Mr§ = this.§_-iI§;
            this.§_-DQ§ = this.§_-F§;
            §§goto(addr142);
         }
         return §§pop();
      }
      
      public function §_-fT§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            mClip.gotoAndStop(param1);
         }
      }
      
      public function §_-Cb§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §_-PO§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            mClip.gotoAndPlay(param1);
         }
      }
      
      public function §_-XC§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§_-Fv§ = false;
            mClip.gotoAndStop(param1);
            this.§_-F§ = param1;
            this.§_-DQ§ = param1;
         }
         this.§_-iI§ = mClip.currentFrame;
         this.§_-Mr§ = mClip.currentFrame;
         this.§_-3m§ = mClip.currentFrame * §_-33§;
      }
      
      public function §_-9z§() : String
      {
         return mClip.currentLabel;
      }
      
      public function §_-OE§() : int
      {
         return mClip.currentFrame;
      }
      
      public function get §_-Z§() : Boolean
      {
         return this.§_-Fv§;
      }
      
      public function set §_-Z§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§_-Fv§ = param1;
         }
      }
   }
}
