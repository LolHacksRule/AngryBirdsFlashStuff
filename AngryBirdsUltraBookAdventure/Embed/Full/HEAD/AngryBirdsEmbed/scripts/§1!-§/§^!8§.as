package §1!-§
{
   public class §^!8§ extends §[4§
   {
       
      
      public function §^!8§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §@!"§(param1:String) : String
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:§2n§ = null;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         var _loc6_:* = 0;
         try
         {
            _loc2_ = §<%§(param1);
            _loc3_ = param1.split("-");
            if(_loc9_ || _loc2_)
            {
               §§push(int(parseInt(_loc3_[1])));
               if(_loc9_ || _loc3_)
               {
                  _loc4_ = §§pop();
                  if(_loc9_)
                  {
                     §§push(_loc3_[0]);
                     if(!_loc8_)
                     {
                        _loc5_ = §§pop();
                        if(_loc9_)
                        {
                           addr82:
                           §§push(int(_loc2_.pageIndexes.indexOf(_loc5_)));
                           if(!_loc8_)
                           {
                              _loc6_ = §§pop();
                              if(_loc9_ || §^!8§)
                              {
                                 §§push(_loc4_);
                                 if(_loc9_ || _loc2_)
                                 {
                                    §§push(_loc6_);
                                    if(!_loc8_)
                                    {
                                       §§push(int(§§pop() + §§pop() * _loc2_.levelsPerPage));
                                       if(!_loc8_)
                                       {
                                          addr126:
                                          §§push(_loc4_ = §§pop());
                                       }
                                       return §§pop().toString();
                                    }
                                 }
                                 §§goto(addr126);
                              }
                              else
                              {
                                 addr129:
                                 §§push(param1);
                                 addr129:
                              }
                           }
                           §§goto(addr126);
                        }
                        §§goto(addr129);
                     }
                     return §§pop();
                  }
                  §§goto(addr82);
               }
               §§goto(addr126);
            }
            §§goto(addr129);
         }
         catch(e:Error)
         {
         }
         §§goto(addr129);
      }
   }
}
