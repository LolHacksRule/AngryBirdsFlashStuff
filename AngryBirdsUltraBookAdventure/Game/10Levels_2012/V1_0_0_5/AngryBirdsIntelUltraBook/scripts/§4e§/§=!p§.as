package §4e§
{
   import §0!N§.§4n§;
   import §0!N§.LevelManager;
   
   public class §=!p§ extends LevelManager
   {
       
      
      public function §=!p§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §1!j§(param1:String) : String
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:§4n§ = null;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         var _loc6_:* = 0;
         try
         {
            _loc2_ = §2!9§(param1);
            _loc3_ = param1.split("-");
            if(!_loc9_)
            {
               §§push(int(parseInt(_loc3_[1])));
               while(true)
               {
                  _loc4_ = §§pop();
               }
               addr125:
            }
            while(true)
            {
               §§push(_loc3_[0]);
               if(_loc8_)
               {
                  _loc5_ = §§pop();
                  §§push(int(_loc2_.pageIndexes.indexOf(_loc5_)));
                  while(true)
                  {
                     _loc6_ = §§pop();
                     §§push(_loc4_);
                     if(_loc9_ && §=!p§)
                     {
                        break;
                     }
                     §§push(_loc6_);
                     if(_loc9_)
                     {
                        _loc4_ = §§pop();
                        break;
                     }
                     addr74:
                     §§push(int(§§pop() + §§pop() * _loc2_.levelsPerPage));
                     if(!_loc9_)
                     {
                        if(_loc9_)
                        {
                           continue;
                        }
                        §§goto(addr74);
                        §§push(§§pop());
                     }
                     break;
                  }
                  if(_loc8_)
                  {
                     break;
                  }
                  continue;
               }
            }
            return §§pop().toString();
         }
         catch(e:Error)
         {
         }
         return §§pop();
      }
   }
}
