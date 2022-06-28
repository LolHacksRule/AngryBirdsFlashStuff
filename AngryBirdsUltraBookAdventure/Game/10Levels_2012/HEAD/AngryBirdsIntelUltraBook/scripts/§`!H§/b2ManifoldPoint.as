package §`!H§
{
   import §?!&§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §8!L§:Number;
      
      public var §-!V§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§`!B§();
      }
      
      public function §`!B§() : void
      {
         this.m_localPoint.§@l§();
         this.§8!L§ = 0;
         this.§-!V§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§8!L§ = param1.§8!L§;
         this.§-!V§ = param1.§-!V§;
         this.m_id.Set(param1.m_id);
      }
   }
}
