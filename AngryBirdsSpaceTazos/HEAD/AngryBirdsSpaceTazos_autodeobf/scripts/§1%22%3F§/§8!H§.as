package §1"?§
{
   import §&!]§.Sprite;
   import §3>§.§-"8§;
   import §3>§.§@!1§;
   import §9!K§.b2World;
   import §9!v§.§1!_§;
   import §9"!§.§0!s§;
   
   public class §8!H§ extends §%!0§
   {
       
      
      protected var §>!+§:§@!1§;
      
      protected var §6!E§:Vector.<§9k§>;
      
      public function §8!H§(param1:Sprite, param2:§1!_§, param3:b2World, param4:§-"8§, param5:Number, param6:Number, param7:Number = 0.0, param8:Number = 0.0, param9:Number = 0.0, param10:Number = 1.0)
      {
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:int = 0;
         var _loc18_:§9k§ = null;
         super(param1,param3,param4);
         this.§>!+§ = param4 as §@!1§;
         this.§6!E§ = new Vector.<§9k§>();
         var _loc11_:Number = 0;
         var _loc12_:Number = 0;
         var _loc13_:int = this.§>!+§.amount;
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
            _loc18_ = new §9k§(param2.getFrame(_loc17_),param5,param6,param7,this.§>!+§,param10);
            this.§6!E§.push(_loc18_);
            param1.addChild(_loc18_.§'!+§);
            param5 += _loc11_;
            param6 += _loc12_;
            _loc14_++;
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:int = 0;
         if(this.§6!E§)
         {
            _loc1_ = this.§6!E§.length - 1;
            while(_loc1_ >= 0)
            {
               this.§6!E§[_loc1_].dispose();
               _loc1_--;
            }
            this.§6!E§ = null;
         }
         super.dispose();
      }
      
      override public function update(param1:Number, param2:§0!s§) : void
      {
         super.update(param1,param2);
         var _loc3_:int = 0;
         while(_loc3_ < this.§6!E§.length)
         {
            this.§6!E§[_loc3_].update(param1);
            _loc3_++;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         if(this.§6!E§.length > 0 && this.§6!E§[0].isAlive)
         {
            return false;
         }
         return true;
      }
   }
}
