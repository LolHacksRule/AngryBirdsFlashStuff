package §9"§
{
   import §0!G§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §46§:Number;
      
      public var §`!H§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§8j§();
      }
      
      public function §8j§() : void
      {
         this.m_localPoint.§3a§();
         this.§46§ = 0;
         this.§`!H§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§46§ = param1.§46§;
         this.§`!H§ = param1.§`!H§;
         this.m_id.Set(param1.m_id);
      }
   }
}
