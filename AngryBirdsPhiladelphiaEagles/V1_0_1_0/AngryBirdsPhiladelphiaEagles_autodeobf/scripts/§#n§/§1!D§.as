package §#n§
{
   import § !N§.§`v§;
   import §3H§.§!q§;
   import §3H§.DisplayObject;
   import §3H§.Sprite;
   import §[N§.§9k§;
   import flash.geom.Rectangle;
   
   public class §1!D§ extends §2m§
   {
      
      private static const §?v§:Number = 2.5;
      
      private static const §&4§:Number = 0.15;
      
      private static const §;%§:Number = 0.25;
       
      
      private var §^!E§:Number;
      
      private var §,j§:Number;
      
      private var §'x§:§!q§;
      
      private var §>!M§:Boolean;
      
      private var §3!M§:Number;
      
      public function §1!D§(param1:String, param2:Number, param3:§`v§, param4:Number)
      {
         super(param1,param2,param3,param4);
         this.§^!E§ = -(3 + Math.random() * 3);
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      override public function update(param1:Number) : void
      {
         if(this.§'x§ == null)
         {
            if(this.§^!E§ > 0)
            {
               this.§@!I§();
            }
         }
         else if(this.§'x§)
         {
            this.§[J§();
         }
         this.§5!8§();
         this.§^!E§ += param1 / 1000;
      }
      
      private function §@!I§() : void
      {
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(§7h§.numChildren > 0)
         {
            _loc1_ = §7h§.getChildAt(0) as Sprite;
            if(_loc1_)
            {
               _loc2_ = _loc1_.getBounds(_loc1_);
               this.§'x§ = new §!q§(_loc2_.width,_loc2_.height,16777215);
               this.§'x§.x = _loc2_.left;
               this.§'x§.y = _loc2_.top;
               this.§'x§.alpha = 0;
               _loc1_.addChild(this.§'x§);
            }
            this.§^!E§ = 0;
            if(Math.random() < 0.25)
            {
               this.§,j§ = 1 + Math.random() * (§?v§ - 1);
            }
            else
            {
               this.§,j§ = 0.3 + Math.random() * (§?v§ - 0.3) * 0.3;
            }
            this.§3!M§ = 0.2 + Math.random() * 2;
            this.§>!M§ = false;
         }
      }
      
      private function §[J§() : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Sprite = null;
         var _loc1_:DisplayObject = null;
         var _loc2_:Number = 0;
         if(this.§^!E§ < §&4§)
         {
            _loc2_ = this.§^!E§ / §&4§;
         }
         else if(this.§^!E§ < §&4§ + this.§,j§)
         {
            _loc5_ = (§?v§ + this.§,j§) / (§?v§ * 2);
            _loc2_ = 1 - _loc5_ + Math.random() * _loc5_;
         }
         else if(this.§^!E§ < §&4§ + this.§,j§ + §;%§)
         {
            _loc2_ = 1 - (this.§^!E§ - (§&4§ + this.§,j§)) / §;%§;
         }
         this.§'x§.alpha = _loc2_;
         var _loc3_:uint = Math.round((1 - _loc2_) * 255);
         _loc3_ = (_loc3_ << 16) + (_loc3_ << 8) + _loc3_;
         if(this.§^!E§ > §?v§)
         {
            if(§7h§.numChildren > 0)
            {
               if(_loc6_ = §7h§.getChildAt(0) as Sprite)
               {
                  _loc6_.removeChild(this.§'x§,true);
               }
            }
            this.§'x§ = null;
            _loc3_ = 16777215;
            this.§^!E§ = -(2 + 20 * Math.random());
         }
         var _loc4_:int = §7h§.numChildren - 1;
         while(_loc4_ >= 1)
         {
            _loc1_ = §7h§.getChildAt(_loc4_);
            _loc1_.color = _loc3_;
            _loc4_--;
         }
      }
      
      private function §5!8§() : void
      {
         if(this.§^!E§ > this.§3!M§)
         {
            if(!this.§>!M§)
            {
               §9k§.§>Q§("Lightning04","ChannelExplosions");
               this.§>!M§ = true;
            }
         }
      }
   }
}
