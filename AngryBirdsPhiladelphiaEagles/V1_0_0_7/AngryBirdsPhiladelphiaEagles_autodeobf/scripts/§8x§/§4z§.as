package §8x§
{
   import §,!F§.§#§;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class §4z§
   {
      
      public static const §^!4§:Number = 100;
       
      
      public function §4z§()
      {
         super();
      }
      
      public static function §,!L§(param1:MovieClip, param2:Boolean) : Array
      {
         var _loc3_:Rectangle = null;
         var _loc5_:DisplayObject = null;
         var _loc4_:Array = new Array();
         if(param1)
         {
            _loc3_ = (_loc5_ = param1.getChildByName("Collision1_Rectangle")).getBounds(param1);
            param1.removeChild(_loc5_);
         }
         else
         {
            _loc3_ = new Rectangle(0,0,50,50);
         }
         if(param2)
         {
            _loc3_.x *= §^!4§ / 100;
            _loc3_.y *= §^!4§ / 100;
            _loc3_.height *= §^!4§ / 100;
            _loc3_.width *= §^!4§ / 100;
         }
         _loc4_[0] = new b2Vec2(_loc3_.x * §#§.§67§,_loc3_.y * §#§.§67§);
         _loc4_[1] = new b2Vec2(_loc3_.x * §#§.§67§,(_loc3_.y + _loc3_.height) * §#§.§67§);
         _loc4_[2] = new b2Vec2((_loc3_.x + _loc3_.width) * §#§.§67§,(_loc3_.y + _loc3_.height) * §#§.§67§);
         _loc4_[3] = new b2Vec2((_loc3_.x + _loc3_.width) * §#§.§67§,_loc3_.y * §#§.§67§);
         _loc4_.reverse();
         return _loc4_;
      }
      
      public static function §;!I§(param1:MovieClip, param2:Boolean) : Array
      {
         var _loc4_:Rectangle = null;
         var _loc5_:DisplayObject = null;
         var _loc3_:Array = new Array();
         if(param1)
         {
            _loc4_ = (_loc5_ = param1.getChildByName("Collision1_Circle")).getBounds(param1);
            param1.removeChild(_loc5_);
         }
         else
         {
            _loc4_ = new Rectangle();
         }
         if(param2)
         {
            _loc4_.x *= §^!4§ / 100;
            _loc4_.y *= §^!4§ / 100;
            _loc4_.height *= §^!4§ / 100;
            _loc4_.width *= §^!4§ / 100;
         }
         if(_loc4_.width != _loc4_.height)
         {
         }
         _loc3_[0] = _loc4_.width * §#§.§67§ / 2;
         _loc3_[1] = (_loc4_.x + _loc4_.width / 2) * §#§.§67§;
         _loc3_[2] = (_loc4_.y + _loc4_.height / 2) * §#§.§67§;
         return _loc3_;
      }
      
      public static function §package§(param1:MovieClip) : Array
      {
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         var _loc2_:Array = new Array();
         if(!param1)
         {
            return §,!L§(param1,false);
         }
         var _loc3_:DisplayObjectContainer = param1.getChildByName("Collision1_Polygon") as DisplayObjectContainer;
         while(_loc4_ < _loc3_.numChildren)
         {
            _loc2_[_loc4_] = new b2Vec2();
            _loc5_ = _loc3_.getChildByName("Point" + (_loc4_ + 1));
            _loc2_[_loc4_].Set((_loc5_.getRect(param1).x + _loc5_.getRect(param1).width / 2) * §#§.§67§,(_loc5_.getRect(param1).y + _loc5_.getRect(param1).height / 2) * §#§.§67§);
            _loc4_++;
         }
         _loc2_.reverse();
         if(_loc2_.length < 3)
         {
            return null;
         }
         param1.removeChild(_loc3_);
         return _loc2_;
      }
   }
}
