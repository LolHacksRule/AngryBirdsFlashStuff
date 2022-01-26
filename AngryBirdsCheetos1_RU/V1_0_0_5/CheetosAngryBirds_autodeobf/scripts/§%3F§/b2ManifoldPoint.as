package §?§
{
   import §+,§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §>l§:Number;
      
      public var §+!O§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§[X§();
      }
      
      public function §[X§() : void
      {
         this.m_localPoint.§&N§();
         this.§>l§ = 0;
         this.§+!O§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§>l§ = param1.§>l§;
         this.§+!O§ = param1.§+!O§;
         this.m_id.Set(param1.m_id);
      }
   }
}
