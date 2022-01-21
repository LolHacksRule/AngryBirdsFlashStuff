package §<!!§
{
   import §"U§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §79§:Number;
      
      public var §++§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§4`§();
      }
      
      public function §4`§() : void
      {
         this.m_localPoint.§1!=§();
         this.§79§ = 0;
         this.§++§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§79§ = param1.§79§;
         this.§++§ = param1.§++§;
         this.m_id.Set(param1.m_id);
      }
   }
}
