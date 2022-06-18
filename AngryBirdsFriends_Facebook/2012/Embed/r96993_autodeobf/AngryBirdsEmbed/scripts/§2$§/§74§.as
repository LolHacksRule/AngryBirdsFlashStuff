package §2$§
{
   import §'N§.§^]§;
   import §6u§.§3W§;
   import §]!6§.§8D§;
   import §]!6§.DisplayObject;
   import §]!6§.Sprite;
   import flash.geom.Rectangle;
   
   public class §74§ extends §+u§
   {
      
      private static const §8;§:Number = 2.5;
      
      private static const §5H§:Number = 0.15;
      
      private static const §]v§:Number = 0.25;
       
      
      private var §5Q§:Number;
      
      private var §&4§:Number;
      
      private var §0!3§:§8D§;
      
      private var §76§:Boolean;
      
      private var §;i§:Number;
      
      public function §74§(param1:String, param2:Number, param3:§3W§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§5Q§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§0!3§ == null)
         {
            if(this.§5Q§ > 0)
            {
               this.§!!0§();
            }
         }
         else if(this.§0!3§)
         {
            this.§2K§();
         }
         this.§in§();
         this.§5Q§ += param1 / 1000;
      }
      
      private function §!!0§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§>Z§.numChildren > 0)
         {
            _loc1_ = §>Z§.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               this.§0!3§ = new §8D§(_loc2_.width,_loc2_.height,16777215);
               this.§0!3§.x = _loc2_.left;
               this.§0!3§.y = _loc2_.top;
               this.§0!3§.alpha = 0;
               _loc1_.addChild(this.§0!3§);
            }
            this.§5Q§ = 0;
            if(Math.random() < 0.25)
            {
               this.§&4§ = 1 + Math.random() * (§8;§ - 1);
            }
            else
            {
               this.§&4§ = 0.3 + Math.random() * (§8;§ - 0.3) * 0.3;
            }
            this.§;i§ = 0.2 + Math.random() * 2;
            this.§76§ = false;
         }
      }
      
      private function §2K§() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Sprite = null;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§5Q§ < §5H§)
         {
            _loc2_ = this.§5Q§ / §5H§;
         }
         else if(this.§5Q§ < §5H§ + this.§&4§)
         {
            _loc5_ = (§8;§ + this.§&4§) / (§8;§ * 2);
            _loc2_ = 1 - _loc5_ + Math.random() * _loc5_;
         }
         else if(this.§5Q§ < §5H§ + this.§&4§ + §]v§)
         {
            _loc2_ = 1 - (this.§5Q§ - (§5H§ + this.§&4§)) / §]v§;
         }
         this.§0!3§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         _loc3_ = (_loc3_ << 16) + (_loc3_ << 8) + _loc3_;
         if(this.§5Q§ > §8;§)
         {
            if(§>Z§.numChildren > 0)
            {
               if(_loc6_ = §>Z§.getChildAt(0) as Sprite)
               {
                  _loc6_.removeChild(this.§0!3§,true);
               }
            }
            this.§0!3§ = null;
            _loc3_ = 16777215;
            this.§5Q§ = -(2 + 20 * Math.random());
         }
         var _loc4_:int = §>Z§.numChildren - 1;
         while(_loc4_ >= 1)
         {
            _loc1_ = §>Z§.getChildAt(_loc4_);
            _loc1_.color = _loc3_;
            _loc4_--;
         }
      }
      
      private function §in§() : void
      {
         if(this.§5Q§ > this.§;i§)
         {
            if(!this.§76§)
            {
               §^]§.§%!G§("Lightning04","ChannelExplosions");
               this.§76§ = true;
            }
         }
      }
   }
}
