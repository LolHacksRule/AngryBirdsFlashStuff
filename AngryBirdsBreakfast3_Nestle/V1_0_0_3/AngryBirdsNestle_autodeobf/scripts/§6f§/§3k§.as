package §6f§
{
   import §,!k§.b2Vec2;
   
   public class §3k§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §3k§()
      {
         this.v = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(param1:§3k§) : void
      {
         this.v.SetV(param1.v);
         this.id.Set(param1.id);
      }
   }
}
