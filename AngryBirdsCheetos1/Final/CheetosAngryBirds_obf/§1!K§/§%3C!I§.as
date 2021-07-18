package §1!K§
{
   public class §<!I§
   {
      
      private static var §5w§:Object;
       
      
      public function §<!I§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §3! §(param1:String, param2:Class) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            loop0:
            do
            {
               if(§5w§ == null)
               {
                  while(true)
                  {
                     §5w§ = new Object();
                     addr104:
                     while(true)
                     {
                     }
                  }
                  addr90:
               }
               while(!§?! §(param1))
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     continue loop0;
                  }
                  §§goto(addr104);
               }
               throw new Error("Trying to add a duplicate asset: " + param1);
            }
            while(!_loc3_);
            
            §5w§[param1] = new §0U§(param1,param2);
            return;
         }
         §§goto(addr90);
      }
      
      public static function §?! §(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            if(_loc2_ || param1)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
            while(§5w§[param1] != null)
            {
               if(_loc3_ && _loc2_)
               {
                  break;
               }
               if(!_loc3_)
               {
                  §§goto(addr57);
               }
            }
            §§push(false);
            if(!(_loc3_ && _loc3_))
            {
               return §§pop();
            }
            §§goto(addr57);
         }
         addr57:
         return true;
      }
      
      public static function §;!U§(param1:String, param2:Boolean = true) : Class
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §§push(param1);
            if(_loc5_)
            {
               §§push(§§pop().toUpperCase());
            }
            param1 = §§pop();
         }
         var _loc3_:§0U§ = §5w§[param1];
         if(_loc5_)
         {
            if(_loc3_ == null)
            {
               if(!(_loc4_ && _loc3_))
               {
                  if(param2)
                  {
                     throw new Error("Asset not in cache: " + param1);
                  }
               }
               return null;
            }
         }
         return _loc3_.§<!J§;
      }
   }
}
