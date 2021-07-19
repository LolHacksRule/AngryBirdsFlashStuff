package §>"%§
{
   public class §%"4§
   {
       
      
      public var §8#=§:String;
      
      public var tag:String;
      
      public function §%"4§(param1:String = "", param2:String = "")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§8#=§ = param1;
               while(!(_loc4_ && this))
               {
                  this.tag = param2;
                  if(!(_loc3_ || param2))
                  {
                     continue;
                  }
                  return;
                  addr44:
               }
            }
         }
         §§goto(addr44);
      }
      
      public function get id() : String
      {
         return String(this.§8#=§ + this.tag);
      }
   }
}
