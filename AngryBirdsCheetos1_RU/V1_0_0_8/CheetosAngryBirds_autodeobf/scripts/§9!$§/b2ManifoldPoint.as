package §9!$§
{
   import §3q§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §;L§:Number;
      
      public var §2f§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§5!X§();
      }
      
      public function §5!X§() : void
      {
         this.m_localPoint.§<!5§();
         this.§;L§ = 0;
         this.§2f§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§;L§ = param1.§;L§;
         this.§2f§ = param1.§2f§;
         this.m_id.Set(param1.m_id);
      }
   }
}
