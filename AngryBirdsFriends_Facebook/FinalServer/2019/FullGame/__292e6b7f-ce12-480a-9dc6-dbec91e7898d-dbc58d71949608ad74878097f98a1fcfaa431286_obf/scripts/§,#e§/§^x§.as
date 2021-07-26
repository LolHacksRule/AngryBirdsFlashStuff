package §,#E§
{
   import §04§.b2Vec2;
   
   public class §^x§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §^x§()
      {
         this.v = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(param1:§^x§) : void
      {
         this.v.SetV(param1.v);
         this.id.Set(param1.id);
      }
   }
}
