package §='§
{
   import §+f§.§4!8§;
   import §4G§.§5T§;
   import §4G§.DisplayObject;
   import §4G§.Sprite;
   import §<!4§.§25§;
   import flash.geom.Rectangle;
   
   public class § s§ extends §7A§
   {
      
      private static const §+1§:Number = 2.5;
      
      private static const §<§:Number = 0.15;
      
      private static const §'L§:Number = 0.25;
       
      
      private var §4?§:Number;
      
      private var §8m§:Number;
      
      private var §-@§:§5T§;
      
      private var §5!=§:Boolean;
      
      private var §'C§:Number;
      
      public function § s§(param1:String, param2:Number, param3:§4!8§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§4?§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§-@§ == null)
         {
            if(this.§4?§ > 0)
            {
               this.§6'§();
            }
         }
         else if(this.§-@§)
         {
            this.§6K§();
         }
         this.§=!!§();
         this.§4?§ += param1 / 1000;
      }
      
      private function §6'§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§2D§.numChildren > 0)
         {
            _loc1_ = §2D§.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               this.§-@§ = new §5T§(_loc2_.width,_loc2_.height,16777215);
               this.§-@§.x = _loc2_.left;
               this.§-@§.y = _loc2_.top;
               this.§-@§.alpha = 0;
               _loc1_.addChild(this.§-@§);
            }
            this.§4?§ = 0;
            if(Math.random() < 0.25)
            {
               this.§8m§ = 1 + Math.random() * (§+1§ - 1);
            }
            else
            {
               this.§8m§ = 0.3 + Math.random() * (§+1§ - 0.3) * 0.3;
            }
            this.§'C§ = 0.2 + Math.random() * 2;
            this.§5!=§ = false;
         }
      }
      
      private function §6K§() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Sprite = null;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§4?§ < §<§)
         {
            _loc2_ = this.§4?§ / §<§;
         }
         else if(this.§4?§ < §<§ + this.§8m§)
         {
            _loc5_ = (§+1§ + this.§8m§) / (§+1§ * 2);
            _loc2_ = 1 - _loc5_ + Math.random() * _loc5_;
         }
         else if(this.§4?§ < §<§ + this.§8m§ + §'L§)
         {
            _loc2_ = 1 - (this.§4?§ - (§<§ + this.§8m§)) / §'L§;
         }
         this.§-@§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         _loc3_ = (_loc3_ << 16) + (_loc3_ << 8) + _loc3_;
         if(this.§4?§ > §+1§)
         {
            if(§2D§.numChildren > 0)
            {
               if(_loc6_ = §2D§.getChildAt(0) as Sprite)
               {
                  _loc6_.removeChild(this.§-@§,true);
               }
            }
            this.§-@§ = null;
            _loc3_ = 16777215;
            this.§4?§ = -(2 + 20 * Math.random());
         }
         var _loc4_:int = §2D§.numChildren - 1;
         while(_loc4_ >= 1)
         {
            _loc1_ = §2D§.getChildAt(_loc4_);
            _loc1_.color = _loc3_;
            _loc4_--;
         }
      }
      
      private function §=!!§() : void
      {
         if(this.§4?§ > this.§'C§)
         {
            if(!this.§5!=§)
            {
               §25§.§#f§("Lightning04","ChannelExplosions");
               this.§5!=§ = true;
            }
         }
      }
   }
}
