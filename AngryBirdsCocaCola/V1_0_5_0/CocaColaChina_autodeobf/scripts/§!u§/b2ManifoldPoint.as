package §!u§
{
   import §;h§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §'!E§:Number;
      
      public var §>4§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§+!K§();
      }
      
      public function §+!K§() : void
      {
         this.m_localPoint.§9!V§();
         this.§'!E§ = 0;
         this.§>4§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§'!E§ = param1.§'!E§;
         this.§>4§ = param1.§>4§;
         this.m_id.Set(param1.m_id);
      }
   }
}
