package §1=§
{
   import §-!`§.§8!p§;
   import §-!`§.DisplayObject;
   import §-!`§.Sprite;
   import §1?§.§+!§;
   import §=U§.§3p§;
   import flash.geom.Rectangle;
   
   public class §'F§ extends §-d§
   {
      
      private static const §[5§:Number = 2.5;
      
      private static const §@!S§:Number = 0.15;
      
      private static const §;Y§:Number = 0.25;
       
      
      private var §#F§:Number;
      
      private var §^V§:Number;
      
      private var §#K§:§8!p§;
      
      private var §5!7§:Boolean;
      
      private var §#y§:Number;
      
      public function §'F§(param1:String, param2:Number, param3:§3p§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§#F§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§#K§ == null)
         {
            if(this.§#F§ > 0)
            {
               this.§^!,§();
            }
         }
         else if(this.§#K§)
         {
            this.§ !,§();
         }
         this.§<0§();
         this.§#F§ += param1 / 1000;
      }
      
      private function §^!,§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§?[§.numChildren > 0)
         {
            _loc1_ = §?[§.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               this.§#K§ = new §8!p§(_loc2_.width,_loc2_.height,16777215);
               this.§#K§.x = _loc2_.left;
               this.§#K§.y = _loc2_.top;
               this.§#K§.alpha = 0;
               _loc1_.addChild(this.§#K§);
            }
            this.§#F§ = 0;
            if(Math.random() < 0.25)
            {
               this.§^V§ = 1 + Math.random() * (§[5§ - 1);
            }
            else
            {
               this.§^V§ = 0.3 + Math.random() * (§[5§ - 0.3) * 0.3;
            }
            this.§#y§ = 0.2 + Math.random() * 2;
            this.§5!7§ = false;
         }
      }
      
      private function § !,§() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Sprite = null;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§#F§ < §@!S§)
         {
            _loc2_ = this.§#F§ / §@!S§;
         }
         else if(this.§#F§ < §@!S§ + this.§^V§)
         {
            _loc5_ = (§[5§ + this.§^V§) / (§[5§ * 2);
            _loc2_ = 1 - _loc5_ + Math.random() * _loc5_;
         }
         else if(this.§#F§ < §@!S§ + this.§^V§ + §;Y§)
         {
            _loc2_ = 1 - (this.§#F§ - (§@!S§ + this.§^V§)) / §;Y§;
         }
         this.§#K§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         _loc3_ = (_loc3_ << 16) + (_loc3_ << 8) + _loc3_;
         if(this.§#F§ > §[5§)
         {
            if(§?[§.numChildren > 0)
            {
               if(_loc6_ = §?[§.getChildAt(0) as Sprite)
               {
                  _loc6_.removeChild(this.§#K§,true);
               }
            }
            this.§#K§ = null;
            _loc3_ = 16777215;
            this.§#F§ = -(2 + 20 * Math.random());
         }
         var _loc4_:int = §?[§.numChildren - 1;
         while(_loc4_ >= 1)
         {
            _loc1_ = §?[§.getChildAt(_loc4_);
            _loc1_.color = _loc3_;
            _loc4_--;
         }
      }
      
      private function §<0§() : void
      {
         if(this.§#F§ > this.§#y§)
         {
            if(!this.§5!7§)
            {
               §+!§.§&!b§("Lightning04","ChannelExplosions");
               this.§5!7§ = true;
            }
         }
      }
   }
}
