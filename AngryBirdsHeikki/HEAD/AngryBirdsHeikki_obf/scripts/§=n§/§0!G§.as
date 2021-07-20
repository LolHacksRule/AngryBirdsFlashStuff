package §=n§
{
   import §`!^§.b2Vec2;
   
   public class §0!G§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §0!G§()
      {
         this.v = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(param1:§0!G§) : void
      {
         this.v.SetV(param1.v);
         this.id.Set(param1.id);
      }
   }
}
