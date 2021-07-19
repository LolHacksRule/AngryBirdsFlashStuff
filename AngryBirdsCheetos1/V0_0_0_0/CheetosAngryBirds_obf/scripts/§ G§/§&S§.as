package § G§
{
   import §9"§.b2Vec2;
   
   public class §&S§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §&S§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
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
            while(!_loc2_);
            
         }
         while(!(_loc2_ || _loc1_));
         
      }
      
      public function Set(param1:§&S§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.v.SetV(param1.v);
            do
            {
               this.id.Set(param1.id);
            }
            while(!_loc3_);
            
         }
      }
   }
}
