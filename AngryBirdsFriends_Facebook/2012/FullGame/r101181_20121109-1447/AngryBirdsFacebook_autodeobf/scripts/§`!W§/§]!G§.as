package §`!W§
{
   import §0!R§.Texture;
   import §1!$§.§!"?§;
   import §1!$§.§0!N§;
   import §1!$§.DisplayObject;
   import §1!$§.Sprite;
   import §6!B§.§>!E§;
   import §6!D§.§0Y§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §]!G§ extends §[!x§
   {
      
      private static const §?!A§:Number = 1.5;
      
      private static const §^n§:Number = 0.15;
      
      private static const §,"C§:Number = 0.25;
      
      private static const §"W§:Number = 3;
      
      private static const §-!_§:Number = 20;
       
      
      private var §4!a§:Number;
      
      private var §2E§:Number;
      
      private var §2!1§:§!"?§;
      
      private var §^"=§:Boolean;
      
      private var §'"1§:Number;
      
      private var §;[§:BitmapData;
      
      private var §1X§:Texture;
      
      private var § $§:int = 0;
      
      public function §]!G§(param1:String, param2:Number, param3:§0Y§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§4!a§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         if(this.§1X§)
         {
            textureManager.unregisterBitmapDataTexture(this.§1X§);
            this.§1X§ = null;
         }
         if(this.§;[§)
         {
            this.§;[§.dispose();
            this.§;[§ = null;
         }
         super.dispose();
      }
      
      override protected function createGroundQuad(param1:uint) : §!"?§
      {
         if(this.§1X§)
         {
            textureManager.unregisterBitmapDataTexture(this.§1X§);
            this.§1X§ = null;
         }
         if(this.§;[§)
         {
            this.§;[§.dispose();
            this.§;[§ = null;
         }
         this.§;[§ = new BitmapData(2,2,false,param1);
         this.§1X§ = textureManager.getTextureFromBitmapData(this.§;[§);
         var _loc2_:§!"?§ = new §0!N§(this.§1X§,true,false);
         _loc2_.width = 4096;
         _loc2_.height = 4096;
         return _loc2_;
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§2!1§ == null)
         {
            if(this.§4!a§ > 0)
            {
               this.§5p§();
            }
         }
         else if(this.§2!1§)
         {
            this.§;!x§();
         }
         this.§'"§();
         this.§4!a§ += param1 / 1000;
      }
      
      private function §5p§() : void
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
               this.§2!1§ = new §!"?§(_loc2_.width,_loc2_.height,16777215);
               this.§2!1§.x = _loc2_.left;
               this.§2!1§.y = _loc2_.top;
               this.§2!1§.alpha = 0;
               _loc1_.addChild(this.§2!1§);
            }
            this.§ $§ = 0;
            this.§4!a§ = 0;
            if(Math.random() < 0.25)
            {
               this.§2E§ = 0.7 + Math.random() * (§?!A§ - 0.7);
            }
            else
            {
               this.§2E§ = 0.3 + Math.random() * (§?!A§ - 0.3) * 0.3;
            }
            this.§'"1§ = 0.2 + Math.random() * 2;
            this.§^"=§ = false;
         }
      }
      
      private function §;!x§() : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Sprite = null;
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§4!a§ < §^n§)
         {
            _loc2_ = this.§4!a§ / §^n§;
         }
         else if(this.§4!a§ < §^n§ + this.§2E§)
         {
            this.§ $§ = (this.§ $§ + 1) % 2;
            if(this.§ $§ != 1)
            {
               return;
            }
            _loc7_ = (§?!A§ + this.§2E§) / (§?!A§ * 3);
            _loc2_ = 1 - _loc7_ + Math.random() * _loc7_;
         }
         else if(this.§4!a§ < §^n§ + this.§2E§ + §,"C§)
         {
            _loc2_ = 1 - (this.§4!a§ - (§^n§ + this.§2E§)) / §,"C§;
         }
         this.§2!1§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         if(this.§4!a§ > §?!A§)
         {
            if(backgroundLayersSprite.numChildren > 0)
            {
               if(_loc8_ = backgroundLayersSprite.getChildAt(0) as Sprite)
               {
                  _loc8_.removeChild(this.§2!1§,true);
               }
            }
            this.§2!1§ = null;
            _loc3_ = 255;
            this.§4!a§ = -(§"W§ + (§-!_§ - §"W§) * Math.random());
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
      
      private function §'"§() : void
      {
         if(this.§4!a§ > this.§'"1§)
         {
            if(!this.§^"=§)
            {
               §>!E§.§@"8§("Lightning04","ChannelExplosions");
               this.§^"=§ = true;
            }
         }
      }
   }
}
