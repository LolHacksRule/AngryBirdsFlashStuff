package §2u§
{
   import §#!@§.§?h§;
   import §#!@§.DisplayObject;
   import §#!@§.Sprite;
   import §'0§.§]!2§;
   import §[v§.§0&§;
   import flash.geom.Rectangle;
   
   public class §!!§ extends §1@§
   {
      
      private static const §>!!§:Number = 2.5;
      
      private static const §0F§:Number = 0.15;
      
      private static const §!n§:Number = 0.25;
       
      
      private var §9?§:Number;
      
      private var §4B§:Number;
      
      private var §;=§:§?h§;
      
      private var §@!-§:Boolean;
      
      private var §;!L§:Number;
      
      public function §!!§(param1:String, param2:Number, param3:§0&§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§9?§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§;=§ == null)
         {
            if(this.§9?§ > 0)
            {
               this.§7T§();
            }
         }
         else if(this.§;=§)
         {
            this.§<4§();
         }
         this.§!<§();
         this.§9?§ += param1 / 1000;
      }
      
      private function §7T§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§7,§.numChildren > 0)
         {
            _loc1_ = §7,§.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               this.§;=§ = new §?h§(_loc2_.width,_loc2_.height,16777215);
               this.§;=§.x = _loc2_.left;
               this.§;=§.y = _loc2_.top;
               this.§;=§.alpha = 0;
               _loc1_.addChild(this.§;=§);
            }
            this.§9?§ = 0;
            if(Math.random() < 0.25)
            {
               this.§4B§ = 1 + Math.random() * (§>!!§ - 1);
            }
            else
            {
               this.§4B§ = 0.3 + Math.random() * (§>!!§ - 0.3) * 0.3;
            }
            this.§;!L§ = 0.2 + Math.random() * 2;
            this.§@!-§ = false;
         }
      }
      
      private function §<4§() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Sprite = null;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§9?§ < §0F§)
         {
            _loc2_ = this.§9?§ / §0F§;
         }
         else if(this.§9?§ < §0F§ + this.§4B§)
         {
            _loc5_ = (§>!!§ + this.§4B§) / (§>!!§ * 2);
            _loc2_ = 1 - _loc5_ + Math.random() * _loc5_;
         }
         else if(this.§9?§ < §0F§ + this.§4B§ + §!n§)
         {
            _loc2_ = 1 - (this.§9?§ - (§0F§ + this.§4B§)) / §!n§;
         }
         this.§;=§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         _loc3_ = (_loc3_ << 16) + (_loc3_ << 8) + _loc3_;
         if(this.§9?§ > §>!!§)
         {
            if(§7,§.numChildren > 0)
            {
               if(_loc6_ = §7,§.getChildAt(0) as Sprite)
               {
                  _loc6_.removeChild(this.§;=§,true);
               }
            }
            this.§;=§ = null;
            _loc3_ = 16777215;
            this.§9?§ = -(2 + 20 * Math.random());
         }
         var _loc4_:int = §7,§.numChildren - 1;
         while(_loc4_ >= 1)
         {
            _loc1_ = §7,§.getChildAt(_loc4_);
            _loc1_.color = _loc3_;
            _loc4_--;
         }
      }
      
      private function §!<§() : void
      {
         if(this.§9?§ > this.§;!L§)
         {
            if(!this.§@!-§)
            {
               §]!2§.§>!;§("Lightning04","ChannelExplosions");
               this.§@!-§ = true;
            }
         }
      }
   }
}
