package §!4§
{
   import §6A§.b2Vec2;
   
   public class §+!>§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §+!>§()
      {
         this.v = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(param1:§+!>§) : void
      {
         this.v.SetV(param1.v);
         this.id.Set(param1.id);
      }
   }
}
