package §-"?§
{
   import flash.utils.Dictionary;
   
   public class §4"u§
   {
      
      private static var §0"J§:Dictionary;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §0"J§ = new Dictionary();
         }
      }
      
      public function §4"u§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §#!y§(param1:Object, param2:String, param3:Number, param4:Number, param5:Function, param6:Class) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            if(§0"J§[param1])
            {
               addr77:
               while(true)
               {
                  §3S§(§0"J§[param1]).stop();
                  loop3:
                  while(true)
                  {
                     delete §0"J§[param1];
                     addr55:
                     addr62:
                     while(_loc7_ && param3)
                     {
                        continue loop3;
                     }
                  }
               }
               addr77:
            }
            while(true)
            {
               §0"J§[param1] = new param6(param1,param2,param3,param4,param5);
               if(_loc8_)
               {
                  if(!_loc7_)
                  {
                     break;
                  }
                  §§goto(addr77);
               }
               §§goto(addr55);
               §§goto(addr62);
            }
            return;
         }
         §§goto(addr77);
      }
      
      static function §'"5§(param1:§3S§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            delete §0"J§[param1.§!#]§];
         }
      }
   }
}
