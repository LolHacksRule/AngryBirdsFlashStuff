package §0#P§
{
   public class §^!?§ extends §3"V§
   {
       
      
      public var type:String;
      
      public function §^!?§(param1:XML)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super();
            while(true)
            {
               this.name = param1.@name;
               while(!(_loc3_ && _loc2_))
               {
                  this.type = param1.@type;
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr45:
               }
            }
         }
         §§goto(addr45);
      }
   }
}
