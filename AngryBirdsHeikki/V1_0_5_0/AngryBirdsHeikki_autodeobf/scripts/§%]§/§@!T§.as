package §%]§
{
   import §,!3§.b2Vec2;
   
   public class §@!T§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §@!T§()
      {
         this.v = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(param1:§@!T§) : void
      {
         this.v.SetV(param1.v);
         this.id.Set(param1.id);
      }
   }
}
