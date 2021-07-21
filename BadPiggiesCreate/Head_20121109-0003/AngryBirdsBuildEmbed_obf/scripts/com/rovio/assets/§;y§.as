package com.rovio.assets
{
   public class §;y§
   {
      
      public static const §`!&§:Boolean = false;
      
      private static var §!!W§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §`!&§ = false;
         }
      }
      
      public function §;y§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super();
         }
      }
      
      public static function init(param1:XMLList) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(_loc6_)
         {
            §!!W§ = new Array();
         }
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            while(true)
            {
               if(§§pop() < param1.length())
               {
                  §§push(param1[_loc2_].@id);
                  if(_loc6_ || _loc3_)
                  {
                     _loc3_ = §§pop();
                     if(!_loc6_)
                     {
                        break;
                     }
                     §§push(param1[_loc2_][0]);
                  }
                  _loc4_ = §§pop();
                  if(_loc5_)
                  {
                     break;
                  }
                  §!!W§[_loc3_] = _loc4_;
                  if(!_loc5_)
                  {
                     §§push(_loc2_);
                     if(_loc6_ || _loc2_)
                     {
                        §§push(§§pop() + 1);
                        if(_loc6_)
                        {
                           addr95:
                           §§push(Number(§§pop()));
                           if(!(_loc6_ || _loc3_))
                           {
                              continue;
                           }
                        }
                        _loc2_ = §§pop();
                        if(_loc6_)
                        {
                           break;
                        }
                        §§goto(addr110);
                     }
                     §§goto(addr95);
                  }
               }
               addr110:
               return;
            }
         }
      }
      
      public static function §,!v§(param1:String) : String
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || §;y§)
         {
            §§push(§`!&§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(Boolean(§§pop()));
               if(!_loc3_)
               {
                  addr34:
                  if(§§pop())
                  {
                     if(_loc2_ || §;y§)
                     {
                        §§pop();
                        if(_loc2_)
                        {
                           §§push(§!!W§);
                           if(_loc2_ || _loc3_)
                           {
                              §§push(param1);
                              if(!(_loc3_ && _loc2_))
                              {
                                 addr85:
                                 if(§§pop()[§§pop()] == null)
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§goto(addr93);
                                    }
                                    else
                                    {
                                       addr104:
                                       §§push(§!!W§);
                                       §§push(param1);
                                    }
                                 }
                                 §§goto(addr104);
                              }
                              return §§pop()[§§pop()];
                           }
                           §§goto(addr104);
                        }
                        addr93:
                        §§push("Missing text: ");
                        if(!(_loc3_ && §;y§))
                        {
                           return §§pop() + param1;
                        }
                     }
                  }
               }
               §§goto(addr85);
            }
            §§goto(addr34);
         }
         §§goto(addr104);
      }
   }
}
