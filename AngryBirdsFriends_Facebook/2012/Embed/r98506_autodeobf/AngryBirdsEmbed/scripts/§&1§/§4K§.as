package §&1§
{
   import §"a§.§>X§;
   import §3!A§.§9!0§;
   import §;q§.§-!>§;
   import §;q§.DisplayObject;
   import §;q§.Sprite;
   import flash.geom.Rectangle;
   
   public class §4K§ extends §35§
   {
      
      private static const §>3§:Number = 2.5;
      
      private static const §]!F§:Number = 0.15;
      
      private static const §;b§:Number = 0.25;
       
      
      private var §4g§:Number;
      
      private var §^6§:Number;
      
      private var §'z§:§-!>§;
      
      private var §=4§:Boolean;
      
      private var §@T§:Number;
      
      public function §4K§(param1:String, param2:Number, param3:§>X§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§4g§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§'z§ == null)
         {
            if(this.§4g§ > 0)
            {
               this.§2Z§();
            }
         }
         else if(this.§'z§)
         {
            this.§%!0§();
         }
         this.§>0§();
         this.§4g§ += param1 / 1000;
      }
      
      private function §2Z§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§[#§.numChildren > 0)
         {
            _loc1_ = §[#§.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               this.§'z§ = new §-!>§(_loc2_.width,_loc2_.height,16777215);
               this.§'z§.x = _loc2_.left;
               this.§'z§.y = _loc2_.top;
               this.§'z§.alpha = 0;
               _loc1_.addChild(this.§'z§);
            }
            this.§4g§ = 0;
            if(Math.random() < 0.25)
            {
               this.§^6§ = 1 + Math.random() * (§>3§ - 1);
            }
            else
            {
               this.§^6§ = 0.3 + Math.random() * (§>3§ - 0.3) * 0.3;
            }
            this.§@T§ = 0.2 + Math.random() * 2;
            this.§=4§ = false;
         }
      }
      
      private function §%!0§() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Sprite = null;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§4g§ < §]!F§)
         {
            _loc2_ = this.§4g§ / §]!F§;
         }
         else if(this.§4g§ < §]!F§ + this.§^6§)
         {
            _loc5_ = (§>3§ + this.§^6§) / (§>3§ * 2);
            _loc2_ = 1 - _loc5_ + Math.random() * _loc5_;
         }
         else if(this.§4g§ < §]!F§ + this.§^6§ + §;b§)
         {
            _loc2_ = 1 - (this.§4g§ - (§]!F§ + this.§^6§)) / §;b§;
         }
         this.§'z§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         _loc3_ = (_loc3_ << 16) + (_loc3_ << 8) + _loc3_;
         if(this.§4g§ > §>3§)
         {
            if(§[#§.numChildren > 0)
            {
               if(_loc6_ = §[#§.getChildAt(0) as Sprite)
               {
                  _loc6_.removeChild(this.§'z§,true);
               }
            }
            this.§'z§ = null;
            _loc3_ = 16777215;
            this.§4g§ = -(2 + 20 * Math.random());
         }
         var _loc4_:int = §[#§.numChildren - 1;
         while(_loc4_ >= 1)
         {
            _loc1_ = §[#§.getChildAt(_loc4_);
            _loc1_.color = _loc3_;
            _loc4_--;
         }
      }
      
      private function §>0§() : void
      {
         if(this.§4g§ > this.§@T§)
         {
            if(!this.§=4§)
            {
               §9!0§.§?n§("Lightning04","ChannelExplosions");
               this.§=4§ = true;
            }
         }
      }
   }
}
