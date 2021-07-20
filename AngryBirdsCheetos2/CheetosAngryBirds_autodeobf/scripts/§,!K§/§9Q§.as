package §,!K§
{
   public class §9Q§
   {
       
      
      protected var §7F§:Number;
      
      protected var §6_§:Number;
      
      protected var §#![§:Number;
      
      protected var §5!D§:Boolean;
      
      public function §9Q§(param1:Number, param2:Number, param3:Number, param4:Boolean)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.§7F§ = param1;
               loop1:
               while(_loc6_ || param2)
               {
                  while(true)
                  {
                     this.§6_§ = param2;
                     while(!_loc5_)
                     {
                        this.§#![§ = param3;
                        while(_loc6_)
                        {
                           this.§5!D§ = param4;
                           if(!(_loc5_ && this))
                           {
                              return;
                           }
                        }
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr81);
      }
      
      public function get x() : Number
      {
         return this.§7F§;
      }
      
      public function get y() : Number
      {
         return this.§6_§;
      }
      
      public function get scale() : Number
      {
         return this.§#![§;
      }
      
      public function get §%!X§() : Boolean
      {
         return this.§5!D§;
      }
   }
}
