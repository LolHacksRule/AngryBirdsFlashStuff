package §_-wG§
{
   import §_-1P§.§_-3p§;
   import §_-1P§.§_-Wm§;
   import §_-1P§.§_-XN§;
   import §_-2V§.§_-Rx§;
   import §_-EG§.§_-4R§;
   import §_-S4§.Texture;
   import §_-pF§.DisplayObject;
   import §_-pF§.Sprite;
   import §_-pF§.§_-gY§;
   import §_-rp§.§_-6v§;
   import §_-rp§.§_-Hz§;
   import §_-rp§.§_-c5§;
   import §_-v3§.§_-G3§;
   import §_-xJ§.§_-VA§;
   import flash.geom.Point;
   import starling.events.Event;
   
   public class §_-c0§
   {
       
      
      private var §_-Dd§:int;
      
      private var §_-AV§:int;
      
      private var §_-gq§:Number;
      
      private var §_-da§:Boolean;
      
      private var §_-JV§:Number = 0.15;
      
      private var §_-C8§:Sprite;
      
      private var §_-7t§:Array;
      
      private var §_-KU§:Boolean = true;
      
      private var §_-Li§:§_-3p§;
      
      public function §_-c0§(param1:§_-Rx§, param2:Sprite, param3:§_-3p§)
      {
         var _loc5_:Texture = null;
         var _loc10_:§_-XN§ = null;
         var _loc11_:Sprite = null;
         var _loc12_:Array = null;
         var _loc13_:Object = null;
         var _loc14_:§_-6v§ = null;
         var _loc15_:int = 0;
         this.§_-7t§ = [];
         super();
         this.§_-Li§ = param3;
         this.§_-C8§ = param2;
         this.§_-gq§ = param1.§_-T0§;
         this.§_-da§ = param1.§_-Pe§;
         var _loc4_:Number = 1;
         if(param1.§_-RM§ != 0)
         {
            _loc4_ = param1.§_-RM§;
         }
         var _loc6_:Number = 0;
         var _loc7_:Number = 0;
         var _loc8_:DisplayObject;
         if(!(_loc8_ = §_-Wm§.§_-fk§(param1.mName,§_-3p§.§_-WK§)))
         {
            _loc6_ = (_loc10_ = param3.§_-wz§(param1.mName)).pivotY;
            if(!this.§_-da§)
            {
               _loc7_ = _loc10_.pivotX;
            }
            _loc5_ = _loc10_.texture;
            this.§_-Dd§ = _loc5_.width * _loc4_ - 2;
         }
         else
         {
            this.§_-Dd§ = _loc8_.width * _loc4_ - 2;
            _loc6_ = _loc8_.§_-gh§.bottom;
            _loc7_ = (_loc8_.§_-gh§.left + _loc8_.§_-gh§.right) / 2;
         }
         if(this.§_-Dd§ <= 0)
         {
            throw new Error("Invalid texture for background layer: " + param1.mName);
         }
         this.§_-Dd§ = Math.round(this.§_-Dd§);
         if(param1.§_-Ef§)
         {
            this.§_-AV§ = 1 + (§_-c5§.§_-Vc§ * 4 + this.§_-Dd§ * this.§_-JV§ - 1) / (this.§_-Dd§ * this.§_-JV§);
         }
         else
         {
            this.§_-AV§ = 1;
         }
         var _loc9_:int = 0;
         while(_loc9_ < this.§_-AV§)
         {
            _loc11_ = new Sprite();
            if(!_loc8_)
            {
               if(!_loc5_)
               {
                  _loc8_ = §_-Wm§.§_-fk§(param1.mName,§_-3p§.§_-WK§);
               }
               else
               {
                  _loc8_ = new §_-gY§(_loc5_);
               }
            }
            _loc8_.x = _loc9_ * this.§_-Dd§ + (-_loc7_ * _loc4_ + param1.§_-81§);
            _loc8_.y = -_loc6_ * _loc4_;
            _loc8_.scaleX = _loc4_;
            _loc8_.scaleY = _loc4_;
            _loc11_.addChild(_loc8_);
            _loc12_ = [];
            for each(_loc13_ in param1.§_-7t§)
            {
               (_loc14_ = §_-4R§.§_-vz§(_loc13_.id,this.§_-Li§)).x = _loc9_ * this.§_-Dd§ + _loc13_.x + param1.§_-81§;
               _loc14_.y = _loc13_.y;
               _loc14_.scaleX = _loc14_.scaleY = _loc13_.scale;
               _loc14_.rotation = _loc13_.rotation;
               _loc14_.alpha = _loc13_.alpha;
               _loc14_.start();
               §_-G3§.§_-gw§.add(_loc14_);
               this.§_-7t§.push(_loc14_);
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
                  _loc14_.§_-CR§(1 / 20);
                  _loc15_++;
               }
            }
            this.§_-C8§.addChild(_loc11_);
            _loc8_ = null;
            _loc9_++;
         }
         this.§_-C8§.addEventListener(Event.ADDED_TO_STAGE,this.§_-Jp§);
      }
      
      public function get §_-I5§() : Boolean
      {
         return this.§_-da§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-VA§ = null;
         this.§_-C8§.§_-h6§(0,-1,true);
         for each(_loc1_ in this.§_-7t§)
         {
            §_-G3§.§_-gw§.§_-uF§(_loc1_);
            _loc1_.dispose();
         }
         this.§_-7t§ = [];
      }
      
      private function §_-Jp§(param1:Event) : void
      {
         this.§_-Le§();
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc3_:Number = this.§_-gq§ * param1;
         this.§_-C8§.x = -_loc3_;
         this.§_-C8§.y = -param2;
         this.§_-LH§();
         this.§_-Le§();
      }
      
      private function §_-Le§() : void
      {
         var _loc1_:§_-VA§ = null;
         var _loc2_:Point = null;
         if(!this.§_-KU§ || !this.§_-C8§.stage)
         {
            return;
         }
         for each(_loc1_ in this.§_-7t§)
         {
            _loc2_ = _loc1_.localToGlobal(new Point(0,0));
            if(_loc2_.x < -50 || _loc2_.x > this.§_-C8§.stage.stageWidth + 51)
            {
               §_-G3§.§_-gw§.§_-uF§(_loc1_);
               _loc1_.visible = false;
            }
            else
            {
               §_-G3§.§_-gw§.add(_loc1_);
               _loc1_.visible = true;
            }
         }
      }
      
      private function §_-7d§() : void
      {
         var _loc1_:§_-VA§ = null;
         for each(_loc1_ in this.§_-7t§)
         {
            §_-G3§.§_-gw§.§_-uF§(_loc1_);
            _loc1_.visible = false;
         }
      }
      
      public function §_-Bj§(param1:Boolean) : void
      {
         if(param1 == this.§_-KU§)
         {
            return;
         }
         this.§_-KU§ = param1;
         if(this.§_-KU§)
         {
            this.§_-Le§();
         }
         else
         {
            this.§_-7d§();
         }
      }
      
      public function §_-LH§() : void
      {
         if(this.§_-AV§ == 1)
         {
            return;
         }
         while(§_-Hz§.§_-F5§ + this.§_-C8§.x * §_-Hz§.§_-sV§ > 0)
         {
            this.§_-C8§.x -= this.§_-Dd§;
         }
      }
   }
}
