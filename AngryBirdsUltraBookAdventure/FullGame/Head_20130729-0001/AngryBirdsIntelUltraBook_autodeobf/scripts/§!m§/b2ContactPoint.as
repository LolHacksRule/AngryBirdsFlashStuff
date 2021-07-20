package §!m§
{
   import §0!3§.b2Shape;
   import §>!8§.b2Vec2;
   
   public class b2ContactPoint
   {
       
      
      public var shape1:b2Shape;
      
      public var shape2:b2Shape;
      
      public var position:b2Vec2;
      
      public var §1!K§:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §?0§:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var id:b2ContactID;
      
      public function b2ContactPoint()
      {
         this.position = new b2Vec2();
         this.§1!K§ = new b2Vec2();
         this.normal = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
   }
}
