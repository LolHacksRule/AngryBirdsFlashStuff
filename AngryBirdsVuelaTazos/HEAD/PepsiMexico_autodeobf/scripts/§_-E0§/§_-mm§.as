package §_-E0§
{
   import §_-3b§.§_-Lf§;
   import §_-3b§.§_-Og§;
   import §_-3b§.§_-wg§;
   import §_-8H§.§_-Jb§;
   import §_-Di§.§_-T6§;
   import §_-Di§.§_-ix§;
   import §_-Ku§.§_-Ha§;
   import §_-Q0§.Texture;
   import §_-SE§.DisplayObject;
   import §_-SE§.Sprite;
   import §_-SE§.§_-rl§;
   import §_-cD§.§_-ur§;
   import §_-h3§.§_-a§;
   import §_-ym§.§_-7s§;
   import starling.events.Event;
   
   public class §_-mm§
   {
       
      
      private var §_-Oa§:int;
      
      private var §each §:int;
      
      private var §_-yG§:Number;
      
      private var §_-QB§:Boolean;
      
      private var §_-j§:Sprite;
      
      private var §_-EK§:Array;
      
      private var §_-Us§:Boolean = true;
      
      private var §_-wI§:§_-Og§;
      
      private var §_-1Y§:Sprite;
      
      private var §_-Yq§:Sprite;
      
      public function §_-mm§(param1:§_-a§, param2:Sprite, param3:§_-Og§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc12_:§_-Lf§ = null;
         this.§_-EK§ = [];
         super();
         this.§_-wI§ = param3;
         this.§_-j§ = param2;
         this.§_-yG§ = param1.§_-08§;
         this.§_-QB§ = param1.§_-9C§;
         var _loc5_:Number = 1;
         if(param1.§_-8R§ != 0)
         {
            _loc5_ = param1.§_-8R§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:DisplayObject;
         if(!(_loc9_ = §_-wg§.§_-FV§(param1.mName,this.§_-wI§,false)))
         {
            _loc7_ = (_loc12_ = param3.§_-lH§(param1.mName)).pivotY;
            if(!this.§_-QB§)
            {
               _loc8_ = _loc12_.pivotX;
            }
            _loc6_ = _loc12_.texture;
            this.§_-Oa§ = _loc6_.width * _loc5_ - 2;
         }
         else
         {
            this.§_-Oa§ = _loc9_.width * _loc5_ - 2;
            _loc7_ = _loc9_.§_-wl§.bottom;
            _loc8_ = (_loc9_.§_-wl§.left + _loc9_.§_-wl§.right) / 2;
         }
         if(this.§_-Oa§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§_-Oa§ = Math.round(this.§_-Oa§);
         if(param1.§_-xo§)
         {
            this.§each § = 2 + §_-ix§.§_-md§ * 1.5 / (this.§_-Oa§ * param4);
         }
         else
         {
            this.§each § = 1;
         }
         var _loc10_:Sprite = new Sprite();
         var _loc11_:int = 0;
         while(_loc11_ < this.§each §)
         {
            if(!_loc9_)
            {
               if(!_loc6_)
               {
                  _loc9_ = §_-wg§.§_-FV§(param1.mName,this.§_-wI§,false);
               }
               else
               {
                  _loc9_ = new §_-rl§(_loc6_,false,false);
               }
            }
            _loc9_.x = (_loc11_ - 1) * this.§_-Oa§ + (-_loc8_ * _loc5_ + param1.§_-ge§);
            _loc9_.y = -_loc7_ * _loc5_ + param1.§_-KB§;
            _loc9_.scaleX = _loc5_;
            _loc9_.scaleY = _loc5_;
            this.§_-aN§(param1,(_loc11_ - 1) * this.§_-Oa§);
            _loc10_.addChild(_loc9_);
            _loc9_ = null;
            _loc11_++;
         }
         _loc10_.flatten();
         this.§_-j§.addChild(_loc10_);
         if(this.§_-1Y§)
         {
            if(this.§_-1Y§.numChildren > 0)
            {
               this.§_-j§.addChild(this.§_-1Y§);
            }
            else
            {
               this.§_-1Y§.dispose();
            }
         }
         if(this.§_-Yq§)
         {
            if(this.§_-Yq§.numChildren > 0)
            {
               this.§_-j§.addChildAt(this.§_-Yq§,0);
            }
            else
            {
               this.§_-Yq§.dispose();
            }
         }
         this.§_-j§.addEventListener(Event.ADDED_TO_STAGE,this.§_-76§);
      }
      
      public function get §_-C4§() : Boolean
      {
         return this.§_-QB§;
      }
      
      private function §_-aN§(param1:§_-a§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§_-T6§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§_-EK§)
         {
            if((_loc4_ = §_-Jb§.§_-AF§(_loc3_.id,this.§_-wI§)).§_-5e§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§_-ge§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §_-Ha§.§for §.add(_loc4_);
               this.§_-EK§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§_-Yq§)
                  {
                     this.§_-Yq§ = new Sprite();
                  }
                  this.§_-Yq§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§_-1Y§)
                  {
                     this.§_-1Y§ = new Sprite();
                  }
                  this.§_-1Y§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§_-JC§(1 / 20);
                  _loc5_++;
               }
            }
            else
            {
               _loc4_.dispose();
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-ur§ = null;
         this.§_-j§.§_-0--§(0,-1,true);
         this.§_-j§.removeEventListener(Event.ADDED_TO_STAGE,this.§_-76§);
         for each(_loc1_ in this.§_-EK§)
         {
            §_-Ha§.§for §.§_-Kg§(_loc1_);
            _loc1_.dispose();
         }
         this.§_-EK§ = [];
         this.§_-Yq§ = null;
         this.§_-1Y§ = null;
      }
      
      private function §_-76§(param1:Event) : void
      {
         this.§_-wf§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§_-yG§ * param1;
         this.§_-j§.x = -_loc3_;
         this.§_-j§.y = -param2;
         this.§_-Vw§();
         this.§_-wf§();
      }
      
      private function §_-wf§() : void
      {
         var _loc1_:§_-ur§ = null;
         if(!this.§_-Us§ || !this.§_-j§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§_-EK§)
         {
            §_-Ha§.§for §.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §_-Yh§() : void
      {
         var _loc1_:§_-ur§ = null;
         for each(_loc1_ in this.§_-EK§)
         {
            §_-Ha§.§for §.§_-Kg§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §_-ki§(param1:Boolean) : void
      {
         if(param1 == this.§_-Us§)
         {
            return;
         }
         this.§_-Us§ = param1;
         if(this.§_-Us§)
         {
            this.§_-wf§();
         }
         else
         {
            this.§_-Yh§();
         }
      }
      
      private function §_-Vw§() : void
      {
         if(this.§each § == 1 || this.§_-EK§.length > 0)
         {
            return;
         }
         while(§_-7s§.§_-4P§ + (this.§_-j§.x - this.§_-Oa§) * §_-7s§.§_-ng§ > 0)
         {
            this.§_-j§.x -= this.§_-Oa§;
         }
         this.§_-0M§();
      }
      
      private function §_-0M§() : void
      {
      }
   }
}
