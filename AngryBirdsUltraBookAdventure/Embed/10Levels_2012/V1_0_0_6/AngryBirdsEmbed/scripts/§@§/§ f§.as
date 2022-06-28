package §@§
{
   import §#h§.§ !H§;
   import §,_§.§-!!§;
   import §,_§.DisplayObject;
   import §,_§.Sprite;
   import §5`§.§?y§;
   import flash.geom.Rectangle;
   
   public class § f§ extends §5r§
   {
      
      private static const §8!5§:Number = 2.5;
      
      private static const §]f§:Number = 0.15;
      
      private static const §&-§:Number = 0.25;
       
      
      private var §1! §:Number;
      
      private var §76§:Number;
      
      private var §2%§:§-!!§;
      
      private var §6^§:Boolean;
      
      private var §7!'§:Number;
      
      public function § f§(param1:String, param2:Number, param3:§?y§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§1! § = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§2%§ == null)
         {
            if(this.§1! § > 0)
            {
               this.§@!A§();
            }
         }
         else if(this.§2%§)
         {
            this.§6E§();
         }
         this.§!;§();
         this.§1! § += param1 / 1000;
      }
      
      private function §@!A§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§7s§.numChildren > 0)
         {
            _loc1_ = §7s§.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               this.§2%§ = new §-!!§(_loc2_.width,_loc2_.height,16777215);
               this.§2%§.x = _loc2_.left;
               this.§2%§.y = _loc2_.top;
               this.§2%§.alpha = 0;
               _loc1_.addChild(this.§2%§);
            }
            this.§1! § = 0;
            if(Math.random() < 0.25)
            {
               this.§76§ = 1 + Math.random() * (§8!5§ - 1);
            }
            else
            {
               this.§76§ = 0.3 + Math.random() * (§8!5§ - 0.3) * 0.3;
            }
            this.§7!'§ = 0.2 + Math.random() * 2;
            this.§6^§ = false;
         }
      }
      
      private function §6E§() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Sprite = null;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§1! § < §]f§)
         {
            _loc2_ = this.§1! § / §]f§;
         }
         else if(this.§1! § < §]f§ + this.§76§)
         {
            _loc5_ = (§8!5§ + this.§76§) / (§8!5§ * 2);
            _loc2_ = 1 - _loc5_ + Math.random() * _loc5_;
         }
         else if(this.§1! § < §]f§ + this.§76§ + §&-§)
         {
            _loc2_ = 1 - (this.§1! § - (§]f§ + this.§76§)) / §&-§;
         }
         this.§2%§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         _loc3_ = (_loc3_ << 16) + (_loc3_ << 8) + _loc3_;
         if(this.§1! § > §8!5§)
         {
            if(§7s§.numChildren > 0)
            {
               if(_loc6_ = §7s§.getChildAt(0) as Sprite)
               {
                  _loc6_.removeChild(this.§2%§,true);
               }
            }
            this.§2%§ = null;
            _loc3_ = 16777215;
            this.§1! § = -(2 + 20 * Math.random());
         }
         var _loc4_:int = §7s§.numChildren - 1;
         while(_loc4_ >= 1)
         {
            _loc1_ = §7s§.getChildAt(_loc4_);
            _loc1_.color = _loc3_;
            _loc4_--;
         }
      }
      
      private function §!;§() : void
      {
         if(this.§1! § > this.§7!'§)
         {
            if(!this.§6^§)
            {
               § !H§.§]p§("Lightning04","ChannelExplosions");
               this.§6^§ = true;
            }
         }
      }
   }
}
