package § "§
{
   import §+y§.§3V§;
   import §<!N§.DisplayObject;
   import §<!N§.Sprite;
   import §<!N§.§^3§;
   import §^'§.§ !C§;
   import flash.geom.Rectangle;
   
   public class §8i§ extends §5!E§
   {
      
      private static const §;u§:Number = 2.5;
      
      private static const §#§:Number = 0.15;
      
      private static const §&3§:Number = 0.25;
       
      
      private var §[!#§:Number;
      
      private var §[7§:Number;
      
      private var §4!?§:§^3§;
      
      private var §10§:Boolean;
      
      private var §0`§:Number;
      
      public function §8i§(param1:String, param2:Number, param3:§ !C§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§[!#§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§4!?§ == null)
         {
            if(this.§[!#§ > 0)
            {
               this.§&5§();
            }
         }
         else if(this.§4!?§)
         {
            this.§;a§();
         }
         this.§=0§();
         this.§[!#§ += param1 / 1000;
      }
      
      private function §&5§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§9!6§.numChildren > 0)
         {
            _loc1_ = §9!6§.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               this.§4!?§ = new §^3§(_loc2_.width,_loc2_.height,16777215);
               this.§4!?§.x = _loc2_.left;
               this.§4!?§.y = _loc2_.top;
               this.§4!?§.alpha = 0;
               _loc1_.addChild(this.§4!?§);
            }
            this.§[!#§ = 0;
            if(Math.random() < 0.25)
            {
               this.§[7§ = 1 + Math.random() * (§;u§ - 1);
            }
            else
            {
               this.§[7§ = 0.3 + Math.random() * (§;u§ - 0.3) * 0.3;
            }
            this.§0`§ = 0.2 + Math.random() * 2;
            this.§10§ = false;
         }
      }
      
      private function §;a§() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Sprite = null;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§[!#§ < §#§)
         {
            _loc2_ = this.§[!#§ / §#§;
         }
         else if(this.§[!#§ < §#§ + this.§[7§)
         {
            _loc5_ = (§;u§ + this.§[7§) / (§;u§ * 2);
            _loc2_ = 1 - _loc5_ + Math.random() * _loc5_;
         }
         else if(this.§[!#§ < §#§ + this.§[7§ + §&3§)
         {
            _loc2_ = 1 - (this.§[!#§ - (§#§ + this.§[7§)) / §&3§;
         }
         this.§4!?§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         _loc3_ = (_loc3_ << 16) + (_loc3_ << 8) + _loc3_;
         if(this.§[!#§ > §;u§)
         {
            if(§9!6§.numChildren > 0)
            {
               if(_loc6_ = §9!6§.getChildAt(0) as Sprite)
               {
                  _loc6_.removeChild(this.§4!?§,true);
               }
            }
            this.§4!?§ = null;
            _loc3_ = 16777215;
            this.§[!#§ = -(2 + 20 * Math.random());
         }
         var _loc4_:int = §9!6§.numChildren - 1;
         while(_loc4_ >= 1)
         {
            _loc1_ = §9!6§.getChildAt(_loc4_);
            _loc1_.color = _loc3_;
            _loc4_--;
         }
      }
      
      private function §=0§() : void
      {
         if(this.§[!#§ > this.§0`§)
         {
            if(!this.§10§)
            {
               §3V§.§7!1§("Lightning04","ChannelExplosions");
               this.§10§ = true;
            }
         }
      }
   }
}
