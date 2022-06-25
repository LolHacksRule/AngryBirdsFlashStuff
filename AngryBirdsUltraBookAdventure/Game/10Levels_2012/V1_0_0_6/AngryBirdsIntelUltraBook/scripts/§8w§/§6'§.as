package §8w§
{
   import §;%§.b2Vec2;
   
   public class §6'§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §6'§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.v = new b2Vec2();
            while(true)
            {
               this.id = new b2ContactID();
               while(!_loc2_)
               {
                  super();
                  if(!_loc2_)
                  {
                     return;
                     addr43:
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      public function Set(param1:§6'§) : void
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
         while(_loc2_);
         
      }
   }
}
