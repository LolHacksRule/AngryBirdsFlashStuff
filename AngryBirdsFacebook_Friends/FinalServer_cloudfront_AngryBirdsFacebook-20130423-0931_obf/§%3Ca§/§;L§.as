package §<a§
{
   import §<"=§.§+p§;
   import flash.utils.*;
   
   public class §;L§
   {
      
      public static const §9!p§:int = 0;
      
      public static const §7"Z§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §<"[§:int = 6;
      
      public static const §&]§:int = 7;
      
      public static const §4V§:int = 8;
      
      public static const §`!<§:int = 9;
      
      public static const §^!K§:int = 10;
      
      protected static var §[,§:Boolean;
      
      protected static var §]!a§:Boolean;
      
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && §;L§))
         {
            §9!p§ = 0;
            loop0:
            while(true)
            {
               §7"Z§ = 1;
               loop1:
               while(true)
               {
                  COMPRESSION_REDUCED_1 = 2;
                  loop2:
                  while(true)
                  {
                     COMPRESSION_REDUCED_2 = 3;
                     while(true)
                     {
                        COMPRESSION_REDUCED_3 = 4;
                        addr105:
                        while(true)
                        {
                           COMPRESSION_REDUCED_4 = 5;
                           continue loop1;
                        }
                        addr68:
                        if(!(_loc7_ || §;L§))
                        {
                           continue;
                        }
                        if(_loc6_)
                        {
                           continue loop2;
                        }
                        if(_loc6_)
                        {
                           continue loop0;
                        }
                        §4V§ = 8;
                        loop9:
                        while(true)
                        {
                           addr45:
                           while(true)
                           {
                              §`!<§ = 9;
                              addr49:
                              addr66:
                              while(!(_loc6_ && _loc3_))
                              {
                                 §^!K§ = 10;
                                 if(_loc7_ || _loc2_)
                                 {
                                    continue loop9;
                                 }
                              }
                              addr84:
                              while(!_loc6_)
                              {
                                 §§goto(addr68);
                                 §§goto(addr49);
                              }
                              while(!_loc6_)
                              {
                                 if(_loc7_)
                                 {
                                    while(true)
                                    {
                                       §&]§ = 7;
                                       §§goto(addr66);
                                    }
                                    addr88:
                                 }
                                 else
                                 {
                                    §§goto(addr105);
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      protected var §&!v§:int = 0;
      
      protected var §3"Y§:String = "2.0";
      
      protected var §2#§:int = 8;
      
      protected var §9"5§:Boolean = false;
      
      protected var §^!N§:int = -1;
      
      protected var §-!N§:int = -1;
      
      protected var §0"O§:int = -1;
      
      protected var §["3§:Boolean = false;
      
      protected var §]!;§:Boolean = false;
      
      protected var §""9§:Date;
      
      protected var §<!f§:uint;
      
      protected var native:Boolean = false;
      
      protected var §%",§:uint = 0;
      
      protected var §4Y§:uint = 0;
      
      protected var §[!`§:String = "";
      
      protected var §-!K§:String;
      
      protected var §?!+§:Dictionary;
      
      protected var §<!]§:String = "";
      
      protected var §0!X§:ByteArray;
      
      var §"!<§:uint;
      
      var §`e§:uint = 0;
      
      var §0"K§:uint = 0;
      
      protected var §;g§:Boolean = false;
      
      protected var §^4§:Function;
      
      public function §;L§(param1:String = "utf-8")
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§^4§ = this.§9!@§;
            while(true)
            {
               super();
               loop1:
               while(_loc3_ || _loc3_)
               {
                  this.§-!K§ = param1;
                  loop2:
                  while(true)
                  {
                     this.§?!+§ = new Dictionary();
                     loop3:
                     while(_loc3_)
                     {
                        while(true)
                        {
                           this.§0!X§ = new ByteArray();
                           do
                           {
                              this.§0!X§.endian = Endian.BIG_ENDIAN;
                           }
                           while(!_loc3_);
                           
                           if(!_loc2_)
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      public function get § !_§() : Date
      {
         return this.§""9§;
      }
      
      public function set § !_§(param1:Date) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this);
            if(_loc3_ || _loc3_)
            {
               §§pop().§""9§ = param1 != null ? param1 : new Date();
               §§goto(addr52);
            }
            §§goto(addr45);
         }
         addr52:
      }
      
      public function get §@"2§() : String
      {
         return this.§[!`§;
      }
      
      public function set §@"2§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§[!`§ = param1;
         }
      }
      
      function get §,"9§() : Boolean
      {
         return this.§["3§;
      }
      
      public function get content() : ByteArray
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§;g§)
            {
               if(_loc2_)
               {
                  this.uncompress();
               }
            }
         }
         return this.§0!X§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§2!E§(param1);
         }
      }
      
      public function §2!E§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            §§push(param1 == null);
            if(_loc4_ || param1)
            {
               §§push(!§§pop());
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(!§§pop())
                        {
                           this.§0!X§.length = 0;
                           loop2:
                           while(true)
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 this.§0!X§.position = 0;
                                 loop3:
                                 while(!_loc5_)
                                 {
                                    while(true)
                                    {
                                       this.§;g§ = false;
                                       if(!_loc5_)
                                       {
                                          if(_loc5_ && param1)
                                          {
                                             continue loop3;
                                          }
                                          if(!_loc4_)
                                          {
                                             continue loop2;
                                          }
                                          while(true)
                                          {
                                             §§push(param2);
                                             if(_loc4_)
                                             {
                                                if(!§§pop())
                                                {
                                                   this.§0"K§ = this.§`e§ = this.§0!X§.length;
                                                }
                                                if(!(_loc4_ || this))
                                                {
                                                   break;
                                                }
                                                if(_loc4_ || param2)
                                                {
                                                   this.compress();
                                                   if(_loc4_)
                                                   {
                                                      if(true)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr44);
                                                   }
                                                   break;
                                                }
                                                continue;
                                                break;
                                             }
                                             addr136:
                                             loop6:
                                             for(; _loc5_; break loop3)
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   continue loop6;
                                                }
                                             }
                                             continue loop0;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    continue loop2;
                                 }
                                 while(true)
                                 {
                                    §§goto(addr136);
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    param1.position = 0;
                                    while(true)
                                    {
                                       param1.readBytes(this.§0!X§,0,param1.length);
                                       if(_loc4_ || param2)
                                       {
                                          if(!_loc4_)
                                          {
                                             continue;
                                          }
                                          while(true)
                                          {
                                             this.§"!<§ = §+p§.§<Q§(this.§0!X§);
                                             if(_loc4_ || param1)
                                             {
                                                this.native = false;
                                                §§goto(addr97);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr147:
                              }
                              return;
                           }
                        }
                        §§goto(addr147);
                     }
                     continue;
                     addr145:
                  }
               }
            }
            §§goto(addr174);
         }
         §§goto(addr130);
      }
      
      public function get §5!P§() : String
      {
         return this.§3"Y§;
      }
      
      public function get §6"N§() : uint
      {
         return this.§`e§;
      }
      
      public function get §2";§() : uint
      {
         return this.§0"K§;
      }
      
      public function §["Z§(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = null;
         if(_loc4_)
         {
            §§push(this.§;g§);
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.uncompress();
                     addr145:
                     while(true)
                     {
                     }
                  }
                  addr143:
               }
               while(true)
               {
                  this.§0!X§.position = 0;
               }
               addr91:
               §§push(param1);
               if(_loc5_ && param1)
               {
                  continue;
               }
               if(§§pop())
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     if(!(_loc5_ && this))
                     {
                        if(!_loc5_)
                        {
                           addr74:
                           if(!(_loc5_ && param1))
                           {
                              this.compress();
                              addr22:
                              §§push(_loc3_);
                              if(_loc4_)
                              {
                                 if(_loc4_ || param1)
                                 {
                                    if(_loc5_)
                                    {
                                       while(true)
                                       {
                                          if(§§pop() != "utf-8")
                                          {
                                             §§push(this.§0!X§.readMultiByte(this.§0!X§.bytesAvailable,param2));
                                             loop6:
                                             while(true)
                                             {
                                                _loc3_ = §§pop();
                                                addr104:
                                                while(true)
                                                {
                                                   if(_loc4_)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            loop8:
                                                            while(true)
                                                            {
                                                               this.§0!X§.position = 0;
                                                               addr89:
                                                               loop9:
                                                               while(true)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     §§goto(addr91);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§0!X§.readUTFBytes(this.§0!X§.bytesAvailable));
                                                                        break loop9;
                                                                     }
                                                                     addr125:
                                                                  }
                                                               }
                                                               addr132:
                                                               while(true)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  continue loop8;
                                                               }
                                                            }
                                                            continue loop6;
                                                         }
                                                         §§goto(addr143);
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr133);
                                                }
                                                §§goto(addr145);
                                             }
                                             addr103:
                                          }
                                          §§goto(addr125);
                                       }
                                       addr123:
                                    }
                                    return §§pop();
                                 }
                                 §§goto(addr132);
                              }
                              §§goto(addr103);
                              addr83:
                           }
                           while(true)
                           {
                              §§goto(addr123);
                              §§goto(addr74);
                           }
                           addr139:
                        }
                        §§goto(addr104);
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr83);
               }
               §§goto(addr22);
            }
         }
         §§goto(addr139);
      }
      
      public function §1!P§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§0!X§.length = 0;
            loop0:
            while(true)
            {
               this.§0!X§.position = 0;
               if(_loc6_ || param3)
               {
                  this.§;g§ = false;
                  if(!(_loc5_ && param1))
                  {
                     §§push(param1);
                     loop1:
                     while(true)
                     {
                        §§push(§§pop() == null);
                        loop2:
                        while(true)
                        {
                           §§push(!§§pop());
                           if(!(_loc5_ && param3))
                           {
                              if(§§pop())
                              {
                                 addr141:
                                 while(true)
                                 {
                                    §§pop();
                                    addr142:
                                    while(true)
                                    {
                                       if(_loc5_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(param1);
                                       if(!_loc6_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(§§pop().length > 0);
                                       if(_loc5_)
                                       {
                                          continue loop2;
                                       }
                                    }
                                 }
                                 addr141:
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    loop11:
                                    while(true)
                                    {
                                       §§push(param3);
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       if(_loc6_ || param3)
                                       {
                                          if(§§pop())
                                          {
                                             if(_loc6_ || param3)
                                             {
                                                if(!(_loc5_ && this))
                                                {
                                                   while(true)
                                                   {
                                                      this.compress();
                                                      if(!_loc5_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(!(_loc5_ && this))
                                                            {
                                                               if(false)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.native = false;
                                                                     if(!_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(!_loc5_)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     addr124:
                                                                     while(_loc6_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§"!<§ = §+p§.§<Q§(this.§0!X§);
                                                                           addr96:
                                                                        }
                                                                     }
                                                                     §§goto(addr142);
                                                                  }
                                                                  addr197:
                                                                  return;
                                                                  addr59:
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr197);
                                                               }
                                                               §§goto(addr197);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr59);
                                                            }
                                                         }
                                                         addr50:
                                                      }
                                                      §§goto(addr197);
                                                   }
                                                   addr46:
                                                }
                                                else
                                                {
                                                   while(_loc6_)
                                                   {
                                                      §§goto(addr96);
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param2);
                                                      continue loop1;
                                                   }
                                                   addr108:
                                                   addr94:
                                                }
                                                §§goto(addr68);
                                             }
                                             §§goto(addr50);
                                          }
                                          else
                                          {
                                             this.§0"K§ = this.§`e§ = this.§0!X§.length;
                                             §§goto(addr197);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr141);
                                       }
                                       §§goto(addr142);
                                    }
                                    continue;
                                 }
                                 §§goto(addr108);
                              }
                              continue;
                           }
                           §§goto(addr141);
                        }
                     }
                  }
               }
               §§goto(addr197);
            }
         }
         §§goto(addr46);
      }
      
      public function §9"K§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc10_:Object = null;
         var _loc15_:ByteArray = null;
         var _loc16_:Boolean = false;
         if(!(_loc20_ && param2))
         {
            if(param1 != null)
            {
               loop0:
               while(true)
               {
                  if(!param3)
                  {
                     param1.writeUnsignedInt(§]G§.§;!,§);
                     loop1:
                     while(true)
                     {
                        loop2:
                        while(true)
                        {
                           param1.writeShort(this.§&!v§ << 8 | 20);
                           loop3:
                           while(!(_loc20_ && param2))
                           {
                              if(!_loc19_)
                              {
                                 loop5:
                                 while(true)
                                 {
                                    if(_loc19_ || param3)
                                    {
                                       param1.writeShort(this.§&!v§ << 8 | 20);
                                       break loop3;
                                    }
                                    addr133:
                                    return 0;
                                    addr118:
                                    while(true)
                                    {
                                       param1.writeUnsignedInt(§]G§.§=!k§);
                                       continue loop5;
                                    }
                                 }
                                 continue loop2;
                                 addr114:
                              }
                              while(true)
                              {
                                 param1.writeShort(this.§-!K§ == "utf-8" ? 2048 : 0);
                                 if(!_loc19_)
                                 {
                                    break;
                                 }
                                 if(!_loc20_)
                                 {
                                    if(!_loc20_)
                                    {
                                       if(_loc19_ || this)
                                       {
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                    continue loop1;
                                 }
                                 continue loop3;
                              }
                              §§goto(addr147);
                              §§push(this.§""9§);
                           }
                           while(true)
                           {
                              if(!_loc19_)
                              {
                                 §§goto(addr118);
                              }
                              §§goto(addr114);
                           }
                        }
                     }
                  }
                  §§goto(addr118);
               }
            }
            §§goto(addr133);
         }
         §§goto(addr75);
      }
      
      function parse(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         do
         {
            §§push(Boolean(param1.bytesAvailable));
            if(!(_loc2_ && _loc3_))
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc3_)
                  {
                     §§pop();
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§push(Boolean(this.§^4§(param1)));
                     if(!_loc3_)
                     {
                        return §§pop();
                     }
                     addr73:
                  }
               }
            }
         }
         while(§§pop());
         
         §§goto(addr73);
         §§push(this.§^4§ === this.§2!T§);
      }
      
      protected function §2!T§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §9!@§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(param1.bytesAvailable >= 30)
            {
               do
               {
                  this.§&!j§(param1);
                  if(this.§%",§ + this.§4Y§ > 0)
                  {
                     continue;
                  }
                  this.§^4§ = this.§%'§;
                  if(_loc2_)
                  {
                     continue;
                  }
                  §§push(true);
               }
               while(!(_loc3_ || _loc3_));
               
               this.§^4§ = this.§8!j§;
               §§goto(addr27);
               addr96:
            }
            else
            {
               §§push(false);
               if(!_loc2_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr96);
      }
      
      protected function §8!j§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1.bytesAvailable >= this.§%",§ + this.§4Y§)
            {
               do
               {
                  this.§45§(param1);
                  do
                  {
                     this.§^4§ = this.§%'§;
                  }
                  while(!_loc3_);
                  
               }
               while(_loc2_ && this);
               
               §§push(true);
               addr67:
            }
            else
            {
               §§push(false);
               if(_loc3_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr67);
      }
      
      protected function §%'§(param1:IDataInput) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = true;
         if(_loc4_ || param1)
         {
            §§push(this.§["3§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(this.§`e§ != 0)
                  {
                     if(param1.bytesAvailable < this.§`e§)
                     {
                        §§push(false);
                        continue;
                     }
                     while(true)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.§4J§(param1);
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 while(true)
                                 {
                                    this.§^4§ = this.§2!T§;
                                    addr75:
                                    while(true)
                                    {
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          addr27:
                                          loop2:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(_loc3_)
                                             {
                                                break;
                                             }
                                             if(!(_loc3_ && param1))
                                             {
                                                return §§pop();
                                             }
                                             addr133:
                                             while(true)
                                             {
                                                continue loop2;
                                             }
                                          }
                                          continue loop0;
                                          addr27:
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                §§goto(addr27);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   this.§^4§ = this.§2!T§;
                                                   addr141:
                                                   while(true)
                                                   {
                                                      §§push(false);
                                                   }
                                                }
                                                addr137:
                                             }
                                          }
                                          addr127:
                                       }
                                       while(true)
                                       {
                                          _loc2_ = §§pop();
                                          §§goto(addr133);
                                       }
                                    }
                                 }
                                 addr113:
                              }
                              §§goto(addr141);
                           }
                           addr111:
                        }
                        else
                        {
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 this.§^4§ = this.§2!T§;
                                 §§goto(addr127);
                              }
                           }
                           addr121:
                        }
                        §§goto(addr133);
                     }
                  }
                  §§goto(addr121);
               }
               §§goto(addr137);
            }
         }
         §§goto(addr113);
      }
      
      protected function §&!j§(param1:IDataInput) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc2_:uint = param1.readUnsignedShort();
         if(_loc13_)
         {
            this.§&!v§ = _loc2_ >> 8;
            if(!(_loc12_ && param1))
            {
               addr35:
               §§push(this);
               §§push(Math.floor((_loc2_ & 255) / 10) + ".");
               if(!(_loc12_ && _loc3_))
               {
                  §§push(§§pop() + (_loc2_ & 255) % 10);
               }
               §§pop().§3"Y§ = §§pop();
            }
            var _loc3_:uint = param1.readUnsignedShort();
            if(_loc13_ || _loc2_)
            {
               this.§2#§ = param1.readUnsignedShort();
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push((_loc3_ & 1) === 0);
                  if(!_loc12_)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().§9"5§ = §§pop();
                  addr264:
                  while(true)
                  {
                     §§push(this);
                     §§push((_loc3_ & 8) === 0);
                     if(!_loc12_)
                     {
                        §§push(!§§pop());
                     }
                     §§pop().§["3§ = §§pop();
                     addr252:
                     while(true)
                     {
                        §§push(this);
                        §§push((_loc3_ & 32) === 0);
                        if(!_loc12_)
                        {
                           §§push(!§§pop());
                        }
                        §§pop().§]!;§ = §§pop();
                        addr238:
                        while(_loc13_)
                        {
                        }
                        continue loop0;
                     }
                  }
               }
            }
            loop4:
            while(true)
            {
               §§push(_loc3_);
               if(_loc13_ || _loc2_)
               {
                  §§push(§§pop() & 800);
                  while(true)
                  {
                     §§push(0);
                     loop6:
                     while(true)
                     {
                        if(§§pop() !== §§pop())
                        {
                           if(!_loc12_)
                           {
                              if(_loc12_)
                              {
                                 break;
                              }
                              this.§-!K§ = "utf-8";
                           }
                           while(true)
                           {
                              addr198:
                              if(_loc12_ && _loc3_)
                              {
                                 continue;
                              }
                              §§push(this);
                              if(!_loc12_)
                              {
                                 §§push(_loc3_ & 4);
                                 if(!_loc12_)
                                 {
                                    if(§§pop() !== 0)
                                    {
                                       addr148:
                                       §§push(3);
                                       if(!_loc13_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       §§push(2);
                                    }
                                 }
                                 §§pop().§-!N§ = §§pop();
                                 addr270:
                                 §§push(uint(param1.readUnsignedShort()));
                                 break loop4;
                                 addr154:
                              }
                              §§goto(addr148);
                              addr205:
                           }
                        }
                        while(true)
                        {
                           §§push(this.§2#§);
                           loop9:
                           while(true)
                           {
                              §§push(§<"[§);
                              addr159:
                              while(true)
                              {
                                 if(_loc13_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       break;
                                    }
                                    continue loop9;
                                 }
                                 continue loop6;
                              }
                              addr162:
                              §§push(this);
                              if(!(_loc12_ && this))
                              {
                                 §§push(_loc3_ & 2);
                                 if(_loc13_ || _loc3_)
                                 {
                                    if(§§pop() !== 0)
                                    {
                                       addr182:
                                       §§push(8192);
                                       if(_loc13_)
                                       {
                                          addr185:
                                       }
                                    }
                                    else
                                    {
                                       §§push(4096);
                                    }
                                    §§pop().§^!N§ = §§pop();
                                    §§goto(addr198);
                                 }
                                 §§goto(addr185);
                              }
                              §§goto(addr182);
                           }
                        }
                        §§goto(addr205);
                     }
                     §§goto(addr238);
                     if(!(_loc13_ || param1))
                     {
                        continue;
                     }
                     §§push(§4V§);
                     if(!(_loc12_ && param1))
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc13_ || this)
                           {
                              if(_loc13_)
                              {
                                 §§push(this);
                                 §§push(_loc3_ & 6);
                                 if(!(_loc12_ && this))
                                 {
                                    §§push(§§pop() >> 1);
                                 }
                                 §§pop().§0"O§ = §§pop();
                                 addr122:
                                 if(_loc13_)
                                 {
                                    if(_loc12_ && _loc2_)
                                    {
                                       §§goto(addr162);
                                    }
                                    if(!_loc12_)
                                    {
                                       if(!_loc12_)
                                       {
                                          if(false)
                                          {
                                             §§goto(addr137);
                                          }
                                          §§goto(addr270);
                                       }
                                       else
                                       {
                                          §§goto(addr264);
                                       }
                                    }
                                    §§goto(addr252);
                                 }
                                 §§goto(addr198);
                              }
                              §§goto(addr154);
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr270);
                     }
                     §§goto(addr159);
                  }
               }
               break;
            }
            var _loc4_:* = §§pop();
            var _loc5_:uint = param1.readUnsignedShort();
            var _loc6_:* = _loc4_ & 31;
            §§push(_loc4_ & 2016);
            if(!(_loc12_ && this))
            {
               §§push(§§pop() >> 5);
            }
            var _loc7_:* = §§pop();
            §§push(_loc4_ & 63488);
            if(!_loc12_)
            {
               §§push(§§pop() >> 11);
            }
            var _loc8_:* = §§pop();
            var _loc9_:* = _loc5_ & 31;
            §§push(_loc5_ & 480);
            if(!_loc12_)
            {
               §§push(§§pop() >> 5);
            }
            var _loc10_:* = §§pop();
            §§push(_loc5_ & 65024);
            if(_loc13_ || param1)
            {
               §§push(9);
               if(_loc13_)
               {
                  §§push(§§pop() >> §§pop());
                  if(!_loc12_)
                  {
                     addr332:
                     §§push(int(§§pop() + 1980));
                  }
                  var _loc11_:* = §§pop();
                  if(_loc13_ || param1)
                  {
                     this.§""9§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
                  }
                  loop11:
                  while(true)
                  {
                     this.§"!<§ = param1.readUnsignedInt();
                     loop12:
                     while(true)
                     {
                        this.§`e§ = param1.readUnsignedInt();
                        loop13:
                        while(!_loc12_)
                        {
                           this.§0"K§ = param1.readUnsignedInt();
                           while(true)
                           {
                              this.§%",§ = param1.readUnsignedShort();
                              while(!_loc12_)
                              {
                                 this.§4Y§ = param1.readUnsignedShort();
                                 if(_loc13_)
                                 {
                                    if(!_loc12_)
                                    {
                                       if(_loc13_)
                                       {
                                          return;
                                       }
                                       continue loop12;
                                    }
                                    continue loop13;
                                 }
                              }
                           }
                        }
                        continue loop11;
                     }
                  }
               }
            }
            §§goto(addr332);
         }
         §§goto(addr35);
      }
      
      protected function §45§(param1:IDataInput) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         var _loc5_:ByteArray = null;
         if(!(_loc7_ && param1))
         {
            if(this.§-!K§ == "utf-8")
            {
               if(!_loc7_)
               {
                  this.§[!`§ = param1.readUTFBytes(this.§%",§);
                  if(_loc6_)
                  {
                     addr46:
                  }
               }
               §§goto(addr46);
            }
            else
            {
               this.§[!`§ = param1.readMultiByte(this.§%",§,this.§-!K§);
            }
            §§push(this.§4Y§);
            if(_loc6_)
            {
               §§push(uint(§§pop()));
            }
            var _loc2_:* = §§pop();
            loop0:
            while(true)
            {
               §§push(_loc2_);
               if(!_loc7_)
               {
                  loop1:
                  while(true)
                  {
                     §§push(4);
                     if(!_loc7_)
                     {
                        loop2:
                        while(true)
                        {
                           if(§§pop() > §§pop())
                           {
                              §§push(uint(param1.readUnsignedShort()));
                              if(_loc6_)
                              {
                                 _loc3_ = §§pop();
                                 loop3:
                                 while(true)
                                 {
                                    §§push(uint(param1.readUnsignedShort()));
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc6_ || _loc2_)
                                       {
                                          _loc4_ = §§pop();
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(!(_loc7_ && this))
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   break loop3;
                                                }
                                                §§push(_loc3_);
                                                if(!(_loc6_ || _loc2_))
                                                {
                                                   §§push(_loc4_);
                                                }
                                                else
                                                {
                                                   addr269:
                                                }
                                                continue;
                                                break;
                                             }
                                             break;
                                          }
                                       }
                                       §§push(uint(§§pop() - (§§pop() + 4)));
                                       if(_loc7_)
                                       {
                                          continue loop1;
                                       }
                                       _loc2_ = §§pop();
                                       if(!_loc7_)
                                       {
                                          continue loop0;
                                       }
                                       if(_loc7_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       §§push(56026);
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          §§push(§§pop() === §§pop());
                                          if(!_loc7_)
                                          {
                                             if(§§pop())
                                             {
                                                loop9:
                                                while(true)
                                                {
                                                   §§pop();
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      addr157:
                                                      loop8:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         if(!_loc7_)
                                                         {
                                                            §§push(4);
                                                            if(_loc6_)
                                                            {
                                                               addr81:
                                                               §§push(§§pop() === §§pop());
                                                               if(_loc6_ || _loc2_)
                                                               {
                                                                  loop6:
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        addr314:
                                                                        §§push(_loc4_);
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc7_ && _loc2_)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                           if(§§pop() > §§pop())
                                                                           {
                                                                              if(_loc7_ && _loc2_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              _loc5_ = new ByteArray();
                                                                              if(_loc6_ || _loc2_)
                                                                              {
                                                                                 param1.readBytes(_loc5_,0,_loc4_);
                                                                                 if(_loc6_ || _loc2_)
                                                                                 {
                                                                                    this.§?!+§[_loc3_] = _loc5_;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        break loop8;
                                                                     }
                                                                     if(_loc7_ && param1)
                                                                     {
                                                                        return;
                                                                     }
                                                                     this.§<!f§ = param1.readUnsignedInt();
                                                                     while(true)
                                                                     {
                                                                        this.native = true;
                                                                        if(!_loc6_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(_loc7_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!_loc6_)
                                                                        {
                                                                           break loop6;
                                                                        }
                                                                        if(false)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                     }
                                                                     continue loop0;
                                                                     §§push(_loc2_);
                                                                     if(!(_loc7_ && _loc2_))
                                                                     {
                                                                        §§goto(addr269);
                                                                     }
                                                                     break loop8;
                                                                     §§goto(addr81);
                                                                  }
                                                                  continue loop3;
                                                                  addr89:
                                                               }
                                                               continue loop9;
                                                            }
                                                            §§goto(addr225);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr286);
                                                   }
                                                   §§goto(addr314);
                                                }
                                                addr139:
                                             }
                                             §§goto(addr89);
                                          }
                                          §§goto(addr139);
                                       }
                                       else
                                       {
                                          addr305:
                                          if(§§pop() > §§pop())
                                          {
                                             if(_loc6_)
                                             {
                                                addr308:
                                                param1.readBytes(new ByteArray(),0,_loc2_);
                                             }
                                          }
                                       }
                                       §§goto(addr314);
                                    }
                                 }
                                 if(_loc6_ || _loc2_)
                                 {
                                    throw new Error("Parse error in file " + this.§[!`§ + ": Extra field data size too big.");
                                 }
                                 §§goto(addr303);
                              }
                              break;
                           }
                           if(_loc6_ || this)
                           {
                              addr303:
                              §§push(_loc2_);
                              break;
                           }
                           §§goto(addr308);
                        }
                        addr304:
                        §§push(0);
                     }
                     §§goto(addr305);
                  }
               }
               §§goto(addr304);
            }
         }
         §§goto(addr46);
      }
      
      function §4J§(param1:IDataInput) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = uint(0);
         if(_loc4_)
         {
            §§push(this.§2#§);
            loop0:
            while(true)
            {
               §§push(§4V§);
               loop1:
               while(true)
               {
                  §§push(§§pop() === §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(this.§9"5§);
                                 if(_loc4_)
                                 {
                                    §§push(!§§pop());
                                    if(_loc4_)
                                    {
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§push(this.§2#§);
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                if(_loc4_ || this)
                                                {
                                                   §§push(§9!p§);
                                                   if(!(_loc3_ && _loc2_))
                                                   {
                                                      if(§§pop() != §§pop())
                                                      {
                                                         break;
                                                      }
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               param1.readBytes(this.§0!X§,0,this.§`e§);
                                                               loop26:
                                                               while(true)
                                                               {
                                                                  if(_loc4_ || this)
                                                                  {
                                                                     addr131:
                                                                     if(!(_loc3_ && param1))
                                                                     {
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           this.§;g§ = false;
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc4_ || _loc3_))
                                                                              {
                                                                                 continue loop26;
                                                                              }
                                                                              loop17:
                                                                              while(true)
                                                                              {
                                                                                 this.§0!X§.position = 0;
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr36:
                                                                                    }
                                                                                    loop11:
                                                                                    while(!(_loc3_ && this))
                                                                                    {
                                                                                       this.§0!X§.writeByte(_loc2_);
                                                                                       while(true)
                                                                                       {
                                                                                          param1.readBytes(this.§0!X§,2,this.§`e§);
                                                                                          addr199:
                                                                                          loop12:
                                                                                          while(_loc4_)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   this.§0!X§.position = this.§0!X§.length;
                                                                                                   while(true)
                                                                                                   {
                                                                                                      this.§0!X§.writeUnsignedInt(this.§<!f§);
                                                                                                      break loop17;
                                                                                                   }
                                                                                                   addr180:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   loop22:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§]!a§);
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                      }
                                                                                                      loop19:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  break loop19;
                                                                                                               }
                                                                                                               break loop22;
                                                                                                            }
                                                                                                            addr369:
                                                                                                         }
                                                                                                         §§goto(addr338);
                                                                                                      }
                                                                                                      addr372:
                                                                                                      while(!(_loc3_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               break loop22;
                                                                                                            }
                                                                                                            addr338:
                                                                                                         }
                                                                                                         continue loop3;
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!§§pop())
                                                                                                            {
                                                                                                               §§push(this.native);
                                                                                                               if(_loc3_ && _loc3_)
                                                                                                               {
                                                                                                                  continue loop19;
                                                                                                               }
                                                                                                               if(!(_loc4_ || param1))
                                                                                                               {
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§0!X§.writeByte(120);
                                                                                                                  addr314:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc4_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(!(_loc3_ && _loc2_))
                                                                                                                        {
                                                                                                                           §§push(this.§0"O§);
                                                                                                                           if(_loc4_ || this)
                                                                                                                           {
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(~§§pop());
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(uint(§§pop()));
                                                                                                                                 addr288:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc2_ = §§pop();
                                                                                                                                    break loop12;
                                                                                                                                    addr221:
                                                                                                                                    if(_loc3_ && _loc2_)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    §§push(31);
                                                                                                                                    §§push(120);
                                                                                                                                    if(!_loc3_)
                                                                                                                                    {
                                                                                                                                       §§push(8);
                                                                                                                                       if(_loc4_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() << §§pop());
                                                                                                                                          if(!(_loc3_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             addr245:
                                                                                                                                             §§push(§§pop() | _loc2_);
                                                                                                                                             §§push(31);
                                                                                                                                          }
                                                                                                                                          §§goto(addr245);
                                                                                                                                       }
                                                                                                                                       addr250:
                                                                                                                                       _loc2_ = uint(§§pop() + (§§pop() - §§pop() % §§pop()));
                                                                                                                                       continue loop11;
                                                                                                                                    }
                                                                                                                                    §§goto(addr245);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr287:
                                                                                                                           }
                                                                                                                           §§push(6);
                                                                                                                           if(!(_loc3_ && this))
                                                                                                                           {
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 continue loop1;
                                                                                                                              }
                                                                                                                              §§push(§§pop() << §§pop());
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(192);
                                                                                                                                 addr286:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr287);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr286);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr347:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr146:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.§;g§ = true;
                                                                                                                           break loop18;
                                                                                                                           addr158:
                                                                                                                        }
                                                                                                                        §§goto(addr36);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               param1.readBytes(this.§0!X§,0,this.§`e§);
                                                                                                               §§goto(addr347);
                                                                                                            }
                                                                                                         }
                                                                                                         throw new Error("Adler32 checksum not found.");
                                                                                                      }
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      §§goto(addr384);
                                                                                                   }
                                                                                                   addr384:
                                                                                                   addr383:
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr314);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc2_);
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                §§goto(addr221);
                                                                                             }
                                                                                             §§goto(addr250);
                                                                                          }
                                                                                          §§goto(addr288);
                                                                                       }
                                                                                    }
                                                                                    continue loop5;
                                                                                    return;
                                                                                 }
                                                                                 if(!(_loc4_ || this))
                                                                                 {
                                                                                    continue loop18;
                                                                                 }
                                                                                 if(!(_loc3_ && _loc2_))
                                                                                 {
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr180);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr158);
                                                                                 }
                                                                                 §§goto(addr146);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_ || this)
                                                                                 {
                                                                                    §§goto(addr146);
                                                                                 }
                                                                                 break;
                                                                                 §§goto(addr131);
                                                                              }
                                                                              §§goto(addr199);
                                                                           }
                                                                           addr145:
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr27);
                                                                           }
                                                                           addr150:
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                           }
                                                                           addr368:
                                                                        }
                                                                        §§goto(addr369);
                                                                     }
                                                                     §§goto(addr165);
                                                                  }
                                                                  §§goto(addr150);
                                                               }
                                                               addr124:
                                                            }
                                                            §§goto(addr310);
                                                         }
                                                         §§goto(addr211);
                                                      }
                                                      §§goto(addr124);
                                                   }
                                                   §§goto(addr286);
                                                }
                                                §§goto(addr285);
                                             }
                                             §§goto(addr287);
                                          }
                                          §§goto(addr368);
                                       }
                                       throw new Error("Compression method " + this.§2#§ + " is not supported.");
                                       addr366:
                                    }
                                    §§goto(addr372);
                                 }
                                 §§goto(addr383);
                              }
                           }
                        }
                        §§goto(addr366);
                     }
                  }
               }
            }
         }
         §§goto(addr347);
      }
      
      protected function compress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§;g§);
            loop0:
            while(!§§pop())
            {
               if(!(_loc1_ && this))
               {
                  if(this.§0!X§.length <= 0)
                  {
                     this.§`e§ = 0;
                     loop1:
                     for(; _loc2_ || this; this.§0"K§ = 0,if(_loc1_)
                     {
                        continue;
                     },if(_loc2_)
                     {
                        addr32:
                        break loop0;
                     },§§goto(addr53))
                     {
                        if(_loc2_)
                        {
                           continue;
                        }
                        addr207:
                        this.§0!X§.position = 0;
                        loop14:
                        while(true)
                        {
                           this.§0"K§ = this.§0!X§.length;
                           loop10:
                           while(true)
                           {
                              §§push(§]!a§);
                              do
                              {
                                 if(!§§pop())
                                 {
                                    continue;
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    this.§0!X§.deflate();
                                    loop4:
                                    while(true)
                                    {
                                       if(_loc1_)
                                       {
                                          continue loop14;
                                       }
                                       this.§`e§ = this.§0!X§.length;
                                       loop5:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             continue loop10;
                                          }
                                          loop6:
                                          while(true)
                                          {
                                             this.§0!X§.position = 0;
                                             addr73:
                                             addr75:
                                             addr53:
                                             while(_loc1_)
                                             {
                                                while(true)
                                                {
                                                   if(_loc2_ || this)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         this.§`e§ = this.§0!X§.length - 6;
                                                         break loop1;
                                                      }
                                                      continue loop5;
                                                   }
                                                   addr134:
                                                   addr117:
                                                   while(_loc2_ || _loc1_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   while(!(_loc1_ && this))
                                                   {
                                                      this.§0!X§.compress.apply(this.§0!X§,["deflate"]);
                                                      continue loop5;
                                                      §§goto(addr117);
                                                   }
                                                   addr117:
                                                   continue loop4;
                                                }
                                             }
                                             this.§;g§ = true;
                                             while(true)
                                             {
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   if(_loc2_ || this)
                                                   {
                                                      break;
                                                   }
                                                   continue loop3;
                                                }
                                                §§goto(addr73);
                                                §§goto(addr75);
                                             }
                                             break loop0;
                                          }
                                       }
                                    }
                                 }
                              }
                              while(§§push(§[,§), _loc1_);
                              
                              if(_loc1_)
                              {
                                 break;
                              }
                              if(!§§pop())
                              {
                                 this.§0!X§.compress();
                                 §§goto(addr91);
                              }
                              §§goto(addr134);
                           }
                           continue loop0;
                        }
                     }
                     while(true)
                     {
                        §§goto(addr68);
                     }
                  }
               }
               §§goto(addr207);
            }
            return;
         }
         §§goto(addr32);
      }
      
      protected function uncompress() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§;g§);
            if(!_loc2_)
            {
               §§push(Boolean(§§pop()));
               loop0:
               while(true)
               {
                  if(§§pop())
                  {
                     loop12:
                     while(true)
                     {
                        §§pop();
                        addr169:
                        while(true)
                        {
                           addr143:
                           §§push(this.§0!X§.length > 0);
                           if(_loc1_)
                           {
                              break;
                           }
                           continue loop12;
                        }
                        if(!_loc1_)
                        {
                           continue loop0;
                        }
                     }
                     addr168:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(!(_loc2_ && _loc1_))
                        {
                           this.§0!X§.position = 0;
                           loop3:
                           while(true)
                           {
                              §§push(§]!a§);
                              while(!§§pop())
                              {
                                 §§push(§[,§);
                                 if(_loc2_)
                                 {
                                    continue;
                                 }
                                 if(_loc2_ && this)
                                 {
                                    break loop3;
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc1_)
                                    {
                                       if(!(_loc1_ || this))
                                       {
                                          continue loop2;
                                       }
                                       this.§0!X§.uncompress.apply(this.§0!X§,["deflate"]);
                                    }
                                    loop5:
                                    while(true)
                                    {
                                       if(_loc1_)
                                       {
                                          while(true)
                                          {
                                          }
                                          loop7:
                                          while(true)
                                          {
                                             this.§0!X§.position = 0;
                                             continue loop5;
                                             addr68:
                                             while(true)
                                             {
                                                continue loop7;
                                             }
                                          }
                                          addr126:
                                       }
                                       while(true)
                                       {
                                       }
                                       §§goto(addr41);
                                    }
                                 }
                                 else
                                 {
                                    this.§0!X§.uncompress();
                                 }
                                 §§goto(addr68);
                              }
                           }
                           §§goto(addr143);
                        }
                        §§goto(addr169);
                     }
                     addr41:
                     continue loop3;
                     return;
                  }
               }
            }
            §§goto(addr168);
         }
         §§goto(addr112);
      }
      
      public function toString() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("[FZipFile]");
         if(!(_loc2_ && this))
         {
            §§push("\n  name:");
            if(_loc1_ || this)
            {
               §§push(§§pop() + §§pop());
               if(_loc1_ || _loc1_)
               {
                  §§push(this.§[!`§);
                  if(_loc1_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc2_)
                     {
                        §§push("\n  date:");
                        if(_loc1_ || _loc1_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc2_ && _loc2_))
                           {
                              §§push(§§pop() + this.§""9§);
                              if(!(_loc2_ && this))
                              {
                                 addr73:
                                 §§push("\n  sizeCompressed:");
                                 if(!_loc2_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(_loc1_)
                                    {
                                       §§push(this.§`e§);
                                       if(_loc1_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             §§push("\n  sizeUncompressed:");
                                             if(_loc1_)
                                             {
                                                addr94:
                                                §§push(§§pop() + §§pop());
                                                if(!_loc2_)
                                                {
                                                   §§push(this.§0"K§);
                                                   if(_loc1_ || _loc1_)
                                                   {
                                                      addr106:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc1_ || _loc1_)
                                                      {
                                                         addr114:
                                                         §§push("\n  versionHost:");
                                                         if(_loc1_ || _loc2_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc2_ && _loc1_))
                                                            {
                                                               §§push(this.§&!v§);
                                                               if(!_loc2_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc1_ || this)
                                                                  {
                                                                     §§push("\n  versionNumber:");
                                                                     if(_loc1_ || _loc1_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc2_)
                                                                        {
                                                                           §§push(this.§3"Y§);
                                                                           if(_loc1_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc2_ && _loc1_))
                                                                              {
                                                                                 addr175:
                                                                                 §§push("\n  compressionMethod:");
                                                                                 if(!(_loc2_ && _loc2_))
                                                                                 {
                                                                                    §§goto(addr183);
                                                                                 }
                                                                                 §§goto(addr194);
                                                                              }
                                                                              §§goto(addr238);
                                                                           }
                                                                           §§goto(addr249);
                                                                        }
                                                                        §§goto(addr175);
                                                                     }
                                                                     addr183:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc1_)
                                                                     {
                                                                        addr188:
                                                                        §§push(§§pop() + this.§2#§);
                                                                        if(!_loc2_)
                                                                        {
                                                                           addr191:
                                                                           §§push("\n  encrypted:");
                                                                           if(_loc1_)
                                                                           {
                                                                              addr194:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc2_)
                                                                              {
                                                                                 addr197:
                                                                                 §§push(this.§9"5§);
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       §§push("\n  hasDataDescriptor:");
                                                                                       if(_loc1_ || _loc1_)
                                                                                       {
                                                                                          addr212:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             addr215:
                                                                                             §§push(this.§["3§);
                                                                                             if(_loc1_)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc1_)
                                                                                                {
                                                                                                   §§push("\n  hasCompressedPatchedData:");
                                                                                                   if(_loc1_)
                                                                                                   {
                                                                                                      addr225:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc1_ || _loc2_)
                                                                                                      {
                                                                                                         addr235:
                                                                                                         §§push(§§pop() + this.§]!;§);
                                                                                                         if(_loc1_)
                                                                                                         {
                                                                                                            addr238:
                                                                                                            §§push("\n  filenameEncoding:");
                                                                                                            if(!(_loc2_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  addr249:
                                                                                                                  §§push(§§pop() + this.§-!K§);
                                                                                                                  if(!(_loc2_ && this))
                                                                                                                  {
                                                                                                                     addr259:
                                                                                                                     §§push("\n  crc32:");
                                                                                                                     if(_loc1_)
                                                                                                                     {
                                                                                                                        addr262:
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc1_ || _loc1_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr307);
                                                                                                               }
                                                                                                               §§push(this.§"!<§);
                                                                                                               if(!(_loc2_ && _loc2_))
                                                                                                               {
                                                                                                                  addr279:
                                                                                                                  §§push(16);
                                                                                                                  if(_loc1_ || _loc1_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop().toString(§§pop()));
                                                                                                                     if(_loc1_ || this)
                                                                                                                     {
                                                                                                                        addr307:
                                                                                                                        §§push(§§pop() + "\n  adler32:");
                                                                                                                        if(_loc1_ || _loc2_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr320);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr249);
                                                                                                   }
                                                                                                   §§goto(addr262);
                                                                                                }
                                                                                                §§goto(addr249);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr235);
                                                                                       }
                                                                                       §§goto(addr262);
                                                                                    }
                                                                                    §§goto(addr238);
                                                                                 }
                                                                                 §§goto(addr235);
                                                                              }
                                                                              §§goto(addr238);
                                                                           }
                                                                           §§goto(addr225);
                                                                        }
                                                                        §§goto(addr262);
                                                                     }
                                                                     §§goto(addr320);
                                                                  }
                                                                  §§goto(addr249);
                                                               }
                                                               §§goto(addr188);
                                                            }
                                                            §§goto(addr320);
                                                         }
                                                         §§goto(addr225);
                                                      }
                                                      §§goto(addr259);
                                                   }
                                                   §§goto(addr279);
                                                }
                                                §§goto(addr197);
                                             }
                                             §§goto(addr212);
                                          }
                                          §§goto(addr215);
                                       }
                                       §§goto(addr106);
                                    }
                                    §§goto(addr320);
                                 }
                                 §§goto(addr94);
                              }
                              §§goto(addr191);
                           }
                           addr320:
                           return §§pop() + this.§<!f§.toString(16);
                        }
                        §§goto(addr262);
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr249);
               }
               §§goto(addr114);
            }
            §§goto(addr94);
         }
         §§goto(addr215);
      }
   }
}
