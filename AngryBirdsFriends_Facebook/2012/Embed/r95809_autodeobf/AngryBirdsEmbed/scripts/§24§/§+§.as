package §24§
{
   import §->§.§7d§;
   import §->§.DisplayObject;
   import §->§.Sprite;
   import §1!8§.§;!>§;
   import §[!$§.§"!%§;
   import flash.geom.Rectangle;
   
   public class §+§ extends §6! §
   {
      
      private static const §7!F§:Number = 2.5;
      
      private static const §@_§:Number = 0.15;
      
      private static const §%!6§:Number = 0.25;
       
      
      private var §82§:Number;
      
      private var §&2§:Number;
      
      private var §@!#§:§7d§;
      
      private var §2s§:Boolean;
      
      private var §1!@§:Number;
      
      public function §+§(param1:String, param2:Number, param3:§"!%§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§82§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§@!#§ == null)
         {
            if(this.§82§ > 0)
            {
               this.§[P§();
            }
         }
         else if(this.§@!#§)
         {
            this.§!K§();
         }
         this.§&F§();
         this.§82§ += param1 / 1000;
      }
      
      private function §[P§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§&§.numChildren > 0)
         {
            _loc1_ = §&§.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               this.§@!#§ = new §7d§(_loc2_.width,_loc2_.height,16777215);
               this.§@!#§.x = _loc2_.left;
               this.§@!#§.y = _loc2_.top;
               this.§@!#§.alpha = 0;
               _loc1_.addChild(this.§@!#§);
            }
            this.§82§ = 0;
            if(Math.random() < 0.25)
            {
               this.§&2§ = 1 + Math.random() * (§7!F§ - 1);
            }
            else
            {
               this.§&2§ = 0.3 + Math.random() * (§7!F§ - 0.3) * 0.3;
            }
            this.§1!@§ = 0.2 + Math.random() * 2;
            this.§2s§ = false;
         }
      }
      
      private function §!K§() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Sprite = null;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§82§ < §@_§)
         {
            _loc2_ = this.§82§ / §@_§;
         }
         else if(this.§82§ < §@_§ + this.§&2§)
         {
            _loc5_ = (§7!F§ + this.§&2§) / (§7!F§ * 2);
            _loc2_ = 1 - _loc5_ + Math.random() * _loc5_;
         }
         else if(this.§82§ < §@_§ + this.§&2§ + §%!6§)
         {
            _loc2_ = 1 - (this.§82§ - (§@_§ + this.§&2§)) / §%!6§;
         }
         this.§@!#§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         _loc3_ = (_loc3_ << 16) + (_loc3_ << 8) + _loc3_;
         if(this.§82§ > §7!F§)
         {
            if(§&§.numChildren > 0)
            {
               if(_loc6_ = §&§.getChildAt(0) as Sprite)
               {
                  _loc6_.removeChild(this.§@!#§,true);
               }
            }
            this.§@!#§ = null;
            _loc3_ = 16777215;
            this.§82§ = -(2 + 20 * Math.random());
         }
         var _loc4_:int = §&§.numChildren - 1;
         while(_loc4_ >= 1)
         {
            _loc1_ = §&§.getChildAt(_loc4_);
            _loc1_.color = _loc3_;
            _loc4_--;
         }
      }
      
      private function §&F§() : void
      {
         if(this.§82§ > this.§1!@§)
         {
            if(!this.§2s§)
            {
               §;!>§.§#k§("Lightning04","ChannelExplosions");
               this.§2s§ = true;
            }
         }
      }
   }
}
