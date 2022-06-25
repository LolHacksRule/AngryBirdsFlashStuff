package §>!C§
{
   public class §3k§ extends §6M§
   {
       
      
      public function §3k§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super();
         }
      }
      
      public static function §4'§(param1:String) : String
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:§^h§ = null;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         var _loc6_:* = 0;
         try
         {
            _loc2_ = §1o§(param1);
            _loc3_ = param1.split("-");
            if(_loc9_ || _loc3_)
            {
               §§push(int(parseInt(_loc3_[1])));
               if(!_loc8_)
               {
                  _loc4_ = §§pop();
                  if(_loc9_ || _loc3_)
                  {
                     §§push(_loc3_[0]);
                     if(_loc9_ || _loc2_)
                     {
                        _loc5_ = §§pop();
                        if(_loc9_)
                        {
                           §§goto(addr87);
                        }
                        addr156:
                        §§push(param1);
                     }
                     return §§pop();
                  }
                  addr87:
                  §§push(int(_loc2_.pageIndexes.indexOf(_loc5_)));
                  if(_loc9_ || _loc2_)
                  {
                     _loc6_ = §§pop();
                     if(_loc9_)
                     {
                        §§push(_loc4_);
                        if(!(_loc8_ && §3k§))
                        {
                           §§push(_loc6_);
                           if(_loc9_ || _loc3_)
                           {
                              §§goto(addr142);
                           }
                           _loc4_ = §§pop();
                           §§goto(addr142);
                        }
                        §§goto(addr140);
                     }
                  }
                  §§goto(addr142);
               }
               addr142:
               §§push(int(§§pop() + §§pop() * _loc2_.levelsPerPage));
               if(!(_loc8_ && _loc2_))
               {
                  addr140:
                  §§push(§§pop());
               }
               return §§pop().toString();
            }
            §§goto(addr87);
         }
         catch(e:Error)
         {
         }
         §§goto(addr156);
      }
   }
}
