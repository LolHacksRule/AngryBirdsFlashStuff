package §-!T§
{
   import §0,§.b2Vec2;
   import §8!b§.b2Shape;
   
   public class b2ContactPoint
   {
       
      
      public var shape1:b2Shape;
      
      public var shape2:b2Shape;
      
      public var position:b2Vec2;
      
      public var §9!?§:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §"!`§:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var id:b2ContactID;
      
      public function b2ContactPoint()
      {
         this.position = new b2Vec2();
         this.§9!?§ = new b2Vec2();
         this.normal = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
   }
}
