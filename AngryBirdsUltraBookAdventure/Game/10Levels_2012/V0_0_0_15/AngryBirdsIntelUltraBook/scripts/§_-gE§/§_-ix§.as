package §_-gE§
{
   import §_-Yp§.b2Vec2;
   
   public class §_-ix§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §_-ix§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
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
            while(_loc1_);
            
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function Set(param1:§_-ix§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
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
