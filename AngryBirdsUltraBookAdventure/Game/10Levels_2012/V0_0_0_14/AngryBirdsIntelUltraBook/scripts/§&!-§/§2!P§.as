package §&!-§
{
   import §8>§.b2Vec2;
   
   public class §2!P§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §2!P§()
      {
         this.v = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(param1:§2!P§) : void
      {
         this.v.SetV(param1.v);
         this.id.Set(param1.id);
      }
   }
}
