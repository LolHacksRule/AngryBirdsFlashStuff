package §_-qg§
{
   import §_-Ja§.b2Vec2;
   
   public class §_-uS§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §_-uS§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.v = new b2Vec2();
            if(_loc1_)
            {
               this.id = new b2ContactID();
               if(_loc1_)
               {
                  addr46:
                  super();
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function Set(param1:§_-uS§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.v.SetV(param1.v);
            if(_loc3_ || _loc2_)
            {
               addr42:
               this.id.Set(param1.id);
            }
            return;
         }
         §§goto(addr42);
      }
   }
}
