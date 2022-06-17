package §,#E§
{
   import §04§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §5#I§:Number;
      
      public var §6L§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§`"R§();
      }
      
      public function §`"R§() : void
      {
         this.m_localPoint.§3-§();
         this.§5#I§ = 0;
         this.§6L§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§5#I§ = param1.§5#I§;
         this.§6L§ = param1.§6L§;
         this.m_id.Set(param1.m_id);
      }
   }
}
