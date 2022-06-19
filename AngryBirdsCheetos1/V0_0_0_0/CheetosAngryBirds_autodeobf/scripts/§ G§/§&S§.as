package § G§
{
   import §9"§.b2Vec2;
   
   public class §&S§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §&S§()
      {
         this.v = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(param1:§&S§) : void
      {
         this.v.SetV(param1.v);
         this.id.Set(param1.id);
      }
   }
}
