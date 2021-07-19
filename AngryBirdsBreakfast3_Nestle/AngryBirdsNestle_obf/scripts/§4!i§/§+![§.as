package §4!i§
{
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   
   public class §+![§
   {
      
      public static const §'!+§:String = "Container_";
      
      public static const §-F§:String = "MovieClip_";
      
      public static const §,"4§:Vector.<String>;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §'!+§ = "Container_";
            do
            {
               §-F§ = "MovieClip_";
               do
               {
                  §,"4§ = new <String>[§'!+§,§-F§];
               }
               while(_loc2_ && _loc2_);
               
            }
            while(_loc2_);
            
         }
      }
      
      public function §+![§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      public static function §@!r§(param1:String, param2:Vector.<String>) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = uint(0);
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc5_ && _loc3_))
            {
               if(_loc4_)
               {
                  if(§§pop() >= param2.length)
                  {
                     if(_loc5_)
                     {
                        continue;
                     }
                     if(!(_loc5_ && §+![§))
                     {
                        if(!(_loc5_ && §+![§))
                        {
                           §§push(false);
                           if(_loc4_)
                           {
                              return §§pop();
                           }
                           addr92:
                           return §§pop();
                        }
                        break;
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
         §§goto(addr92);
         §§push(true);
      }
      
      private static function §!!L§(param1:MovieClip, param2:Vector.<String>) : Boolean
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:FrameLabel = null;
         var _loc5_:* = 0;
         var _loc3_:Array = param1.currentLabels;
         loop0:
         for each(_loc4_ in _loc3_)
         {
            if(_loc8_ || §+![§)
            {
               §§push(0);
               if(!_loc9_)
               {
                  _loc5_ = §§pop();
                  while(true)
                  {
                     addr63:
                     while(true)
                     {
                        addr86:
                        while(true)
                        {
                           §§push(_loc5_);
                        }
                     }
                  }
                  addr85:
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
                     if(_loc8_)
                     {
                        if(!_loc9_)
                        {
                           break;
                        }
                        §§goto(addr85);
                     }
                     else
                     {
                        loop6:
                        while(true)
                        {
                           addr55:
                           while(true)
                           {
                              _loc5_++;
                              if(_loc9_)
                              {
                                 break;
                              }
                              if(!_loc8_)
                              {
                                 continue loop6;
                              }
                              if(true)
                              {
                                 continue loop4;
                              }
                              continue loop6;
                           }
                           continue loop0;
                        }
                        addr80:
                     }
                     §§goto(addr63);
                  }
                  §§goto(addr55);
               }
               return true;
            }
            §§goto(addr80);
         }
         return false;
      }
      
      private static function §;[§(param1:MovieClip, param2:Vector.<String>, param3:Vector.<MovieClip>) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            if(param3.indexOf(param1) == -1)
            {
               loop0:
               while(§!!L§(param1,param2))
               {
                  while(!_loc5_)
                  {
                     param1.gotoAndStop(1);
                     do
                     {
                        param3.push(param1);
                     }
                     while(_loc5_ && param2);
                     
                     if(!(_loc5_ && param3))
                     {
                        if(!_loc5_)
                        {
                           break loop0;
                        }
                        continue loop0;
                     }
                  }
                  return;
               }
               return;
            }
         }
         §§goto(addr86);
      }
      
      public static function § !N§(param1:MovieClip, param2:Vector.<String>, param3:Vector.<MovieClip>, param4:Vector.<String>) : void
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
                  if(_loc6_.name.indexOf(§'!+§) == 0)
                  {
                     if(_loc7_)
                     {
                        addr74:
                        § !N§(_loc6_,param2,param3,param4);
                        if(!_loc7_)
                        {
                           continue;
                        }
                     }
                  }
               }
            }
            else if(§@!r§(_loc6_.name,param4))
            {
               if(_loc7_ || param3)
               {
                  §;[§(_loc6_,param2,param3);
                  if(!_loc8_)
                  {
                     §§goto(addr66);
                  }
                  §§goto(addr74);
               }
            }
            §§push(_loc5_);
            if(!_loc8_)
            {
               §§push(uint(§§pop() + 1));
            }
            _loc5_ = §§pop();
         }
      }
   }
}
