package §[x§
{
   public class §^;§
   {
      
      public static const §!2§:String = "damage";
      
      public static const §"!+§:String = "removed";
      
      public static const §'s§:String = "extraBird";
      
      private static var §#W§:Array;
      
      private static var §4u§:Array;
      
      private static var §?-§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §!2§ = "damage";
            while(true)
            {
               §"!+§ = "removed";
               while(_loc1_ || §^;§)
               {
                  §'s§ = "extraBird";
                  if(_loc2_ && _loc1_)
                  {
                     continue;
                  }
                  return;
                  addr44:
               }
            }
         }
         §§goto(addr44);
      }
      
      public function §^;§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            do
            {
               init();
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      public static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §#W§ = [];
         }
         do
         {
            §4u§ = [];
            do
            {
               §?-§ = [];
            }
            while(!(_loc2_ || _loc2_));
            
         }
         while(_loc1_ && _loc2_);
         
      }
      
      public static function addScore(param1:int, param2:String) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || §^;§)
         {
            if(param1 == 0)
            {
               if(_loc4_ || §^;§)
               {
                  return;
               }
               addr96:
            }
            var _loc3_:* = param2;
            if(_loc4_)
            {
               §§push(§!2§);
               if(!_loc5_)
               {
                  §§push(_loc3_);
                  if(_loc4_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc5_)
                        {
                           §§push(0);
                           if(!_loc4_)
                           {
                              addr151:
                           }
                        }
                        else
                        {
                           addr148:
                           §§push(2);
                           if(_loc4_)
                           {
                              §§goto(addr151);
                           }
                        }
                        §§goto(addr156);
                     }
                     else
                     {
                        §§push(§"!+§);
                        if(!_loc5_)
                        {
                           §§goto(addr130);
                        }
                        §§goto(addr146);
                     }
                  }
                  §§goto(addr138);
               }
               addr130:
               §§push(_loc3_);
               if(!(_loc5_ && param2))
               {
                  addr138:
                  if(§§pop() === §§pop())
                  {
                     if(_loc4_)
                     {
                        addr141:
                        §§push(1);
                        if(_loc5_)
                        {
                           §§goto(addr151);
                        }
                     }
                     else
                     {
                        §§goto(addr148);
                     }
                     §§goto(addr156);
                  }
                  else
                  {
                     addr146:
                     §§push(§'s§);
                     §§push(_loc3_);
                  }
                  §§goto(addr148);
               }
               if(§§pop() === §§pop())
               {
                  §§goto(addr148);
               }
               else
               {
                  §§push(3);
               }
               addr156:
               switch(§§pop())
               {
                  case 0:
                     addr76:
                     §#W§.push(param1);
                     addr65:
                     if(!(_loc5_ && §^;§))
                     {
                        addr45:
                        break;
                     }
                     break;
                  case 1:
                     addr49:
                     §§push(§4u§);
                     if(_loc4_)
                     {
                        addr52:
                        §§pop().push(param1);
                        if(_loc4_ || §^;§)
                        {
                           break;
                        }
                        break;
                     }
                     §§goto(addr65);
                     break;
                  case 2:
                     §§push(§?-§);
                     if(_loc4_)
                     {
                        §§push(param1);
                        if(_loc4_)
                        {
                           if(_loc4_)
                           {
                              §§pop().push(§§pop());
                              if(!(_loc5_ && param2))
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                              }
                              break;
                           }
                           §§goto(addr76);
                           §§goto(addr45);
                        }
                        else
                        {
                           §§goto(addr52);
                        }
                     }
                     else
                     {
                        §§goto(addr49);
                     }
                     §§goto(addr76);
               }
               return;
            }
            §§goto(addr141);
         }
         §§goto(addr96);
      }
      
      public static function §8!>§() : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = "";
         §§push(§#W§);
         loop0:
         while(true)
         {
            _loc1_ = §§pop().toString();
            §§push(§4u§);
            while(true)
            {
               if(§§pop().length > 0)
               {
                  §§push(_loc1_);
                  §§push(",0,");
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() + §§pop());
                     addr130:
                     while(true)
                     {
                        _loc1_ = §§pop();
                        addr131:
                        while(true)
                        {
                           §§push(_loc1_);
                           §§push(§4u§);
                           addr117:
                           while(true)
                           {
                              §§push(§§pop() + §§pop().toString());
                              addr120:
                              while(true)
                              {
                                 _loc1_ = §§pop();
                                 addr121:
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(",0,");
                        if(_loc3_ && _loc1_)
                        {
                           continue loop2;
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc2_)
                        {
                           break;
                        }
                        _loc1_ = §§pop();
                        §§push(_loc1_);
                        if(_loc2_ || §^;§)
                        {
                           §§push(§?-§);
                           if(!_loc3_)
                           {
                              §§push(§§pop() + §§pop().toString());
                              continue;
                           }
                           §§goto(addr117);
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr130);
                  }
               }
               while(true)
               {
                  §§push(§?-§);
                  if(!_loc2_)
                  {
                     break;
                  }
                  if(!_loc2_)
                  {
                     continue loop0;
                  }
                  if(§§pop().length > 0)
                  {
                     §§goto(addr88);
                  }
                  §§goto(addr19);
               }
            }
         }
      }
   }
}
