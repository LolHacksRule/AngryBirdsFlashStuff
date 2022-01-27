package §3m§
{
   import §&!S§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var § "$§:Number;
      
      public var §5";§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§3"8§();
      }
      
      public function §3"8§() : void
      {
         this.m_localPoint.§ "2§();
         this.§ "$§ = 0;
         this.§5";§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§ "$§ = param1.§ "$§;
         this.§5";§ = param1.§5";§;
         this.m_id.Set(param1.m_id);
      }
   }
}
