package §[K§
{
   public class §%!H§
   {
       
      
      protected var §-Y§:Number;
      
      protected var §%!;§:Number;
      
      protected var §,&§:Number;
      
      protected var §<f§:Boolean;
      
      public function §%!H§(param1:Number, param2:Number, param3:Number, param4:Boolean)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            super();
            while(true)
            {
               this.§-Y§ = param1;
               while(!_loc6_)
               {
                  this.§%!;§ = param2;
                  while(!(_loc6_ && param3))
                  {
                     this.§,&§ = param3;
                     loop3:
                     while(_loc5_ || param2)
                     {
                        while(true)
                        {
                           this.§<f§ = param4;
                           if(_loc5_ || param3)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      public function get x() : Number
      {
         return this.§-Y§;
      }
      
      public function get y() : Number
      {
         return this.§%!;§;
      }
      
      public function get scale() : Number
      {
         return this.§,&§;
      }
      
      public function get §^!$§() : Boolean
      {
         return this.§<f§;
      }
   }
}
