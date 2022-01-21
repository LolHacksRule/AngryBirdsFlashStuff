package §8!n§
{
   import §@![§.b2Vec2;
   
   public class §+m§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §+m§()
      {
         this.v = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(param1:§+m§) : void
      {
         this.v.SetV(param1.v);
         this.id.Set(param1.id);
      }
   }
}
