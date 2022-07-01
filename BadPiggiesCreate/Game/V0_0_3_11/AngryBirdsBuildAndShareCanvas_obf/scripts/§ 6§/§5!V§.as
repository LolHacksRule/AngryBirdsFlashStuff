package § 6§
{
   import §+L§.b2Vec2;
   
   public class §5!V§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §5!V§()
      {
         this.v = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(param1:§5!V§) : void
      {
         this.v.SetV(param1.v);
         this.id.Set(param1.id);
      }
   }
}
