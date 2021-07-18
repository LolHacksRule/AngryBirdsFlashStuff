package §!!7§
{
   public class §"K§
   {
       
      
      private var §%!$§:int;
      
      private var § 5§:Object;
      
      public function §"K§(param1:int = -1, param2:Object = null)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§%!$§ = param1;
               §§goto(addr57);
            }
         }
         addr57:
         while(true)
         {
            this.§ 5§ = param2;
            if(!_loc3_)
            {
               if(_loc4_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get type() : int
      {
         return this.§%!$§;
      }
      
      public function set type(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§%!$§ = param1;
         }
      }
      
      public function get value() : Object
      {
         return this.§ 5§;
      }
      
      public function set value(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ 5§ = param1;
         }
      }
   }
}
