package §_-mg§
{
   import §_-bA§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §_-iI§:Number;
      
      public var §_-Zm§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§_-2d§();
      }
      
      public function §_-2d§() : void
      {
         this.m_localPoint.§_-qi§();
         this.§_-iI§ = 0;
         this.§_-Zm§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§_-iI§ = param1.§_-iI§;
         this.§_-Zm§ = param1.§_-Zm§;
         this.m_id.Set(param1.m_id);
      }
   }
}
