package §!m§
{
   import §>!8§.b2Vec2;
   
   public class §&!W§
   {
       
      
      public var v:b2Vec2;
      
      public var id:b2ContactID;
      
      public function §&!W§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.v = new b2Vec2();
            while(true)
            {
               this.id = new b2ContactID();
               §§goto(addr52);
            }
         }
         addr52:
         while(true)
         {
            super();
            if(_loc2_ || _loc1_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function Set(param1:§&!W§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.v.SetV(param1.v);
         }
         do
         {
            this.id.Set(param1.id);
         }
         while(!_loc2_);
         
      }
   }
}
