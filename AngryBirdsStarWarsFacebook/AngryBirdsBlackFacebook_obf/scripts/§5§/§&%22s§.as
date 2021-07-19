package §5§#7
{
   import flash.display.MovieClip;
   
   public class §&"s§ extends § #-§
   {
       
      
      public function §&"s§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      protected function §,#+§(param1:String) : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:String = "";
         var _loc3_:* = param1;
         if(_loc4_ || _loc2_)
         {
            if("BIRD_BLACK" === _loc3_)
            {
               if(!_loc5_)
               {
                  addr84:
                  §§push(0);
                  if(_loc5_)
                  {
                     addr116:
                  }
               }
               else
               {
                  addr176:
                  §§push(6);
                  if(!_loc5_)
                  {
                     addr189:
                  }
               }
               §§goto(addr194);
            }
            else
            {
               if("BIRD_BLUE" !== _loc3_)
               {
                  if("BIRD_RED" === _loc3_)
                  {
                     if(!_loc5_)
                     {
                        §§push(2);
                        if(_loc5_ && param1)
                        {
                        }
                        §§goto(addr194);
                     }
                     else
                     {
                        §§goto(addr136);
                     }
                  }
                  else if("BIRD_WHITE" === _loc3_)
                  {
                     if(!_loc5_)
                     {
                        addr136:
                        §§push(3);
                        if(_loc5_ && _loc2_)
                        {
                           addr158:
                        }
                        §§goto(addr194);
                     }
                     else
                     {
                        addr155:
                        §§push(4);
                        if(_loc4_)
                        {
                           §§goto(addr158);
                        }
                     }
                  }
                  else
                  {
                     if("BIRD_YELLOW" === _loc3_)
                     {
                        if(_loc4_ || _loc2_)
                        {
                           §§goto(addr155);
                        }
                        else
                        {
                           §§goto(addr176);
                        }
                     }
                     else
                     {
                        if("BIRD_GREEN" === _loc3_)
                        {
                           if(!(_loc5_ && _loc2_))
                           {
                              §§push(5);
                              if(!_loc4_)
                              {
                                 §§goto(addr189);
                              }
                           }
                           else
                           {
                              §§goto(addr176);
                           }
                        }
                        else if("BIRD_REDBIG" === _loc3_)
                        {
                           §§goto(addr176);
                        }
                        else
                        {
                           §§push(7);
                        }
                        §§goto(addr176);
                     }
                     §§goto(addr176);
                  }
                  addr194:
                  switch(§§pop())
                  {
                     case 0:
                        _loc2_ = "TUTORIAL_BLACK";
                        break;
                     case 1:
                        _loc2_ = "TUTORIAL_BLUE";
                        break;
                     case 2:
                        _loc2_ = "TUTORIAL_RED";
                        break;
                     case 3:
                        _loc2_ = "TUTORIAL_WHITE";
                        break;
                     case 4:
                        _loc2_ = "TUTORIAL_YELLOW";
                        break;
                     case 5:
                        _loc2_ = "TUTORIAL_BOOMERANG";
                        break;
                     case 6:
                        _loc2_ = "TUTORIAL_BIG_BROTHER";
                        break;
                     default:
                        return null;
                  }
                  return _loc2_;
               }
               if(_loc4_ || _loc3_)
               {
                  §§push(1);
                  if(!(_loc5_ && _loc2_))
                  {
                     §§goto(addr116);
                  }
               }
               else
               {
                  §§goto(addr176);
               }
               §§goto(addr194);
            }
            §§goto(addr176);
         }
         §§goto(addr84);
      }
      
      override public function solve(param1:String) : MovieClip
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§,#+§(param1));
         if(!(_loc3_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         return §;J§(_loc2_);
      }
   }
}
