package §72§
{
   import §>H§.b2Vec2;
   
   public class §=8§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §=8§()
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
            while(!_loc1_)
            {
               super();
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function Set(param1:§=8§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.v.SetV(param1.v);
            do
            {
               this.id.Set(param1.id);
            }
            while(!(_loc3_ || _loc3_));
            
         }
      }
   }
}
