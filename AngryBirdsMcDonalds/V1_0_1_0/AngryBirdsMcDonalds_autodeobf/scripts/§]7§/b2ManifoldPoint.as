package §]7§
{
   import §!R§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §^!a§:Number;
      
      public var §?!b§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§<! §();
      }
      
      public function §<! §() : void
      {
         this.m_localPoint.§"9§();
         this.§^!a§ = 0;
         this.§?!b§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§^!a§ = param1.§^!a§;
         this.§?!b§ = param1.§?!b§;
         this.m_id.Set(param1.m_id);
      }
   }
}
