package §`6§
{
   import §1n§.§5#§;
   import §3O§.§@6§;
   import §^V§.§09§;
   import §^V§.DisplayObject;
   import §^V§.Sprite;
   import flash.geom.Rectangle;
   
   public class §0J§ extends §8!!§
   {
      
      private static const §1,§:Number = 2.5;
      
      private static const § y§:Number = 0.15;
      
      private static const §2!@§:Number = 0.25;
       
      
      private var §7;§:Number;
      
      private var §4S§:Number;
      
      private var §`!"§:§09§;
      
      private var §!'§:Boolean;
      
      private var §3n§:Number;
      
      public function §0J§(param1:String, param2:Number, param3:§5#§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§7;§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§`!"§ == null)
         {
            if(this.§7;§ > 0)
            {
               this.§4!?§();
            }
         }
         else if(this.§`!"§)
         {
            this.§+!D§();
         }
         this.§;!C§();
         this.§7;§ += param1 / 1000;
      }
      
      private function §4!?§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§`;§.numChildren > 0)
         {
            _loc1_ = §`;§.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               this.§`!"§ = new §09§(_loc2_.width,_loc2_.height,16777215);
               this.§`!"§.x = _loc2_.left;
               this.§`!"§.y = _loc2_.top;
               this.§`!"§.alpha = 0;
               _loc1_.addChild(this.§`!"§);
            }
            this.§7;§ = 0;
            if(Math.random() < 0.25)
            {
               this.§4S§ = 1 + Math.random() * (§1,§ - 1);
            }
            else
            {
               this.§4S§ = 0.3 + Math.random() * (§1,§ - 0.3) * 0.3;
            }
            this.§3n§ = 0.2 + Math.random() * 2;
            this.§!'§ = false;
         }
      }
      
      private function §+!D§() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Sprite = null;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§7;§ < § y§)
         {
            _loc2_ = this.§7;§ / § y§;
         }
         else if(this.§7;§ < § y§ + this.§4S§)
         {
            _loc5_ = (§1,§ + this.§4S§) / (§1,§ * 2);
            _loc2_ = 1 - _loc5_ + Math.random() * _loc5_;
         }
         else if(this.§7;§ < § y§ + this.§4S§ + §2!@§)
         {
            _loc2_ = 1 - (this.§7;§ - (§ y§ + this.§4S§)) / §2!@§;
         }
         this.§`!"§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         _loc3_ = (_loc3_ << 16) + (_loc3_ << 8) + _loc3_;
         if(this.§7;§ > §1,§)
         {
            if(§`;§.numChildren > 0)
            {
               if(_loc6_ = §`;§.getChildAt(0) as Sprite)
               {
                  _loc6_.removeChild(this.§`!"§,true);
               }
            }
            this.§`!"§ = null;
            _loc3_ = 16777215;
            this.§7;§ = -(2 + 20 * Math.random());
         }
         var _loc4_:int = §`;§.numChildren - 1;
         while(_loc4_ >= 1)
         {
            _loc1_ = §`;§.getChildAt(_loc4_);
            _loc1_.color = _loc3_;
            _loc4_--;
         }
      }
      
      private function §;!C§() : void
      {
         if(this.§7;§ > this.§3n§)
         {
            if(!this.§!'§)
            {
               §@6§.§0+§("Lightning04","ChannelExplosions");
               this.§!'§ = true;
            }
         }
      }
   }
}
