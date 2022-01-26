package §%!B§
{
   import §&!B§.b2Vec2;
   
   public class §9!#§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §9!#§()
      {
         this.v = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(param1:§9!#§) : void
      {
         this.v.SetV(param1.v);
         this.id.Set(param1.id);
      }
   }
}
