package §"n§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   
   public class §`!u§
   {
      
      public static const §`y§:String = "Container_";
      
      public static const §6I§:String = "MovieClip_";
      
      public static const §>!b§:Vector.<String>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §`y§ = "Container_";
         }
         while(true)
         {
            §6I§ = "MovieClip_";
            while(!_loc2_)
            {
               §>!b§ = new <String>[§`y§,§6I§];
               if(_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      public function §`!u§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §?! §(param1:String, param2:Vector.<String>) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = uint(0);
         while(true)
         {
            §§push(_loc3_);
            if(!_loc5_)
            {
               if(_loc4_ || _loc3_)
               {
                  if(§§pop() >= param2.length)
                  {
                     if(!_loc5_)
                     {
                        break;
                     }
                     loop1:
                     while(!_loc4_)
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
                     addr87:
                     return true;
                     addr86:
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
            §§goto(addr63);
         }
         if(!(_loc5_ && param2))
         {
            §§push(false);
            if(!_loc5_)
            {
               return §§pop();
            }
         }
         else
         {
            §§goto(addr86);
         }
         §§goto(addr87);
      }
      
      private static function §[!`§(param1:MovieClip, param2:Vector.<String>) : Boolean
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
               if(!(_loc9_ && param1))
               {
                  _loc5_ = §§pop();
                  addr90:
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
               loop1:
               while(true)
               {
                  if(§§pop() >= param2.length)
                  {
                     continue loop0;
                  }
                  if(_loc4_.name.indexOf(param2[_loc5_]) == 0)
                  {
                     if(_loc8_)
                     {
                        if(_loc8_ || param2)
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
                              if(!_loc8_)
                              {
                                 continue;
                              }
                              if(true)
                              {
                                 continue loop1;
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
            §§goto(addr90);
         }
         return false;
      }
      
      private static function §^!;§(param1:MovieClip, param2:Vector.<String>, param3:Vector.<MovieClip>) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            if(param3.indexOf(param1) == -1)
            {
               loop0:
               while(§[!`§(param1,param2))
               {
                  if(!_loc5_)
                  {
                     param1.gotoAndStop(1);
                  }
                  loop1:
                  while(_loc4_ || §`!u§)
                  {
                     while(true)
                     {
                        param3.push(param1);
                        if(_loc4_ || param2)
                        {
                           if(!_loc5_)
                           {
                              break loop0;
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
               return;
            }
            §§goto(addr86);
         }
         §§goto(addr80);
      }
      
      public static function §>V§(param1:MovieClip, param2:Vector.<String>, param3:Vector.<MovieClip>, param4:Vector.<String>) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc6_:MovieClip = null;
         var _loc5_:* = uint(0);
         while(_loc5_ < param1.numChildren)
         {
            if(!(_loc6_ = param1.getChildAt(_loc5_) as MovieClip))
            {
               if(_loc8_ && param3)
               {
                  addr59:
                  §^!;§(_loc6_,param2,param3);
                  if(!_loc8_)
                  {
                     if(_loc6_.name.indexOf(§`y§) == 0)
                     {
                        if(!(_loc7_ || param3))
                        {
                           continue;
                        }
                     }
                     addr87:
                     §§push(_loc5_);
                     if(!(_loc8_ && §`!u§))
                     {
                        §§push(uint(§§pop() + 1));
                     }
                     _loc5_ = §§pop();
                     continue;
                  }
                  §>V§(_loc6_,param2,param3,param4);
                  if(!_loc7_)
                  {
                     continue;
                  }
               }
            }
            else if(§?! §(_loc6_.name,param4))
            {
               if(_loc8_)
               {
                  continue;
               }
               §§goto(addr59);
            }
            §§goto(addr87);
         }
      }
   }
}
