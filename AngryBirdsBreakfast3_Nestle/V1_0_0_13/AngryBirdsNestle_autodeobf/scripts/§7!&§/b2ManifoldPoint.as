package §7!&§
{
   import §?"'§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §6![§:Number;
      
      public var §1!l§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§`p§();
      }
      
      public function §`p§() : void
      {
         this.m_localPoint.§6!c§();
         this.§6![§ = 0;
         this.§1!l§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§6![§ = param1.§6![§;
         this.§1!l§ = param1.§1!l§;
         this.m_id.Set(param1.m_id);
      }
   }
}
