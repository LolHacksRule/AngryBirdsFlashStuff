package §7$§
{
   import §[R§.b2Vec2;
   
   public class §!b§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §!b§()
      {
         this.v = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(param1:§!b§) : void
      {
         this.v.SetV(param1.v);
         this.id.Set(param1.id);
      }
   }
}
