package §,"N§
{
   public class §1t§
   {
       
      
      protected var §6##§:String;
      
      protected var §3#+§:String;
      
      protected var §%n§:String;
      
      protected var §,!d§:String;
      
      public function §1t§(param1:String, param2:String, param3:String)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super();
            while(true)
            {
               this.§6##§ = param1;
               loop1:
               while(_loc4_)
               {
                  this.§3#+§ = param2;
                  while(true)
                  {
                     this.§%n§ = param3;
                     if(_loc4_)
                     {
                        if(!(_loc5_ && this))
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr51);
      }
      
      public function get id() : String
      {
         return this.§6##§;
      }
      
      public function get title() : String
      {
         return this.§3#+§;
      }
      
      public function get message() : String
      {
         return this.§%n§;
      }
   }
}
