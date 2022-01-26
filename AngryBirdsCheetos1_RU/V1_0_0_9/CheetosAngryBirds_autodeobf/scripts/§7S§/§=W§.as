package §7S§
{
   import §;U§.b2Vec2;
   
   public class §=W§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §=W§()
      {
         this.v = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(param1:§=W§) : void
      {
         this.v.SetV(param1.v);
         this.id.Set(param1.id);
      }
   }
}
