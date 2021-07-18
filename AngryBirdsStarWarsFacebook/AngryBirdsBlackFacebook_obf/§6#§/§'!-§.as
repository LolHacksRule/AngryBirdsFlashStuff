package §6#§
{
   import §0#P§.§`!$§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class §'!-§
   {
       
      
      public function §'!-§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §[`§(param1:*) : Vector.<§`!$§>
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:Vector.<§`!$§> = null;
         var _loc3_:§`!$§ = null;
         var _loc4_:DisplayObjectContainer = null;
         var _loc5_:DisplayObject = null;
         var _loc6_:* = 0;
         _loc2_ = new Vector.<§`!$§>();
         if(!_loc7_)
         {
            if(param1 is DisplayObjectContainer)
            {
               addr43:
               §§push(int((_loc4_ = param1 as DisplayObjectContainer).numChildren));
               if(_loc8_)
               {
                  §§push(§§pop());
                  if(!(_loc7_ && _loc2_))
                  {
                     _loc6_ = §§pop();
                     addr62:
                     §§push(0);
                  }
                  §§pop() > §§pop();
                  loop0:
                  while(true)
                  {
                     §§push(_loc6_);
                     if(_loc8_ || _loc2_)
                     {
                        §§push(§§pop());
                        if(!(_loc7_ && param1))
                        {
                           §§push(§§pop() - 1);
                        }
                        _loc6_ = §§pop();
                     }
                     if(!§§pop())
                     {
                        break;
                     }
                     _loc5_ = _loc4_.getChildAt(_loc6_);
                     _loc3_ = new §`!$§();
                     if(!(_loc7_ && _loc2_))
                     {
                        _loc3_.§!#]§ = _loc5_;
                     }
                     loop1:
                     while(true)
                     {
                        _loc3_.name = _loc5_.name;
                        loop2:
                        while(true)
                        {
                           addr114:
                           while(true)
                           {
                              _loc3_.type = _loc5_.toString();
                              while(!_loc7_)
                              {
                                 _loc2_.push(_loc3_);
                                 if(_loc8_ || _loc2_)
                                 {
                                    continue loop1;
                                 }
                              }
                              continue loop2;
                           }
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr161);
               }
               §§goto(addr62);
            }
            addr161:
            return _loc2_;
         }
         §§goto(addr43);
      }
   }
}
