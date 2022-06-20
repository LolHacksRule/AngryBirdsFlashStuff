package §7"^§
{
   import §%!9§.b2Vec2;
   
   public class §0!a§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §0!a§()
      {
         this.v = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(param1:§0!a§) : void
      {
         this.v.SetV(param1.v);
         this.id.Set(param1.id);
      }
   }
}
