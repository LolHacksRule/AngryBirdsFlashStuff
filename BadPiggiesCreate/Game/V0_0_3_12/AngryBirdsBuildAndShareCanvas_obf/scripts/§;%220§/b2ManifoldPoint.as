package §;"0§
{
   import §3!t§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §>!2§:Number;
      
      public var §6n§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§%@§();
      }
      
      public function §%@§() : void
      {
         this.m_localPoint.§ 4§();
         this.§>!2§ = 0;
         this.§6n§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§>!2§ = param1.§>!2§;
         this.§6n§ = param1.§6n§;
         this.m_id.Set(param1.m_id);
      }
   }
}
