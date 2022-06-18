package §0J§
{
   import §`# §.b2Vec2;
   
   public class §4#c§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §4#c§()
      {
         this.v = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(param1:§4#c§) : void
      {
         this.v.SetV(param1.v);
         this.id.Set(param1.id);
      }
   }
}
