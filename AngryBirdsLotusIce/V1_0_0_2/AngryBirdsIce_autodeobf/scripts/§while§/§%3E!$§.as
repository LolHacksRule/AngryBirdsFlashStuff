package §while§
{
   import §&V§.§,w§;
   import §>Z§.§2;§;
   import §@!=§.§4G§;
   import §@!=§.DisplayObject;
   import §@!=§.Sprite;
   import flash.geom.Rectangle;
   
   public class §>!$§ extends §+!;§
   {
      
      private static const §-3§:Number = 2.5;
      
      private static const §#V§:Number = 0.15;
      
      private static const §?j§:Number = 0.25;
       
      
      private var §>o§:Number;
      
      private var each:Number;
      
      private var §`!7§:§4G§;
      
      private var §!!B§:Boolean;
      
      private var §,!,§:Number;
      
      public function §>!$§(param1:String, param2:Number, param3:§,w§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§>o§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§`!7§ == null)
         {
            if(this.§>o§ > 0)
            {
               this.§00§();
            }
         }
         else if(this.§`!7§)
         {
            this.§@!$§();
         }
         this.§<I§();
         this.§>o§ += param1 / 1000;
      }
      
      private function §00§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§8<§.numChildren > 0)
         {
            _loc1_ = §8<§.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               this.§`!7§ = new §4G§(_loc2_.width,_loc2_.height,16777215);
               this.§`!7§.x = _loc2_.left;
               this.§`!7§.y = _loc2_.top;
               this.§`!7§.alpha = 0;
               _loc1_.addChild(this.§`!7§);
            }
            this.§>o§ = 0;
            if(Math.random() < 0.25)
            {
               this.each = 1 + Math.random() * (§-3§ - 1);
            }
            else
            {
               this.each = 0.3 + Math.random() * (§-3§ - 0.3) * 0.3;
            }
            this.§,!,§ = 0.2 + Math.random() * 2;
            this.§!!B§ = false;
         }
      }
      
      private function §@!$§() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Sprite = null;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§>o§ < §#V§)
         {
            _loc2_ = this.§>o§ / §#V§;
         }
         else if(this.§>o§ < §#V§ + this.each)
         {
            _loc5_ = (§-3§ + this.each) / (§-3§ * 2);
            _loc2_ = 1 - _loc5_ + Math.random() * _loc5_;
         }
         else if(this.§>o§ < §#V§ + this.each + §?j§)
         {
            _loc2_ = 1 - (this.§>o§ - (§#V§ + this.each)) / §?j§;
         }
         this.§`!7§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         _loc3_ = (_loc3_ << 16) + (_loc3_ << 8) + _loc3_;
         if(this.§>o§ > §-3§)
         {
            if(§8<§.numChildren > 0)
            {
               if(_loc6_ = §8<§.getChildAt(0) as Sprite)
               {
                  _loc6_.removeChild(this.§`!7§,true);
               }
            }
            this.§`!7§ = null;
            _loc3_ = 16777215;
            this.§>o§ = -(2 + 20 * Math.random());
         }
         var _loc4_:int = §8<§.numChildren - 1;
         while(_loc4_ >= 1)
         {
            _loc1_ = §8<§.getChildAt(_loc4_);
            _loc1_.color = _loc3_;
            _loc4_--;
         }
      }
      
      private function §<I§() : void
      {
         if(this.§>o§ > this.§,!,§)
         {
            if(!this.§!!B§)
            {
               §2;§.§#5§("Lightning04","ChannelExplosions");
               this.§!!B§ = true;
            }
         }
      }
   }
}
