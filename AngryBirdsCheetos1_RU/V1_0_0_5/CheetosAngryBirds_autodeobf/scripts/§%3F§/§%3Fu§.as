package §?§
{
   import §+,§.b2Vec2;
   
   public class §?u§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §?u§()
      {
         this.v = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(param1:§?u§) : void
      {
         this.v.SetV(param1.v);
         this.id.Set(param1.id);
      }
   }
}
