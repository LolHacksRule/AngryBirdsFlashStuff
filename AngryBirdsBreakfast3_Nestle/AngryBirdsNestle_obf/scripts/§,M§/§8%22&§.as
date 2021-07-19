package §,M§
{
   import flash.utils.Dictionary;
   
   public class §8"&§ extends §!"7§
   {
       
      
      protected var §0r§:Dictionary;
      
      public function §8"&§(param1:String = "en")
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super(param1);
            while(true)
            {
               this.§0r§ = new Dictionary();
               while(!_loc2_)
               {
                  this.§0r§[param1] = new Dictionary();
                  if(!_loc2_)
                  {
                     return;
                     addr43:
                  }
               }
            }
         }
         §§goto(addr43);
      }
      
      override public function getLocalizedString(param1:String) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = "";
         if(!_loc4_)
         {
            if(this.§0r§[§3!`§][param1])
            {
               if(_loc3_ || param1)
               {
                  §§goto(addr44);
               }
            }
            §§goto(addr69);
         }
         addr44:
         §§push(this.§0r§[§3!`§][param1]);
         if(!(_loc4_ && param1))
         {
            _loc2_ = §§pop();
            addr69:
            return _loc2_;
         }
      }
   }
}
