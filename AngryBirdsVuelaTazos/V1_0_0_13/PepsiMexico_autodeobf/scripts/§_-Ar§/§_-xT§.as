package §_-Ar§
{
   import §_-0§.§_-MB§;
   import §_-1Z§.§_-m8§;
   import §_-CY§.§_-X-§;
   import §_-Cy§.Texture;
   import §_-FQ§.§_-7W§;
   import §_-FQ§.§_-au§;
   import §_-FQ§.§_-if§;
   import §_-JR§.§_-yh§;
   import §_-UX§.DisplayObject;
   import §_-UX§.Sprite;
   import §_-UX§.§_-2S§;
   import §_-rQ§.§_-MV§;
   import §_-rQ§.§_-Q2§;
   import §_-rQ§.§_-hA§;
   import flash.geom.Point;
   import starling.events.Event;
   
   public class §_-xT§
   {
       
      
      private var §_-5l§:int;
      
      private var §_-tc§:int;
      
      private var §_-4N§:Number;
      
      private var §_-rB§:Boolean;
      
      private var §_-P7§:Number = 0.15;
      
      private var §_-bB§:Sprite;
      
      private var §_-bp§:Array;
      
      private var §_-98§:Boolean = true;
      
      private var §_-fS§:§_-hA§;
      
      public function §_-xT§(param1:§_-m8§, param2:Sprite, param3:§_-hA§)
      {
         var _loc5_:Texture = null;
         var _loc10_:§_-MV§ = null;
         var _loc11_:Sprite = null;
         var _loc12_:Array = null;
         var _loc13_:Object = null;
         var _loc14_:§_-au§ = null;
         var _loc15_:int = 0;
         this.§_-bp§ = [];
         super();
         this.§_-fS§ = param3;
         this.§_-bB§ = param2;
         this.§_-4N§ = param1.§_-q5§;
         this.§_-rB§ = param1.§_-0I§;
         var _loc4_:Number = 1;
         if(param1.§_-K0§ != 0)
         {
            _loc4_ = param1.§_-K0§;
         }
         var _loc6_:Number = 0;
         var _loc7_:Number = 0;
         var _loc8_:DisplayObject;
         if(!(_loc8_ = §_-Q2§.§_-7f§(param1.mName,§_-hA§.§_-G4§,false)))
         {
            _loc6_ = (_loc10_ = param3.§_-E4§(param1.mName)).pivotY;
            if(!this.§_-rB§)
            {
               _loc7_ = _loc10_.pivotX;
            }
            _loc5_ = _loc10_.texture;
            this.§_-5l§ = _loc5_.width * _loc4_ - 2;
         }
         else
         {
            this.§_-5l§ = _loc8_.width * _loc4_ - 2;
            _loc6_ = _loc8_.§_-uY§.bottom;
            _loc7_ = (_loc8_.§_-uY§.left + _loc8_.§_-uY§.right) / 2;
         }
         if(this.§_-5l§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§_-5l§ = Math.round(this.§_-5l§);
         if(param1.§_-L8§)
         {
            this.§_-tc§ = 1 + (§_-7W§.§_-8G§ * 4 + this.§_-5l§ * this.§_-P7§ - 1) / (this.§_-5l§ * this.§_-P7§);
         }
         else
         {
            this.§_-tc§ = 1;
         }
         var _loc9_:int = 0;
         while(_loc9_ < this.§_-tc§)
         {
            _loc11_ = new Sprite();
            if(!_loc8_)
            {
               if(!_loc5_)
               {
                  _loc8_ = §_-Q2§.§_-7f§(param1.mName,§_-hA§.§_-G4§,false);
               }
               else
               {
                  _loc8_ = new §_-2S§(_loc5_,false,false);
               }
            }
            _loc8_.x = _loc9_ * this.§_-5l§ + (-_loc7_ * _loc4_ + param1.§_-AV§);
            _loc8_.y = -_loc6_ * _loc4_;
            _loc8_.scaleX = _loc4_;
            _loc8_.scaleY = _loc4_;
            _loc11_.addChild(_loc8_);
            _loc12_ = [];
            for each(_loc13_ in param1.§_-bp§)
            {
               (_loc14_ = §_-MB§.§_-PO§(_loc13_.id,this.§_-fS§)).x = _loc9_ * this.§_-5l§ + _loc13_.x + param1.§_-AV§;
               _loc14_.y = _loc13_.y;
               _loc14_.scaleX = _loc14_.scaleY = _loc13_.scale;
               _loc14_.rotation = _loc13_.rotation;
               _loc14_.alpha = _loc13_.alpha;
               _loc14_.start();
               §_-yh§.§_-hY§.add(_loc14_);
               this.§_-bp§.push(_loc14_);
               if(_loc13_.isBehindGraphic)
               {
                  _loc11_.addChildAt(_loc14_,_loc11_.getChildIndex(_loc8_));
               }
               else
               {
                  _loc11_.addChild(_loc14_);
               }
               _loc15_ = 0;
               while(_loc15_ < _loc13_.fastForwardsAfterAdd)
               {
                  _loc14_.§_-rp§(1 / 20);
                  _loc15_++;
               }
            }
            this.§_-bB§.addChild(_loc11_);
            _loc8_ = null;
            _loc9_++;
         }
         this.§_-bB§.addEventListener(Event.ADDED_TO_STAGE,this.§_-Ku§);
      }
      
      public function get §_-HW§() : Boolean
      {
         return this.§_-rB§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-X-§ = null;
         this.§_-bB§.§_-zM§(0,-1,true);
         for each(_loc1_ in this.§_-bp§)
         {
            §_-yh§.§_-hY§.§_-5G§(_loc1_);
            _loc1_.dispose();
         }
         this.§_-bp§ = [];
      }
      
      private function §_-Ku§(param1:Event) : void
      {
         this.§_-uO§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§_-4N§ * param1;
         this.§_-bB§.x = -_loc3_;
         this.§_-bB§.y = -param2;
         this.§_-oY§();
         this.§_-uO§();
      }
      
      private function §_-uO§() : void
      {
         var _loc1_:§_-X-§ = null;
         var _loc2_:Point = null;
         if(!this.§_-98§ || !this.§_-bB§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§_-bp§)
         {
            _loc2_ = _loc1_.localToGlobal(new Point(0,0));
            if(_loc2_.x < -50 || _loc2_.x > this.§_-bB§.stage.stageWidth + 51)
            {
               §_-yh§.§_-hY§.§_-5G§(_loc1_);
               _loc1_.visible = false;
            }
            else
            {
               §_-yh§.§_-hY§.add(_loc1_);
               _loc1_.visible = true;
            }
         }
      }
      
      private function §_-eY§() : void
      {
         var _loc1_:§_-X-§ = null;
         for each(_loc1_ in this.§_-bp§)
         {
            §_-yh§.§_-hY§.§_-5G§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §_-J§(param1:Boolean) : void
      {
         if(param1 == this.§_-98§)
         {
            return;
         }
         this.§_-98§ = param1;
         if(this.§_-98§)
         {
            this.§_-uO§();
         }
         else
         {
            this.§_-eY§();
         }
      }
      
      public function §_-oY§() : void
      {
         if(this.§_-tc§ == 1)
         {
            return;
         }
         while(§_-if§.§_-1r§ + this.§_-bB§.x * §_-if§.§_-4X§ > 0)
         {
            this.§_-bB§.x -= this.§_-5l§;
         }
      }
   }
}
