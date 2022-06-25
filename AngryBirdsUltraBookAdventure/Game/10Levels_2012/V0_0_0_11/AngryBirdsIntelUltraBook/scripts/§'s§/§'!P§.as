package §'s§
{
   import §&L§.b2Vec2;
   
   public class §'!P§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §'!P§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.v = new b2Vec2();
            while(true)
            {
               this.id = new b2ContactID();
               loop1:
               while(!(_loc1_ && _loc1_))
               {
                  while(true)
                  {
                     super();
                     if(_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
      
      public function Set(param1:§'!P§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.v.SetV(param1.v);
            do
            {
               this.id.Set(param1.id);
            }
            while(!_loc2_);
            
         }
      }
   }
}
