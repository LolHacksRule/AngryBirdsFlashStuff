package § Y§
{
   import §<!8§.b2Vec2;
   
   public class §>!F§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §>!F§()
      {
         this.v = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(param1:§>!F§) : void
      {
         this.v.SetV(param1.v);
         this.id.Set(param1.id);
      }
   }
}
