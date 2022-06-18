package §!!#§
{
   import §^q§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §return§:Number;
      
      public var §'!V§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§ Z§();
      }
      
      public function § Z§() : void
      {
         this.m_localPoint.§0q§();
         this.§return§ = 0;
         this.§'!V§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§return§ = param1.§return§;
         this.§'!V§ = param1.§'!V§;
         this.m_id.Set(param1.m_id);
      }
   }
}
