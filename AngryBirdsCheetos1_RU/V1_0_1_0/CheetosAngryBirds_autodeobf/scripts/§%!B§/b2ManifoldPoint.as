package §%!B§
{
   import §&!B§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §"I§:Number;
      
      public var §4!&§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§^5§();
      }
      
      public function §^5§() : void
      {
         this.m_localPoint.§,!3§();
         this.§"I§ = 0;
         this.§4!&§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§"I§ = param1.§"I§;
         this.§4!&§ = param1.§4!&§;
         this.m_id.Set(param1.m_id);
      }
   }
}
