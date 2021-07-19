package §%!r§
{
   import flash.utils.Dictionary;
   
   public class §&!!§ extends § !p§
   {
       
      
      protected var § "5§:Dictionary;
      
      public function §&!!§(param1:String = "en")
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            super(param1);
         }
         do
         {
            this.§ "5§ = new Dictionary();
            do
            {
               this.§ "5§[param1] = new Dictionary();
            }
            while(!_loc2_);
            
         }
         while(_loc3_);
         
      }
      
      override public function getLocalizedString(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = "";
         if(_loc4_)
         {
            if(this.§ "5§[§^N§][param1])
            {
               if(!(_loc3_ && _loc2_))
               {
                  §§goto(addr45);
               }
            }
            §§goto(addr65);
         }
         addr45:
         §§push(this.§ "5§[§^N§][param1]);
         if(!_loc3_)
         {
            _loc2_ = §§pop();
            addr65:
            return _loc2_;
         }
      }
   }
}
