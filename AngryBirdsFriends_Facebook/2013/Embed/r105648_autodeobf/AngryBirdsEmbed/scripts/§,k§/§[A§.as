package §,k§
{
   import §8T§.§@o§;
   import §;^§.§+a§;
   import §;^§.DisplayObject;
   import §;^§.Sprite;
   import §=!K§.§^Q§;
   import flash.geom.Rectangle;
   
   public class §[A§ extends §,!F§
   {
      
      private static const §`#§:Number = 2.5;
      
      private static const §`!M§:Number = 0.15;
      
      private static const §;6§:Number = 0.25;
       
      
      private var §!M§:Number;
      
      private var §;G§:Number;
      
      private var §#X§:§+a§;
      
      private var §`1§:Boolean;
      
      private var §`3§:Number;
      
      public function §[A§(param1:String, param2:Number, param3:§^Q§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§!M§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§#X§ == null)
         {
            if(this.§!M§ > 0)
            {
               this.§>Q§();
            }
         }
         else if(this.§#X§)
         {
            this.§'7§();
         }
         this.§5G§();
         this.§!M§ += param1 / 1000;
      }
      
      private function §>Q§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§"!C§.numChildren > 0)
         {
            _loc1_ = §"!C§.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               this.§#X§ = new §+a§(_loc2_.width,_loc2_.height,16777215);
               this.§#X§.x = _loc2_.left;
               this.§#X§.y = _loc2_.top;
               this.§#X§.alpha = 0;
               _loc1_.addChild(this.§#X§);
            }
            this.§!M§ = 0;
            if(Math.random() < 0.25)
            {
               this.§;G§ = 1 + Math.random() * (§`#§ - 1);
            }
            else
            {
               this.§;G§ = 0.3 + Math.random() * (§`#§ - 0.3) * 0.3;
            }
            this.§`3§ = 0.2 + Math.random() * 2;
            this.§`1§ = false;
         }
      }
      
      private function §'7§() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Sprite = null;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§!M§ < §`!M§)
         {
            _loc2_ = this.§!M§ / §`!M§;
         }
         else if(this.§!M§ < §`!M§ + this.§;G§)
         {
            _loc5_ = (§`#§ + this.§;G§) / (§`#§ * 2);
            _loc2_ = 1 - _loc5_ + Math.random() * _loc5_;
         }
         else if(this.§!M§ < §`!M§ + this.§;G§ + §;6§)
         {
            _loc2_ = 1 - (this.§!M§ - (§`!M§ + this.§;G§)) / §;6§;
         }
         this.§#X§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         _loc3_ = (_loc3_ << 16) + (_loc3_ << 8) + _loc3_;
         if(this.§!M§ > §`#§)
         {
            if(§"!C§.numChildren > 0)
            {
               if(_loc6_ = §"!C§.getChildAt(0) as Sprite)
               {
                  _loc6_.removeChild(this.§#X§,true);
               }
            }
            this.§#X§ = null;
            _loc3_ = 16777215;
            this.§!M§ = -(2 + 20 * Math.random());
         }
         var _loc4_:int = §"!C§.numChildren - 1;
         while(_loc4_ >= 1)
         {
            _loc1_ = §"!C§.getChildAt(_loc4_);
            _loc1_.color = _loc3_;
            _loc4_--;
         }
      }
      
      private function §5G§() : void
      {
         if(this.§!M§ > this.§`3§)
         {
            if(!this.§`1§)
            {
               §@o§.§@F§("Lightning04","ChannelExplosions");
               this.§`1§ = true;
            }
         }
      }
   }
}
