package §%A§
{
   import §!6§.Sprite;
   import §-!!§.§ #'§;
   import §8#t§.b2World;
   import §?§.§,Y§;
   import §?§.§6!M§;
   import §^"[§.§4!8§;
   
   public class §4"e§ extends §"j§
   {
       
      
      protected var §<"<§:§6!M§;
      
      protected var §0"t§:Vector.<§>$@§>;
      
      public function §4"e§(param1:Sprite, param2:§4!8§, param3:b2World, param4:§,Y§, param5:Number, param6:Number, param7:Number = 0.0, param8:Number = 0.0, param9:Number = 0.0, param10:Number = 1.0)
      {
         var _loc15_:Number = NaN;
         var _loc16_:Array = null;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:§>$@§ = null;
         super(param1,param3,param4);
         this.§<"<§ = param4 as §6!M§;
         this.§0"t§ = new Vector.<§>$@§>();
         var _loc11_:Number = 0;
         var _loc12_:Number = 0;
         var _loc13_:int = this.§<"<§.particleAmount > -1 ? int(this.§<"<§.particleAmount) : int(this.§<"<§.amount);
         if((param8 > 0 || param9 > 0) && _loc13_ > 1)
         {
            _loc15_ = param8 / 2;
            if(param8 < param9)
            {
               _loc15_ = param9 / 2;
               param7 += Math.PI / 2;
            }
            _loc15_ *= _loc13_ / (_loc13_ + 1);
            param5 -= Math.cos(param7) * _loc15_;
            param6 -= Math.sin(param7) * _loc15_;
            _loc11_ = Math.cos(param7) * _loc15_ * 2 / _loc13_;
            _loc12_ = Math.sin(param7) * _loc15_ * 2 / _loc13_;
         }
         var _loc14_:int = 0;
         while(_loc14_ < _loc13_)
         {
            _loc16_ = new Array();
            if(this.§<"<§.animation == "lifeTime")
            {
               _loc17_ = 0;
               while(_loc17_ < param2.frameCount)
               {
                  _loc16_.push(param2.getFrame(_loc17_));
                  _loc17_++;
               }
            }
            else
            {
               _loc18_ = Math.floor(param2.frameCount * Math.random());
               _loc16_.push(param2.getFrame(_loc18_));
            }
            if(_loc16_.length > 0 && _loc16_[0] != null)
            {
               _loc19_ = new §>$@§(param1,_loc16_,param5,param6,param7,this.§<"<§,param10);
               this.§0"t§.push(_loc19_);
               param1.addChild(_loc19_.displayObject);
               param5 += _loc11_;
               param6 += _loc12_;
            }
            _loc14_++;
         }
      }
      
      override public function dispose(param1:Boolean = true) : void
      {
         var _loc2_:int = 0;
         if(this.§0"t§)
         {
            _loc2_ = this.§0"t§.length - 1;
            while(_loc2_ >= 0)
            {
               this.§0"t§[_loc2_].dispose();
               _loc2_--;
            }
            this.§0"t§ = null;
         }
         super.dispose(param1);
      }
      
      override public function update(param1:Number, param2:§ #'§) : void
      {
         super.update(param1,param2);
         var _loc3_:int = 0;
         while(_loc3_ < this.§0"t§.length)
         {
            this.§0"t§[_loc3_].update(param1);
            _loc3_++;
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         if(this.§0"t§.length > 0 && this.§0"t§[0].isAlive)
         {
            return false;
         }
         return true;
      }
   }
}
