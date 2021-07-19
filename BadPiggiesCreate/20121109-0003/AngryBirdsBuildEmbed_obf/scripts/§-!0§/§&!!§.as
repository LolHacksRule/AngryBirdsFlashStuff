package §-!0§
{
   public class §&!!§ extends §1^§
   {
       
      
      public function §&!!§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §0!'§(param1:String) : String
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc2_:§4!N§ = null;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         var _loc6_:* = 0;
         try
         {
            _loc2_ = §['§(param1);
            _loc3_ = param1.split("-");
            if(!_loc9_)
            {
               §§push(int(parseInt(_loc3_[1])));
               if(_loc8_)
               {
                  _loc4_ = §§pop();
                  if(!_loc9_)
                  {
                     §§push(_loc3_[0]);
                     if(_loc8_ || §&!!§)
                     {
                        _loc5_ = §§pop();
                        if(_loc8_)
                        {
                           addr76:
                           §§push(int(_loc2_.pageIndexes.indexOf(_loc5_)));
                           if(!_loc9_)
                           {
                              addr83:
                              _loc6_ = §§pop();
                              if(_loc8_ || _loc2_)
                              {
                                 §§goto(addr91);
                              }
                              else
                              {
                                 §§goto(addr136);
                              }
                           }
                           §§goto(addr109);
                        }
                        §§goto(addr91);
                     }
                     §§goto(addr136);
                  }
                  addr91:
                  §§push(_loc4_);
                  if(_loc8_ || param1)
                  {
                     addr109:
                     §§push(_loc6_);
                     if(!_loc9_)
                     {
                        §§goto(addr121);
                     }
                     _loc4_ = §§pop();
                  }
                  addr121:
                  §§push(int(§§pop() + §§pop() * _loc2_.levelsPerPage));
                  if(_loc8_)
                  {
                     §§push(§§pop());
                  }
                  return §§pop().toString();
               }
               §§goto(addr83);
            }
            §§goto(addr76);
         }
         catch(e:Error)
         {
         }
         addr136:
         return param1;
      }
   }
}
