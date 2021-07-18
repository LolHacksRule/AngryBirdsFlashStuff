package §%4§
{
   import §<!a§.b2Vec2;
   
   public class §1!-§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §1!-§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.v = new b2Vec2();
            while(true)
            {
               this.id = new b2ContactID();
               while(_loc2_ || this)
               {
                  super();
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr39:
               }
            }
         }
         §§goto(addr39);
      }
      
      public function Set(param1:§1!-§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
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
