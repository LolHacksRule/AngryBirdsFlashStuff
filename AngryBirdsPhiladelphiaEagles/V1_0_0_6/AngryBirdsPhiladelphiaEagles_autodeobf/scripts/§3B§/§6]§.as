package §3B§
{
   import §#!0§.§#-§;
   import §4!0§.§3§;
   import §86§.§=u§;
   import §86§.DisplayObject;
   import §86§.Sprite;
   import flash.geom.Rectangle;
   
   public class §6]§ extends §;w§
   {
      
      private static const §4v§:Number = 2.5;
      
      private static const §"!1§:Number = 0.15;
      
      private static const §else §:Number = 0.25;
       
      
      private var §`G§:Number;
      
      private var §9=§:Number;
      
      private var §=7§:§=u§;
      
      private var §!o§:Boolean;
      
      private var §;! §:Number;
      
      public function §6]§(param1:String, param2:Number, param3:§3§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§`G§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§=7§ == null)
         {
            if(this.§`G§ > 0)
            {
               this.§#!@§();
            }
         }
         else if(this.§=7§)
         {
            this.§"M§();
         }
         this.§,c§();
         this.§`G§ += param1 / 1000;
      }
      
      private function §#!@§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§8?§.numChildren > 0)
         {
            _loc1_ = §8?§.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               this.§=7§ = new §=u§(_loc2_.width,_loc2_.height,16777215);
               this.§=7§.x = _loc2_.left;
               this.§=7§.y = _loc2_.top;
               this.§=7§.alpha = 0;
               _loc1_.addChild(this.§=7§);
            }
            this.§`G§ = 0;
            if(Math.random() < 0.25)
            {
               this.§9=§ = 1 + Math.random() * (§4v§ - 1);
            }
            else
            {
               this.§9=§ = 0.3 + Math.random() * (§4v§ - 0.3) * 0.3;
            }
            this.§;! § = 0.2 + Math.random() * 2;
            this.§!o§ = false;
         }
      }
      
      private function §"M§() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Sprite = null;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§`G§ < §"!1§)
         {
            _loc2_ = this.§`G§ / §"!1§;
         }
         else if(this.§`G§ < §"!1§ + this.§9=§)
         {
            _loc5_ = (§4v§ + this.§9=§) / (§4v§ * 2);
            _loc2_ = 1 - _loc5_ + Math.random() * _loc5_;
         }
         else if(this.§`G§ < §"!1§ + this.§9=§ + §else §)
         {
            _loc2_ = 1 - (this.§`G§ - (§"!1§ + this.§9=§)) / §else §;
         }
         this.§=7§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         _loc3_ = (_loc3_ << 16) + (_loc3_ << 8) + _loc3_;
         if(this.§`G§ > §4v§)
         {
            if(§8?§.numChildren > 0)
            {
               if(_loc6_ = §8?§.getChildAt(0) as Sprite)
               {
                  _loc6_.removeChild(this.§=7§,true);
               }
            }
            this.§=7§ = null;
            _loc3_ = 16777215;
            this.§`G§ = -(2 + 20 * Math.random());
         }
         var _loc4_:int = §8?§.numChildren - 1;
         while(_loc4_ >= 1)
         {
            _loc1_ = §8?§.getChildAt(_loc4_);
            _loc1_.color = _loc3_;
            _loc4_--;
         }
      }
      
      private function §,c§() : void
      {
         if(this.§`G§ > this.§;! §)
         {
            if(!this.§!o§)
            {
               §#-§.§-!'§("Lightning04","ChannelExplosions");
               this.§!o§ = true;
            }
         }
      }
   }
}
