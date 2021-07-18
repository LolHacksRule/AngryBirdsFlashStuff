package §5!o§
{
   import §"!9§.b2Shape;
   import §2"=§.b2Vec2;
   
   public class b2ContactPoint
   {
       
      
      public var shape1:b2Shape;
      
      public var shape2:b2Shape;
      
      public var position:b2Vec2;
      
      public var §6!n§:b2Vec2;
      
      public var normal:b2Vec2;
      
      public var §^h§:Number;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var id:b2ContactID;
      
      public function b2ContactPoint()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.position = new b2Vec2();
         }
         loop0:
         while(true)
         {
            this.§6!n§ = new b2Vec2();
            addr83:
            while(true)
            {
               this.normal = new b2Vec2();
               continue loop0;
            }
         }
      }
   }
}
