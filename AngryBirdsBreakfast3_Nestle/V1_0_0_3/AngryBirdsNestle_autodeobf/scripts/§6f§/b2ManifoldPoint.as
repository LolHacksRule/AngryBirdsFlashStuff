package §6f§
{
   import §,!k§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §<5§:Number;
      
      public var §#!u§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§,E§();
      }
      
      public function §,E§() : void
      {
         this.m_localPoint.§2!n§();
         this.§<5§ = 0;
         this.§#!u§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§<5§ = param1.§<5§;
         this.§#!u§ = param1.§#!u§;
         this.m_id.Set(param1.m_id);
      }
   }
}
