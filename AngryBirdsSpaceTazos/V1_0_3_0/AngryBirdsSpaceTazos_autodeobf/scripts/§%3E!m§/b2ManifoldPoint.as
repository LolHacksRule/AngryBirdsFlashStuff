package §>!m§
{
   import §[!f§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §3"<§:Number;
      
      public var §,"8§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§;c§();
      }
      
      public function §;c§() : void
      {
         this.m_localPoint.§]#§();
         this.§3"<§ = 0;
         this.§,"8§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§3"<§ = param1.§3"<§;
         this.§,"8§ = param1.§,"8§;
         this.m_id.Set(param1.m_id);
      }
   }
}
