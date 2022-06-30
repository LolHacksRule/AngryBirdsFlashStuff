package §^t§
{
   import § !_§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §,!F§:Number;
      
      public var §>!4§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§=s§();
      }
      
      public function §=s§() : void
      {
         this.m_localPoint.§>!T§();
         this.§,!F§ = 0;
         this.§>!4§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§,!F§ = param1.§,!F§;
         this.§>!4§ = param1.§>!4§;
         this.m_id.Set(param1.m_id);
      }
   }
}
