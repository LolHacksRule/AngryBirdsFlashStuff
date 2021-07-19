package §!4§
{
   import §6A§.b2Vec2;
   
   public class §+!>§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §+!>§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.v = new b2Vec2();
            while(true)
            {
               this.id = new b2ContactID();
               while(_loc1_)
               {
                  super();
                  if(_loc1_)
                  {
                     return;
                     addr38:
                  }
               }
            }
         }
         §§goto(addr38);
      }
      
      public function Set(param1:§+!>§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.v.SetV(param1.v);
            do
            {
               this.id.Set(param1.id);
            }
            while(_loc2_);
            
         }
      }
   }
}
