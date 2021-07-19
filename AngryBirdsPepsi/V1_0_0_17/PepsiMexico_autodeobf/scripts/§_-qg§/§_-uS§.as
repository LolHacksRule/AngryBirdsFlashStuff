package §_-qg§
{
   import §_-Ja§.b2Vec2;
   
   public class §_-uS§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §_-uS§()
      {
         this.v = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(param1:§_-uS§) : void
      {
         this.v.SetV(param1.v);
         this.id.Set(param1.id);
      }
   }
}
