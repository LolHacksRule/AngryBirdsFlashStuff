package §+!J§
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §>n§ extends Sprite
   {
      
      private static const §?#H§:Point = new Point();
      
      public static const §&0§:uint = 0;
      
      public static const §@h§:uint = 1;
      
      public static const §7"@§:uint = 2;
      
      public static const §^"S§:uint = 3;
      
      public static const §%# §:uint = 4;
      
      public static const §7=§:uint = 5;
      
      public static const §5"7§:uint = 6;
      
      public static const §"F§:uint = 7;
      
      public static const §'"$§:uint = 8;
      
      public static const §!"m§:uint = 0;
      
      public static const §,C§:uint = 1;
      
      public static const §@"Z§:uint = 2;
       
      
      public var data;
      
      public function §>n§()
      {
         super();
      }
      
      protected function §6"Q§(... rest) : void
      {
         trace.apply(this,rest);
      }
      
      public function §]#J§(param1:DisplayObject, param2:Number, param3:Number, param4:Boolean = false, param5:Boolean = false) : DisplayObject
      {
         param1.x = param2;
         if(param5)
         {
            param1.x -= param1.width >> 1;
         }
         param1.y = param3;
         if(param4)
         {
            param1.y -= param1.height >> 1;
         }
         return this.addChild(param1);
      }
      
      public function §7!Y§(param1:Function = null) : int
      {
         var _loc3_:DisplayObject = null;
         var _loc2_:int = numChildren;
         while(numChildren > 0)
         {
            _loc3_ = removeChild(getChildAt(0));
            if(param1 != null)
            {
               param1(_loc3_);
            }
         }
         return _loc2_;
      }
      
      public function §[`§() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < numChildren)
         {
            _loc1_.push(getChildAt(_loc2_));
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function §8!9§(param1:int = 0) : void
      {
         var _loc6_:DisplayObject = null;
         var _loc2_:Array = this.§[`§();
         var _loc4_:Rectangle = getRect(this);
         var _loc5_:int = 0;
         while(_loc5_ < _loc2_.length)
         {
            _loc6_ = DisplayObject(_loc2_[_loc5_]);
            switch(param1)
            {
               case §@h§:
                  _loc6_.y = _loc4_.height - _loc6_.height;
                  break;
               case §&0§:
                  _loc6_.y = 0;
                  break;
               case §7"@§:
                  _loc6_.x = 0;
                  break;
               case §^"S§:
                  _loc6_.x = _loc4_.width - _loc6_.width;
                  break;
            }
            _loc5_++;
         }
      }
      
      public function §7"0§(param1:Point) : void
      {
         x = param1.x;
         y = param1.y;
      }
      
      public function §>#3§() : Point
      {
         return new Point(x,y);
      }
      
      public function §!_§(param1:Rectangle) : void
      {
         x = param1.x;
         y = param1.y;
         width = param1.width;
         height = param1.height;
      }
      
      public function §&"P§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         §?#H§.x = param1;
         §?#H§.y = param2;
         this.§5!m§(§?#H§,§'"$§);
      }
      
      public function §5!m§(param1:Point, param2:uint) : void
      {
         switch(param2)
         {
            case §@h§:
               x = param1.x - width * 0.5;
               y = param1.y - height;
               break;
            case §"F§:
               x = param1.x;
               y = param1.y - height;
               break;
            case §5"7§:
               x = param1.x - width;
               y = param1.y - height;
               break;
            case §&0§:
               x = param1.x - width * 0.5;
               y = param1.y;
               break;
            case §7=§:
               x = param1.x;
               y = param1.y;
               break;
            case §%# §:
               x = param1.x - width;
               y = param1.y;
               break;
            case §7"@§:
               y = param1.y - height * 0.5;
               x = param1.x;
               break;
            case §^"S§:
               y = param1.y - height * 0.5;
               x = param1.x - width;
               break;
            case §'"$§:
               y = param1.y - height * 0.5;
               x = param1.x - width * 0.5;
         }
      }
      
      public function §9V§(param1:Array, param2:int = -1, param3:int = 0, param4:Point = null, param5:int = 5) : Array
      {
         var _loc9_:DisplayObject = null;
         if(!param4)
         {
            param4 = new Point();
         }
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         switch(param2)
         {
            case §,C§:
               for each(_loc9_ in param1)
               {
                  addChild(_loc9_);
                  _loc9_.y = param4.y + _loc6_;
                  _loc9_.x = param4.x;
                  _loc6_ += _loc9_.height + param3;
               }
               break;
            case §!"m§:
               for each(_loc9_ in param1)
               {
                  addChild(_loc9_);
                  _loc9_.y = param4.y;
                  _loc9_.x = param4.x + _loc6_;
                  _loc6_ += _loc9_.width + param3;
               }
               break;
            case §@"Z§:
               for each(_loc9_ in param1)
               {
                  addChild(_loc9_);
                  _loc9_.x = param4.x + _loc6_;
                  _loc9_.y = param4.y + _loc7_;
                  _loc6_ += _loc9_.width + param3;
                  _loc8_++;
                  if(_loc8_ > param5)
                  {
                     _loc7_ += _loc9_.height + param3;
                     _loc6_ = 0;
                     _loc8_ = 0;
                  }
               }
               break;
            default:
               for each(_loc9_ in param1)
               {
                  addChild(_loc9_);
               }
         }
         return param1;
      }
      
      public function §=u§(param1:int = -1, param2:int = 0, param3:Point = null, param4:int = 5) : void
      {
         var _loc5_:Array = this.§[`§();
         this.§9V§(_loc5_,param1,param2,param3,param4);
      }
      
      public function set §2B§(param1:Number) : void
      {
         x = y = param1;
      }
      
      public function set §^"I§(param1:Number) : void
      {
         scaleX = scaleY = param1;
      }
   }
}
