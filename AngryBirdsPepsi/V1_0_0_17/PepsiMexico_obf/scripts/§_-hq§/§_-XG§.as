package §_-hq§
{
   public class §_-XG§
   {
       
      
      private var §_-vl§:int;
      
      private var §_-lU§:Object;
      
      public function §_-XG§(param1:int = -1, param2:Object = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
            if(!(_loc4_ && _loc3_))
            {
               this.§_-vl§ = param1;
               if(_loc3_)
               {
                  addr43:
                  this.§_-lU§ = param2;
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      public function get type() : int
      {
         return this.§_-vl§;
      }
      
      public function set type(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-vl§ = param1;
         }
      }
      
      public function get value() : Object
      {
         return this.§_-lU§;
      }
      
      public function set value(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§_-lU§ = param1;
         }
      }
   }
}
