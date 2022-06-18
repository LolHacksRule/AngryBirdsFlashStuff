package §9!$§
{
   import §3q§.b2Vec2;
   
   public class §6R§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §6R§()
      {
         this.v = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(param1:§6R§) : void
      {
         this.v.SetV(param1.v);
         this.id.Set(param1.id);
      }
   }
}
