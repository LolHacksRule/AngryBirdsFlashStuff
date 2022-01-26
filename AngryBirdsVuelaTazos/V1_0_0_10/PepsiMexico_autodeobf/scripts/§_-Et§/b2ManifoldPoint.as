package §_-Et§
{
   import §_-Zl§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §_-8L§:Number;
      
      public var §_-w-§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§_-t3§();
      }
      
      public function §_-t3§() : void
      {
         this.m_localPoint.§_-Vw§();
         this.§_-8L§ = 0;
         this.§_-w-§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§_-8L§ = param1.§_-8L§;
         this.§_-w-§ = param1.§_-w-§;
         this.m_id.Set(param1.m_id);
      }
   }
}
