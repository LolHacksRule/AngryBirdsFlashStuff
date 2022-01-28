package §_-mg§
{
   import §_-bA§.b2Vec2;
   
   public class §_-GN§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §_-GN§()
      {
         this.v = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(param1:§_-GN§) : void
      {
         this.v.SetV(param1.v);
         this.id.Set(param1.id);
      }
   }
}
