package §"G§
{
   import §"R§.§ !Q§;
   import §'!9§.§%!g§;
   import §'!9§.§?!U§;
   import §'!9§.DisplayObject;
   import §'!9§.Sprite;
   import §-w§.§,Q§;
   import §68§.§+!`§;
   import §^!+§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §3h§ extends §+!`§
   {
      
      private static const §#!@§:Number = 1.5;
      
      private static const §8Q§:Number = 0.15;
      
      private static const §21§:Number = 0.25;
      
      private static const §,&§:Number = 3;
      
      private static const §!!f§:Number = 20;
       
      
      private var §!!y§:Number;
      
      private var §%!^§:Number;
      
      private var §%!K§:§%!g§;
      
      private var §^%§:Boolean;
      
      private var §"S§:Number;
      
      private var §`Z§:BitmapData;
      
      private var §8!J§:Texture;
      
      private var §#e§:int = 0;
      
      public function §3h§(param1:String, param2:Number, param3:§,Q§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§!!y§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         if(this.§8!J§)
         {
            textureManager.unregisterBitmapDataTexture(this.§8!J§);
            this.§8!J§ = null;
         }
         if(this.§`Z§)
         {
            this.§`Z§.dispose();
            this.§`Z§ = null;
         }
         super.dispose();
      }
      
      override protected function createGroundQuad(param1:uint) : §%!g§
      {
         if(this.§8!J§)
         {
            textureManager.unregisterBitmapDataTexture(this.§8!J§);
            this.§8!J§ = null;
         }
         if(this.§`Z§)
         {
            this.§`Z§.dispose();
            this.§`Z§ = null;
         }
         this.§`Z§ = new BitmapData(2,2,false,param1);
         this.§8!J§ = textureManager.getTextureFromBitmapData(this.§`Z§);
         var _loc2_:§%!g§ = new §?!U§(this.§8!J§,true,false);
         _loc2_.width = 4096;
         _loc2_.height = 4096;
         return _loc2_;
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§%!K§ == null)
         {
            if(this.§!!y§ > 0)
            {
               this.§^+§();
            }
         }
         else if(this.§%!K§)
         {
            this.§ ^§();
         }
         this.§"J§();
         this.§!!y§ += param1 / 1000;
      }
      
      private function §^+§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§@4§.numChildren > 0)
         {
            _loc1_ = §@4§.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               _loc2_.top -= 2048;
               this.§%!K§ = new §%!g§(_loc2_.width,_loc2_.height,16777215);
               this.§%!K§.x = _loc2_.left;
               this.§%!K§.y = _loc2_.top;
               this.§%!K§.alpha = 0;
               _loc1_.addChild(this.§%!K§);
            }
            this.§#e§ = 0;
            this.§!!y§ = 0;
            if(Math.random() < 0.25)
            {
               this.§%!^§ = 0.7 + Math.random() * (§#!@§ - 0.7);
            }
            else
            {
               this.§%!^§ = 0.3 + Math.random() * (§#!@§ - 0.3) * 0.3;
            }
            this.§"S§ = 0.2 + Math.random() * 2;
            this.§^%§ = false;
         }
      }
      
      private function § ^§() : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Sprite = null;
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§!!y§ < §8Q§)
         {
            _loc2_ = this.§!!y§ / §8Q§;
         }
         else if(this.§!!y§ < §8Q§ + this.§%!^§)
         {
            this.§#e§ = (this.§#e§ + 1) % 2;
            if(this.§#e§ != 1)
            {
               return;
            }
            _loc7_ = (§#!@§ + this.§%!^§) / (§#!@§ * 3);
            _loc2_ = 1 - _loc7_ + Math.random() * _loc7_;
         }
         else if(this.§!!y§ < §8Q§ + this.§%!^§ + §21§)
         {
            _loc2_ = 1 - (this.§!!y§ - (§8Q§ + this.§%!^§)) / §21§;
         }
         this.§%!K§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         if(this.§!!y§ > §#!@§)
         {
            if(§@4§.numChildren > 0)
            {
               if(_loc8_ = §@4§.getChildAt(0) as Sprite)
               {
                  _loc8_.removeChild(this.§%!K§,true);
               }
            }
            this.§%!K§ = null;
            _loc3_ = 255;
            this.§!!y§ = -(§,&§ + (§!!f§ - §,&§) * Math.random());
         }
         var _loc4_:int;
         var _loc5_:int = _loc4_ = §@4§.numChildren - 1;
         while(_loc5_ >= 1)
         {
            _loc9_ = _loc3_ * (_loc5_ + _loc4_) / (_loc4_ * 2);
            if(_loc3_ == 255)
            {
               _loc9_ = 255;
            }
            _loc10_ = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
            _loc1_ = §@4§.getChildAt(_loc5_);
            _loc1_.color = _loc10_;
            _loc5_--;
         }
         var _loc6_:int = _loc4_ = §-!O§.numChildren - 1;
         while(_loc6_ >= 0)
         {
            _loc1_ = §-!O§.getChildAt(_loc6_);
            _loc1_.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
            _loc6_--;
         }
         §8!t§.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
      }
      
      private function §"J§() : void
      {
         if(this.§!!y§ > this.§"S§)
         {
            if(!this.§^%§)
            {
               § !Q§.§0!t§("Lightning04","ChannelExplosions");
               this.§^%§ = true;
            }
         }
      }
   }
}
