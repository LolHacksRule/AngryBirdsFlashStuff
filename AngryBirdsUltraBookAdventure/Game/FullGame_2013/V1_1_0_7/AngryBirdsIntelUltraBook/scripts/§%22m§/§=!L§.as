package §"m§
{
   import §8!A§.§-!i§;
   import §=`§.§6!I§;
   import §?]§.Texture;
   import §[!b§.§-!Q§;
   import §`g§.§ O§;
   import §`g§.§"<§;
   import §`g§.DisplayObject;
   import §`g§.Sprite;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §=!L§ extends §-!i§
   {
      
      private static const §>!P§:Number = 1.5;
      
      private static const §<d§:Number = 0.15;
      
      private static const §,?§:Number = 0.25;
      
      private static const §-!p§:Number = 3;
      
      private static const §<z§:Number = 20;
       
      
      private var §+V§:Number;
      
      private var §?5§:Number;
      
      private var §30§:§ O§;
      
      private var § !]§:Boolean;
      
      private var §<=§:Number;
      
      private var §1+§:BitmapData;
      
      private var §5$§:Texture;
      
      private var §4!u§:int = 0;
      
      public function §=!L§(param1:String, param2:Number, param3:§6!I§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§+V§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         if(this.§5$§)
         {
            textureManager.unregisterBitmapDataTexture(this.§5$§);
            this.§5$§ = null;
         }
         if(this.§1+§)
         {
            this.§1+§.dispose();
            this.§1+§ = null;
         }
         super.dispose();
      }
      
      override protected function createGroundQuad(param1:uint) : § O§
      {
         if(this.§5$§)
         {
            textureManager.unregisterBitmapDataTexture(this.§5$§);
            this.§5$§ = null;
         }
         if(this.§1+§)
         {
            this.§1+§.dispose();
            this.§1+§ = null;
         }
         this.§1+§ = new BitmapData(2,2,false,param1);
         this.§5$§ = textureManager.getTextureFromBitmapData(this.§1+§);
         var _loc2_:§ O§ = new §"<§(this.§5$§,true,false);
         _loc2_.width = 4096;
         _loc2_.height = 4096;
         return _loc2_;
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§30§ == null)
         {
            if(this.§+V§ > 0)
            {
               this.§4!,§();
            }
         }
         else if(this.§30§)
         {
            this.§9x§();
         }
         this.§>4§();
         this.§+V§ += param1 / 1000;
      }
      
      private function §4!,§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§8y§.numChildren > 0)
         {
            _loc1_ = §8y§.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               _loc2_.top -= 2048;
               this.§30§ = new § O§(_loc2_.width,_loc2_.height,16777215);
               this.§30§.x = _loc2_.left;
               this.§30§.y = _loc2_.top;
               this.§30§.alpha = 0;
               _loc1_.addChild(this.§30§);
            }
            this.§4!u§ = 0;
            this.§+V§ = 0;
            if(Math.random() < 0.25)
            {
               this.§?5§ = 0.7 + Math.random() * (§>!P§ - 0.7);
            }
            else
            {
               this.§?5§ = 0.3 + Math.random() * (§>!P§ - 0.3) * 0.3;
            }
            this.§<=§ = 0.2 + Math.random() * 2;
            this.§ !]§ = false;
         }
      }
      
      private function §9x§() : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Sprite = null;
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§+V§ < §<d§)
         {
            _loc2_ = this.§+V§ / §<d§;
         }
         else if(this.§+V§ < §<d§ + this.§?5§)
         {
            this.§4!u§ = (this.§4!u§ + 1) % 2;
            if(this.§4!u§ != 1)
            {
               return;
            }
            _loc7_ = (§>!P§ + this.§?5§) / (§>!P§ * 3);
            _loc2_ = 1 - _loc7_ + Math.random() * _loc7_;
         }
         else if(this.§+V§ < §<d§ + this.§?5§ + §,?§)
         {
            _loc2_ = 1 - (this.§+V§ - (§<d§ + this.§?5§)) / §,?§;
         }
         this.§30§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         if(this.§+V§ > §>!P§)
         {
            if(§8y§.numChildren > 0)
            {
               if(_loc8_ = §8y§.getChildAt(0) as Sprite)
               {
                  _loc8_.removeChild(this.§30§,true);
               }
            }
            this.§30§ = null;
            _loc3_ = 255;
            this.§+V§ = -(§-!p§ + (§<z§ - §-!p§) * Math.random());
         }
         var _loc4_:int;
         var _loc5_:int = _loc4_ = §8y§.numChildren - 1;
         while(_loc5_ >= 1)
         {
            _loc9_ = _loc3_ * (_loc5_ + _loc4_) / (_loc4_ * 2);
            if(_loc3_ == 255)
            {
               _loc9_ = 255;
            }
            _loc10_ = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
            _loc1_ = §8y§.getChildAt(_loc5_);
            _loc1_.color = _loc10_;
            _loc5_--;
         }
         var _loc6_:int = _loc4_ = §[f§.numChildren - 1;
         while(_loc6_ >= 0)
         {
            _loc1_ = §[f§.getChildAt(_loc6_);
            _loc1_.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
            _loc6_--;
         }
         §!!u§.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
      }
      
      private function §>4§() : void
      {
         if(this.§+V§ > this.§<=§)
         {
            if(!this.§ !]§)
            {
               §-!Q§.§7"$§("Lightning04","ChannelExplosions");
               this.§ !]§ = true;
            }
         }
      }
   }
}
