package §,P§
{
   import §-%§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §-!V§:Number;
      
      public var §#G§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§=a§();
      }
      
      public function §=a§() : void
      {
         this.m_localPoint.§'p§();
         this.§-!V§ = 0;
         this.§#G§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§-!V§ = param1.§-!V§;
         this.§#G§ = param1.§#G§;
         this.m_id.Set(param1.m_id);
      }
   }
}
