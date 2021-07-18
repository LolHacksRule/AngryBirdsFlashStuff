package §8$1§
{
   import §1&§.Texture;
   import §6§.§]!Q§;
   import §8§.§#$+§;
   import §9$§.DisplayObject;
   import §9$§.Image;
   import §9$§.Sprite;
   import §9$§.§],§;
   import §@"§.§&!=§;
   import §^§.§[>§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class § #u§ extends §<"G§
   {
      
      private static const §=#>§:Number = 1.5;
      
      private static const §8"-§:Number = 0.15;
      
      private static const §]'§:Number = 0.25;
      
      private static const §[X§:Number = 3;
      
      private static const §5!a§:Number = 20;
       
      
      private var §,!_§:Number;
      
      private var §["r§:Number;
      
      private var §&"E§:§],§;
      
      private var §%"L§:Boolean;
      
      private var §3O§:Number;
      
      private var §5"v§:BitmapData;
      
      private var §>#Z§:Texture;
      
      private var §0"o§:int = 0;
      
      public function § #u§(param1:§]!Q§, param2:§[>§, param3:Number, param4:§&!=§, param5:Number, param6:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§,!_§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         if(this.§>#Z§)
         {
            textureManager.unregisterBitmapDataTexture(this.§>#Z§);
            this.§>#Z§ = null;
         }
         if(this.§5"v§)
         {
            this.§5"v§.dispose();
            this.§5"v§ = null;
         }
         super.dispose();
      }
      
      override protected function createGroundQuad(param1:uint) : §],§
      {
         if(this.§>#Z§)
         {
            textureManager.unregisterBitmapDataTexture(this.§>#Z§);
            this.§>#Z§ = null;
         }
         if(this.§5"v§)
         {
            this.§5"v§.dispose();
            this.§5"v§ = null;
         }
         this.§5"v§ = new BitmapData(2,2,false,param1);
         this.§>#Z§ = textureManager.getTextureFromBitmapData(this.§5"v§);
         var _loc2_:§],§ = new Image(this.§>#Z§,true,false);
         _loc2_.width = 4096;
         _loc2_.height = 4096;
         return _loc2_;
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§&"E§ == null)
         {
            if(this.§,!_§ > 0)
            {
               this.§[s§();
            }
         }
         else if(this.§&"E§)
         {
            this.§%$"§();
         }
         this.§<"3§();
         this.§,!_§ += param1 / 1000;
      }
      
      private function §[s§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§-#8§.numChildren > 0)
         {
            _loc1_ = §-#8§.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               _loc2_.top -= 2048;
               this.§&"E§ = new §],§(_loc2_.width,_loc2_.height,16777215);
               this.§&"E§.x = _loc2_.left;
               this.§&"E§.y = _loc2_.top;
               this.§&"E§.alpha = 0;
               _loc1_.addChild(this.§&"E§);
            }
            this.§0"o§ = 0;
            this.§,!_§ = 0;
            if(Math.random() < 0.25)
            {
               this.§["r§ = 0.7 + Math.random() * (§=#>§ - 0.7);
            }
            else
            {
               this.§["r§ = 0.3 + Math.random() * (§=#>§ - 0.3) * 0.3;
            }
            this.§3O§ = 0.2 + Math.random() * 2;
            this.§%"L§ = false;
         }
      }
      
      private function §%$"§() : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Sprite = null;
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§,!_§ < §8"-§)
         {
            _loc2_ = this.§,!_§ / §8"-§;
         }
         else if(this.§,!_§ < §8"-§ + this.§["r§)
         {
            this.§0"o§ = (this.§0"o§ + 1) % 2;
            if(this.§0"o§ != 1)
            {
               return;
            }
            _loc7_ = (§=#>§ + this.§["r§) / (§=#>§ * 3);
            _loc2_ = 1 - _loc7_ + Math.random() * _loc7_;
         }
         else if(this.§,!_§ < §8"-§ + this.§["r§ + §]'§)
         {
            _loc2_ = 1 - (this.§,!_§ - (§8"-§ + this.§["r§)) / §]'§;
         }
         this.§&"E§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         if(this.§,!_§ > §=#>§)
         {
            if(§-#8§.numChildren > 0)
            {
               if(_loc8_ = §-#8§.getChildAt(0) as Sprite)
               {
                  _loc8_.removeChild(this.§&"E§,true);
               }
            }
            this.§&"E§ = null;
            _loc3_ = 255;
            this.§,!_§ = -(§[X§ + (§5!a§ - §[X§) * Math.random());
         }
         var _loc4_:int;
         var _loc5_:int = _loc4_ = §-#8§.numChildren - 1;
         while(_loc5_ >= 1)
         {
            _loc9_ = _loc3_ * (_loc5_ + _loc4_) / (_loc4_ * 2);
            if(_loc3_ == 255)
            {
               _loc9_ = 255;
            }
            _loc10_ = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
            _loc1_ = §-#8§.getChildAt(_loc5_);
            _loc1_.color = _loc10_;
            _loc5_--;
         }
         var _loc6_:int = _loc4_ = §&!t§.numChildren - 1;
         while(_loc6_ >= 0)
         {
            _loc1_ = §&!t§.getChildAt(_loc6_);
            _loc1_.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
            _loc6_--;
         }
         §6!G§.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
      }
      
      private function §<"3§() : void
      {
         if(this.§,!_§ > this.§3O§)
         {
            if(!this.§%"L§)
            {
               §#$+§.§=#P§("Lightning04","ChannelExplosions");
               this.§%"L§ = true;
            }
         }
      }
   }
}
