package §3c§
{
   import §9t§.b2Vec2;
   
   public class §10§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §10§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.v = new b2Vec2();
            while(true)
            {
               this.id = new b2ContactID();
               while(_loc1_)
               {
                  super();
                  if(_loc1_ || this)
                  {
                     return;
                     addr48:
                  }
               }
            }
         }
         §§goto(addr48);
      }
      
      public function Set(param1:§10§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.v.SetV(param1.v);
         }
         do
         {
            this.id.Set(param1.id);
         }
         while(_loc2_ && _loc2_);
         
      }
   }
}
