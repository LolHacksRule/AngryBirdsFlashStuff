package §^!s§
{
   import §1k§.§%4§;
   import §<L§.Texture;
   import §?"<§.§<"!§;
   import §]&§.§-§;
   import §]&§.DisplayObject;
   import §]&§.Sprite;
   import §]&§.§[T§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §#!"§ extends §&!t§
   {
      
      private static const §@U§:Number = 1.5;
      
      private static const §5§:Number = 0.15;
      
      private static const §1F§:Number = 0.25;
      
      private static const §9!c§:Number = 3;
      
      private static const §0"5§:Number = 20;
       
      
      private var §`!?§:Number;
      
      private var §]!7§:Number;
      
      private var §,!f§:§[T§;
      
      private var §^!A§:Boolean;
      
      private var §8Z§:Number;
      
      private var §&o§:BitmapData;
      
      private var §5h§:Texture;
      
      private var §&6§:int = 0;
      
      public function §#!"§(param1:String, param2:Number, param3:§<"!§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§`!?§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         if(this.§5h§)
         {
            textureManager.unregisterBitmapDataTexture(this.§5h§);
            this.§5h§ = null;
         }
         if(this.§&o§)
         {
            this.§&o§.dispose();
            this.§&o§ = null;
         }
         super.dispose();
      }
      
      override protected function createGroundQuad(param1:uint) : §[T§
      {
         if(this.§5h§)
         {
            textureManager.unregisterBitmapDataTexture(this.§5h§);
            this.§5h§ = null;
         }
         if(this.§&o§)
         {
            this.§&o§.dispose();
            this.§&o§ = null;
         }
         this.§&o§ = new BitmapData(2,2,false,param1);
         this.§5h§ = textureManager.getTextureFromBitmapData(this.§&o§);
         var _loc2_:§[T§ = new §-§(this.§5h§,true,false);
         _loc2_.width = 4096;
         _loc2_.height = 4096;
         return _loc2_;
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§,!f§ == null)
         {
            if(this.§`!?§ > 0)
            {
               this.§?"@§();
            }
         }
         else if(this.§,!f§)
         {
            this.§8!I§();
         }
         this.§1<§();
         this.§`!?§ += param1 / 1000;
      }
      
      private function §?"@§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§0p§.numChildren > 0)
         {
            _loc1_ = §0p§.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               _loc2_.top -= 2048;
               this.§,!f§ = new §[T§(_loc2_.width,_loc2_.height,16777215);
               this.§,!f§.x = _loc2_.left;
               this.§,!f§.y = _loc2_.top;
               this.§,!f§.alpha = 0;
               _loc1_.addChild(this.§,!f§);
            }
            this.§&6§ = 0;
            this.§`!?§ = 0;
            if(Math.random() < 0.25)
            {
               this.§]!7§ = 0.7 + Math.random() * (§@U§ - 0.7);
            }
            else
            {
               this.§]!7§ = 0.3 + Math.random() * (§@U§ - 0.3) * 0.3;
            }
            this.§8Z§ = 0.2 + Math.random() * 2;
            this.§^!A§ = false;
         }
      }
      
      private function §8!I§() : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Sprite = null;
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§`!?§ < §5§)
         {
            _loc2_ = this.§`!?§ / §5§;
         }
         else if(this.§`!?§ < §5§ + this.§]!7§)
         {
            this.§&6§ = (this.§&6§ + 1) % 2;
            if(this.§&6§ != 1)
            {
               return;
            }
            _loc7_ = (§@U§ + this.§]!7§) / (§@U§ * 3);
            _loc2_ = 1 - _loc7_ + Math.random() * _loc7_;
         }
         else if(this.§`!?§ < §5§ + this.§]!7§ + §1F§)
         {
            _loc2_ = 1 - (this.§`!?§ - (§5§ + this.§]!7§)) / §1F§;
         }
         this.§,!f§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         if(this.§`!?§ > §@U§)
         {
            if(§0p§.numChildren > 0)
            {
               if(_loc8_ = §0p§.getChildAt(0) as Sprite)
               {
                  _loc8_.removeChild(this.§,!f§,true);
               }
            }
            this.§,!f§ = null;
            _loc3_ = 255;
            this.§`!?§ = -(§9!c§ + (§0"5§ - §9!c§) * Math.random());
         }
         var _loc4_:int;
         var _loc5_:int = _loc4_ = §0p§.numChildren - 1;
         while(_loc5_ >= 1)
         {
            _loc9_ = _loc3_ * (_loc5_ + _loc4_) / (_loc4_ * 2);
            if(_loc3_ == 255)
            {
               _loc9_ = 255;
            }
            _loc10_ = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
            _loc1_ = §0p§.getChildAt(_loc5_);
            _loc1_.color = _loc10_;
            _loc5_--;
         }
         var _loc6_:int = _loc4_ = §3M§.numChildren - 1;
         while(_loc6_ >= 0)
         {
            _loc1_ = §3M§.getChildAt(_loc6_);
            _loc1_.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
            _loc6_--;
         }
         §2p§.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
      }
      
      private function §1<§() : void
      {
         if(this.§`!?§ > this.§8Z§)
         {
            if(!this.§^!A§)
            {
               §%4§.§#"?§("Lightning04","ChannelExplosions");
               this.§^!A§ = true;
            }
         }
      }
   }
}
