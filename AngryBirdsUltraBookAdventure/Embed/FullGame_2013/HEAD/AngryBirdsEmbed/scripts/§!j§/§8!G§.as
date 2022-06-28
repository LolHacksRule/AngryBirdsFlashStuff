package §!j§
{
   import §#X§.§,!F§;
   import §&o§.§<3§;
   import §&o§.DisplayObject;
   import §&o§.Sprite;
   import §9K§.§5!H§;
   import flash.geom.Rectangle;
   
   public class §8!G§ extends §;[§
   {
      
      private static const §=%§:Number = 2.5;
      
      private static const §;7§:Number = 0.15;
      
      private static const §%T§:Number = 0.25;
       
      
      private var §2!>§:Number;
      
      private var §!!§:Number;
      
      private var §0I§:§<3§;
      
      private var §[!§:Boolean;
      
      private var §,D§:Number;
      
      public function §8!G§(param1:String, param2:Number, param3:§5!H§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§2!>§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§0I§ == null)
         {
            if(this.§2!>§ > 0)
            {
               this.§3y§();
            }
         }
         else if(this.§0I§)
         {
            this.§7S§();
         }
         this.§%]§();
         this.§2!>§ += param1 / 1000;
      }
      
      private function §3y§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§'K§.numChildren > 0)
         {
            _loc1_ = §'K§.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               this.§0I§ = new §<3§(_loc2_.width,_loc2_.height,16777215);
               this.§0I§.x = _loc2_.left;
               this.§0I§.y = _loc2_.top;
               this.§0I§.alpha = 0;
               _loc1_.addChild(this.§0I§);
            }
            this.§2!>§ = 0;
            if(Math.random() < 0.25)
            {
               this.§!!§ = 1 + Math.random() * (§=%§ - 1);
            }
            else
            {
               this.§!!§ = 0.3 + Math.random() * (§=%§ - 0.3) * 0.3;
            }
            this.§,D§ = 0.2 + Math.random() * 2;
            this.§[!§ = false;
         }
      }
      
      private function §7S§() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Sprite = null;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§2!>§ < §;7§)
         {
            _loc2_ = this.§2!>§ / §;7§;
         }
         else if(this.§2!>§ < §;7§ + this.§!!§)
         {
            _loc5_ = (§=%§ + this.§!!§) / (§=%§ * 2);
            _loc2_ = 1 - _loc5_ + Math.random() * _loc5_;
         }
         else if(this.§2!>§ < §;7§ + this.§!!§ + §%T§)
         {
            _loc2_ = 1 - (this.§2!>§ - (§;7§ + this.§!!§)) / §%T§;
         }
         this.§0I§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         _loc3_ = (_loc3_ << 16) + (_loc3_ << 8) + _loc3_;
         if(this.§2!>§ > §=%§)
         {
            if(§'K§.numChildren > 0)
            {
               if(_loc6_ = §'K§.getChildAt(0) as Sprite)
               {
                  _loc6_.removeChild(this.§0I§,true);
               }
            }
            this.§0I§ = null;
            _loc3_ = 16777215;
            this.§2!>§ = -(2 + 20 * Math.random());
         }
         var _loc4_:int = §'K§.numChildren - 1;
         while(_loc4_ >= 1)
         {
            _loc1_ = §'K§.getChildAt(_loc4_);
            _loc1_.color = _loc3_;
            _loc4_--;
         }
      }
      
      private function §%]§() : void
      {
         if(this.§2!>§ > this.§,D§)
         {
            if(!this.§[!§)
            {
               §,!F§.§!!C§("Lightning04","ChannelExplosions");
               this.§[!§ = true;
            }
         }
      }
   }
}
