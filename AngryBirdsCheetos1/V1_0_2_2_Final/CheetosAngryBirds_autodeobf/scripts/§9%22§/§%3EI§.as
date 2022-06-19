package §9"§
{
   import §0!G§.b2Vec2;
   
   public class §>I§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §>I§()
      {
         this.v = new b2Vec2();
         this.id = new b2ContactID();
         super();
      }
      
      public function Set(param1:§>I§) : void
      {
         this.v.SetV(param1.v);
         this.id.Set(param1.id);
      }
   }
}
