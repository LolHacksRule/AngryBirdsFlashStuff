package §]z§
{
   import flash.events.Event;
   
   public class §2b§ extends §7v§
   {
       
      
      public function §2b§(param1:Number, param2:Number, param3:Array = null, param4:Class = null, param5:Number = 0, param6:Number = 1.7976931348623157E308)
      {
         super(param1,param2,param3,param4,param5,param6);
      }
      
      override protected function updatePositions() : void
      {
         var _loc2_:§#!F§ = null;
         var _loc3_:Number = NaN;
         var _loc4_:§`V§ = null;
         var _loc1_:int = §4"§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_ = §4"§[_loc1_] as §#!F§;
            _loc2_.x = §"!§(_loc2_.index + (_loc2_.data.offset || 0));
            if(_loc2_.x >= §70§ || _loc2_.x <= -§=!C§)
            {
               §8!9§.removeChild(_loc2_);
               §4"§.splice(§4"§.indexOf(_loc2_),1);
               §9t§(_loc2_);
            }
            _loc1_--;
         }
         _loc1_ = 0;
         while(_loc1_ < §0A§.length)
         {
            _loc3_ = §"!§(_loc1_ + (§0A§[_loc1_].offset || 0));
            if(_loc3_ > -§=!C§ && _loc3_ < §70§ && !§%>§(_loc1_))
            {
               _loc4_ = get();
               §8!9§.addChild(_loc4_);
               _loc4_.data = §0A§[_loc1_];
               _loc4_.index = _loc1_;
               _loc4_.x = _loc3_;
               §4"§.push(_loc4_);
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
         if(§7k§ != §7!f§)
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
