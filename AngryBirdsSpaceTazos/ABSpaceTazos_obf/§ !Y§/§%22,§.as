package § !Y§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   
   public class §",§
   {
      
      public static const § "2§:String = "Container_";
      
      public static const §7"E§:String = "MovieClip_";
      
      public static const §0!'§:Vector.<String>;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            § "2§ = "Container_";
         }
         while(true)
         {
            §7"E§ = "MovieClip_";
            while(_loc2_ || _loc2_)
            {
               §0!'§ = new <String>[§ "2§,§7"E§];
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      public function §",§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §="§(param1:String, param2:Vector.<String>) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = uint(0);
         do
         {
            §§push(_loc3_);
            if(_loc5_)
            {
               if(!_loc4_)
               {
                  if(§§pop() >= param2.length)
                  {
                     if(_loc4_)
                     {
                        continue;
                     }
                     if(_loc5_ || §",§)
                     {
                        §§push(false);
                        if(!(_loc4_ && §",§))
                        {
                           return §§pop();
                        }
                        addr93:
                        return §§pop();
                     }
                  }
                  else if(param1.indexOf(param2[_loc3_]) == 0)
                  {
                     break;
                  }
                  §§push(_loc3_);
               }
               §§push(uint(§§pop() + 1));
            }
            _loc3_ = §§pop();
         }
         while(!(_loc4_ && param2));
         
         §§goto(addr93);
         §§push(true);
      }
      
      private static function §'"E§(param1:MovieClip, param2:Vector.<String>) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:FrameLabel = null;
         var _loc5_:* = 0;
         var _loc3_:Array = param1.currentLabels;
         for each(_loc4_ in _loc3_)
         {
            if(_loc8_)
            {
               §§push(0);
               if(!(_loc9_ && _loc3_))
               {
                  _loc5_ = §§pop();
                  while(true)
                  {
                     addr63:
                     addr44:
                     while(true)
                     {
                        addr96:
                        while(true)
                        {
                           §§push(_loc5_);
                        }
                     }
                     if(!(_loc8_ || param1))
                     {
                        continue;
                     }
                     if(false)
                     {
                        §§goto(addr63);
                     }
                     §§goto(addr96);
                  }
               }
               while(§§pop() < param2.length)
               {
                  if(_loc4_.name.indexOf(param2[_loc5_]) == 0)
                  {
                     if(_loc8_ || param2)
                     {
                        return true;
                     }
                     break;
                  }
                  _loc5_++;
                  if(_loc9_)
                  {
                     break;
                  }
                  §§goto(addr44);
                  §§goto(addr96);
               }
            }
         }
         return false;
      }
      
      private static function §"!9§(param1:MovieClip, param2:Vector.<String>, param3:Vector.<MovieClip>) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && §",§))
         {
            if(param3.indexOf(param1) == -1)
            {
               loop0:
               while(§'"E§(param1,param2))
               {
                  loop1:
                  while(!(_loc4_ && param2))
                  {
                     param1.gotoAndStop(1);
                     loop2:
                     while(_loc5_ || param1)
                     {
                        while(true)
                        {
                           param1.visible = false;
                           while(_loc5_)
                           {
                              if(!(_loc4_ && param1))
                              {
                                 param3.push(param1);
                                 if(_loc5_ || param2)
                                 {
                                    break loop0;
                                 }
                                 continue;
                                 continue;
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
                  return;
               }
               return;
            }
            §§goto(addr104);
         }
         §§goto(addr98);
      }
      
      public static function §80§(param1:MovieClip, param2:Vector.<String>, param3:Vector.<MovieClip>, param4:Vector.<String>) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc6_:MovieClip = null;
         var _loc5_:* = uint(0);
         while(_loc5_ < param1.numChildren)
         {
            if(!(_loc6_ = param1.getChildAt(_loc5_) as MovieClip))
            {
               if(_loc7_)
               {
                  continue;
               }
            }
            else if(§="§(_loc6_.name,param4))
            {
               if(!_loc7_)
               {
                  §"!9§(_loc6_,param2,param3);
                  if(!_loc7_)
                  {
                     if(_loc6_.name.indexOf(§ "2§) == 0)
                     {
                        if(!_loc8_)
                        {
                           continue;
                        }
                     }
                     addr78:
                     §§push(_loc5_);
                     if(!_loc7_)
                     {
                        §§push(uint(§§pop() + 1));
                     }
                     _loc5_ = §§pop();
                     continue;
                  }
                  §§goto(addr78);
               }
               §80§(_loc6_,param2,param3,param4);
               if(!_loc8_)
               {
                  continue;
               }
            }
            §§goto(addr78);
         }
      }
   }
}
