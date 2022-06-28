package §6!@§
{
   import §%-§.DisplayObject;
   import §%-§.Sprite;
   import §%-§.§^K§;
   import §2!<§.§?!?§;
   import §<h§.§;@§;
   import flash.geom.Rectangle;
   
   public class §;Y§ extends §5l§
   {
      
      private static const §+-§:Number = 2.5;
      
      private static const §0+§:Number = 0.15;
      
      private static const §!<§:Number = 0.25;
       
      
      private var §<X§:Number;
      
      private var §<!2§:Number;
      
      private var §3h§:§^K§;
      
      private var §!h§:Boolean;
      
      private var §;j§:Number;
      
      public function §;Y§(param1:String, param2:Number, param3:§;@§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§<X§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§3h§ == null)
         {
            if(this.§<X§ > 0)
            {
               this.§?9§();
            }
         }
         else if(this.§3h§)
         {
            this.§"U§();
         }
         this.§?p§();
         this.§<X§ += param1 / 1000;
      }
      
      private function §?9§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§`6§.numChildren > 0)
         {
            _loc1_ = §`6§.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               this.§3h§ = new §^K§(_loc2_.width,_loc2_.height,16777215);
               this.§3h§.x = _loc2_.left;
               this.§3h§.y = _loc2_.top;
               this.§3h§.alpha = 0;
               _loc1_.addChild(this.§3h§);
            }
            this.§<X§ = 0;
            if(Math.random() < 0.25)
            {
               this.§<!2§ = 1 + Math.random() * (§+-§ - 1);
            }
            else
            {
               this.§<!2§ = 0.3 + Math.random() * (§+-§ - 0.3) * 0.3;
            }
            this.§;j§ = 0.2 + Math.random() * 2;
            this.§!h§ = false;
         }
      }
      
      private function §"U§() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Sprite = null;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§<X§ < §0+§)
         {
            _loc2_ = this.§<X§ / §0+§;
         }
         else if(this.§<X§ < §0+§ + this.§<!2§)
         {
            _loc5_ = (§+-§ + this.§<!2§) / (§+-§ * 2);
            _loc2_ = 1 - _loc5_ + Math.random() * _loc5_;
         }
         else if(this.§<X§ < §0+§ + this.§<!2§ + §!<§)
         {
            _loc2_ = 1 - (this.§<X§ - (§0+§ + this.§<!2§)) / §!<§;
         }
         this.§3h§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         _loc3_ = (_loc3_ << 16) + (_loc3_ << 8) + _loc3_;
         if(this.§<X§ > §+-§)
         {
            if(§`6§.numChildren > 0)
            {
               if(_loc6_ = §`6§.getChildAt(0) as Sprite)
               {
                  _loc6_.removeChild(this.§3h§,true);
               }
            }
            this.§3h§ = null;
            _loc3_ = 16777215;
            this.§<X§ = -(2 + 20 * Math.random());
         }
         var _loc4_:int = §`6§.numChildren - 1;
         while(_loc4_ >= 1)
         {
            _loc1_ = §`6§.getChildAt(_loc4_);
            _loc1_.color = _loc3_;
            _loc4_--;
         }
      }
      
      private function §?p§() : void
      {
         if(this.§<X§ > this.§;j§)
         {
            if(!this.§!h§)
            {
               §?!?§.§9o§("Lightning04","ChannelExplosions");
               this.§!h§ = true;
            }
         }
      }
   }
}
