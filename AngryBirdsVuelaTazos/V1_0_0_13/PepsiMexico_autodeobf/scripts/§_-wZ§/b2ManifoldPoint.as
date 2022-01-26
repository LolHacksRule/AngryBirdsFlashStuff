package §_-wZ§
{
   import §var§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §_-up§:Number;
      
      public var §_-jI§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§_-ut§();
      }
      
      public function §_-ut§() : void
      {
         this.m_localPoint.§_-pR§();
         this.§_-up§ = 0;
         this.§_-jI§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§_-up§ = param1.§_-up§;
         this.§_-jI§ = param1.§_-jI§;
         this.m_id.Set(param1.m_id);
      }
   }
}
