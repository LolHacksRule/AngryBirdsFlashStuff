package §%!c§
{
   import §!!9§.Texture;
   import §,6§.§!o§;
   import §1!T§.§6!H§;
   import §4p§.§#Q§;
   import §9E§.§1!w§;
   import §9E§.§;!U§;
   import §9E§.DisplayObject;
   import §9E§.Sprite;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §`b§ extends §#Q§
   {
      
      private static const §=Q§:Number = 1.5;
      
      private static const §7N§:Number = 0.15;
      
      private static const §4q§:Number = 0.25;
      
      private static const §+J§:Number = 3;
      
      private static const §,!2§:Number = 20;
       
      
      private var §#!v§:Number;
      
      private var §+t§:Number;
      
      private var §return§:§1!w§;
      
      private var §6!@§:Boolean;
      
      private var §=+§:Number;
      
      private var §<q§:BitmapData;
      
      private var §=§:Texture;
      
      private var §5!>§:int = 0;
      
      public function §`b§(param1:String, param2:Number, param3:§!o§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§#!v§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         if(this.§=§)
         {
            textureManager.unregisterBitmapDataTexture(this.§=§);
            this.§=§ = null;
         }
         if(this.§<q§)
         {
            this.§<q§.dispose();
            this.§<q§ = null;
         }
         super.dispose();
      }
      
      override protected function createGroundQuad(param1:uint) : §1!w§
      {
         if(this.§=§)
         {
            textureManager.unregisterBitmapDataTexture(this.§=§);
            this.§=§ = null;
         }
         if(this.§<q§)
         {
            this.§<q§.dispose();
            this.§<q§ = null;
         }
         this.§<q§ = new BitmapData(2,2,false,param1);
         this.§=§ = textureManager.getTextureFromBitmapData(this.§<q§);
         var _loc2_:§1!w§ = new §;!U§(this.§=§,true,false);
         _loc2_.width = 4096;
         _loc2_.height = 4096;
         return _loc2_;
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§return§ == null)
         {
            if(this.§#!v§ > 0)
            {
               this.§8!!§();
            }
         }
         else if(this.§return§)
         {
            this.§7!j§();
         }
         this.§!d§();
         this.§#!v§ += param1 / 1000;
      }
      
      private function §8!!§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§[o§.numChildren > 0)
         {
            _loc1_ = §[o§.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               _loc2_.top -= 2048;
               this.§return§ = new §1!w§(_loc2_.width,_loc2_.height,16777215);
               this.§return§.x = _loc2_.left;
               this.§return§.y = _loc2_.top;
               this.§return§.alpha = 0;
               _loc1_.addChild(this.§return§);
            }
            this.§5!>§ = 0;
            this.§#!v§ = 0;
            if(Math.random() < 0.25)
            {
               this.§+t§ = 0.7 + Math.random() * (§=Q§ - 0.7);
            }
            else
            {
               this.§+t§ = 0.3 + Math.random() * (§=Q§ - 0.3) * 0.3;
            }
            this.§=+§ = 0.2 + Math.random() * 2;
            this.§6!@§ = false;
         }
      }
      
      private function §7!j§() : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Sprite = null;
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§#!v§ < §7N§)
         {
            _loc2_ = this.§#!v§ / §7N§;
         }
         else if(this.§#!v§ < §7N§ + this.§+t§)
         {
            this.§5!>§ = (this.§5!>§ + 1) % 2;
            if(this.§5!>§ != 1)
            {
               return;
            }
            _loc7_ = (§=Q§ + this.§+t§) / (§=Q§ * 3);
            _loc2_ = 1 - _loc7_ + Math.random() * _loc7_;
         }
         else if(this.§#!v§ < §7N§ + this.§+t§ + §4q§)
         {
            _loc2_ = 1 - (this.§#!v§ - (§7N§ + this.§+t§)) / §4q§;
         }
         this.§return§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         if(this.§#!v§ > §=Q§)
         {
            if(§[o§.numChildren > 0)
            {
               if(_loc8_ = §[o§.getChildAt(0) as Sprite)
               {
                  _loc8_.removeChild(this.§return§,true);
               }
            }
            this.§return§ = null;
            _loc3_ = 255;
            this.§#!v§ = -(§+J§ + (§,!2§ - §+J§) * Math.random());
         }
         var _loc4_:int;
         var _loc5_:int = _loc4_ = §[o§.numChildren - 1;
         while(_loc5_ >= 1)
         {
            _loc9_ = _loc3_ * (_loc5_ + _loc4_) / (_loc4_ * 2);
            if(_loc3_ == 255)
            {
               _loc9_ = 255;
            }
            _loc10_ = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
            _loc1_ = §[o§.getChildAt(_loc5_);
            _loc1_.color = _loc10_;
            _loc5_--;
         }
         var _loc6_:int = _loc4_ = §]!=§.numChildren - 1;
         while(_loc6_ >= 0)
         {
            _loc1_ = §]!=§.getChildAt(_loc6_);
            _loc1_.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
            _loc6_--;
         }
         §"V§.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
      }
      
      private function §!d§() : void
      {
         if(this.§#!v§ > this.§=+§)
         {
            if(!this.§6!@§)
            {
               §6!H§.§;!M§("Lightning04","ChannelExplosions");
               this.§6!@§ = true;
            }
         }
      }
   }
}
