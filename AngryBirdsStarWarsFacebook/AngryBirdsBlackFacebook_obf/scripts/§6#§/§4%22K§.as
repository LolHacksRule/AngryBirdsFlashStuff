package §6#§
{
   import §0#P§.*;
   import §^#W§.§@#§;
   import flash.display.DisplayObjectContainer;
   import flash.utils.describeType;
   import flash.utils.getQualifiedClassName;
   
   public class §4"K§
   {
      
      private static var desc:XML;
      
      private static var §'"a§:String;
       
      
      public function §4"K§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super();
         }
      }
      
      public static function §`N§(param1:*) : §@#§
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:XML = null;
         var _loc5_:* = 0;
         if(!_loc9_)
         {
            desc = §[#E§(param1);
         }
         var _loc2_:§@#§ = new §@#§();
         var _loc4_:XMLList = desc..method;
         for each(_loc3_ in _loc4_)
         {
            if(_loc8_ || §4"K§)
            {
               _loc2_.§<#T§(_loc3_.@name);
            }
         }
         _loc4_ = desc..variable;
         if(!(_loc9_ && param1))
         {
            var _loc6_:* = 0;
            if(!(_loc9_ && param1))
            {
               for each(_loc3_ in _loc4_)
               {
                  if(!_loc9_)
                  {
                     _loc2_.§<#T§(_loc3_.@name);
                  }
               }
            }
         }
         _loc4_ = desc..method;
         if(!_loc9_)
         {
            _loc6_ = 0;
            if(_loc8_ || _loc2_)
            {
               for each(_loc3_ in _loc4_)
               {
                  if(_loc8_ || _loc3_)
                  {
                     _loc2_.§<#T§(_loc3_.@name);
                  }
               }
            }
         }
         _loc4_ = desc..accessor;
         if(_loc8_)
         {
            §§push(0);
            if(!_loc9_)
            {
               _loc6_ = §§pop();
               if(!(_loc9_ && _loc3_))
               {
                  for each(_loc3_ in _loc4_)
                  {
                     if(_loc8_)
                     {
                        _loc2_.§<#T§(_loc3_.@name);
                     }
                  }
               }
               if(!_loc9_)
               {
                  §§push(param1 is DisplayObjectContainer);
                  if(!(_loc9_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(int(param1.numChildren));
                           addr301:
                           loop6:
                           while(true)
                           {
                              §§push(§§pop());
                              loop7:
                              while(true)
                              {
                                 _loc5_ = §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    §§push(0);
                                    loop9:
                                    while(true)
                                    {
                                       §§push(§§pop() > §§pop());
                                       addr305:
                                       while(true)
                                       {
                                          §§pop();
                                          addr306:
                                          loop10:
                                          while(true)
                                          {
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                                if(_loc8_ || §4"K§)
                                                {
                                                   if(!(_loc8_ || param1))
                                                   {
                                                      continue loop8;
                                                   }
                                                   §§push(§§pop());
                                                   if(_loc8_ || _loc3_)
                                                   {
                                                      if(_loc9_ && §4"K§)
                                                      {
                                                         continue loop9;
                                                      }
                                                      §§push(§§pop() - 1);
                                                   }
                                                   if(_loc9_ && _loc2_)
                                                   {
                                                      continue loop7;
                                                   }
                                                   _loc5_ = §§pop();
                                                }
                                                if(_loc9_ && §4"K§)
                                                {
                                                   break;
                                                }
                                                if(!§§pop())
                                                {
                                                   if(!(_loc9_ && _loc2_))
                                                   {
                                                      continue loop10;
                                                   }
                                                }
                                                else
                                                {
                                                   _loc2_.§<#T§(param1.getChildAt(_loc5_).name);
                                                }
                                             }
                                             continue loop6;
                                          }
                                          continue loop9;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr298:
                     }
                     return _loc2_;
                  }
                  §§goto(addr305);
               }
               §§goto(addr298);
            }
            §§goto(addr301);
         }
         §§goto(addr306);
      }
      
      public static function §^"1§(param1:*) : Vector.<String>
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:XML = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         if(_loc7_ || §4"K§)
         {
            desc = §[#E§(param1);
         }
         for each(_loc3_ in desc..extendsClass)
         {
            if(_loc7_ || §4"K§)
            {
               _loc2_.push(_loc3_.@type);
            }
         }
         return _loc2_;
      }
      
      public static function §2!v§(param1:*) : Vector.<String>
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:XML = null;
         var _loc2_:Vector.<String> = new Vector.<String>();
         if(!(_loc7_ && _loc2_))
         {
            desc = §[#E§(param1);
         }
         for each(_loc3_ in desc..implementsInterface)
         {
            if(_loc6_)
            {
               _loc2_.push(_loc3_.@type);
            }
         }
         return _loc2_;
      }
      
      private static function §[#E§(param1:*) : XML
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:String = getQualifiedClassName(param1);
         if(!(_loc3_ && param1))
         {
            if(§'"a§ != _loc2_)
            {
               if(!_loc3_)
               {
                  addr72:
                  desc = describeType(param1);
               }
               do
               {
                  §'"a§ = _loc2_;
               }
               while(_loc3_ && _loc3_);
               
            }
            return desc;
         }
         §§goto(addr72);
      }
      
      public static function § 5§(param1:*) : Vector.<§<`§>
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:XML = null;
         if(!(_loc8_ && _loc2_))
         {
            desc = §[#E§(param1);
         }
         var _loc2_:Vector.<§<`§> = new Vector.<§<`§>();
         var _loc4_:XMLList = desc..accessor;
         for each(_loc3_ in _loc4_)
         {
            if(_loc7_ || §4"K§)
            {
               _loc2_.push(new §<`§(_loc3_));
            }
         }
         return _loc2_;
      }
      
      public static function §^!1§(param1:*) : Vector.<§,"v§>
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:XML = null;
         if(_loc8_)
         {
            desc = §[#E§(param1);
         }
         var _loc2_:Vector.<§,"v§> = new Vector.<§,"v§>();
         var _loc4_:XMLList = desc..method;
         for each(_loc3_ in _loc4_)
         {
            if(!_loc7_)
            {
               _loc2_.push(new §,"v§(_loc3_));
            }
         }
         return _loc2_;
      }
      
      public static function §&"C§(param1:*) : Vector.<§^!?§>
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:XML = null;
         if(!(_loc8_ && §4"K§))
         {
            desc = §[#E§(param1);
         }
         var _loc2_:Vector.<§^!?§> = new Vector.<§^!?§>();
         var _loc4_:XMLList = desc..variable;
         for each(_loc3_ in _loc4_)
         {
            if(!_loc8_)
            {
               _loc2_.push(new §^!?§(_loc3_));
            }
         }
         return _loc2_;
      }
      
      public static function §;"h§(param1:Object, param2:String) : String
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         §§push(§§newactivation());
         while(true)
         {
            §§push(null);
            loop1:
            while(true)
            {
               §§push(§§pop());
               while(true)
               {
                  §§pop().§§slot[3] = §§pop();
                  while(true)
                  {
                     §§push(§§newactivation());
                     if(_loc10_ || §4"K§)
                     {
                        §§push(null);
                        loop4:
                        while(true)
                        {
                           §§pop().§§slot[4] = §§pop();
                           addr126:
                           while(true)
                           {
                              §§push(§§newactivation());
                              addr111:
                              loop6:
                              while(true)
                              {
                                 §§pop().§§slot[5] = false;
                                 addr113:
                                 while(true)
                                 {
                                    §§push(§§newactivation());
                                    addr80:
                                    while(true)
                                    {
                                       if(_loc10_)
                                       {
                                          continue loop4;
                                       }
                                       continue loop6;
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr133);
                  }
               }
            }
         }
      }
      
      public static function §>!l§(param1:Object, param2:String) : String
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         §§push(§§newactivation());
         if(_loc9_)
         {
            §§push(null);
            loop0:
            while(true)
            {
               §§push(§§pop());
               addr84:
               while(true)
               {
                  §§pop().§§slot[3] = §§pop();
                  addr85:
                  while(true)
                  {
                     §§push(§§newactivation());
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      public static function §8w§(param1:Object) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:XML = null;
         var _loc2_:XML = §[#E§(param1);
         var _loc3_:Array = [];
         for each(_loc4_ in _loc2_..parameter)
         {
            if(!_loc7_)
            {
               _loc3_.push(_loc4_);
            }
         }
         return _loc3_;
      }
   }
}
