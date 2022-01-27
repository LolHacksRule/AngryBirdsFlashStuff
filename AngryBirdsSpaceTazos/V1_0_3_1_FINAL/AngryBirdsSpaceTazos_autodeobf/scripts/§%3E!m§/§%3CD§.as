package §>!m§
{
   import §[!f§.b2Vec2;
   
   public class §<D§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §<D§()
      {
         this.v = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(param1:§<D§) : void
      {
         this.v.SetV(param1.v);
         this.id.Set(param1.id);
      }
   }
}
