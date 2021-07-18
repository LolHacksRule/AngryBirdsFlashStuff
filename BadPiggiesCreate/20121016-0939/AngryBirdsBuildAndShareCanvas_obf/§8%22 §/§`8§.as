package §8" §
{
   import §+!o§.§?"-§;
   import §7r§.§=q§;
   import flash.geom.Rectangle;
   
   public class §`8§
   {
       
      
      public function §`8§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §"!h§(param1:String, param2:§?"-§) : §=q§
      {
         return §=q§.§0"§(param2.getObjectWithID(param1));
      }
      
      public static function §]+§(param1:§=q§, param2:Vector.<§=q§>, param3:§?"-§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:§=q§ = null;
         var _loc6_:* = NaN;
         var _loc7_:Rectangle = null;
         var _loc8_:Rectangle = null;
         if(!(_loc9_ && param1))
         {
            param2.push(param1);
            if(!(_loc9_ && §`8§))
            {
               if(param1.isGround())
               {
                  if(_loc10_)
                  {
                     §§goto(addr50);
                  }
               }
            }
            var _loc4_:int = 0;
            while(_loc4_ < param3.getObjectCount())
            {
               _loc5_ = §=q§.§0"§(param3.getObject(_loc4_));
               if(_loc10_)
               {
                  if(param2.indexOf(_loc5_) > -1)
                  {
                     if(_loc9_ && param1)
                     {
                        addr99:
                        _loc7_ = param1.§]!&§(true);
                        _loc7_.left -= _loc6_;
                        if(_loc10_ || param1)
                        {
                           _loc7_.top -= _loc6_;
                           loop1:
                           while(true)
                           {
                              addr129:
                              while(true)
                              {
                                 _loc7_.right += _loc6_;
                                 addr136:
                                 while(_loc10_)
                                 {
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        while(true)
                        {
                           _loc7_.bottom += _loc6_;
                           if(_loc10_)
                           {
                              if(true)
                              {
                                 break;
                              }
                              §§goto(addr129);
                           }
                           §§goto(addr136);
                        }
                        _loc8_ = _loc5_.§]!&§(true);
                        if(!(_loc9_ && param2))
                        {
                           if(_loc7_.intersects(_loc8_))
                           {
                              if(_loc10_)
                              {
                                 §]+§(_loc5_,param2,param3);
                              }
                           }
                        }
                     }
                     _loc4_++;
                     continue;
                  }
                  §§push(0.6);
                  if(!_loc9_)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc6_ = §§pop();
                  if(!(_loc10_ || param1))
                  {
                     continue;
                  }
               }
               §§goto(addr99);
            }
            return;
         }
         addr50:
      }
   }
}
