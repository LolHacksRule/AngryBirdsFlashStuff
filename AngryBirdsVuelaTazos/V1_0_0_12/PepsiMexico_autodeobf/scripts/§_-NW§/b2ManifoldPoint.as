package §_-Nw§
{
   import §_-9z§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §_-KD§:Number;
      
      public var §_-WW§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§_-7h§();
      }
      
      public function §_-7h§() : void
      {
         this.m_localPoint.§_-TJ§();
         this.§_-KD§ = 0;
         this.§_-WW§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§_-KD§ = param1.§_-KD§;
         this.§_-WW§ = param1.§_-WW§;
         this.m_id.Set(param1.m_id);
      }
   }
}
