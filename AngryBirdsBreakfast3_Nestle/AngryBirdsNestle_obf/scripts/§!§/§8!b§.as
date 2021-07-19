package §!§
{
   import §@!E§.b2Vec2;
   
   public class §8!b§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §8!b§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.v = new b2Vec2();
            do
            {
               this.id = new b2ContactID();
               do
               {
                  super();
               }
               while(_loc1_ && _loc1_);
               
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      public function Set(param1:§8!b§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
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
