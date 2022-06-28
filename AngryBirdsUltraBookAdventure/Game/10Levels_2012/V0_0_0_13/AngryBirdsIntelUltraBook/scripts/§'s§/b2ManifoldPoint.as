package §'s§
{
   import §&L§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §-!L§:Number;
      
      public var §^s§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§@!D§();
      }
      
      public function §@!D§() : void
      {
         this.m_localPoint.§5b§();
         this.§-!L§ = 0;
         this.§^s§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§-!L§ = param1.§-!L§;
         this.§^s§ = param1.§^s§;
         this.m_id.Set(param1.m_id);
      }
   }
}
