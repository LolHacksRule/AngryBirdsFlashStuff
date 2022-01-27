package §>r§
{
   import §7"A§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §^"B§:Number;
      
      public var §switch§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§`"v§();
      }
      
      public function §`"v§() : void
      {
         this.m_localPoint.§6![§();
         this.§^"B§ = 0;
         this.§switch§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§^"B§ = param1.§^"B§;
         this.§switch§ = param1.§switch§;
         this.m_id.Set(param1.m_id);
      }
   }
}
