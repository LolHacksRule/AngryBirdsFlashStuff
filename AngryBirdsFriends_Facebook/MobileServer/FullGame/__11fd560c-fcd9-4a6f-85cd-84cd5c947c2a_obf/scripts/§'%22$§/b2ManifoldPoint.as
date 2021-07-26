package §'"$§
{
   import § "%§.b2Vec2;
   
   public class b2ManifoldPoint
   {
       
      
      public var m_localPoint:b2Vec2;
      
      public var §@#t§:Number;
      
      public var §2!x§:Number;
      
      public var m_id:b2ContactID;
      
      public function b2ManifoldPoint()
      {
         this.m_localPoint = new b2Vec2();
         this.m_id = new b2ContactID();
         super();
         this.§1!M§();
      }
      
      public function §1!M§() : void
      {
         this.m_localPoint.§#!t§();
         this.§@#t§ = 0;
         this.§2!x§ = 0;
         this.m_id.key = 0;
      }
      
      public function Set(param1:b2ManifoldPoint) : void
      {
         this.m_localPoint.SetV(param1.m_localPoint);
         this.§@#t§ = param1.§@#t§;
         this.§2!x§ = param1.§2!x§;
         this.m_id.Set(param1.m_id);
      }
   }
}
