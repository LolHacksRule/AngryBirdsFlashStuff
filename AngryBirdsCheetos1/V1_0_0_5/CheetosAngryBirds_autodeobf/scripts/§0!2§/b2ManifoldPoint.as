package §0!2§
{
   import §=E§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §3D§:Number;
      
      public var §+7§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§"o§();
      }
      
      public function §"o§() : void
      {
         this.m_localPoint.§^!#§();
         this.§3D§ = 0;
         this.§+7§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§3D§ = param1.§3D§;
         this.§+7§ = param1.§+7§;
         this.m_id.Set(param1.m_id);
      }
   }
}
