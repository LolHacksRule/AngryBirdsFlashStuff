package §8#p§
{
   import §'"T§.§`#y§;
   import flash.geom.Rectangle;
   
   public class §="K§
   {
       
      
      public function §="K§()
      {
         super();
         throw new §`#y§();
      }
      
      public static function §&"s§(param1:Rectangle, param2:Rectangle, param3:Rectangle = null) : Rectangle
      {
         if(param3 == null)
         {
            param3 = new Rectangle();
         }
         var _loc4_:Number = Math.max(param1.x,param2.x);
         var _loc5_:Number = Math.min(param1.x + param1.width,param2.x + param2.width);
         var _loc6_:Number = Math.max(param1.y,param2.y);
         var _loc7_:Number = Math.min(param1.y + param1.height,param2.y + param2.height);
         if(_loc4_ > _loc5_ || _loc6_ > _loc7_)
         {
            param3.setEmpty();
         }
         else
         {
            param3.setTo(_loc4_,_loc6_,_loc5_ - _loc4_,_loc7_ - _loc6_);
         }
         return param3;
      }
      
      public static function § -§(param1:Rectangle, param2:Rectangle, param3:String = "showAll", param4:Boolean = false, param5:Rectangle = null) : Rectangle
      {
         if(!§"H§.§4<§(param3))
         {
            throw new ArgumentError("Invalid scaleMode: " + param3);
         }
         if(param5 == null)
         {
            param5 = new Rectangle();
         }
         var _loc6_:Number = param1.width;
         var _loc7_:Number = param1.height;
         var _loc8_:Number = param2.width / _loc6_;
         var _loc9_:Number = param2.height / _loc7_;
         var _loc10_:Number = 1;
         if(param3 == §"H§.§92§)
         {
            _loc10_ = _loc8_ < _loc9_ ? Number(_loc8_) : Number(_loc9_);
            if(param4)
            {
               _loc10_ = §^O§(_loc10_,false);
            }
         }
         else if(param3 == §"H§.§0"d§)
         {
            _loc10_ = _loc8_ > _loc9_ ? Number(_loc8_) : Number(_loc9_);
            if(param4)
            {
               _loc10_ = §^O§(_loc10_,true);
            }
         }
         _loc6_ *= _loc10_;
         _loc7_ *= _loc10_;
         param5.setTo(param2.x + (param2.width - _loc6_) / 2,param2.y + (param2.height - _loc7_) / 2,_loc6_,_loc7_);
         return param5;
      }
      
      private static function §^O§(param1:Number, param2:Boolean) : Number
      {
         var _loc3_:Number = 1;
         if(param2)
         {
            if(param1 >= 0.5)
            {
               return Math.ceil(param1);
            }
            while(1 / (_loc3_ + 1) > param1)
            {
               _loc3_++;
            }
         }
         else
         {
            if(param1 >= 1)
            {
               return Math.floor(param1);
            }
            while(1 / _loc3_ > param1)
            {
               _loc3_++;
            }
         }
         return 1 / _loc3_;
      }
   }
}
