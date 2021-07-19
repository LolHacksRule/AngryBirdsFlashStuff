package §3"§
{
   public class §?!?§ extends §0$§
   {
       
      
      public function §?!?§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §<P§(param1:String) : String
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:§&9§ = null;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         var _loc6_:* = 0;
         try
         {
            _loc2_ = §,o§(param1);
            _loc3_ = param1.split("-");
            if(!(_loc8_ && _loc2_))
            {
               §§push(int(parseInt(_loc3_[1])));
               loop0:
               while(true)
               {
                  _loc4_ = §§pop();
                  while(true)
                  {
                     §§push(_loc3_[0]);
                     if(_loc8_)
                     {
                        break;
                     }
                     _loc5_ = §§pop();
                     if(_loc9_)
                     {
                        §§push(int(_loc2_.pageIndexes.indexOf(_loc5_)));
                        while(_loc9_)
                        {
                           _loc6_ = §§pop();
                           if(!(_loc8_ && _loc3_))
                           {
                              §§goto(addr86);
                           }
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr151);
               }
            }
            while(true)
            {
               §§push(_loc4_);
               if(_loc9_ || _loc3_)
               {
                  §§push(_loc6_);
                  if(!_loc8_)
                  {
                     §§push(int(§§pop() + §§pop() * _loc2_.levelsPerPage));
                     if(_loc9_)
                     {
                        §§goto(addr77);
                     }
                  }
                  §§goto(addr86);
               }
               §§goto(addr77);
            }
            addr86:
            return (_loc4_ = §§pop()).toString();
         }
         catch(e:Error)
         {
         }
         addr151:
         return §§pop();
      }
   }
}
