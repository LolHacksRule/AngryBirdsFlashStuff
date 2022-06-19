package §_-yI§
{
   import §_-cP§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §_-vk§:Number;
      
      public var §_-kw§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§_-Ji§();
      }
      
      public function §_-Ji§() : void
      {
         this.m_localPoint.§_-WO§();
         this.§_-vk§ = 0;
         this.§_-kw§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§_-vk§ = param1.§_-vk§;
         this.§_-kw§ = param1.§_-kw§;
         this.m_id.Set(param1.m_id);
      }
   }
}
