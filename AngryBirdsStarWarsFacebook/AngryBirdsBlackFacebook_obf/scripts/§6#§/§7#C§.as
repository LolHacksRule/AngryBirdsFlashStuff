package §6#§
{
   import §+!J§.§""A§;
   import §0#P§.*;
   import §1"b§.§7",§;
   import §6=§.§+!,§;
   import §^#W§.§>!W§;
   import com.furusystems.dconsole2.DConsole;
   import §default§.§4>§;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.EventDispatcher;
   import flash.utils.ByteArray;
   import flash.utils.describeType;
   import flash.utils.getQualifiedClassName;
   
   public class §7#C§ extends EventDispatcher
   {
      
      public static const §@!^§:int = 0;
      
      public static const §]"h§:int = 1;
      
      public static const §<"_§:int = 2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §@!^§ = 0;
            while(true)
            {
               §]"h§ = 1;
               while(_loc1_ || §7#C§)
               {
                  §<"_§ = 2;
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
      
      private var §=#+§:§#!z§;
      
      private var §=!@§:§#!z§;
      
      private var §[![§:DConsole;
      
      private var §4",§:§>!W§;
      
      private var §@"+§:§4>§;
      
      public function §7#C§(param1:DConsole, param2:§>!W§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§[![§ = param1;
               loop1:
               while(true)
               {
                  this.§4",§ = param2;
                  loop2:
                  while(true)
                  {
                     §§push(param1.§]"z§);
                     while(true)
                     {
                        §§pop().addCallback(§""A§.§[T§,this.§"§);
                        continue loop0;
                        addr69:
                        loop5:
                        while(_loc4_ || param1)
                        {
                           §§pop().addCallback(§""A§.§]!m§,this.§%!C§);
                           while(_loc4_)
                           {
                              continue loop5;
                              §§pop().addCallback(§""A§.§=!i§,this.§6h§);
                              while(true)
                              {
                                 §§push(param1.§]"z§);
                                 if(!_loc4_)
                                 {
                                    continue loop5;
                                 }
                                 §§goto(addr34);
                              }
                              §§goto(addr65);
                              if(_loc4_ || _loc3_)
                              {
                                 if(_loc4_ || this)
                                 {
                                    if(_loc4_)
                                    {
                                       return;
                                       addr65:
                                    }
                                    continue loop1;
                                 }
                                 continue loop0;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr83);
      }
      
      public function initialize() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§=#+§ = this.§0"s§({});
         }
      }
      
      private function §6h§(param1:§7",§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var md:§7",§ = param1;
         try
         {
            this.§4"i§(DisplayObjectContainer(this.§=#+§.§5#L§).getChildByName(String(md.data)));
         }
         catch(e:Error)
         {
            if(_loc5_)
            {
               §[![§.§""W§("Null reference, couldn\'t select target.",§+!,§.ERROR);
            }
         }
      }
      
      private function §%!C§(param1:§7",§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var md:§7",§ = param1;
         try
         {
            this.§4"i§(this.§=#+§.§5#L§[md.data]);
         }
         catch(e:Error)
         {
            if(!_loc4_)
            {
               §[![§.§""W§("Null reference, couldn\'t select target.",§+!,§.ERROR);
            }
         }
      }
      
      private function §"§(param1:§7",§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§=#+§.§5#L§[param1.data.name] = param1.data.newValue;
         }
         do
         {
            this.§[![§.§]"z§.§#!"§(§""A§.§="C§,this.§=#+§,this);
         }
         while(_loc2_ && _loc2_);
         
      }
      
      public function §0"s§(param1:*, param2:Boolean = false) : §#!z§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(!param1)
            {
               if(_loc4_ || param2)
               {
                  throw new ArgumentError("Invalid scope");
               }
            }
         }
         var _loc3_:§#!z§ = new §#!z§();
         if(!_loc5_)
         {
            _loc3_.children = §'!-§.§[`§(param1);
            loop0:
            while(true)
            {
               _loc3_.§-"2§ = §4"K§.§ 5§(param1);
               while(true)
               {
                  _loc3_.methods = §4"K§.§^!1§(param1);
                  loop2:
                  while(true)
                  {
                     _loc3_.variables = §4"K§.§&"C§(param1);
                     while(true)
                     {
                        _loc3_.§5#L§ = param1;
                        continue loop2;
                        addr126:
                        if(_loc4_ || _loc3_)
                        {
                           continue loop0;
                        }
                     }
                  }
                  loop11:
                  while(_loc4_ || param1)
                  {
                     this.§[![§.§]"z§.§#!"§(§""A§.§3=§,this.§=#+§,this);
                     if(_loc5_)
                     {
                        continue;
                     }
                     if(!_loc5_)
                     {
                        addr58:
                        if(_loc4_ || _loc3_)
                        {
                           if(_loc5_)
                           {
                              addr102:
                              if(_loc5_)
                              {
                                 while(true)
                                 {
                                    if(_loc4_)
                                    {
                                       if(param2)
                                       {
                                          continue;
                                       }
                                       do
                                       {
                                          _loc3_.§3"j§ = §4"K§.§`N§(param1);
                                          while(true)
                                          {
                                             this.§=#+§ = _loc3_;
                                             continue loop11;
                                          }
                                          §§goto(addr58);
                                       }
                                       while(!_loc5_);
                                       
                                       §§goto(addr147);
                                    }
                                    else
                                    {
                                       §§goto(addr124);
                                    }
                                 }
                                 addr115:
                              }
                              §§goto(addr104);
                           }
                           §§goto(addr67);
                           §§goto(addr124);
                        }
                        else
                        {
                           §§goto(addr106);
                        }
                     }
                     §§goto(addr88);
                  }
               }
            }
         }
         addr104:
         return _loc3_;
      }
      
      public function §4"i§(param1:*, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[1] = param1;
            while(true)
            {
               §§push(§§newactivation());
               while(_loc7_)
               {
                  §§push(param2);
                  loop3:
                  while(true)
                  {
                     §§pop().§§slot[2] = §§pop();
                     while(true)
                     {
                        §§push(§§newactivation());
                        loop5:
                        while(true)
                        {
                           §§push(param3);
                           if(_loc6_)
                           {
                              break;
                           }
                           §§pop().§§slot[3] = §§pop();
                           while(true)
                           {
                              §§push(§§newactivation());
                              continue loop5;
                              addr64:
                              if(!(_loc7_ || param1))
                              {
                                 continue;
                              }
                              if(false)
                              {
                                 addr73:
                                 return;
                              }
                              try
                              {
                                 this.§0"s§(o);
                                 if(!(_loc6_ && param1))
                                 {
                                    this.§4",§.§,"_§ = this.§0%§.§3"j§;
                                    if(_loc7_ || param3)
                                    {
                                       if(printResults)
                                       {
                                          if(_loc7_)
                                          {
                                             this.§]!5§();
                                             if(!(_loc6_ && param1))
                                             {
                                                this.§?!p§();
                                                addr325:
                                             }
                                             §§goto(addr325);
                                          }
                                          return;
                                          addr322:
                                       }
                                       this.§[![§.§]"z§.§#!"§(§""A§.§2"d§,this.§=#+§,this);
                                       if(_loc6_ && this)
                                       {
                                       }
                                       §§goto(addr322);
                                    }
                                    §§goto(addr325);
                                 }
                              }
                              catch(e:Error)
                              {
                                 throw e;
                              }
                              §§goto(addr322);
                           }
                        }
                        continue loop3;
                     }
                  }
                  if(_loc6_ && param2)
                  {
                     continue;
                  }
                  §§goto(addr213);
                  §§push(§§pop().§§slot[1] is Stage);
               }
               continue loop0;
            }
         }
      }
      
      public function §@<§(param1:String) : *
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(§§newactivation());
         if(!_loc5_)
         {
            §§pop().§§slot[2] = null;
            if(_loc6_ || this)
            {
               addr35:
               var str:String = param1;
            }
            try
            {
               §§push(this.§0%§);
               if(!(_loc5_ && this))
               {
                  if(!§§pop().§5#L§[str])
                  {
                     throw new Error();
                  }
                  §§push(this.§0%§);
               }
               return §§pop().§5#L§[str];
            }
            catch(e:Error)
            {
               if(!(_loc5_ && _loc2_))
               {
                  try
                  {
                     if(§0%§.§5#L§ is DisplayObjectContainer)
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           addr110:
                           §§push(_loc2_);
                           if(_loc6_)
                           {
                              §§pop().§§slot[2] = §0%§.§5#L§.getChildByName(str);
                              if(_loc6_)
                              {
                                 §§push(_loc2_);
                                 if(!(_loc5_ && param1))
                                 {
                                    if(§§pop().§§slot[2] != null)
                                    {
                                       if(!_loc6_)
                                       {
                                          addr164:
                                          throw new Error("No such scope");
                                          addr138:
                                       }
                                    }
                                    §§goto(addr138);
                                 }
                              }
                              §§goto(addr138);
                           }
                           §§goto(addr136);
                        }
                        addr136:
                        return §§pop().§§slot[2];
                        §§push(_loc2_);
                     }
                     §§goto(addr138);
                  }
                  catch(e:Error)
                  {
                  }
                  §§goto(addr164);
               }
               §§goto(addr110);
            }
         }
         §§goto(addr35);
      }
      
      public function §["<§() : DisplayObject
      {
         return this.§[![§.root;
      }
      
      public function get §0%§() : §#!z§
      {
         return this.§=#+§;
      }
      
      public function up() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§=#+§);
            loop0:
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(this.§=#+§);
                  if(!(_loc1_ || _loc2_))
                  {
                     break;
                  }
                  if(!(§§pop().§5#L§ is DisplayObject))
                  {
                     throw new Error("Current scope is not a DisplayObject; cannot switch to parent");
                  }
                  while(true)
                  {
                     this.§4"i§(this.§=#+§.§5#L§.parent);
                     if(!(_loc2_ && this))
                     {
                        if(_loc1_ || _loc1_)
                        {
                           return;
                        }
                        break loop0;
                     }
                     continue loop1;
                  }
               }
            }
            throw new Error("No current scope; cannot switch to parent");
         }
         §§goto(addr64);
      }
      
      private function §;#G§(param1:Object, param2:String) : Object
      {
         throw new Error("Not found");
      }
      
      public function §1!%§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§push(false);
            while(true)
            {
               §§pop().§§slot[2] = §§pop();
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(!_loc4_)
                  {
                     §§pop().§§slot[3] = null;
                     loop4:
                     for(; _loc5_ || param1; while(_loc5_ || this)
                     {
                        §§goto(addr121);
                        §§push(§§newactivation());
                     })
                     {
                        §§push(§§newactivation());
                        loop5:
                        while(true)
                        {
                           §§push(0);
                           addr202:
                           while(true)
                           {
                              §§pop().§§slot[4] = §§pop();
                              loop7:
                              while(true)
                              {
                                 §§push(§§newactivation());
                                 loop8:
                                 while(true)
                                 {
                                    §§push(param1);
                                    loop9:
                                    while(true)
                                    {
                                       §§pop().§§slot[1] = §§pop();
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§newactivation());
                                          loop11:
                                          while(true)
                                          {
                                             if(§§pop().§§slot[1].indexOf(".") > -1)
                                             {
                                                if(_loc5_)
                                                {
                                                   §§push(§§newactivation());
                                                   continue loop8;
                                                }
                                                continue loop4;
                                             }
                                             try
                                             {
                                                this.§4"i§(this.§@<§(str));
                                                break;
                                             }
                                             catch(e:Error)
                                             {
                                                throw e;
                                             }
                                             addr138:
                                             if(!(_loc4_ && param1))
                                             {
                                                if(_loc5_)
                                                {
                                                   §§push(str);
                                                   if(!_loc4_)
                                                   {
                                                      §§pop().§§slot[3] = §§pop().split(".");
                                                      while(true)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            addr159:
                                                            §§push(§§newactivation());
                                                            if(!_loc4_)
                                                            {
                                                               continue loop5;
                                                            }
                                                            addr121:
                                                            addr121:
                                                            while(_loc5_ || this)
                                                            {
                                                               §§goto(addr138);
                                                               §§goto(addr159);
                                                            }
                                                            continue loop8;
                                                         }
                                                         continue loop4;
                                                         addr103:
                                                         §§pop().§§slot[4] = §§pop();
                                                         if(!(_loc5_ || _loc3_))
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc4_ && _loc2_)
                                                         {
                                                            continue loop10;
                                                         }
                                                         addr61:
                                                         if(i < split.length)
                                                         {
                                                            this.§4"i§(this.§@<§(split[i]),false,i == split.length - 1);
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               §§push(§§newactivation());
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  §§push(§§pop().§§slot[4]);
                                                                  if(!(_loc4_ && param1))
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        §§push(§§newactivation());
                                                                        if(!(_loc4_ && _loc3_))
                                                                        {
                                                                           §§pop().§§slot[4] = §§pop();
                                                                           if(_loc5_)
                                                                           {
                                                                              if(false)
                                                                              {
                                                                              }
                                                                              §§goto(addr61);
                                                                           }
                                                                           addr270:
                                                                           return;
                                                                           addr236:
                                                                        }
                                                                        §§goto(addr61);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr61);
                                                            }
                                                            break loop11;
                                                         }
                                                         if(!(_loc5_ || _loc3_))
                                                         {
                                                            break loop11;
                                                         }
                                                         §§goto(addr236);
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop9;
                                                }
                                                continue loop3;
                                             }
                                          }
                                          §§goto(addr270);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     continue loop2;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function §`!3§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:int = 0;
         var _loc3_:§,"v§ = null;
         var _loc1_:Vector.<§,"v§> = this.§0%§.methods;
         if(!_loc5_)
         {
            this.§[![§.§""W§("\tmethods:");
            if(!(_loc5_ && _loc1_))
            {
               addr39:
               _loc2_ = 0;
            }
            while(_loc2_ < _loc1_.length)
            {
               _loc3_ = _loc1_[_loc2_];
               if(_loc4_)
               {
                  §§push(this.§[![§);
                  §§push("\t\t" + _loc3_.name);
                  if(!(_loc5_ && _loc1_))
                  {
                     §§push(§§pop() + " : ");
                     if(_loc4_)
                     {
                        §§push(§§pop() + _loc3_.returnType);
                     }
                  }
                  §§pop().§""W§(§§pop());
                  if(!(_loc4_ || _loc2_))
                  {
                     continue;
                  }
               }
               _loc2_++;
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function §3"0§() : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc2_:* = undefined;
         var _loc3_:* = 0;
         var _loc5_:§^!?§ = null;
         var _loc6_:§<`§ = null;
         var _loc1_:Vector.<§^!?§> = this.§0%§.variables;
         if(!(_loc8_ && this))
         {
            this.§[![§.§""W§("\tvariables: " + _loc1_.length);
            if(!(_loc8_ && _loc3_))
            {
               addr54:
               _loc3_ = 0;
            }
            while(_loc3_ < _loc1_.length)
            {
               _loc5_ = _loc1_[_loc3_];
               if(_loc9_)
               {
                  §§push(this.§[![§);
                  §§push("\t\t" + _loc5_.name);
                  if(!_loc8_)
                  {
                     §§push(§§pop() + ": ");
                     if(!_loc8_)
                     {
                        addr77:
                        §§push(§§pop() + _loc5_.type);
                     }
                     §§pop().§""W§(§§pop());
                     try
                     {
                        addr81:
                        _loc2_ = this.§0%§.§5#L§[_loc5_.name];
                        if(!(_loc9_ || this))
                        {
                           continue;
                        }
                        §§push(this.§[![§);
                        §§push("\t\t\tvalue: ");
                        if(!(_loc8_ && this))
                        {
                           §§pop().§""W§(§§pop() + (_loc2_ is ByteArray ? "[ByteArray]" : _loc2_.toString()));
                           if(_loc9_)
                           {
                              addr142:
                              _loc3_++;
                           }
                           continue;
                        }
                        §§goto(addr110);
                     }
                     catch(e:Error)
                     {
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr77);
               }
               §§goto(addr81);
            }
            var _loc4_:Vector.<§<`§> = this.§0%§.§-"2§;
            if(!_loc8_)
            {
               this.§[![§.§""W§("\taccessors: " + _loc4_.length);
               if(!_loc8_)
               {
                  §§push(0);
                  if(!_loc8_)
                  {
                     _loc3_ = §§pop();
                     if(!_loc8_)
                     {
                        addr169:
                        while(true)
                        {
                           §§push(_loc3_);
                        }
                        addr271:
                     }
                     §§goto(addr275);
                  }
                  for(; §§pop() < _loc4_.length; §§goto(addr271))
                  {
                     _loc6_ = _loc4_[_loc3_];
                     if(!(_loc8_ && _loc1_))
                     {
                        §§push(this.§[![§);
                        §§push("\t\t" + _loc6_.name);
                        if(!(_loc8_ && _loc3_))
                        {
                           §§push(§§pop() + ": ");
                           if(_loc9_)
                           {
                              §§push(§§pop() + _loc6_.type);
                           }
                        }
                        §§pop().§""W§(§§pop());
                     }
                     try
                     {
                        _loc2_ = this.§0%§.§5#L§[_loc6_.name];
                        if(_loc9_ || _loc1_)
                        {
                           §§push(this.§[![§);
                           §§push("\t\t\tvalue: ");
                           if(!(_loc8_ && _loc1_))
                           {
                              §§pop().§""W§(§§pop() + (_loc2_ is ByteArray ? "[ByteArray]" : _loc2_.toString()));
                              if(!(_loc8_ && this))
                              {
                                 addr270:
                                 _loc3_++;
                                 addr248:
                              }
                              continue;
                           }
                           §§goto(addr233);
                        }
                        §§goto(addr248);
                     }
                     catch(e:Error)
                     {
                     }
                     §§goto(addr270);
                  }
                  §§goto(addr275);
               }
               §§goto(addr169);
            }
            addr275:
            return;
         }
         §§goto(addr54);
      }
      
      public function §,#F§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§`!$§ = null;
         var _loc1_:Vector.<§`!$§> = this.§0%§.children;
         if(_loc4_ || _loc2_)
         {
            if(_loc1_.length < 1)
            {
               if(_loc4_)
               {
                  §§goto(addr37);
               }
            }
            else
            {
               this.§[![§.§""W§("\tchildren: " + _loc1_.length);
            }
            var _loc2_:int = 0;
            while(_loc2_ < _loc1_.length)
            {
               _loc3_ = _loc1_[_loc2_];
               if(!(_loc5_ && _loc2_))
               {
                  §§push(this.§[![§);
                  §§push("\t\t" + _loc3_.name);
                  if(_loc4_ || _loc2_)
                  {
                     §§push(§§pop() + " : ");
                     if(_loc4_ || _loc1_)
                     {
                        §§push(§§pop() + _loc3_.type);
                     }
                  }
                  §§pop().§""W§(§§pop());
                  if(_loc4_ || this)
                  {
                     _loc2_++;
                  }
               }
            }
            return;
         }
         addr37:
      }
      
      public function §?!p§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§,#F§();
         }
         do
         {
            this.§>#F§();
         }
         while(_loc1_);
         
      }
      
      public function §>#F§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:* = undefined;
         var _loc3_:* = 0;
         var _loc5_:§^!?§ = null;
         var _loc1_:Vector.<§^!?§> = this.§0%§.variables;
         if(_loc8_ || _loc2_)
         {
            if(_loc1_.length < 1)
            {
               if(_loc8_)
               {
                  return;
               }
            }
         }
         var _loc4_:Array = [];
         if(!(_loc7_ && _loc3_))
         {
            _loc3_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc7_ && _loc3_))
            {
               if(§§pop() >= _loc1_.length)
               {
                  if(_loc8_ || _loc1_)
                  {
                     §§push(this.§[![§);
                     if(_loc8_ || _loc3_)
                     {
                        §§pop().§""W§("\tcomplex types: " + _loc4_.length);
                        if(_loc8_ || _loc1_)
                        {
                           if(_loc4_.length > 0)
                           {
                              loop1:
                              while(true)
                              {
                                 break loop0;
                                 loop6:
                                 while(true)
                                 {
                                    if(!(_loc8_ || _loc1_))
                                    {
                                       continue loop1;
                                    }
                                    _loc3_++;
                                    loop7:
                                    while(true)
                                    {
                                       if(!(_loc7_ && _loc1_))
                                       {
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             if(!_loc8_)
                                             {
                                                break loop0;
                                             }
                                             if(§§pop() >= _loc4_.length)
                                             {
                                                if(_loc8_ || _loc2_)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      addr251:
                                                      return;
                                                      addr250:
                                                   }
                                                   continue loop6;
                                                }
                                                continue loop7;
                                             }
                                             addr269:
                                             §§push(this.§[![§);
                                             while(true)
                                             {
                                                §§pop().§""W§(_loc4_[_loc3_]);
                                                continue loop6;
                                             }
                                             continue loop7;
                                          }
                                          addr234:
                                       }
                                       addr297:
                                       while(true)
                                       {
                                          §§goto(addr234);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr250);
                        }
                        §§goto(addr251);
                     }
                     §§goto(addr269);
                  }
                  §§goto(addr251);
               }
               else
               {
                  _loc5_ = _loc1_[_loc3_];
                  if(!_loc7_)
                  {
                     var _loc6_:* = _loc5_.type;
                     if(!_loc7_)
                     {
                        if("Number" === _loc6_)
                        {
                           if(_loc8_ || _loc3_)
                           {
                              §§push(0);
                              if(_loc7_ && _loc3_)
                              {
                                 addr121:
                              }
                           }
                           else
                           {
                              addr127:
                              §§push(3);
                              if(_loc7_ && _loc1_)
                              {
                                 addr166:
                              }
                           }
                        }
                        else if("Boolean" === _loc6_)
                        {
                           if(_loc8_ || this)
                           {
                              §§push(1);
                              if(_loc8_)
                              {
                                 addr171:
                                 switch(§§pop())
                                 {
                                    case 0:
                                    case 1:
                                    case 2:
                                    case 3:
                                    case 4:
                                    case 5:
                                       break;
                                    default:
                                       addr180:
                                       _loc4_.push("\t\t" + _loc5_.name + ": " + _loc5_.type);
                                       if(_loc8_)
                                       {
                                          break;
                                       }
                                       continue;
                                 }
                                 _loc3_++;
                                 continue;
                              }
                              §§goto(addr171);
                           }
                           else
                           {
                              §§goto(addr127);
                           }
                        }
                        else
                        {
                           if("String" === _loc6_)
                           {
                              if(_loc8_ || _loc1_)
                              {
                                 §§push(2);
                                 if(!_loc7_)
                                 {
                                    §§goto(addr121);
                                 }
                                 else
                                 {
                                    addr159:
                                    §§goto(addr171);
                                 }
                              }
                           }
                           else if("int" === _loc6_)
                           {
                              if(_loc8_)
                              {
                                 §§goto(addr127);
                              }
                           }
                           else if("uint" === _loc6_)
                           {
                              if(_loc8_)
                              {
                                 §§push(4);
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    §§goto(addr159);
                                 }
                                 else
                                 {
                                    §§goto(addr166);
                                 }
                              }
                           }
                           else if("Array" !== _loc6_)
                           {
                              §§goto(addr171);
                              §§push(6);
                           }
                           §§goto(addr171);
                           if(_loc8_)
                           {
                              §§goto(addr166);
                           }
                        }
                        §§goto(addr171);
                     }
                     §§goto(addr127);
                  }
                  §§goto(addr180);
               }
            }
            break;
         }
         while(true)
         {
            _loc3_ = §§pop();
            §§goto(addr297);
         }
      }
      
      public function §]!5§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(!(this.§0%§.§5#L§ is ByteArray))
            {
               §§push(this.§[![§);
               if(_loc2_ || this)
               {
                  §§pop().§""W§("scope : " + this.§0%§.§5#L§.toString());
                  if(_loc2_)
                  {
                     if(!(_loc2_ || _loc1_))
                     {
                        addr86:
                        this.§[![§.§""W§("scope : [ByteArray]");
                        addr88:
                        addr84:
                     }
                     return;
                  }
                  §§goto(addr88);
               }
               §§goto(addr86);
            }
            §§goto(addr84);
         }
         §§goto(addr86);
      }
      
      public function §^#H§(param1:String, param2:*) : *
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[1] = param1;
            loop1:
            while(true)
            {
               §§push(§§newactivation());
               loop2:
               while(true)
               {
                  §§pop().§§slot[2] = param2;
                  addr112:
                  addr100:
                  loop3:
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§§newactivation());
                        while(true)
                        {
                           if(§§pop().§§slot[2] == "true")
                           {
                              addr79:
                              §§push(§§newactivation());
                              continue loop2;
                           }
                           §§push(§§newactivation());
                           if(_loc6_ && param2)
                           {
                              break;
                           }
                           if(_loc5_)
                           {
                              continue loop0;
                           }
                        }
                        addr63:
                        if(!_loc6_)
                        {
                           §§push(false);
                           if(!_loc5_)
                           {
                              addr88:
                              §§pop().§§slot[2] = §§pop();
                              break loop3;
                           }
                           §§pop().§§slot[2] = §§pop();
                        }
                        continue loop2;
                        if(!_loc6_)
                        {
                           addr72:
                           if(false)
                           {
                              continue;
                           }
                           try
                           {
                              addr117:
                              this.§0%§.§5#L§[propertyName] = arg;
                           }
                           catch(e:Error)
                           {
                              if(_loc5_ || _loc3_)
                              {
                                 §§push(§[![§);
                                 §§push("Property \'" + propertyName);
                                 if(!(_loc6_ && param1))
                                 {
                                    §§push(§§pop() + "\' could not be set");
                                 }
                                 §§pop().§""W§(§§pop(),§+!,§.ERROR);
                              }
                           }
                           try
                           {
                              §§goto(addr163);
                           }
                           catch(e:Error)
                           {
                              return null;
                           }
                        }
                        addr163:
                        return this.§0%§.§5#L§[propertyName];
                     }
                     continue loop0;
                  }
                  if(!(_loc6_ && _loc3_))
                  {
                     break loop1;
                  }
                  continue loop1;
               }
            }
            §§goto(addr117);
         }
      }
      
      public function §37§(param1:String) : String
      {
         return this.§0%§.§5#L§[param1].toString();
      }
      
      public function §<![§(param1:String) : *
      {
         return this.§0%§.§5#L§[param1];
      }
      
      public function §<"r§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§4"i§(this.§[![§.parent);
         }
      }
      
      public function §8h§(... rest) : *
      {
         var _loc2_:Function = rest.shift();
         return this.§@"+§.§+A§(_loc2_,rest);
      }
      
      public function updateScope() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§4"i§(this.§0%§.§5#L§,true);
         }
      }
      
      public function §==§(param1:String, param2:int = 0) : Vector.<String>
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc5_:* = 0;
         var _loc6_:§<`§ = null;
         var _loc7_:§^!?§ = null;
         var _loc8_:§,"v§ = null;
         var _loc9_:§`!$§ = null;
         var _loc3_:Vector.<String> = new Vector.<String>();
         §§push(param1);
         if(_loc12_ || this)
         {
            §§push(§§pop().toLowerCase());
         }
         var _loc4_:* = §§pop();
         §§push(param2);
         if(_loc12_ || param1)
         {
            loop0:
            while(true)
            {
               var _loc10_:* = §§pop();
               if(_loc12_ || param1)
               {
                  §§push(§]"h§);
                  if(!_loc11_)
                  {
                     §§push(_loc10_);
                     if(!_loc11_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc12_)
                           {
                              §§push(0);
                              if(_loc12_)
                              {
                                 addr401:
                                 loop1:
                                 while(true)
                                 {
                                    loop16:
                                    switch(§§pop())
                                    {
                                       case 0:
                                          §§push(this.§0%§);
                                          if(!(_loc11_ && this))
                                          {
                                             §§push(int(§§pop().§-"2§.length));
                                             if(_loc12_ || param1)
                                             {
                                                _loc5_ = §§pop();
                                                if(!_loc11_)
                                                {
                                                   loop2:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      if(_loc12_ || this)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc12_ || param1)
                                                         {
                                                            §§push(§§pop() - 1);
                                                            if(!_loc11_)
                                                            {
                                                               _loc5_ = §§pop();
                                                               if(!_loc11_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     if(_loc12_)
                                                                     {
                                                                        addr127:
                                                                        §§push(this.§0%§);
                                                                        if(!_loc11_)
                                                                        {
                                                                           addr131:
                                                                           §§push(int(§§pop().variables.length));
                                                                           if(_loc12_)
                                                                           {
                                                                              _loc5_ = §§pop();
                                                                              if(!_loc11_)
                                                                              {
                                                                                 loop8:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    if(_loc12_)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       if(_loc12_)
                                                                                       {
                                                                                          §§push(§§pop() - 1);
                                                                                          if(!_loc11_)
                                                                                          {
                                                                                             _loc5_ = §§pop();
                                                                                             if(_loc12_ || param2)
                                                                                             {
                                                                                                addr191:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(_loc12_)
                                                                                                      {
                                                                                                         break loop16;
                                                                                                      }
                                                                                                      addr273:
                                                                                                      break loop16;
                                                                                                   }
                                                                                                   §§push(this.§0%§);
                                                                                                   if(_loc11_ && param2)
                                                                                                   {
                                                                                                      addr279:
                                                                                                      §§push(int(§§pop().children.length));
                                                                                                      if(_loc12_)
                                                                                                      {
                                                                                                         break loop2;
                                                                                                      }
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if((_loc7_ = §§pop().variables[_loc5_]).name.toLowerCase().indexOf(_loc4_,0) > -1)
                                                                                                      {
                                                                                                         if(!(_loc11_ && param2))
                                                                                                         {
                                                                                                            _loc3_.push(_loc7_.name);
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop8;
                                                                                                   }
                                                                                                }
                                                                                                addr191:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   if(_loc12_)
                                                                                                   {
                                                                                                      break loop16;
                                                                                                   }
                                                                                                   break loop16;
                                                                                                }
                                                                                                addr291:
                                                                                                addr291:
                                                                                                §§push(this.§0%§);
                                                                                                while(true)
                                                                                                {
                                                                                                   if((_loc9_ = §§pop().children[_loc5_]).name.toLowerCase().indexOf(_loc4_,0) > -1)
                                                                                                   {
                                                                                                      if(!_loc11_)
                                                                                                      {
                                                                                                         _loc3_.push(_loc9_.name);
                                                                                                      }
                                                                                                   }
                                                                                                   addr310:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc5_);
                                                                                                      if(_loc12_)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc12_)
                                                                                                         {
                                                                                                            addr316:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() - 1);
                                                                                                               break loop8;
                                                                                                            }
                                                                                                            addr316:
                                                                                                         }
                                                                                                         break loop8;
                                                                                                      }
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr320:
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr191);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    _loc5_ = §§pop();
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr320);
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                              addr287:
                                                                              §§goto(addr310);
                                                                           }
                                                                           §§goto(addr191);
                                                                        }
                                                                        §§goto(addr291);
                                                                     }
                                                                     break loop16;
                                                                  }
                                                                  §§push(this.§0%§);
                                                                  if(_loc12_)
                                                                  {
                                                                     if((_loc6_ = §§pop().§-"2§[_loc5_]).name.toLowerCase().indexOf(_loc4_,0) > -1)
                                                                     {
                                                                        if(_loc12_ || param2)
                                                                        {
                                                                           _loc3_.push(_loc6_.name);
                                                                        }
                                                                     }
                                                                     continue;
                                                                  }
                                                                  §§goto(addr131);
                                                               }
                                                               else
                                                               {
                                                                  loop3:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(!(_loc11_ && _loc3_))
                                                                     {
                                                                        §§push(§§pop() - 1);
                                                                        if(!(_loc11_ && this))
                                                                        {
                                                                           addr267:
                                                                           while(true)
                                                                           {
                                                                              _loc5_ = §§pop();
                                                                              if(!_loc11_)
                                                                              {
                                                                                 loop4:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       if(!_loc11_)
                                                                                       {
                                                                                          §§goto(addr273);
                                                                                       }
                                                                                       break loop16;
                                                                                    }
                                                                                    §§push(this.§0%§);
                                                                                    if(!(_loc11_ && param2))
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if((_loc8_ = §§pop().methods[_loc5_]).name.toLowerCase().indexOf(_loc4_,0) > -1)
                                                                                          {
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                _loc3_.push(_loc8_.name);
                                                                                             }
                                                                                          }
                                                                                          addr248:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc5_);
                                                                                             if(_loc12_)
                                                                                             {
                                                                                                continue loop3;
                                                                                             }
                                                                                             continue loop4;
                                                                                          }
                                                                                       }
                                                                                       addr229:
                                                                                    }
                                                                                 }
                                                                                 break loop16;
                                                                              }
                                                                              continue loop0;
                                                                           }
                                                                           addr267:
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr267);
                                                                  }
                                                                  §§goto(addr316);
                                                               }
                                                            }
                                                            §§goto(addr316);
                                                         }
                                                         §§goto(addr267);
                                                      }
                                                      break;
                                                   }
                                                   addr284:
                                                   _loc5_ = §§pop();
                                                   if(_loc12_)
                                                   {
                                                      §§goto(addr287);
                                                   }
                                                   break;
                                                }
                                                §§goto(addr127);
                                             }
                                             §§goto(addr284);
                                          }
                                          §§goto(addr150);
                                       case 1:
                                          §§push(this.§0%§);
                                          if(_loc12_)
                                          {
                                             §§push(int(§§pop().methods.length));
                                             if(_loc12_)
                                             {
                                                _loc5_ = §§pop();
                                                if(_loc12_)
                                                {
                                                   §§goto(addr248);
                                                }
                                                break;
                                             }
                                             §§goto(addr284);
                                          }
                                          §§goto(addr229);
                                       case 2:
                                          §§push(this.§0%§);
                                          if(_loc12_)
                                          {
                                             §§goto(addr279);
                                          }
                                          §§goto(addr291);
                                    }
                                    return _loc3_;
                                 }
                                 addr402:
                              }
                           }
                           else
                           {
                              addr369:
                              §§push(1);
                              if(_loc11_ && _loc3_)
                              {
                                 addr396:
                              }
                           }
                           §§goto(addr401);
                        }
                        else
                        {
                           §§push(§@!^§);
                           if(!(_loc11_ && param2))
                           {
                              addr363:
                              §§push(_loc10_);
                              if(!_loc11_)
                              {
                                 addr366:
                                 if(§§pop() === §§pop())
                                 {
                                    if(!_loc11_)
                                    {
                                       §§goto(addr369);
                                    }
                                    else
                                    {
                                       addr383:
                                       §§push(2);
                                       if(!_loc11_)
                                       {
                                          §§goto(addr396);
                                       }
                                       §§goto(addr401);
                                    }
                                 }
                                 else
                                 {
                                    §§push(§<"_§);
                                    if(!_loc11_)
                                    {
                                       §§push(_loc10_);
                                    }
                                    §§goto(addr401);
                                 }
                                 §§goto(addr401);
                              }
                              if(§§pop() === §§pop())
                              {
                                 §§goto(addr383);
                              }
                              else
                              {
                                 §§push(3);
                              }
                           }
                        }
                        §§goto(addr401);
                     }
                     §§goto(addr366);
                  }
                  §§goto(addr363);
               }
               §§goto(addr369);
            }
         }
         §§goto(addr402);
      }
      
      public function §6F§(param1:Object) : §#!z§
      {
         return this.§0"s§(param1,true);
      }
      
      public function §4z§(param1:§4>§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§@"+§ = param1;
         }
      }
   }
}
