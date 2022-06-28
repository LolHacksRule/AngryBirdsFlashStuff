package §9Y§
{
   import §4>§.Texture;
   import §5!c§.§9'§;
   import §7!B§.§-§;
   import §7!B§.§;R§;
   import §7!B§.DisplayObject;
   import §7!B§.Sprite;
   import §<x§.§-^§;
   import §^!Y§.§'R§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §9=§ extends §-^§
   {
      
      private static const §=D§:Number = 1.5;
      
      private static const §0k§:Number = 0.15;
      
      private static const §`!+§:Number = 0.25;
      
      private static const §@>§:Number = 3;
      
      private static const §!?§:Number = 20;
       
      
      private var § case§:Number;
      
      private var §0!?§:Number;
      
      private var §'!m§:§;R§;
      
      private var §%_§:Boolean;
      
      private var §'!H§:Number;
      
      private var §&E§:BitmapData;
      
      private var §@!N§:Texture;
      
      private var §2§:int = 0;
      
      public function §9=§(param1:String, param2:Number, param3:§'R§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§ case§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         if(this.§@!N§)
         {
            textureManager.unregisterBitmapDataTexture(this.§@!N§);
            this.§@!N§ = null;
         }
         if(this.§&E§)
         {
            this.§&E§.dispose();
            this.§&E§ = null;
         }
         super.dispose();
      }
      
      override protected function createGroundQuad(param1:uint) : §;R§
      {
         if(this.§@!N§)
         {
            textureManager.unregisterBitmapDataTexture(this.§@!N§);
            this.§@!N§ = null;
         }
         if(this.§&E§)
         {
            this.§&E§.dispose();
            this.§&E§ = null;
         }
         this.§&E§ = new BitmapData(2,2,false,param1);
         this.§@!N§ = textureManager.getTextureFromBitmapData(this.§&E§);
         var _loc2_:§;R§ = new §-§(this.§@!N§,true,false);
         _loc2_.width = 4096;
         _loc2_.height = 4096;
         return _loc2_;
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§'!m§ == null)
         {
            if(this.§ case§ > 0)
            {
               this.§,!L§();
            }
         }
         else if(this.§'!m§)
         {
            this.§1N§();
         }
         this.§,d§();
         this.§ case§ += param1 / 1000;
      }
      
      private function §,!L§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§'<§.numChildren > 0)
         {
            _loc1_ = §'<§.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               _loc2_.top -= 2048;
               this.§'!m§ = new §;R§(_loc2_.width,_loc2_.height,16777215);
               this.§'!m§.x = _loc2_.left;
               this.§'!m§.y = _loc2_.top;
               this.§'!m§.alpha = 0;
               _loc1_.addChild(this.§'!m§);
            }
            this.§2§ = 0;
            this.§ case§ = 0;
            if(Math.random() < 0.25)
            {
               this.§0!?§ = 0.7 + Math.random() * (§=D§ - 0.7);
            }
            else
            {
               this.§0!?§ = 0.3 + Math.random() * (§=D§ - 0.3) * 0.3;
            }
            this.§'!H§ = 0.2 + Math.random() * 2;
            this.§%_§ = false;
         }
      }
      
      private function §1N§() : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Sprite = null;
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§ case§ < §0k§)
         {
            _loc2_ = this.§ case§ / §0k§;
         }
         else if(this.§ case§ < §0k§ + this.§0!?§)
         {
            this.§2§ = (this.§2§ + 1) % 2;
            if(this.§2§ != 1)
            {
               return;
            }
            _loc7_ = (§=D§ + this.§0!?§) / (§=D§ * 3);
            _loc2_ = 1 - _loc7_ + Math.random() * _loc7_;
         }
         else if(this.§ case§ < §0k§ + this.§0!?§ + §`!+§)
         {
            _loc2_ = 1 - (this.§ case§ - (§0k§ + this.§0!?§)) / §`!+§;
         }
         this.§'!m§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         if(this.§ case§ > §=D§)
         {
            if(§'<§.numChildren > 0)
            {
               if(_loc8_ = §'<§.getChildAt(0) as Sprite)
               {
                  _loc8_.removeChild(this.§'!m§,true);
               }
            }
            this.§'!m§ = null;
            _loc3_ = 255;
            this.§ case§ = -(§@>§ + (§!?§ - §@>§) * Math.random());
         }
         var _loc4_:int;
         var _loc5_:int = _loc4_ = §'<§.numChildren - 1;
         while(_loc5_ >= 1)
         {
            _loc9_ = _loc3_ * (_loc5_ + _loc4_) / (_loc4_ * 2);
            if(_loc3_ == 255)
            {
               _loc9_ = 255;
            }
            _loc10_ = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
            _loc1_ = §'<§.getChildAt(_loc5_);
            _loc1_.color = _loc10_;
            _loc5_--;
         }
         var _loc6_:int = _loc4_ = §%o§.numChildren - 1;
         while(_loc6_ >= 0)
         {
            _loc1_ = §%o§.getChildAt(_loc6_);
            _loc1_.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
            _loc6_--;
         }
         §5!0§.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
      }
      
      private function §,d§() : void
      {
         if(this.§ case§ > this.§'!H§)
         {
            if(!this.§%_§)
            {
               §9'§.§!!`§("Lightning04","ChannelExplosions");
               this.§%_§ = true;
            }
         }
      }
   }
}
