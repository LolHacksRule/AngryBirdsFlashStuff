package §_-yI§
{
   import §_-cP§.b2Vec2;
   
   public class §_-7x§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §_-7x§()
      {
         this.v = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(param1:§_-7x§) : void
      {
         this.v.SetV(param1.v);
         this.id.Set(param1.id);
      }
   }
}
