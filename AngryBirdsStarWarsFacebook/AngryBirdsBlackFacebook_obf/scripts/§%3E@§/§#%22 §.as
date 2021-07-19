package §>@§
{
   import flash.utils.Dictionary;
   
   public class §#" § extends §`"8§
   {
       
      
      protected var §-"n§:Dictionary;
      
      public function §#" §(param1:String = "en")
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super(param1);
            while(true)
            {
               this.§-"n§ = new Dictionary();
               §§goto(addr65);
            }
         }
         addr65:
         while(true)
         {
            this.§-"n§[param1] = new Dictionary();
            if(!(_loc3_ && param1))
            {
               if(!_loc3_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function getLocalizedString(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = "";
         if(!_loc4_)
         {
            if(this.§-"n§[§!O§][param1])
            {
               if(!(_loc4_ && this))
               {
                  §§push(this.§-"n§[§!O§][param1]);
                  if(_loc3_ || this)
                  {
                     _loc2_ = §§pop();
                     addr69:
                     return _loc2_;
                  }
               }
            }
         }
         §§goto(addr69);
      }
   }
}
