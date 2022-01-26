package §_-Jx§
{
   import §_-F2§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §_-xf§:Number;
      
      public var §_-Gq§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§_-1c§();
      }
      
      public function §_-1c§() : void
      {
         this.m_localPoint.§_-t5§();
         this.§_-xf§ = 0;
         this.§_-Gq§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§_-xf§ = param1.§_-xf§;
         this.§_-Gq§ = param1.§_-Gq§;
         this.m_id.Set(param1.m_id);
      }
   }
}
