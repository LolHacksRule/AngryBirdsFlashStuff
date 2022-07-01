package §-g§
{
   import §1!z§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §+!i§:Number;
      
      public var §"!y§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§;!V§();
      }
      
      public function §;!V§() : void
      {
         this.m_localPoint.§4e§();
         this.§+!i§ = 0;
         this.§"!y§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§+!i§ = param1.§+!i§;
         this.§"!y§ = param1.§"!y§;
         this.m_id.Set(param1.m_id);
      }
   }
}
