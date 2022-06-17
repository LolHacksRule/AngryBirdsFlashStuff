package §<#S§
{
   import §!6§.§4";§;
   import §!6§.DisplayObject;
   import §!6§.Image;
   import §!6§.Sprite;
   import §""'§.Texture;
   import §'!O§.§@P§;
   import §-"i§.§"!Y§;
   import §>"9§.§[#%§;
   import §^"[§.§=#;§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §'>§ extends §[!W§
   {
      
      private static const §<$;§:Number = 1.5;
      
      private static const §<" §:Number = 0.15;
      
      private static const §5"Y§:Number = 0.25;
      
      private static const §4#6§:Number = 3;
      
      private static const §5#5§:Number = 20;
       
      
      private var §3!3§:Number;
      
      private var §5"d§:Number;
      
      private var §-#X§:§4";§;
      
      private var §>@§:Boolean;
      
      private var §,#q§:Number;
      
      private var §@"L§:BitmapData;
      
      private var §8"?§:Texture;
      
      private var §3!S§:int = 0;
      
      public function §'>§(param1:§"!Y§, param2:§@P§, param3:Number, param4:§=#;§, param5:Number, param6:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§3!3§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         if(this.§8"?§)
         {
            textureManager.unregisterBitmapDataTexture(this.§8"?§);
            this.§8"?§ = null;
         }
         if(this.§@"L§)
         {
            this.§@"L§.dispose();
            this.§@"L§ = null;
         }
         super.dispose();
      }
      
      override protected function createGroundQuad(param1:uint) : §4";§
      {
         if(this.§8"?§)
         {
            textureManager.unregisterBitmapDataTexture(this.§8"?§);
            this.§8"?§ = null;
         }
         if(this.§@"L§)
         {
            this.§@"L§.dispose();
            this.§@"L§ = null;
         }
         this.§@"L§ = new BitmapData(2,2,false,param1);
         this.§8"?§ = textureManager.getTextureFromBitmapData(this.§@"L§);
         var _loc2_:§4";§ = new Image(this.§8"?§,true,false);
         _loc2_.width = 4096;
         _loc2_.height = 4096;
         return _loc2_;
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§-#X§ == null)
         {
            if(this.§3!3§ > 0)
            {
               this.§8#T§();
            }
         }
         else if(this.§-#X§)
         {
            this.§1!H§();
         }
         this.§["L§();
         this.§3!3§ += param1 / 1000;
      }
      
      private function §8#T§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§7#f§.numChildren > 0)
         {
            _loc1_ = §7#f§.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               _loc2_.top -= 2048;
               this.§-#X§ = new §4";§(_loc2_.width,_loc2_.height,16777215);
               this.§-#X§.x = _loc2_.left;
               this.§-#X§.y = _loc2_.top;
               this.§-#X§.alpha = 0;
               _loc1_.addChild(this.§-#X§);
            }
            this.§3!S§ = 0;
            this.§3!3§ = 0;
            if(Math.random() < 0.25)
            {
               this.§5"d§ = 0.7 + Math.random() * (§<$;§ - 0.7);
            }
            else
            {
               this.§5"d§ = 0.3 + Math.random() * (§<$;§ - 0.3) * 0.3;
            }
            this.§,#q§ = 0.2 + Math.random() * 2;
            this.§>@§ = false;
         }
      }
      
      private function §1!H§() : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Sprite = null;
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§3!3§ < §<" §)
         {
            _loc2_ = this.§3!3§ / §<" §;
         }
         else if(this.§3!3§ < §<" § + this.§5"d§)
         {
            this.§3!S§ = (this.§3!S§ + 1) % 2;
            if(this.§3!S§ != 1)
            {
               return;
            }
            _loc7_ = (§<$;§ + this.§5"d§) / (§<$;§ * 3);
            _loc2_ = 1 - _loc7_ + Math.random() * _loc7_;
         }
         else if(this.§3!3§ < §<" § + this.§5"d§ + §5"Y§)
         {
            _loc2_ = 1 - (this.§3!3§ - (§<" § + this.§5"d§)) / §5"Y§;
         }
         this.§-#X§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         if(this.§3!3§ > §<$;§)
         {
            if(§7#f§.numChildren > 0)
            {
               if(_loc8_ = §7#f§.getChildAt(0) as Sprite)
               {
                  _loc8_.removeChild(this.§-#X§,true);
               }
            }
            this.§-#X§ = null;
            _loc3_ = 255;
            this.§3!3§ = -(§4#6§ + (§5#5§ - §4#6§) * Math.random());
         }
         var _loc4_:int;
         var _loc5_:int = _loc4_ = §7#f§.numChildren - 1;
         while(_loc5_ >= 1)
         {
            _loc9_ = _loc3_ * (_loc5_ + _loc4_) / (_loc4_ * 2);
            if(_loc3_ == 255)
            {
               _loc9_ = 255;
            }
            _loc10_ = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
            _loc1_ = §7#f§.getChildAt(_loc5_);
            _loc1_.color = _loc10_;
            _loc5_--;
         }
         var _loc6_:int = _loc4_ = §?!;§.numChildren - 1;
         while(_loc6_ >= 0)
         {
            _loc1_ = §?!;§.getChildAt(_loc6_);
            _loc1_.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
            _loc6_--;
         }
         §'"$§.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
      }
      
      private function §["L§() : void
      {
         if(this.§3!3§ > this.§,#q§)
         {
            if(!this.§>@§)
            {
               §[#%§.§!"0§("Lightning04","ChannelExplosions");
               this.§>@§ = true;
            }
         }
      }
   }
}
