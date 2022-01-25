package § Y§
{
   import §<!8§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §6z§:Number;
      
      public var §&M§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§&4§();
      }
      
      public function §&4§() : void
      {
         this.m_localPoint.§`§();
         this.§6z§ = 0;
         this.§&M§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§6z§ = param1.§6z§;
         this.§&M§ = param1.§&M§;
         this.m_id.Set(param1.m_id);
      }
   }
}
