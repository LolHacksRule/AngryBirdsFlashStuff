package §!u§
{
   import §;h§.b2Vec2;
   
   public class §&P§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §&P§()
      {
         this.v = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(param1:§&P§) : void
      {
         this.v.SetV(param1.v);
         this.id.Set(param1.id);
      }
   }
}
