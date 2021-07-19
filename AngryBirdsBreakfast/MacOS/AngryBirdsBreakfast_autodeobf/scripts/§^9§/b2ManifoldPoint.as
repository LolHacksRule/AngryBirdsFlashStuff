package §^9§
{
   import §6Z§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §4!p§:Number;
      
      public var §#!h§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§?!r§();
      }
      
      public function §?!r§() : void
      {
         this.m_localPoint.§5!H§();
         this.§4!p§ = 0;
         this.§#!h§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§4!p§ = param1.§4!p§;
         this.§#!h§ = param1.§#!h§;
         this.m_id.Set(param1.m_id);
      }
   }
}
