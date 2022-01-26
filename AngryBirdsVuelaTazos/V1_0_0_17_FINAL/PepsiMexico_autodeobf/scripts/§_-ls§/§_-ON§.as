package §_-ls§
{
   import §_-2m§.§_-0J§;
   import §_-4g§.Texture;
   import §_-LP§.DisplayObject;
   import §_-LP§.Sprite;
   import §_-LP§.§_-19§;
   import §_-NT§.§_-7F§;
   import §_-OJ§.§_-KG§;
   import §_-OJ§.§_-LW§;
   import §_-OJ§.§_-tL§;
   import §_-Ra§.§_-2X§;
   import §_-Ra§.§_-Vr§;
   import §_-Ra§.§_-fR§;
   import §_-gY§.§_-Vu§;
   import §_-mJ§.§_-4n§;
   import flash.geom.Point;
   import starling.events.Event;
   
   public class §_-ON§
   {
       
      
      private var §_-rX§:int;
      
      private var §_-Yk§:int;
      
      private var §_-5u§:Number;
      
      private var §_-bu§:Boolean;
      
      private var §_-lj§:Number = 0.15;
      
      private var §_-Cv§:Sprite;
      
      private var §_-dg§:Array;
      
      private var §_-Ap§:Boolean = true;
      
      private var §_-gS§:§_-2X§;
      
      public function §_-ON§(param1:§_-0J§, param2:Sprite, param3:§_-2X§)
      {
         var _loc5_:Texture = null;
         var _loc10_:§_-Vr§ = null;
         var _loc11_:Sprite = null;
         var _loc12_:Array = null;
         var _loc13_:Object = null;
         var _loc14_:§_-KG§ = null;
         var _loc15_:int = 0;
         this.§_-dg§ = [];
         super();
         this.§_-gS§ = param3;
         this.§_-Cv§ = param2;
         this.§_-5u§ = param1.§_-80§;
         this.§_-bu§ = param1.§_-UR§;
         var _loc4_:Number = 1;
         if(param1.§_-KA§ != 0)
         {
            _loc4_ = param1.§_-KA§;
         }
         var _loc6_:Number = 0;
         var _loc7_:Number = 0;
         var _loc8_:DisplayObject;
         if(!(_loc8_ = §_-fR§.§_-xl§(param1.mName,§_-2X§.§_-mE§,false)))
         {
            _loc6_ = (_loc10_ = param3.§_-ln§(param1.mName)).pivotY;
            if(!this.§_-bu§)
            {
               _loc7_ = _loc10_.pivotX;
            }
            _loc5_ = _loc10_.texture;
            this.§_-rX§ = _loc5_.width * _loc4_ - 2;
         }
         else
         {
            this.§_-rX§ = _loc8_.width * _loc4_ - 2;
            _loc6_ = _loc8_.§_-cB§.bottom;
            _loc7_ = (_loc8_.§_-cB§.left + _loc8_.§_-cB§.right) / 2;
         }
         if(this.§_-rX§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§_-rX§ = Math.round(this.§_-rX§);
         if(param1.§_-Hz§)
         {
            this.§_-Yk§ = 1 + (§_-tL§.§_-il§ * 4 + this.§_-rX§ * this.§_-lj§ - 1) / (this.§_-rX§ * this.§_-lj§);
         }
         else
         {
            this.§_-Yk§ = 1;
         }
         var _loc9_:int = 0;
         while(_loc9_ < this.§_-Yk§)
         {
            _loc11_ = new Sprite();
            if(!_loc8_)
            {
               if(!_loc5_)
               {
                  _loc8_ = §_-fR§.§_-xl§(param1.mName,§_-2X§.§_-mE§,false);
               }
               else
               {
                  _loc8_ = new §_-19§(_loc5_,false,false);
               }
            }
            _loc8_.x = _loc9_ * this.§_-rX§ + (-_loc7_ * _loc4_ + param1.§_-Oh§);
            _loc8_.y = -_loc6_ * _loc4_;
            _loc8_.scaleX = _loc4_;
            _loc8_.scaleY = _loc4_;
            _loc11_.addChild(_loc8_);
            _loc12_ = [];
            for each(_loc13_ in param1.§_-dg§)
            {
               (_loc14_ = §_-4n§.§_-Wc§(_loc13_.id,this.§_-gS§)).x = _loc9_ * this.§_-rX§ + _loc13_.x + param1.§_-Oh§;
               _loc14_.y = _loc13_.y;
               _loc14_.scaleX = _loc14_.scaleY = _loc13_.scale;
               _loc14_.rotation = _loc13_.rotation;
               _loc14_.alpha = _loc13_.alpha;
               _loc14_.start();
               §_-Vu§.§_-jT§.add(_loc14_);
               this.§_-dg§.push(_loc14_);
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
                  _loc14_.§_-IE§(1 / 20);
                  _loc15_++;
               }
            }
            this.§_-Cv§.addChild(_loc11_);
            _loc8_ = null;
            _loc9_++;
         }
         this.§_-Cv§.addEventListener(Event.ADDED_TO_STAGE,this.§_-h§);
      }
      
      public function get §_-MV§() : Boolean
      {
         return this.§_-bu§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-7F§ = null;
         this.§_-Cv§.§_-12§(0,-1,true);
         for each(_loc1_ in this.§_-dg§)
         {
            §_-Vu§.§_-jT§.§_-TM§(_loc1_);
            _loc1_.dispose();
         }
         this.§_-dg§ = [];
      }
      
      private function §_-h§(param1:Event) : void
      {
         this.§_-7D§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§_-5u§ * param1;
         this.§_-Cv§.x = -_loc3_;
         this.§_-Cv§.y = -param2;
         this.§_-pg§();
         this.§_-7D§();
      }
      
      private function §_-7D§() : void
      {
         var _loc1_:§_-7F§ = null;
         var _loc2_:Point = null;
         if(!this.§_-Ap§ || !this.§_-Cv§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§_-dg§)
         {
            _loc2_ = _loc1_.localToGlobal(new Point(0,0));
            if(_loc2_.x < -50 || _loc2_.x > this.§_-Cv§.stage.stageWidth + 51)
            {
               §_-Vu§.§_-jT§.§_-TM§(_loc1_);
               _loc1_.visible = false;
            }
            else
            {
               §_-Vu§.§_-jT§.add(_loc1_);
               _loc1_.visible = true;
            }
         }
      }
      
      private function §_-if§() : void
      {
         var _loc1_:§_-7F§ = null;
         for each(_loc1_ in this.§_-dg§)
         {
            §_-Vu§.§_-jT§.§_-TM§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §_-o3§(param1:Boolean) : void
      {
         if(param1 == this.§_-Ap§)
         {
            return;
         }
         this.§_-Ap§ = param1;
         if(this.§_-Ap§)
         {
            this.§_-7D§();
         }
         else
         {
            this.§_-if§();
         }
      }
      
      public function §_-pg§() : void
      {
         if(this.§_-Yk§ == 1)
         {
            return;
         }
         while(§_-LW§.§_-wF§ + this.§_-Cv§.x * §_-LW§.§ use§ > 0)
         {
            this.§_-Cv§.x -= this.§_-rX§;
         }
      }
   }
}
