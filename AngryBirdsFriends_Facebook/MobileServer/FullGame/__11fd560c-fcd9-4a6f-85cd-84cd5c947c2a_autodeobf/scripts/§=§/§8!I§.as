package §=§#9
{
   import §'!L§.§8"y§;
   import §6$8§.§]§;
   import §9$;§.Texture;
   import §@!M§.§!"p§;
   import §^"S§.§'#E§;
   import §^"S§.DisplayObject;
   import §^"S§.Image;
   import §^"S§.Sprite;
   import §`"8§.§34§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §8!I§ extends §>!o§
   {
      
      private static const §set §:Number = 1.5;
      
      private static const §9O§:Number = 0.15;
      
      private static const §@!h§:Number = 0.25;
      
      private static const §2<§:Number = 3;
      
      private static const §,X§:Number = 20;
       
      
      private var §5$2§:Number;
      
      private var §'e§:Number;
      
      private var §?!1§:§'#E§;
      
      private var §4#L§:Boolean;
      
      private var §%!_§:Number;
      
      private var §#"s§:BitmapData;
      
      private var §=$&§:Texture;
      
      private var §3E§:int = 0;
      
      public function §8!I§(param1:§8"y§, param2:§]§, param3:Number, param4:§34§, param5:Number, param6:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§5$2§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         if(this.§=$&§)
         {
            textureManager.unregisterBitmapDataTexture(this.§=$&§);
            this.§=$&§ = null;
         }
         if(this.§#"s§)
         {
            this.§#"s§.dispose();
            this.§#"s§ = null;
         }
         super.dispose();
      }
      
      override protected function createGroundQuad(param1:uint) : §'#E§
      {
         if(this.§=$&§)
         {
            textureManager.unregisterBitmapDataTexture(this.§=$&§);
            this.§=$&§ = null;
         }
         if(this.§#"s§)
         {
            this.§#"s§.dispose();
            this.§#"s§ = null;
         }
         this.§#"s§ = new BitmapData(2,2,false,param1);
         this.§=$&§ = textureManager.getTextureFromBitmapData(this.§#"s§);
         var _loc2_:§'#E§ = new Image(this.§=$&§,true,false);
         _loc2_.width = 4096;
         _loc2_.height = 4096;
         return _loc2_;
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§?!1§ == null)
         {
            if(this.§5$2§ > 0)
            {
               this.§!"l§();
            }
         }
         else if(this.§?!1§)
         {
            this.§8!b§();
         }
         this.§'"D§();
         this.§5$2§ += param1 / 1000;
      }
      
      private function §!"l§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§"![§.numChildren > 0)
         {
            _loc1_ = §"![§.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               _loc2_.top -= 2048;
               this.§?!1§ = new §'#E§(_loc2_.width,_loc2_.height,16777215);
               this.§?!1§.x = _loc2_.left;
               this.§?!1§.y = _loc2_.top;
               this.§?!1§.alpha = 0;
               _loc1_.addChild(this.§?!1§);
            }
            this.§3E§ = 0;
            this.§5$2§ = 0;
            if(Math.random() < 0.25)
            {
               this.§'e§ = 0.7 + Math.random() * (§set § - 0.7);
            }
            else
            {
               this.§'e§ = 0.3 + Math.random() * (§set § - 0.3) * 0.3;
            }
            this.§%!_§ = 0.2 + Math.random() * 2;
            this.§4#L§ = false;
         }
      }
      
      private function §8!b§() : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Sprite = null;
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§5$2§ < §9O§)
         {
            _loc2_ = this.§5$2§ / §9O§;
         }
         else if(this.§5$2§ < §9O§ + this.§'e§)
         {
            this.§3E§ = (this.§3E§ + 1) % 2;
            if(this.§3E§ != 1)
            {
               return;
            }
            _loc7_ = (§set § + this.§'e§) / (§set § * 3);
            _loc2_ = 1 - _loc7_ + Math.random() * _loc7_;
         }
         else if(this.§5$2§ < §9O§ + this.§'e§ + §@!h§)
         {
            _loc2_ = 1 - (this.§5$2§ - (§9O§ + this.§'e§)) / §@!h§;
         }
         this.§?!1§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         if(this.§5$2§ > §set §)
         {
            if(§"![§.numChildren > 0)
            {
               if(_loc8_ = §"![§.getChildAt(0) as Sprite)
               {
                  _loc8_.removeChild(this.§?!1§,true);
               }
            }
            this.§?!1§ = null;
            _loc3_ = 255;
            this.§5$2§ = -(§2<§ + (§,X§ - §2<§) * Math.random());
         }
         var _loc4_:int;
         var _loc5_:int = _loc4_ = §"![§.numChildren - 1;
         while(_loc5_ >= 1)
         {
            _loc9_ = _loc3_ * (_loc5_ + _loc4_) / (_loc4_ * 2);
            if(_loc3_ == 255)
            {
               _loc9_ = 255;
            }
            _loc10_ = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
            _loc1_ = §"![§.getChildAt(_loc5_);
            _loc1_.color = _loc10_;
            _loc5_--;
         }
         var _loc6_:int = _loc4_ = §#"j§.numChildren - 1;
         while(_loc6_ >= 0)
         {
            _loc1_ = §#"j§.getChildAt(_loc6_);
            _loc1_.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
            _loc6_--;
         }
         §&!L§.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
      }
      
      private function §'"D§() : void
      {
         if(this.§5$2§ > this.§%!_§)
         {
            if(!this.§4#L§)
            {
               §!"p§.§%!R§("Lightning04","ChannelExplosions");
               this.§4#L§ = true;
            }
         }
      }
   }
}
