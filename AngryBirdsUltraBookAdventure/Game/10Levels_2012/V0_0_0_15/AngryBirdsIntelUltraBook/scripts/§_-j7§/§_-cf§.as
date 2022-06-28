package §_-j7§
{
   import §_-4g§.§_-pX§;
   import §_-8d§.§_-0FF§;
   import §_-uY§.DisplayObject;
   import §_-uY§.Sprite;
   import §_-uY§.§_-09b§;
   import §_-uY§.§_-2p§;
   import §_-vJ§.§_-OI§;
   import §_-z4§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §_-cf§ extends §_-OI§
   {
      
      private static const §_-FV§:Number = 1.5;
      
      private static const §_-K9§:Number = 0.15;
      
      private static const §_-YW§:Number = 0.25;
      
      private static const §_-tF§:Number = 3;
      
      private static const §_-DW§:Number = 20;
       
      
      private var §_-06v§:Number;
      
      private var §_-ow§:Number;
      
      private var §_-Nf§:§_-2p§;
      
      private var §_-sq§:Boolean;
      
      private var §_-T1§:Number;
      
      private var §_-g5§:BitmapData;
      
      private var §_-ZO§:Texture;
      
      private var §_-Ku§:int = 0;
      
      public function §_-cf§(param1:String, param2:Number, param3:§_-0FF§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§_-06v§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         if(this.§_-ZO§)
         {
            textureManager.unregisterBitmapDataTexture(this.§_-ZO§);
            this.§_-ZO§ = null;
         }
         if(this.§_-g5§)
         {
            this.§_-g5§.dispose();
            this.§_-g5§ = null;
         }
         super.dispose();
      }
      
      override protected function createGroundQuad(param1:uint) : §_-2p§
      {
         if(this.§_-ZO§)
         {
            textureManager.unregisterBitmapDataTexture(this.§_-ZO§);
            this.§_-ZO§ = null;
         }
         if(this.§_-g5§)
         {
            this.§_-g5§.dispose();
            this.§_-g5§ = null;
         }
         this.§_-g5§ = new BitmapData(2,2,false,param1);
         this.§_-ZO§ = textureManager.getTextureFromBitmapData(this.§_-g5§);
         var _loc2_:§_-2p§ = new §_-09b§(this.§_-ZO§,true,false);
         _loc2_.width = 4096;
         _loc2_.height = 4096;
         return _loc2_;
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§_-Nf§ == null)
         {
            if(this.§_-06v§ > 0)
            {
               this.§_-jb§();
            }
         }
         else if(this.§_-Nf§)
         {
            this.§_-Qd§();
         }
         this.§_-Gs§();
         this.§_-06v§ += param1 / 1000;
      }
      
      private function §_-jb§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§_-pH§.numChildren > 0)
         {
            _loc1_ = §_-pH§.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               _loc2_.top -= 2048;
               this.§_-Nf§ = new §_-2p§(_loc2_.width,_loc2_.height,16777215);
               this.§_-Nf§.x = _loc2_.left;
               this.§_-Nf§.y = _loc2_.top;
               this.§_-Nf§.alpha = 0;
               _loc1_.addChild(this.§_-Nf§);
            }
            this.§_-Ku§ = 0;
            this.§_-06v§ = 0;
            if(Math.random() < 0.25)
            {
               this.§_-ow§ = 0.7 + Math.random() * (§_-FV§ - 0.7);
            }
            else
            {
               this.§_-ow§ = 0.3 + Math.random() * (§_-FV§ - 0.3) * 0.3;
            }
            this.§_-T1§ = 0.2 + Math.random() * 2;
            this.§_-sq§ = false;
         }
      }
      
      private function §_-Qd§() : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Sprite = null;
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§_-06v§ < §_-K9§)
         {
            _loc2_ = this.§_-06v§ / §_-K9§;
         }
         else if(this.§_-06v§ < §_-K9§ + this.§_-ow§)
         {
            this.§_-Ku§ = (this.§_-Ku§ + 1) % 2;
            if(this.§_-Ku§ != 1)
            {
               return;
            }
            _loc7_ = (§_-FV§ + this.§_-ow§) / (§_-FV§ * 3);
            _loc2_ = 1 - _loc7_ + Math.random() * _loc7_;
         }
         else if(this.§_-06v§ < §_-K9§ + this.§_-ow§ + §_-YW§)
         {
            _loc2_ = 1 - (this.§_-06v§ - (§_-K9§ + this.§_-ow§)) / §_-YW§;
         }
         this.§_-Nf§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         if(this.§_-06v§ > §_-FV§)
         {
            if(§_-pH§.numChildren > 0)
            {
               if(_loc8_ = §_-pH§.getChildAt(0) as Sprite)
               {
                  _loc8_.removeChild(this.§_-Nf§,true);
               }
            }
            this.§_-Nf§ = null;
            _loc3_ = 255;
            this.§_-06v§ = -(§_-tF§ + (§_-DW§ - §_-tF§) * Math.random());
         }
         var _loc4_:int;
         var _loc5_:int = _loc4_ = §_-pH§.numChildren - 1;
         while(_loc5_ >= 1)
         {
            _loc9_ = _loc3_ * (_loc5_ + _loc4_) / (_loc4_ * 2);
            if(_loc3_ == 255)
            {
               _loc9_ = 255;
            }
            _loc10_ = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
            _loc1_ = §_-pH§.getChildAt(_loc5_);
            _loc1_.color = _loc10_;
            _loc5_--;
         }
         var _loc6_:int = _loc4_ = §_-BL§.numChildren - 1;
         while(_loc6_ >= 0)
         {
            _loc1_ = §_-BL§.getChildAt(_loc6_);
            _loc1_.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
            _loc6_--;
         }
         §_-xH§.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
      }
      
      private function §_-Gs§() : void
      {
         if(this.§_-06v§ > this.§_-T1§)
         {
            if(!this.§_-sq§)
            {
               §_-pX§.§_-o5§("Lightning04","ChannelExplosions");
               this.§_-sq§ = true;
            }
         }
      }
   }
}
