package §"g§
{
   import §,!1§.§]e§;
   import §-!'§.§ s§;
   import §-!'§.DisplayObject;
   import §-!'§.Sprite;
   import §<A§.§'K§;
   import flash.geom.Rectangle;
   
   public class §;,§ extends §@!!§
   {
      
      private static const §'w§:Number = 2.5;
      
      private static const §^<§:Number = 0.15;
      
      private static const §-Q§:Number = 0.25;
       
      
      private var §>!9§:Number;
      
      private var §return§:Number;
      
      private var §^U§:§ s§;
      
      private var §&9§:Boolean;
      
      private var §4D§:Number;
      
      public function §;,§(param1:String, param2:Number, param3:§'K§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§>!9§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§^U§ == null)
         {
            if(this.§>!9§ > 0)
            {
               this.§-]§();
            }
         }
         else if(this.§^U§)
         {
            this.§=!'§();
         }
         this.§4K§();
         this.§>!9§ += param1 / 1000;
      }
      
      private function §-]§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§`A§.numChildren > 0)
         {
            _loc1_ = §`A§.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               this.§^U§ = new § s§(_loc2_.width,_loc2_.height,16777215);
               this.§^U§.x = _loc2_.left;
               this.§^U§.y = _loc2_.top;
               this.§^U§.alpha = 0;
               _loc1_.addChild(this.§^U§);
            }
            this.§>!9§ = 0;
            if(Math.random() < 0.25)
            {
               this.§return§ = 1 + Math.random() * (§'w§ - 1);
            }
            else
            {
               this.§return§ = 0.3 + Math.random() * (§'w§ - 0.3) * 0.3;
            }
            this.§4D§ = 0.2 + Math.random() * 2;
            this.§&9§ = false;
         }
      }
      
      private function §=!'§() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Sprite = null;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§>!9§ < §^<§)
         {
            _loc2_ = this.§>!9§ / §^<§;
         }
         else if(this.§>!9§ < §^<§ + this.§return§)
         {
            _loc5_ = (§'w§ + this.§return§) / (§'w§ * 2);
            _loc2_ = 1 - _loc5_ + Math.random() * _loc5_;
         }
         else if(this.§>!9§ < §^<§ + this.§return§ + §-Q§)
         {
            _loc2_ = 1 - (this.§>!9§ - (§^<§ + this.§return§)) / §-Q§;
         }
         this.§^U§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         _loc3_ = (_loc3_ << 16) + (_loc3_ << 8) + _loc3_;
         if(this.§>!9§ > §'w§)
         {
            if(§`A§.numChildren > 0)
            {
               if(_loc6_ = §`A§.getChildAt(0) as Sprite)
               {
                  _loc6_.removeChild(this.§^U§,true);
               }
            }
            this.§^U§ = null;
            _loc3_ = 16777215;
            this.§>!9§ = -(2 + 20 * Math.random());
         }
         var _loc4_:int = §`A§.numChildren - 1;
         while(_loc4_ >= 1)
         {
            _loc1_ = §`A§.getChildAt(_loc4_);
            _loc1_.color = _loc3_;
            _loc4_--;
         }
      }
      
      private function §4K§() : void
      {
         if(this.§>!9§ > this.§4D§)
         {
            if(!this.§&9§)
            {
               §]e§.§<9§("Lightning04","ChannelExplosions");
               this.§&9§ = true;
            }
         }
      }
   }
}
