package §_-tK§
{
   import §_-dx§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §_-au§:Number;
      
      public var §_-Pq§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§_-Mm§();
      }
      
      public function §_-Mm§() : void
      {
         this.m_localPoint.§_-pZ§();
         this.§_-au§ = 0;
         this.§_-Pq§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§_-au§ = param1.§_-au§;
         this.§_-Pq§ = param1.§_-Pq§;
         this.m_id.Set(param1.m_id);
      }
   }
}
