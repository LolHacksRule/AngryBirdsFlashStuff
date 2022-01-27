package §^9§
{
   import §!!k§.§1!^§;
   import §!r§.§'=§;
   import §#g§.§=!F§;
   import §#g§.§["%§;
   import §>"_§.b2World;
   import §use§.Sprite;
   
   public class §7!f§ extends §3o§
   {
       
      
      protected var §7!d§:§=!F§;
      
      protected var §;!p§:Vector.<§;u§>;
      
      public function §7!f§(param1:Sprite, param2:§1!^§, param3:b2World, param4:§["%§, param5:Number, param6:Number, param7:Number = 0.0, param8:Number = 0.0, param9:Number = 0.0, param10:Number = 1.0)
      {
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:int = 0;
         var _loc18_:§;u§ = null;
         super(param1,param3,param4);
         this.§7!d§ = param4 as §=!F§;
         this.§;!p§ = new Vector.<§;u§>();
         var _loc11_:Number = 0;
         var _loc12_:Number = 0;
         var _loc13_:int = this.§7!d§.amount;
         if((param8 > 0 || param9 > 0) && _loc13_ > 1)
         {
            if((_loc15_ = param8 * param9 / 20) < 1)
            {
               if((_loc13_ *= _loc15_) < 2)
               {
                  _loc13_ = 2;
               }
            }
            _loc16_ = param8 / 2;
            if(param8 < param9)
            {
               _loc16_ = param9 / 2;
               param7 += Math.PI / 2;
            }
            _loc16_ *= _loc13_ / (_loc13_ + 1);
            param5 -= Math.cos(param7) * _loc16_;
            param6 -= Math.sin(param7) * _loc16_;
            _loc11_ = Math.cos(param7) * _loc16_ * 2 / _loc13_;
            _loc12_ = Math.sin(param7) * _loc16_ * 2 / _loc13_;
         }
         var _loc14_:int = 0;
         while(_loc14_ < _loc13_)
         {
            _loc17_ = Math.floor(param2.frameCount * Math.random());
            _loc18_ = new §;u§(param2.getFrame(_loc17_),param5,param6,param7,this.§7!d§,param10);
            this.§;!p§.push(_loc18_);
            param1.addChild(_loc18_.§>#3§);
            param5 += _loc11_;
            param6 += _loc12_;
            _loc14_++;
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:int = 0;
         if(this.§;!p§)
         {
            _loc1_ = this.§;!p§.length - 1;
            while(_loc1_ >= 0)
            {
               this.§;!p§[_loc1_].dispose();
               _loc1_--;
            }
            this.§;!p§ = null;
         }
         super.dispose();
      }
      
      override public function update(param1:Number, param2:§'=§) : void
      {
         super.update(param1,param2);
         var _loc3_:int = 0;
         while(_loc3_ < this.§;!p§.length)
         {
            this.§;!p§[_loc3_].update(param1);
            _loc3_++;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         if(this.§;!p§.length > 0 && this.§;!p§[0].isAlive)
         {
            return false;
         }
         return true;
      }
   }
}
