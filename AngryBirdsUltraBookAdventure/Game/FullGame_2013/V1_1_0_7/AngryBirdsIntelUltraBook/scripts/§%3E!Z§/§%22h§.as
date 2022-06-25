package §>!Z§
{
   import §&H§.b2Vec2;
   
   public class §"h§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §"h§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.v = new b2Vec2();
            do
            {
               this.id = new b2ContactID();
               do
               {
                  super();
               }
               while(_loc1_ && _loc1_);
               
            }
            while(!_loc2_);
            
         }
      }
      
      public function Set(param1:§"h§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.v.SetV(param1.v);
         }
         do
         {
            this.id.Set(param1.id);
         }
         while(_loc3_);
         
      }
   }
}
