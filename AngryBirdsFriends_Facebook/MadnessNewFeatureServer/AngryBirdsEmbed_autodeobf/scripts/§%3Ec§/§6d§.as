package §>c§
{
   import §#?§.§6!4§;
   import §+[§.§%G§;
   import §90§.§0!'§;
   import §90§.DisplayObject;
   import §90§.Sprite;
   import flash.geom.Rectangle;
   
   public class §6d§ extends §1!>§
   {
      
      private static const §!8§:Number = 2.5;
      
      private static const §4!9§:Number = 0.15;
      
      private static const §9!;§:Number = 0.25;
       
      
      private var §-8§:Number;
      
      private var §0!"§:Number;
      
      private var §-Z§:§0!'§;
      
      private var §4?§:Boolean;
      
      private var §3!A§:Number;
      
      public function §6d§(param1:String, param2:Number, param3:§6!4§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§-8§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§-Z§ == null)
         {
            if(this.§-8§ > 0)
            {
               this.§4S§();
            }
         }
         else if(this.§-Z§)
         {
            this.§7_§();
         }
         this.§7r§();
         this.§-8§ += param1 / 1000;
      }
      
      private function §4S§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§ U§.numChildren > 0)
         {
            _loc1_ = § U§.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               this.§-Z§ = new §0!'§(_loc2_.width,_loc2_.height,16777215);
               this.§-Z§.x = _loc2_.left;
               this.§-Z§.y = _loc2_.top;
               this.§-Z§.alpha = 0;
               _loc1_.addChild(this.§-Z§);
            }
            this.§-8§ = 0;
            if(Math.random() < 0.25)
            {
               this.§0!"§ = 1 + Math.random() * (§!8§ - 1);
            }
            else
            {
               this.§0!"§ = 0.3 + Math.random() * (§!8§ - 0.3) * 0.3;
            }
            this.§3!A§ = 0.2 + Math.random() * 2;
            this.§4?§ = false;
         }
      }
      
      private function §7_§() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Sprite = null;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§-8§ < §4!9§)
         {
            _loc2_ = this.§-8§ / §4!9§;
         }
         else if(this.§-8§ < §4!9§ + this.§0!"§)
         {
            _loc5_ = (§!8§ + this.§0!"§) / (§!8§ * 2);
            _loc2_ = 1 - _loc5_ + Math.random() * _loc5_;
         }
         else if(this.§-8§ < §4!9§ + this.§0!"§ + §9!;§)
         {
            _loc2_ = 1 - (this.§-8§ - (§4!9§ + this.§0!"§)) / §9!;§;
         }
         this.§-Z§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         _loc3_ = (_loc3_ << 16) + (_loc3_ << 8) + _loc3_;
         if(this.§-8§ > §!8§)
         {
            if(§ U§.numChildren > 0)
            {
               if(_loc6_ = § U§.getChildAt(0) as Sprite)
               {
                  _loc6_.removeChild(this.§-Z§,true);
               }
            }
            this.§-Z§ = null;
            _loc3_ = 16777215;
            this.§-8§ = -(2 + 20 * Math.random());
         }
         var _loc4_:int = § U§.numChildren - 1;
         while(_loc4_ >= 1)
         {
            _loc1_ = § U§.getChildAt(_loc4_);
            _loc1_.color = _loc3_;
            _loc4_--;
         }
      }
      
      private function §7r§() : void
      {
         if(this.§-8§ > this.§3!A§)
         {
            if(!this.§4?§)
            {
               §%G§.§'[§("Lightning04","ChannelExplosions");
               this.§4?§ = true;
            }
         }
      }
   }
}
