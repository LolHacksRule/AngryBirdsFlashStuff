package §1!K§
{
   public class §0U§
   {
       
      
      private var §#J§:String;
      
      private var §#h§:Class;
      
      public function §0U§(param1:String, param2:Class)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super();
            while(true)
            {
               this.§#J§ = param1;
               loop1:
               while(_loc4_)
               {
                  while(true)
                  {
                     this.§#h§ = param2;
                     if(_loc4_ || _loc3_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr67);
      }
      
      public function get §7m§() : String
      {
         return this.§#J§;
      }
      
      public function set §7m§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§#J§ = param1;
         }
      }
      
      public function get §<!J§() : Class
      {
         return this.§#h§;
      }
      
      public function set §<!J§(param1:Class) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#h§ = param1;
         }
      }
   }
}
