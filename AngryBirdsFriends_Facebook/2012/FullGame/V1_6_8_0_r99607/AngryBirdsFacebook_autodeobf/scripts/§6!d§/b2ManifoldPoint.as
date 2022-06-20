package §6!d§
{
   import §!"8§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §,![§:Number;
      
      public var §6"&§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§`!r§();
      }
      
      public function §`!r§() : void
      {
         this.m_localPoint.§]!;§();
         this.§,![§ = 0;
         this.§6"&§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§,![§ = param1.§,![§;
         this.§6"&§ = param1.§6"&§;
         this.m_id.Set(param1.m_id);
      }
   }
}
