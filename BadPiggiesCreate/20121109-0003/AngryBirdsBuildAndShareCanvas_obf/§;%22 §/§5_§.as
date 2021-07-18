package §;" §
{
   import §&!P§.§^!!§;
   import §7t§.§7a§;
   import flash.geom.Rectangle;
   
   public class §5_§
   {
       
      
      public function §5_§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §<!v§(param1:String, param2:§^!!§) : §7a§
      {
         return §7a§.§^!g§(param2.getObjectWithID(param1));
      }
      
      public static function §<!i§(param1:§7a§, param2:Vector.<§7a§>, param3:§^!!§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:§7a§ = null;
         var _loc6_:* = NaN;
         var _loc7_:Rectangle = null;
         var _loc8_:Rectangle = null;
         if(_loc10_ || param2)
         {
            param2.push(param1);
            if(!_loc9_)
            {
               if(param1.isGround())
               {
                  if(!_loc9_)
                  {
                     return;
                  }
               }
            }
         }
         var _loc4_:int = 0;
         loop0:
         while(_loc4_ < param3.getObjectCount())
         {
            _loc5_ = §7a§.§^!g§(param3.getObject(_loc4_));
            if(!(_loc10_ || §5_§))
            {
               continue;
            }
            if(param2.indexOf(_loc5_) > -1)
            {
               if(_loc9_)
               {
                  addr99:
                  _loc7_ = param1.§&8§(true);
                  _loc7_.left -= _loc6_;
                  if(!_loc9_)
                  {
                     _loc7_.top -= _loc6_;
                  }
                  loop1:
                  while(true)
                  {
                     addr124:
                     addr146:
                     addr157:
                     while(true)
                     {
                        _loc7_.right += _loc6_;
                        continue loop1;
                     }
                     _loc8_ = _loc5_.§&8§(true);
                     if(!(_loc9_ && param2))
                     {
                        if(_loc7_.intersects(_loc8_))
                        {
                           if(_loc9_)
                           {
                           }
                           addr179:
                           _loc4_++;
                           continue loop0;
                        }
                        §§goto(addr179);
                     }
                     §<!i§(_loc5_,param2,param3);
                  }
               }
               §§goto(addr179);
            }
            else
            {
               §§push(0.6);
               if(!(_loc9_ && §5_§))
               {
                  §§push(Number(§§pop()));
               }
               _loc6_ = §§pop();
               if(_loc9_ && §5_§)
               {
                  continue;
               }
            }
            §§goto(addr99);
         }
      }
   }
}
