package §'"-§
{
   import §6!^§.b2Vec2;
   
   public class §^!`§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §^!`§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.v = new b2Vec2();
         }
         while(true)
         {
            this.id = new b2ContactID();
            while(!(_loc1_ && this))
            {
               super();
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function Set(param1:§^!`§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
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
