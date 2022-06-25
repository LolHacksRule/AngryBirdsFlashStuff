package §>!Z§
{
   import §&H§.b2Vec2;
   
   public class §"h§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §"h§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.v = new b2Vec2();
         }
         while(true)
         {
            this.id = new b2ContactID();
            while(!_loc2_)
            {
               super();
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function Set(param1:§"h§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.v.SetV(param1.v);
            do
            {
               this.id.Set(param1.id);
            }
            while(_loc3_ && _loc3_);
            
         }
      }
   }
}
