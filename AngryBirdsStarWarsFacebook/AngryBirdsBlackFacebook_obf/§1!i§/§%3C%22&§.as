package §1!i§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   
   public class §<"&§
   {
      
      public static const §7#@§:String = "Container_";
      
      public static const §-"8§:String = "MovieClip_";
      
      public static const §?"5§:Vector.<String>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §7#@§ = "Container_";
         }
         while(true)
         {
            §-"8§ = "MovieClip_";
            while(_loc2_ || _loc1_)
            {
               §?"5§ = new <String>[§7#@§,§-"8§];
               if(_loc2_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §<"&§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §0!n§(param1:String, param2:Vector.<String>) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = uint(0);
         while(true)
         {
            §§push(_loc3_);
            if(_loc5_)
            {
               if(!_loc4_)
               {
                  if(§§pop() >= param2.length)
                  {
                     if(_loc5_ || param1)
                     {
                        break;
                     }
                     loop1:
                     while(!(_loc5_ || §<"&§))
                     {
                        while(true)
                        {
                           _loc3_ = §§pop();
                           continue loop1;
                        }
                     }
                     continue;
                  }
                  if(param1.indexOf(param2[_loc3_]) == 0)
                  {
                     addr88:
                     return true;
                     addr87:
                  }
                  while(true)
                  {
                     §§push(_loc3_);
                  }
               }
               while(true)
               {
               }
            }
            §§goto(addr59);
         }
         if(_loc5_)
         {
            §§push(false);
            if(_loc5_)
            {
               return §§pop();
            }
         }
         else
         {
            §§goto(addr87);
         }
         §§goto(addr88);
      }
      
      private static function §`Q§(param1:MovieClip, param2:Vector.<String>) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:FrameLabel = null;
         var _loc5_:* = 0;
         var _loc3_:Array = param1.currentLabels;
         loop0:
         for each(_loc4_ in _loc3_)
         {
            if(_loc8_)
            {
               §§push(0);
               if(!(_loc9_ && param2))
               {
                  _loc5_ = §§pop();
                  while(true)
                  {
                     addr58:
                     while(true)
                     {
                        addr91:
                        while(true)
                        {
                           §§push(_loc5_);
                        }
                     }
                  }
                  addr90:
               }
               loop4:
               while(true)
               {
                  if(§§pop() >= param2.length)
                  {
                     continue loop0;
                  }
                  if(_loc4_.name.indexOf(param2[_loc5_]) == 0)
                  {
                     if(_loc8_ || param1)
                     {
                        if(!_loc9_)
                        {
                           break;
                        }
                        §§goto(addr90);
                     }
                     else
                     {
                        while(true)
                        {
                           addr40:
                           while(true)
                           {
                              _loc5_++;
                              if(!_loc8_)
                              {
                                 break;
                              }
                              if(_loc9_)
                              {
                                 continue;
                              }
                              if(true)
                              {
                                 continue loop4;
                              }
                           }
                           continue loop0;
                        }
                     }
                     §§goto(addr58);
                  }
                  §§goto(addr40);
               }
               return true;
            }
         }
         return false;
      }
      
      private static function §0!f§(param1:MovieClip, param2:Vector.<String>, param3:Vector.<MovieClip>) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(param3.indexOf(param1) == -1)
            {
               loop0:
               while(§`Q§(param1,param2))
               {
                  loop1:
                  while(true)
                  {
                     param1.gotoAndStop(1);
                     while(_loc4_)
                     {
                        param3.push(param1);
                        if(_loc4_ || param1)
                        {
                           if(_loc4_ || param3)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                     while(true)
                     {
                        continue loop0;
                     }
                     continue loop0;
                  }
                  if(!_loc5_)
                  {
                     break;
                  }
                  addr81:
                  return;
               }
               return;
            }
            §§goto(addr81);
         }
         §§goto(addr82);
      }
      
      public static function §6!t§(param1:MovieClip, param2:Vector.<String>, param3:Vector.<MovieClip>, param4:Vector.<String>) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:MovieClip = null;
         var _loc5_:* = uint(0);
         while(_loc5_ < param1.numChildren)
         {
            if(!(_loc6_ = param1.getChildAt(_loc5_) as MovieClip))
            {
               if(_loc8_)
               {
                  addr66:
                  if(_loc6_.name.indexOf(§7#@§) == 0)
                  {
                     if(!_loc7_)
                     {
                        continue;
                     }
                     addr74:
                     §6!t§(_loc6_,param2,param3,param4);
                     if(_loc8_ && param1)
                     {
                        continue;
                     }
                  }
               }
            }
            else if(§0!n§(_loc6_.name,param4))
            {
               if(_loc7_)
               {
                  §0!f§(_loc6_,param2,param3);
                  if(!(_loc8_ && §<"&§))
                  {
                     §§goto(addr66);
                  }
                  §§goto(addr74);
               }
            }
            §§push(_loc5_);
            if(!(_loc8_ && param2))
            {
               §§push(uint(§§pop() + 1));
            }
            _loc5_ = §§pop();
         }
      }
   }
}
