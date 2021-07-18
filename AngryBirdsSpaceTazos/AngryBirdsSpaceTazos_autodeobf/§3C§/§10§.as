package §3c§
{
   import §9t§.b2Vec2;
   
   public class §10§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §10§()
      {
         this.v = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(param1:§10§) : void
      {
         this.v.SetV(param1.v);
         this.id.Set(param1.id);
      }
   }
}
