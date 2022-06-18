package §]#m§
{
   import §&!v§.§0"s§;
   import §&!v§.DisplayObject;
   import §&!v§.Image;
   import §&!v§.Sprite;
   import §-"+§.Texture;
   import §1#W§.§!#&§;
   import §4o§.§!"e§;
   import §6!6§.§6!r§;
   import §7!j§.§'0§;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   
   public class §"!m§ extends §0!^§
   {
      
      private static const §,$4§:Number = 1.5;
      
      private static const §+#]§:Number = 0.15;
      
      private static const §>""§:Number = 0.25;
      
      private static const §-"_§:Number = 3;
      
      private static const §4#o§:Number = 20;
       
      
      private var §+$%§:Number;
      
      private var §7"%§:Number;
      
      private var §7"V§:§0"s§;
      
      private var §1R§:Boolean;
      
      private var §!$8§:Number;
      
      private var §7$>§:BitmapData;
      
      private var §>#$§:Texture;
      
      private var §6"U§:int = 0;
      
      public function §"!m§(param1:§!"e§, param2:§6!r§, param3:Number, param4:§'0§, param5:Number, param6:Boolean = true)
      {
         super(param1,param2,param3,param4,param5,param6);
         this.§+$%§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         if(this.§>#$§)
         {
            textureManager.unregisterBitmapDataTexture(this.§>#$§);
            this.§>#$§ = null;
         }
         if(this.§7$>§)
         {
            this.§7$>§.dispose();
            this.§7$>§ = null;
         }
         super.dispose();
      }
      
      override protected function createGroundQuad(param1:uint) : §0"s§
      {
         if(this.§>#$§)
         {
            textureManager.unregisterBitmapDataTexture(this.§>#$§);
            this.§>#$§ = null;
         }
         if(this.§7$>§)
         {
            this.§7$>§.dispose();
            this.§7$>§ = null;
         }
         this.§7$>§ = new BitmapData(2,2,false,param1);
         this.§>#$§ = textureManager.getTextureFromBitmapData(this.§7$>§);
         var _loc2_:§0"s§ = new Image(this.§>#$§,true,false);
         _loc2_.width = 4096;
         _loc2_.height = 4096;
         return _loc2_;
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§7"V§ == null)
         {
            if(this.§+$%§ > 0)
            {
               this.§8#4§();
            }
         }
         else if(this.§7"V§)
         {
            this.§+"l§();
         }
         this.§"K§();
         this.§+$%§ += param1 / 1000;
      }
      
      private function §8#4§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§1! §.numChildren > 0)
         {
            _loc1_ = §1! §.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               _loc2_.top -= 2048;
               this.§7"V§ = new §0"s§(_loc2_.width,_loc2_.height,16777215);
               this.§7"V§.x = _loc2_.left;
               this.§7"V§.y = _loc2_.top;
               this.§7"V§.alpha = 0;
               _loc1_.addChild(this.§7"V§);
            }
            this.§6"U§ = 0;
            this.§+$%§ = 0;
            if(Math.random() < 0.25)
            {
               this.§7"%§ = 0.7 + Math.random() * (§,$4§ - 0.7);
            }
            else
            {
               this.§7"%§ = 0.3 + Math.random() * (§,$4§ - 0.3) * 0.3;
            }
            this.§!$8§ = 0.2 + Math.random() * 2;
            this.§1R§ = false;
         }
      }
      
      private function §+"l§() : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Sprite = null;
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§+$%§ < §+#]§)
         {
            _loc2_ = this.§+$%§ / §+#]§;
         }
         else if(this.§+$%§ < §+#]§ + this.§7"%§)
         {
            this.§6"U§ = (this.§6"U§ + 1) % 2;
            if(this.§6"U§ != 1)
            {
               return;
            }
            _loc7_ = (§,$4§ + this.§7"%§) / (§,$4§ * 3);
            _loc2_ = 1 - _loc7_ + Math.random() * _loc7_;
         }
         else if(this.§+$%§ < §+#]§ + this.§7"%§ + §>""§)
         {
            _loc2_ = 1 - (this.§+$%§ - (§+#]§ + this.§7"%§)) / §>""§;
         }
         this.§7"V§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         if(this.§+$%§ > §,$4§)
         {
            if(§1! §.numChildren > 0)
            {
               if(_loc8_ = §1! §.getChildAt(0) as Sprite)
               {
                  _loc8_.removeChild(this.§7"V§,true);
               }
            }
            this.§7"V§ = null;
            _loc3_ = 255;
            this.§+$%§ = -(§-"_§ + (§4#o§ - §-"_§) * Math.random());
         }
         var _loc4_:int;
         var _loc5_:int = _loc4_ = §1! §.numChildren - 1;
         while(_loc5_ >= 1)
         {
            _loc9_ = _loc3_ * (_loc5_ + _loc4_) / (_loc4_ * 2);
            if(_loc3_ == 255)
            {
               _loc9_ = 255;
            }
            _loc10_ = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
            _loc1_ = §1! §.getChildAt(_loc5_);
            _loc1_.color = _loc10_;
            _loc5_--;
         }
         var _loc6_:int = _loc4_ = §'y§.numChildren - 1;
         while(_loc6_ >= 0)
         {
            _loc1_ = §'y§.getChildAt(_loc6_);
            _loc1_.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
            _loc6_--;
         }
         §3!I§.color = (_loc9_ << 16) + (_loc9_ << 8) + _loc9_;
      }
      
      private function §"K§() : void
      {
         if(this.§+$%§ > this.§!$8§)
         {
            if(!this.§1R§)
            {
               §!#&§.§2!A§("Lightning04","ChannelExplosions");
               this.§1R§ = true;
            }
         }
      }
   }
}
