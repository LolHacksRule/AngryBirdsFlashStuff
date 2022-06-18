package §"§
{
   import §1!?§.§7_§;
   import §<k§.§!1§;
   import §<k§.DisplayObject;
   import §<k§.Sprite;
   import §[n§.§?+§;
   import flash.geom.Rectangle;
   
   public class §+C§ extends §3o§
   {
      
      private static const §+E§:Number = 2.5;
      
      private static const §0e§:Number = 0.15;
      
      private static const §3I§:Number = 0.25;
       
      
      private var §27§:Number;
      
      private var §8B§:Number;
      
      private var §%!§:§!1§;
      
      private var §8G§:Boolean;
      
      private var §'L§:Number;
      
      public function §+C§(param1:String, param2:Number, param3:§?+§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§27§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§%!§ == null)
         {
            if(this.§27§ > 0)
            {
               this.§9!4§();
            }
         }
         else if(this.§%!§)
         {
            this.§5L§();
         }
         this.§<+§();
         this.§27§ += param1 / 1000;
      }
      
      private function §9!4§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§-x§.numChildren > 0)
         {
            _loc1_ = §-x§.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               this.§%!§ = new §!1§(_loc2_.width,_loc2_.height,16777215);
               this.§%!§.x = _loc2_.left;
               this.§%!§.y = _loc2_.top;
               this.§%!§.alpha = 0;
               _loc1_.addChild(this.§%!§);
            }
            this.§27§ = 0;
            if(Math.random() < 0.25)
            {
               this.§8B§ = 1 + Math.random() * (§+E§ - 1);
            }
            else
            {
               this.§8B§ = 0.3 + Math.random() * (§+E§ - 0.3) * 0.3;
            }
            this.§'L§ = 0.2 + Math.random() * 2;
            this.§8G§ = false;
         }
      }
      
      private function §5L§() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Sprite = null;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§27§ < §0e§)
         {
            _loc2_ = this.§27§ / §0e§;
         }
         else if(this.§27§ < §0e§ + this.§8B§)
         {
            _loc5_ = (§+E§ + this.§8B§) / (§+E§ * 2);
            _loc2_ = 1 - _loc5_ + Math.random() * _loc5_;
         }
         else if(this.§27§ < §0e§ + this.§8B§ + §3I§)
         {
            _loc2_ = 1 - (this.§27§ - (§0e§ + this.§8B§)) / §3I§;
         }
         this.§%!§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         _loc3_ = (_loc3_ << 16) + (_loc3_ << 8) + _loc3_;
         if(this.§27§ > §+E§)
         {
            if(§-x§.numChildren > 0)
            {
               if(_loc6_ = §-x§.getChildAt(0) as Sprite)
               {
                  _loc6_.removeChild(this.§%!§,true);
               }
            }
            this.§%!§ = null;
            _loc3_ = 16777215;
            this.§27§ = -(2 + 20 * Math.random());
         }
         var _loc4_:int = §-x§.numChildren - 1;
         while(_loc4_ >= 1)
         {
            _loc1_ = §-x§.getChildAt(_loc4_);
            _loc1_.color = _loc3_;
            _loc4_--;
         }
      }
      
      private function §<+§() : void
      {
         if(this.§27§ > this.§'L§)
         {
            if(!this.§8G§)
            {
               §7_§.§"u§("Lightning04","ChannelExplosions");
               this.§8G§ = true;
            }
         }
      }
   }
}
