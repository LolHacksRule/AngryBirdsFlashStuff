package §&!-§
{
   import §8>§.b2Vec2;
   
   public class §2!P§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §2!P§()
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
         while(!_loc2_);
         
      }
      
      public function Set(param1:§2!P§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
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
