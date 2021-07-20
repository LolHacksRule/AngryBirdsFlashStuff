package § !0§
{
   import §7F§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §<"6§:Number;
      
      public var §'"L§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§["=§();
      }
      
      public function §["=§() : void
      {
         this.m_localPoint.§%"0§();
         this.§<"6§ = 0;
         this.§'"L§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§<"6§ = param1.§<"6§;
         this.§'"L§ = param1.§'"L§;
         this.m_id.Set(param1.m_id);
      }
   }
}
