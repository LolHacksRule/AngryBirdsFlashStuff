package §-j§
{
   import §[K§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §"G§:Number;
      
      public var §7q§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§&-§();
      }
      
      public function §&-§() : void
      {
         this.m_localPoint.§3S§();
         this.§"G§ = 0;
         this.§7q§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§"G§ = param1.§"G§;
         this.§7q§ = param1.§7q§;
         this.m_id.Set(param1.m_id);
      }
   }
}
