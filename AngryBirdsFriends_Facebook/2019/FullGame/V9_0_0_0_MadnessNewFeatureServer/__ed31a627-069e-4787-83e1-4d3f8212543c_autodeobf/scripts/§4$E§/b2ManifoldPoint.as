package §4$E§
{
   import §?!C§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §!"k§:Number;
      
      public var §#"B§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§!!C§();
      }
      
      public function §!!C§() : void
      {
         this.m_localPoint.§1c§();
         this.§!"k§ = 0;
         this.§#"B§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§!"k§ = param1.§!"k§;
         this.§#"B§ = param1.§#"B§;
         this.m_id.Set(param1.m_id);
      }
   }
}
