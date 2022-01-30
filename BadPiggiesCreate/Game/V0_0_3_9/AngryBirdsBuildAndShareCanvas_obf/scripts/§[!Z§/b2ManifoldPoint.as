package §[!Z§
{
   import §-!G§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §'!u§:Number;
      
      public var §3A§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§8d§();
      }
      
      public function §8d§() : void
      {
         this.m_localPoint.§7!@§();
         this.§'!u§ = 0;
         this.§3A§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§'!u§ = param1.§'!u§;
         this.§3A§ = param1.§3A§;
         this.m_id.Set(param1.m_id);
      }
   }
}
