package §_-8r§
{
   import §_-0E§.§_-C9§;
   import §_-2r§.§_-sn§;
   import §_-2r§.§_-xP§;
   import §_-5p§.§_-0-B§;
   import §_-5p§.§_-4§;
   import §_-5p§.§_-Kf§;
   import §_-Dk§.Texture;
   import §_-Ls§.DisplayObject;
   import §_-Ls§.Sprite;
   import §_-Ls§.§_-Nd§;
   import §_-TC§.§_-uk§;
   import §_-gL§.§_-ui§;
   import §_-vB§.§_-Kk§;
   import §_-vT§.§_-la§;
   import starling.events.Event;
   
   public class §_-C1§
   {
       
      
      private var §_-t1§:int;
      
      private var §_-IY§:int;
      
      private var §_-HV§:Number;
      
      private var §_-xG§:Boolean;
      
      private var §_-S0§:Sprite;
      
      private var §_-1w§:Array;
      
      private var §_-o§:Boolean = true;
      
      private var §_-S7§:§_-Kf§;
      
      private var §_-ti§:Sprite;
      
      private var §_-eg§:Sprite;
      
      public function §_-C1§(param1:§_-ui§, param2:Sprite, param3:§_-Kf§, param4:Number)
      {
         var _loc6_:Texture = null;
         var _loc13_:§_-4§ = null;
         this.§_-1w§ = [];
         super();
         this.§_-S7§ = param3;
         this.§_-S0§ = param2;
         this.§_-HV§ = param1.§_-S8§;
         this.§_-xG§ = param1.§_-GH§;
         var _loc5_:Number = 1;
         if(param1.§_-7Q§ != 0)
         {
            _loc5_ = param1.§_-7Q§;
         }
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 1;
         var _loc10_:DisplayObject;
         if(!(_loc10_ = §_-0-B§.§_-1-§(param1.mName,this.§_-S7§,false)))
         {
            _loc7_ = (_loc13_ = param3.§_-I4§(param1.mName)).pivotY;
            if(!this.§_-xG§)
            {
               _loc8_ = _loc13_.pivotX;
            }
            _loc6_ = _loc13_.texture;
            this.§_-t1§ = _loc13_.width * _loc5_ - 2;
            _loc9_ = _loc13_.scale;
         }
         else
         {
            this.§_-t1§ = _loc10_.width * _loc5_ - 2;
            _loc7_ = _loc10_.§_-3z§.bottom;
            _loc8_ = (_loc10_.§_-3z§.left + _loc10_.§_-3z§.right) / 2;
         }
         if(this.§_-t1§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§_-t1§ = Math.round(this.§_-t1§);
         if(param1.§_-Y1§)
         {
            this.§_-IY§ = 2 + §_-sn§.§_-MH§ * 1.5 / (this.§_-t1§ * param4);
         }
         else
         {
            this.§_-IY§ = 1;
         }
         var _loc11_:Sprite = new Sprite();
         var _loc12_:int = 0;
         while(_loc12_ < this.§_-IY§)
         {
            if(!_loc10_)
            {
               if(!_loc6_)
               {
                  _loc10_ = §_-0-B§.§_-1-§(param1.mName,this.§_-S7§,false);
               }
               else
               {
                  _loc10_ = new §_-Nd§(_loc6_,false,false);
               }
            }
            _loc10_.x = (_loc12_ - 1) * this.§_-t1§ + (-_loc8_ * _loc5_ + param1.§_-OU§);
            _loc10_.y = -_loc7_ * _loc5_ + param1.§_-VL§;
            _loc10_.scaleX = _loc5_ * _loc9_;
            _loc10_.scaleY = _loc5_ * _loc9_;
            this.§_-bK§(param1,(_loc12_ - 1) * this.§_-t1§);
            _loc11_.addChild(_loc10_);
            _loc10_ = null;
            _loc12_++;
         }
         _loc11_.flatten();
         this.§_-S0§.addChild(_loc11_);
         if(this.§_-ti§)
         {
            if(this.§_-ti§.numChildren > 0)
            {
               this.§_-S0§.addChild(this.§_-ti§);
            }
            else
            {
               this.§_-ti§.dispose();
            }
         }
         if(this.§_-eg§)
         {
            if(this.§_-eg§.numChildren > 0)
            {
               this.§_-S0§.addChildAt(this.§_-eg§,0);
            }
            else
            {
               this.§_-eg§.dispose();
            }
         }
         this.§_-S0§.addEventListener(Event.ADDED_TO_STAGE,this.§_-zh§);
      }
      
      public function get §_-Ps§() : Boolean
      {
         return this.§_-xG§;
      }
      
      private function §_-bK§(param1:§_-ui§, param2:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:§_-xP§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§_-1w§)
         {
            if((_loc4_ = §_-la§.§_-ex§(_loc3_.id,this.§_-S7§)) && _loc4_.§_-Hp§ > 0)
            {
               _loc4_.x = param2 + _loc3_.x + param1.§_-OU§;
               _loc4_.y = _loc3_.y;
               _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
               _loc4_.rotation = _loc3_.rotation;
               _loc4_.alpha = _loc3_.alpha;
               _loc4_.start();
               §_-Kk§.§_-qh§.add(_loc4_);
               this.§_-1w§.push(_loc4_);
               if(_loc3_.isBehindGraphic)
               {
                  if(!this.§_-eg§)
                  {
                     this.§_-eg§ = new Sprite();
                  }
                  this.§_-eg§.addChild(_loc4_);
               }
               else
               {
                  if(!this.§_-ti§)
                  {
                     this.§_-ti§ = new Sprite();
                  }
                  this.§_-ti§.addChild(_loc4_);
               }
               _loc5_ = 0;
               while(_loc5_ < _loc3_.fastForwardsAfterAdd)
               {
                  _loc4_.§_-bJ§(1 / 20);
                  _loc5_++;
               }
            }
            else if(_loc4_)
            {
               _loc4_.dispose();
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-C9§ = null;
         this.§_-S0§.§_-Zd§(0,-1,true);
         this.§_-S0§.removeEventListener(Event.ADDED_TO_STAGE,this.§_-zh§);
         for each(_loc1_ in this.§_-1w§)
         {
            §_-Kk§.§_-qh§.§_-W-§(_loc1_);
            _loc1_.dispose();
         }
         this.§_-1w§ = [];
         this.§_-eg§ = null;
         this.§_-ti§ = null;
      }
      
      private function §_-zh§(param1:Event) : void
      {
         this.§_-XN§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§_-HV§ * param1;
         this.§_-S0§.x = -_loc3_;
         this.§_-S0§.y = -param2;
         this.§_-fs§();
      }
      
      private function §_-XN§() : void
      {
         var _loc1_:§_-C9§ = null;
         if(!this.§_-o§ || !this.§_-S0§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§_-1w§)
         {
            §_-Kk§.§_-qh§.add(_loc1_);
            _loc1_.visible = true;
         }
      }
      
      private function §_-ZT§() : void
      {
         var _loc1_:§_-C9§ = null;
         for each(_loc1_ in this.§_-1w§)
         {
            §_-Kk§.§_-qh§.§_-W-§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §_-ww§(param1:Boolean) : void
      {
         if(param1 == this.§_-o§)
         {
            return;
         }
         this.§_-o§ = param1;
         if(this.§_-o§)
         {
            this.§_-XN§();
         }
         else
         {
            this.§_-ZT§();
         }
      }
      
      private function §_-fs§() : void
      {
         if(this.§_-IY§ == 1 || this.§_-1w§.length > 0)
         {
            return;
         }
         while(§_-uk§.§_-j4§ + (this.§_-S0§.x - this.§_-t1§) * §_-uk§.§_-gJ§ > 0)
         {
            this.§_-S0§.x -= this.§_-t1§;
         }
         this.§_-YX§();
      }
      
      private function §_-YX§() : void
      {
      }
   }
}
