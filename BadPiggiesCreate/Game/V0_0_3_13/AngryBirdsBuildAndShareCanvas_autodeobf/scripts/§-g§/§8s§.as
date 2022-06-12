package §-g§
{
   import §1!z§.b2Vec2;
   
   public class §8s§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §8s§()
      {
         this.v = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(param1:§8s§) : void
      {
         this.v.SetV(param1.v);
         this.id.Set(param1.id);
      }
   }
}
