package §6!'§
{
   import §'k§.§ >§;
   import §9W§.§3g§;
   import §9W§.DisplayObject;
   import §9W§.Sprite;
   import §@D§.§6I§;
   import flash.geom.Rectangle;
   
   public class §2i§ extends §2!<§
   {
      
      private static const §"!E§:Number = 2.5;
      
      private static const §%!B§:Number = 0.15;
      
      private static const §?[§:Number = 0.25;
       
      
      private var §^>§:Number;
      
      private var §'!"§:Number;
      
      private var §&!9§:§3g§;
      
      private var §8o§:Boolean;
      
      private var §<!7§:Number;
      
      public function §2i§(param1:String, param2:Number, param3:§ >§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§^>§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§&!9§ == null)
         {
            if(this.§^>§ > 0)
            {
               this.§&v§();
            }
         }
         else if(this.§&!9§)
         {
            this.§ !!§();
         }
         this.§`1§();
         this.§^>§ += param1 / 1000;
      }
      
      private function §&v§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§=d§.numChildren > 0)
         {
            _loc1_ = §=d§.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               this.§&!9§ = new §3g§(_loc2_.width,_loc2_.height,16777215);
               this.§&!9§.x = _loc2_.left;
               this.§&!9§.y = _loc2_.top;
               this.§&!9§.alpha = 0;
               _loc1_.addChild(this.§&!9§);
            }
            this.§^>§ = 0;
            if(Math.random() < 0.25)
            {
               this.§'!"§ = 1 + Math.random() * (§"!E§ - 1);
            }
            else
            {
               this.§'!"§ = 0.3 + Math.random() * (§"!E§ - 0.3) * 0.3;
            }
            this.§<!7§ = 0.2 + Math.random() * 2;
            this.§8o§ = false;
         }
      }
      
      private function § !!§() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Sprite = null;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§^>§ < §%!B§)
         {
            _loc2_ = this.§^>§ / §%!B§;
         }
         else if(this.§^>§ < §%!B§ + this.§'!"§)
         {
            _loc5_ = (§"!E§ + this.§'!"§) / (§"!E§ * 2);
            _loc2_ = 1 - _loc5_ + Math.random() * _loc5_;
         }
         else if(this.§^>§ < §%!B§ + this.§'!"§ + §?[§)
         {
            _loc2_ = 1 - (this.§^>§ - (§%!B§ + this.§'!"§)) / §?[§;
         }
         this.§&!9§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         _loc3_ = (_loc3_ << 16) + (_loc3_ << 8) + _loc3_;
         if(this.§^>§ > §"!E§)
         {
            if(§=d§.numChildren > 0)
            {
               if(_loc6_ = §=d§.getChildAt(0) as Sprite)
               {
                  _loc6_.removeChild(this.§&!9§,true);
               }
            }
            this.§&!9§ = null;
            _loc3_ = 16777215;
            this.§^>§ = -(2 + 20 * Math.random());
         }
         var _loc4_:int = §=d§.numChildren - 1;
         while(_loc4_ >= 1)
         {
            _loc1_ = §=d§.getChildAt(_loc4_);
            _loc1_.color = _loc3_;
            _loc4_--;
         }
      }
      
      private function §`1§() : void
      {
         if(this.§^>§ > this.§<!7§)
         {
            if(!this.§8o§)
            {
               §6I§.§`$§("Lightning04","ChannelExplosions");
               this.§8o§ = true;
            }
         }
      }
   }
}
