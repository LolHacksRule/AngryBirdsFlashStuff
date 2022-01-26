package §_-qg§
{
   import §_-Ja§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §_-JQ§:Number;
      
      public var §_-RC§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§_-i0§();
      }
      
      public function §_-i0§() : void
      {
         this.m_localPoint.§_-0a§();
         this.§_-JQ§ = 0;
         this.§_-RC§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§_-JQ§ = param1.§_-JQ§;
         this.§_-RC§ = param1.§_-RC§;
         this.m_id.Set(param1.m_id);
      }
   }
}
