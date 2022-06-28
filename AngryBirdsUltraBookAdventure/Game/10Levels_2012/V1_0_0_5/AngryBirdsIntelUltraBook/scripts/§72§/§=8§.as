package §72§
{
   import §>H§.b2Vec2;
   
   public class §=8§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §=8§()
      {
         this.v = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(param1:§=8§) : void
      {
         this.v.SetV(param1.v);
         this.id.Set(param1.id);
      }
   }
}
