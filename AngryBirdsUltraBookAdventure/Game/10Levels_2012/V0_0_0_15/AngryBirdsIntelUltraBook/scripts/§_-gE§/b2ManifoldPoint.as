package §_-gE§
{
   import §_-Yp§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §_-nd§:Number;
      
      public var §_-sw§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§_-8Y§();
      }
      
      public function §_-8Y§() : void
      {
         this.m_localPoint.§_-el§();
         this.§_-nd§ = 0;
         this.§_-sw§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§_-nd§ = param1.§_-nd§;
         this.§_-sw§ = param1.§_-sw§;
         this.m_id.Set(param1.m_id);
      }
   }
}
