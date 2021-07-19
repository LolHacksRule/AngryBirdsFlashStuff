package §9!w§
{
   public class §]"7§
   {
       
      
      protected var §""4§:Number;
      
      protected var §%W§:Number;
      
      protected var §=T§:Number;
      
      protected var §2,§:Boolean;
      
      public function §]"7§(param1:Number, param2:Number, param3:Number, param4:Boolean)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super();
            loop0:
            while(true)
            {
               this.§""4§ = param1;
               while(true)
               {
                  this.§%W§ = param2;
                  loop2:
                  while(!_loc5_)
                  {
                     while(true)
                     {
                        this.§=T§ = param3;
                        while(_loc6_ || this)
                        {
                           this.§2,§ = param4;
                           if(!_loc5_)
                           {
                              continue loop0;
                           }
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      public function get x() : Number
      {
         return this.§""4§;
      }
      
      public function get y() : Number
      {
         return this.§%W§;
      }
      
      public function get scale() : Number
      {
         return this.§=T§;
      }
      
      public function get §8Q§() : Boolean
      {
         return this.§2,§;
      }
   }
}
