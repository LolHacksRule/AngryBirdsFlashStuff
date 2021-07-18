package §;0§
{
   import flash.utils.Dictionary;
   
   public class §&G§ extends §<!!§
   {
       
      
      protected var §-+§:Dictionary;
      
      public function §&G§(param1:String = "en")
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super(param1);
         }
         do
         {
            this.§-+§ = new Dictionary();
            do
            {
               this.§-+§[param1] = new Dictionary();
            }
            while(_loc2_);
            
         }
         while(_loc2_ && _loc3_);
         
      }
      
      override public function getLocalizedString(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = "";
         if(_loc3_)
         {
            if(this.§-+§[§-m§][param1])
            {
               if(_loc3_)
               {
                  §§push(this.§-+§[§-m§][param1]);
                  if(!(_loc4_ && param1))
                  {
                     _loc2_ = §§pop();
                     addr64:
                     return _loc2_;
                  }
               }
            }
         }
         §§goto(addr64);
      }
   }
}
