package §9"§
{
   import §0!G§.b2Vec2;
   
   public class §>I§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §>I§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.v = new b2Vec2();
         }
         do
         {
            this.id = new b2ContactID();
            do
            {
               super();
            }
            while(!_loc1_);
            
         }
         while(_loc2_);
         
      }
      
      public function Set(param1:§>I§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.v.SetV(param1.v);
         }
         do
         {
            this.id.Set(param1.id);
         }
         while(!_loc3_);
         
      }
   }
}
