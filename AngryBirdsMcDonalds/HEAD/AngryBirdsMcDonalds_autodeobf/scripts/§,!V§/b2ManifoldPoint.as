package §,!V§
{
   import §+S§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §^!X§:Number;
      
      public var §[n§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§2!R§();
      }
      
      public function §2!R§() : void
      {
         this.m_localPoint.§%^§();
         this.§^!X§ = 0;
         this.§[n§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§^!X§ = param1.§^!X§;
         this.§[n§ = param1.§[n§;
         this.m_id.Set(param1.m_id);
      }
   }
}
