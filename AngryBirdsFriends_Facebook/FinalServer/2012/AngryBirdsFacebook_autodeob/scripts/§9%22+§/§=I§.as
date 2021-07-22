package §9"+§
{
   import §#S§.§?!?§;
   import §>s§.§+m§;
   import §?7§.Texture;
   import §]!v§.§'!=§;
   import §]!v§.§+!`§;
   import §]!v§.DisplayObject;
   import §]!v§.Sprite;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §=I§ extends §?![§
   {
      
      private static const §'U§:Number = 1.5;
      
      private static const §!"7§:Number = 0.15;
      
      private static const §6q§:Number = 0.25;
      
      private static const §@'§:Number = 3;
      
      private static const §&,§:Number = 20;
       
      
      private var §'F§:Number;
      
      private var §`=§:Number;
      
      private var §,9§:§+!`§;
      
      private var §'A§:Boolean;
      
      private var §`S§:Number;
      
      private var §4"B§:BitmapData;
      
      private var §!!e§:Texture;
      
      private var §#L§:int = 0;
      
      public function §=I§(param1:String, param2:Number, param3:§?!?§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§'F§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         if(this.§!!e§)
         {
            textureManager.unregisterBitmapDataTexture(this.§!!e§);
            this.§!!e§ = null;
         }
         if(this.§4"B§)
         {
            this.§4"B§.dispose();
            this.§4"B§ = null;
         }
         super.dispose();
      }
      
      override protected function createGroundQuad(param1:uint) : §+!`§
      {
         if(this.§!!e§)
         {
            textureManager.unregisterBitmapDataTexture(this.§!!e§);
            this.§!!e§ = null;
         }
         if(this.§4"B§)
         {
            this.§4"B§.dispose();
            this.§4"B§ = null;
         }
         this.§4"B§ = new BitmapData(2,2,false,param1);
         this.§!!e§ = textureManager.getTextureFromBitmapData(this.§4"B§);
         var _loc2_:§+!`§ = new §'!=§(this.§!!e§,true,false);
         _loc2_.width = 4096;
         _loc2_.height = 4096;
         return _loc2_;
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§,9§ == null)
         {
            if(this.§'F§ > 0)
            {
               this.§^!A§();
            }
         }
         else if(this.§,9§)
         {
            this.§-4§();
         }
         this.§8!F§();
         this.§'F§ += param1 / 1000;
      }
      
      private function §^!A§() : void
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
               this.§,9§ = new §+!`§(_loc2_.width,_loc2_.height,16777215);
               this.§,9§.x = _loc2_.left;
               this.§,9§.y = _loc2_.top;
               this.§,9§.alpha = 0;
               _loc1_.addChild(this.§,9§);
            }
            this.§#L§ = 0;
            this.§'F§ = 0;
            if(Math.random() < 0.25)
            {
               this.§`=§ = 0.7 + Math.random() * (§'U§ - 0.7);
            }
            else
            {
               this.§`=§ = 0.3 + Math.random() * (§'U§ - 0.3) * 0.3;
            }
            this.§`S§ = 0.2 + Math.random() * 2;
            this.§'A§ = false;
         }
      }
      
      private function §-4§() : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Sprite = null;
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§'F§ < §!"7§)
         {
            _loc2_ = this.§'F§ / §!"7§;
         }
         else if(this.§'F§ < §!"7§ + this.§`=§)
         {
            this.§#L§ = (this.§#L§ + 1) % 2;
            if(this.§#L§ != 1)
            {
               return;
            }
            _loc7_ = (§'U§ + this.§`=§) / (§'U§ * 3);
            _loc2_ = 1 - _loc7_ + Math.random() * _loc7_;
         }
         else if(this.§'F§ < §!"7§ + this.§`=§ + §6q§)
         {
            _loc2_ = 1 - (this.§'F§ - (§!"7§ + this.§`=§)) / §6q§;
         }
         this.§,9§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         if(this.§'F§ > §'U§)
         {
            if(backgroundLayersSprite.numChildren > 0)
            {
               if(_loc8_ = backgroundLayersSprite.getChildAt(0) as Sprite)
               {
                  _loc8_.removeChild(this.§,9§,true);
               }
            }
            this.§,9§ = null;
            _loc3_ = 255;
            this.§'F§ = -(§@'§ + (§&,§ - §@'§) * Math.random());
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
      
      private function §8!F§() : void
      {
         if(this.§'F§ > this.§`S§)
         {
            if(!this.§'A§)
            {
               §+m§.§'!k§("Lightning04","ChannelExplosions");
               this.§'A§ = true;
            }
         }
      }
   }
}
