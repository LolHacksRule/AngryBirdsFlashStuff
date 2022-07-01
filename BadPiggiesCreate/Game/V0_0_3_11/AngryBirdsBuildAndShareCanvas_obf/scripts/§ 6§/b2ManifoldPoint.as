package § 6§
{
   import §+L§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §=W§:Number;
      
      public var §?!@§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§^m§();
      }
      
      public function §^m§() : void
      {
         this.m_localPoint.§>!!§();
         this.§=W§ = 0;
         this.§?!@§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§=W§ = param1.§=W§;
         this.§?!@§ = param1.§?!@§;
         this.m_id.Set(param1.m_id);
      }
   }
}
