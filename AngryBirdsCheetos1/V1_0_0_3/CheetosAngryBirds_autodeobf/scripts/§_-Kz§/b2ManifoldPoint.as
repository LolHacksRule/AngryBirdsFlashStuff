package §_-Kz§
{
   import §_-Vn§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §_-K6§:Number;
      
      public var §_-44§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§_-ej§();
      }
      
      public function §_-ej§() : void
      {
         this.m_localPoint.§return§();
         this.§_-K6§ = 0;
         this.§_-44§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§_-K6§ = param1.§_-K6§;
         this.§_-44§ = param1.§_-44§;
         this.m_id.Set(param1.m_id);
      }
   }
}
