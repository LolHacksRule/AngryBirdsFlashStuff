package §'4§
{
   public class §!!t§
   {
      
      public static const §#!L§:String = "damage";
      
      public static const §1!@§:String = "removed";
      
      public static const §9j§:String = "extraBird";
      
      private static var §!@§:Array;
      
      private static var §9"?§:Array;
      
      private static var §5!O§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §#!L§ = "damage";
            while(true)
            {
               §1!@§ = "removed";
               while(_loc1_)
               {
                  §9j§ = "extraBird";
                  if(_loc1_ || _loc2_)
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public function §!!t§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
         do
         {
            init();
         }
         while(!_loc2_);
         
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §!!t§))
         {
            §!@§ = [];
            while(true)
            {
               §9"?§ = [];
               while(!(_loc2_ && §!!t§))
               {
                  §5!O§ = [];
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  return;
                  addr49:
               }
            }
         }
         §§goto(addr49);
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            if(param1 == 0)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §§goto(addr96);
               }
            }
            var _loc3_:* = param2;
            if(!(_loc4_ && param1))
            {
               §§push(§#!L§);
               if(_loc5_)
               {
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           addr124:
                           §§push(0);
                           if(_loc5_ || _loc3_)
                           {
                           }
                        }
                        else
                        {
                           addr154:
                           §§push(2);
                           if(_loc5_ || _loc3_)
                           {
                              addr172:
                           }
                        }
                        §§goto(addr177);
                     }
                     else
                     {
                        §§push(§1!@§);
                        if(!_loc4_)
                        {
                           §§goto(addr136);
                        }
                        §§goto(addr152);
                     }
                  }
                  §§goto(addr144);
               }
               addr136:
               §§push(_loc3_);
               if(!(_loc4_ && param1))
               {
                  addr144:
                  if(§§pop() === §§pop())
                  {
                     if(!_loc4_)
                     {
                        §§push(1);
                        if(!_loc5_)
                        {
                           §§goto(addr172);
                        }
                     }
                     else
                     {
                        §§goto(addr154);
                     }
                     §§goto(addr177);
                  }
                  else
                  {
                     addr152:
                     §§push(§9j§);
                     §§push(_loc3_);
                  }
                  §§goto(addr154);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr154);
               }
               else
               {
                  §§push(3);
               }
               addr177:
               switch(§§pop())
               {
                  case 0:
                     addr74:
                     §!@§.push(param1);
                     break;
                     addr75:
                     addr73:
                  case 1:
                     addr43:
                     §§push(§9"?§);
                     if(!(_loc4_ && param2))
                     {
                        addr51:
                        §§push(param1);
                        if(!(_loc4_ && §!!t§))
                        {
                           §§pop().push(§§pop());
                           if(_loc5_ || §!!t§)
                           {
                              if(_loc5_)
                              {
                                 break;
                              }
                           }
                           break;
                        }
                        §§goto(addr74);
                        §§goto(addr75);
                     }
                     else
                     {
                        §§goto(addr73);
                     }
                  case 2:
                     §§push(§5!O§);
                     if(!_loc4_)
                     {
                        §§push(param1);
                        if(!(_loc4_ && param1))
                        {
                           §§pop().push(§§pop());
                           if(!_loc4_)
                           {
                              if(true)
                              {
                                 break;
                              }
                           }
                           break;
                        }
                        §§goto(addr51);
                        §§goto(addr74);
                     }
                     else
                     {
                        §§goto(addr43);
                     }
               }
               return;
            }
            §§goto(addr124);
         }
         addr96:
      }
      
      public static function §4!o§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = "";
         if(!_loc3_)
         {
            §§push(§!@§);
            loop0:
            while(true)
            {
               §§push(§§pop().toString());
               addr176:
               while(true)
               {
                  _loc1_ = §§pop();
                  addr177:
                  while(true)
                  {
                     §§push(§9"?§);
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr158);
      }
   }
}
