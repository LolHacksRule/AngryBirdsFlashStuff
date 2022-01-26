package §]M§
{
   import §5!K§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §#!9§:Number;
      
      public var §1d§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§"L§();
      }
      
      public function §"L§() : void
      {
         this.m_localPoint.§6d§();
         this.§#!9§ = 0;
         this.§1d§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§#!9§ = param1.§#!9§;
         this.§1d§ = param1.§1d§;
         this.m_id.Set(param1.m_id);
      }
   }
}
