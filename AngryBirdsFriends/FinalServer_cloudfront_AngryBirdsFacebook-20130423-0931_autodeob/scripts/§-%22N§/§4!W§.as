package §-"N§
{
   import §'!6§.§ "E§;
   import §'!6§.§5T§;
   import §'!6§.DisplayObject;
   import §'!6§.Sprite;
   import §8m§.§@"M§;
   import §<5§.Texture;
   import §<T§.§`m§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §4!W§ extends §3!K§
   {
      
      private static const §[!-§:Number = 1.5;
      
      private static const §#"U§:Number = 0.15;
      
      private static const §`0§:Number = 0.25;
      
      private static const §;b§:Number = 3;
      
      private static const §="§:Number = 20;
       
      
      private var § !R§:Number;
      
      private var §6!4§:Number;
      
      private var §=s§:§5T§;
      
      private var §2Z§:Boolean;
      
      private var §>G§:Number;
      
      private var §,]§:BitmapData;
      
      private var §[!1§:Texture;
      
      private var §+"%§:int = 0;
      
      public function §4!W§(param1:String, param2:Number, param3:§`m§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§ !R§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         if(this.§[!1§)
         {
            textureManager.unregisterBitmapDataTexture(this.§[!1§);
            this.§[!1§ = null;
         }
         if(this.§,]§)
         {
            this.§,]§.dispose();
            this.§,]§ = null;
         }
         super.dispose();
      }
      
      override protected function createGroundQuad(param1:uint) : §5T§
      {
         if(this.§[!1§)
         {
            textureManager.unregisterBitmapDataTexture(this.§[!1§);
            this.§[!1§ = null;
         }
         if(this.§,]§)
         {
            this.§,]§.dispose();
            this.§,]§ = null;
         }
         this.§,]§ = new BitmapData(2,2,false,param1);
         this.§[!1§ = textureManager.getTextureFromBitmapData(this.§,]§);
         var _loc2_:§5T§ = new § "E§(this.§[!1§,true,false);
         _loc2_.width = 4096;
         _loc2_.height = 4096;
         return _loc2_;
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§=s§ == null)
         {
            if(this.§ !R§ > 0)
            {
               this.§^!_§();
            }
         }
         else if(this.§=s§)
         {
            this.§+!f§();
         }
         this.§%!+§();
         this.§ !R§ += param1 / 1000;
      }
      
      private function §^!_§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(backgroundLayersSprite.numChildren > 0)
         {
            _loc1_ = backgroundLayersSprite.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               _loc2_.top -= 2048;
               this.§=s§ = new §5T§(_loc2_.width,_loc2_.height,16777215);
               this.§=s§.x = _loc2_.left;
               this.§=s§.y = _loc2_.top;
               this.§=s§.alpha = 0;
               _loc1_.addChild(this.§=s§);
            }
            this.§+"%§ = 0;
            this.§ !R§ = 0;
            if(Math.random() < 0.25)
            {
               this.§6!4§ = 0.7 + Math.random() * (§[!-§ - 0.7);
            }
            else
            {
               this.§6!4§ = 0.3 + Math.random() * (§[!-§ - 0.3) * 0.3;
            }
            this.§>G§ = 0.2 + Math.random() * 2;
            this.§2Z§ = false;
         }
      }
      
      private function §+!f§() : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Sprite = null;
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§ !R§ < §#"U§)
         {
            _loc2_ = this.§ !R§ / §#"U§;
         }
         else if(this.§ !R§ < §#"U§ + this.§6!4§)
         {
            this.§+"%§ = (this.§+"%§ + 1) % 2;
            if(this.§+"%§ != 1)
            {
               return;
            }
            _loc7_ = (§[!-§ + this.§6!4§) / (§[!-§ * 3);
            _loc2_ = 1 - _loc7_ + Math.random() * _loc7_;
         }
         else if(this.§ !R§ < §#"U§ + this.§6!4§ + §`0§)
         {
            _loc2_ = 1 - (this.§ !R§ - (§#"U§ + this.§6!4§)) / §`0§;
         }
         this.§=s§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         if(this.§ !R§ > §[!-§)
         {
            if(backgroundLayersSprite.numChildren > 0)
            {
               if(_loc8_ = backgroundLayersSprite.getChildAt(0) as Sprite)
               {
                  _loc8_.removeChild(this.§=s§,true);
               }
            }
            this.§=s§ = null;
            _loc3_ = 255;
            this.§ !R§ = -(§;b§ + (§="§ - §;b§) * Math.random());
         }
         var _loc4_:int;
         var _loc5_:int = _loc4_ = backgroundLayersSprite.numChildren - 1;
         while(_loc5_ >= 1)
         {
            _loc9_ = _loc3_ * (_loc5_ + _loc4_) / (_loc4_ * 2);
            if(_loc3_ == 255)
            {
               _loc9_ = 255;
            }
            _loc10_ = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
            _loc1_ = backgroundLayersSprite.getChildAt(_loc5_);
            _loc1_.color = _loc10_;
            _loc5_--;
         }
         var _loc6_:int = _loc4_ = foregroundLayersSprite.numChildren - 1;
         while(_loc6_ >= 0)
         {
            _loc1_ = foregroundLayersSprite.getChildAt(_loc6_);
            _loc1_.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
            _loc6_--;
         }
         groundSprite.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
      }
      
      private function §%!+§() : void
      {
         if(this.§ !R§ > this.§>G§)
         {
            if(!this.§2Z§)
            {
               §@"M§.§"!0§("Lightning04","ChannelExplosions");
               this.§2Z§ = true;
            }
         }
      }
   }
}
