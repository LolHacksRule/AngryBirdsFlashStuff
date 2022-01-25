package §!§
{
   import §@!E§.b2Vec2;
   
   public class §8!b§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §8!b§()
      {
         this.v = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(param1:§8!b§) : void
      {
         this.v.SetV(param1.v);
         this.id.Set(param1.id);
      }
   }
}
