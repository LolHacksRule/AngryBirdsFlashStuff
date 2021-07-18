package §`a§
{
   public class §9!2§
   {
       
      
      protected var mX:Number;
      
      protected var mY:Number;
      
      protected var §7P§:Number;
      
      protected var §7!9§:Boolean;
      
      public function §9!2§(param1:Number, param2:Number, param3:Number, param4:Boolean)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super();
            if(!_loc6_)
            {
               this.mX = param1;
               addr22:
               if(!(_loc6_ && this))
               {
                  addr52:
                  this.mY = param2;
                  if(_loc5_ || this)
                  {
                     this.§7P§ = param3;
                     if(!(_loc6_ && param1))
                     {
                        addr72:
                        this.§7!9§ = param4;
                     }
                     return;
                  }
               }
               §§goto(addr72);
            }
            §§goto(addr52);
         }
         §§goto(addr22);
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function get scale() : Number
      {
         return this.§7P§;
      }
      
      public function get §3!a§() : Boolean
      {
         return this.§7!9§;
      }
   }
}
