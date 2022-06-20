package §8#K§
{
   import §04§.b2Vec2;
   import §1#I§.b2PolygonShape;
   import §1#I§.b2Shape;
   
   public class §^r§ extends §46§
   {
       
      
      private var §case§:Vector.<b2Vec2>;
      
      public function §^r§(param1:Vector.<b2Vec2>, param2:String = null)
      {
         this.§case§ = param1;
         var _loc3_:Array = this.§`"2§();
         var _loc4_:b2Vec2 = _loc3_[0] as b2Vec2;
         var _loc5_:b2Vec2;
         var _loc6_:Number = (_loc5_ = _loc3_[1] as b2Vec2).x - _loc4_.x;
         var _loc7_:Number = _loc5_.y - _loc4_.y;
         super(_loc6_,_loc7_,param2);
      }
      
      public function get vertices() : Vector.<b2Vec2>
      {
         return this.§case§;
      }
      
      public function §`"2§() : Array
      {
         var _loc6_:b2Vec2 = null;
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         var _loc5_:Boolean = true;
         for each(_loc6_ in this.§case§)
         {
            if(_loc5_)
            {
               _loc1_ = _loc3_ = _loc6_.x;
               _loc2_ = _loc4_ = _loc6_.y;
               _loc5_ = false;
            }
            else
            {
               if(_loc6_.x < _loc1_)
               {
                  _loc1_ = _loc6_.x;
               }
               if(_loc6_.x > _loc3_)
               {
                  _loc3_ = _loc6_.x;
               }
               if(_loc6_.y < _loc2_)
               {
                  _loc2_ = _loc6_.y;
               }
               if(_loc6_.y > _loc4_)
               {
                  _loc4_ = _loc6_.y;
               }
            }
         }
         return [new b2Vec2(_loc1_,_loc2_),new b2Vec2(_loc3_,_loc4_)];
      }
      
      override public function getB2Shape(param1:Number = 1.0) : b2Shape
      {
         var _loc3_:b2Vec2 = null;
         var _loc2_:b2PolygonShape = new b2PolygonShape();
         _loc2_.§3$2§(this.§case§);
         for each(_loc3_ in _loc2_.§ #U§())
         {
            _loc3_.x *= param1;
            _loc3_.y *= param1;
         }
         return _loc2_;
      }
      
      override public function getDimension() : Number
      {
         return Math.max(getWidth(),getHeight()) * Math.sqrt(2);
      }
   }
}
