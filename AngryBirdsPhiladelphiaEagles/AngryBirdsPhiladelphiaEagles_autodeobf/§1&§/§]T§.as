package §1&§
{
   import § N§.§6!O§;
   import § N§.DisplayObject;
   import § N§.Sprite;
   import §#e§.§'?§;
   import §&^§.§[!7§;
   import flash.geom.Rectangle;
   
   public class §]T§ extends §["§
   {
      
      private static const §5!0§:Number = 2.5;
      
      private static const §`!J§:Number = 0.15;
      
      private static const §#!§:Number = 0.25;
       
      
      private var §!U§:Number;
      
      private var § s§:Number;
      
      private var §;W§:§6!O§;
      
      private var §+J§:Boolean;
      
      private var §!!§:Number;
      
      public function §]T§(param1:String, param2:Number, param3:§'?§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§!U§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§;W§ == null)
         {
            if(this.§!U§ > 0)
            {
               this.§8!-§();
            }
         }
         else if(this.§;W§)
         {
            this.§8D§();
         }
         this.§57§();
         this.§!U§ += param1 / 1000;
      }
      
      private function §8!-§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§3!>§.numChildren > 0)
         {
            _loc1_ = §3!>§.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               this.§;W§ = new §6!O§(_loc2_.width,_loc2_.height,16777215);
               this.§;W§.x = _loc2_.left;
               this.§;W§.y = _loc2_.top;
               this.§;W§.alpha = 0;
               _loc1_.addChild(this.§;W§);
            }
            this.§!U§ = 0;
            if(Math.random() < 0.25)
            {
               this.§ s§ = 1 + Math.random() * (§5!0§ - 1);
            }
            else
            {
               this.§ s§ = 0.3 + Math.random() * (§5!0§ - 0.3) * 0.3;
            }
            this.§!!§ = 0.2 + Math.random() * 2;
            this.§+J§ = false;
         }
      }
      
      private function §8D§() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Sprite = null;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§!U§ < §`!J§)
         {
            _loc2_ = this.§!U§ / §`!J§;
         }
         else if(this.§!U§ < §`!J§ + this.§ s§)
         {
            _loc5_ = (§5!0§ + this.§ s§) / (§5!0§ * 2);
            _loc2_ = 1 - _loc5_ + Math.random() * _loc5_;
         }
         else if(this.§!U§ < §`!J§ + this.§ s§ + §#!§)
         {
            _loc2_ = 1 - (this.§!U§ - (§`!J§ + this.§ s§)) / §#!§;
         }
         this.§;W§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         _loc3_ = (_loc3_ << 16) + (_loc3_ << 8) + _loc3_;
         if(this.§!U§ > §5!0§)
         {
            if(§3!>§.numChildren > 0)
            {
               if(_loc6_ = §3!>§.getChildAt(0) as Sprite)
               {
                  _loc6_.removeChild(this.§;W§,true);
               }
            }
            this.§;W§ = null;
            _loc3_ = 16777215;
            this.§!U§ = -(2 + 20 * Math.random());
         }
         var _loc4_:int = §3!>§.numChildren - 1;
         while(_loc4_ >= 1)
         {
            _loc1_ = §3!>§.getChildAt(_loc4_);
            _loc1_.color = _loc3_;
            _loc4_--;
         }
      }
      
      private function §57§() : void
      {
         if(this.§!U§ > this.§!!§)
         {
            if(!this.§+J§)
            {
               §[!7§.§,!5§("Lightning04","ChannelExplosions");
               this.§+J§ = true;
            }
         }
      }
   }
}
