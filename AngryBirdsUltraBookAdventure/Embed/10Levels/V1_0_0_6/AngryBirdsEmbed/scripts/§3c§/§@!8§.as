package §3c§
{
   public class §@!8§
   {
       
      
      protected var §^C§:Number;
      
      protected var §0§:Number;
      
      protected var §]H§:Number;
      
      protected var §6R§:Boolean;
      
      public function §@!8§(param1:Number, param2:Number, param3:Number, param4:Boolean)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            super();
            if(_loc6_)
            {
               this.§^C§ = param1;
               if(!(_loc5_ && param3))
               {
                  this.§0§ = param2;
                  if(_loc6_)
                  {
                     this.§]H§ = param3;
                     if(_loc6_ || this)
                     {
                        addr73:
                        this.§6R§ = param4;
                     }
                  }
                  §§goto(addr73);
               }
            }
            return;
         }
         §§goto(addr73);
      }
      
      public function get x() : Number
      {
         return this.§^C§;
      }
      
      public function get y() : Number
      {
         return this.§0§;
      }
      
      public function get scale() : Number
      {
         return this.§]H§;
      }
      
      public function get §3!&§() : Boolean
      {
         return this.§6R§;
      }
   }
}
