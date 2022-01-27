package §3m§
{
   import §&!S§.b2Vec2;
   
   public class §2!-§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §2!-§()
      {
         this.v = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(param1:§2!-§) : void
      {
         this.v.SetV(param1.v);
         this.id.Set(param1.id);
      }
   }
}
