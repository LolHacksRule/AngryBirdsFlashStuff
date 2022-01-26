package §_-iw§
{
   import §_-4n§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §_-er§:Number;
      
      public var §_-zU§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§_-iK§();
      }
      
      public function §_-iK§() : void
      {
         this.m_localPoint.§_-IE§();
         this.§_-er§ = 0;
         this.§_-zU§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§_-er§ = param1.§_-er§;
         this.§_-zU§ = param1.§_-zU§;
         this.m_id.Set(param1.m_id);
      }
   }
}
