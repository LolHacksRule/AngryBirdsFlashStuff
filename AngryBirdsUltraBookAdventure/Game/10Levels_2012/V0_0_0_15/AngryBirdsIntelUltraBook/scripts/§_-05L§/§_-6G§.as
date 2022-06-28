package §_-05L§
{
   import flash.events.Event;
   
   public class §_-6G§ extends §_-wn§
   {
       
      
      public function §_-6G§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function updatePositions() : void
      {
         var _loc2_:§_-K5§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§_-p§ = null;
         var _loc1_:int = §_-2x§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §_-2x§[_loc1_] as §_-K5§;
            _loc2_.x = §_-03Q§(_loc2_.index + (_loc2_.data.offset || 0));
            if(_loc2_.x >= §_-7S§ || _loc2_.x <= -§_-gG§)
            {
               §_-FQ§.removeChild(_loc2_);
               §_-2x§.splice(§_-2x§.indexOf(_loc2_),1);
               §_-2D§(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < §_-WB§.length)
         {
            _loc3_ = §_-03Q§(_loc1_ + (§_-WB§[_loc1_].offset || 0));
            if(_loc3_ > -§_-gG§ && _loc3_ < §_-7S§ && !§ if§(_loc1_))
            {
               _loc4_ = §_-Dt§();
               §_-FQ§.addChild(_loc4_);
               _loc4_.data = §_-WB§[_loc1_];
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               §_-2x§.push(_loc4_);
            }
            _loc1_++;
         }
      }
      
      override protected function onEnterFrame(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc2_:Boolean = false;
         for each(_loc3_ in data)
         {
            if(_loc3_.offset != _loc3_.targetOffset)
            {
               if(_loc3_.offset == undefined)
               {
                  _loc3_.offset = 0;
               }
               if(_loc3_.targetOffset == undefined)
               {
                  _loc3_.targetOffset = 0;
               }
               if((_loc4_ = (_loc3_.targetOffset - _loc3_.offset) / 8) > 0 && _loc4_ < 0.01)
               {
                  _loc3_.offset = _loc3_.targetOffset;
               }
               else
               {
                  _loc3_.offset += _loc4_;
               }
               _loc2_ = true;
            }
         }
         if(§_-07x§ != §_-EM§)
         {
            super.onEnterFrame(param1);
         }
         else if(_loc2_)
         {
            this.updatePositions();
         }
      }
   }
}
