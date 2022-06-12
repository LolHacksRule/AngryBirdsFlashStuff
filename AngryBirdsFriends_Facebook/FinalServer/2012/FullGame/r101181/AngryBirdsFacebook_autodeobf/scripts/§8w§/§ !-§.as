package §8w§
{
   public class § !-§
   {
      
      public static var §-n§:Object = null;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §-n§ = null;
         }
      }
      
      public function § !-§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function injectData(param1:Object) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:Date = null;
         var _loc4_:* = NaN;
         for each(_loc2_ in param1)
         {
            _loc3_ = new Date();
            if(_loc7_)
            {
               §§push(Number(_loc3_.time));
               if(!_loc8_)
               {
                  §§push(_loc4_ = §§pop());
                  if(_loc7_ || _loc3_)
                  {
                     addr66:
                     §§push(§§pop() > _loc2_.cs);
                     if(!(_loc8_ && param1))
                     {
                        if(§§pop())
                        {
                           if(_loc7_ || _loc3_)
                           {
                              addr95:
                              §§pop();
                              addr115:
                              if(_loc7_ || _loc2_)
                              {
                                 addr104:
                                 §§push(_loc4_ < _loc2_.ce);
                              }
                              §-n§ = _loc2_;
                              continue;
                           }
                        }
                        if(!§§pop())
                        {
                           continue;
                        }
                        if(_loc8_ && param1)
                        {
                           continue;
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr95);
                  }
                  §§goto(addr104);
               }
               §§goto(addr66);
            }
            §§goto(addr95);
         }
      }
   }
}
