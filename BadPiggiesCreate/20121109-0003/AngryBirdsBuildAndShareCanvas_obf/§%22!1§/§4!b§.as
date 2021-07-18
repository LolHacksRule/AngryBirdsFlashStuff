package §"!1§
{
   import §3!@§.§["-§;
   import flash.utils.*;
   
   public class §4!b§
   {
      
      public static const §[!n§:int = 0;
      
      public static const §&j§:int = 1;
      
      public static const COMPRESSION_REDUCED_1:int = 2;
      
      public static const COMPRESSION_REDUCED_2:int = 3;
      
      public static const COMPRESSION_REDUCED_3:int = 4;
      
      public static const COMPRESSION_REDUCED_4:int = 5;
      
      public static const §<o§:int = 6;
      
      public static const §>!+§:int = 7;
      
      public static const §#!x§:int = 8;
      
      public static const §9"0§:int = 9;
      
      public static const §2!&§:int = 10;
      
      protected static var §8!6§:Boolean;
      
      protected static var §0!"§:Boolean;
      
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && _loc1_))
         {
            §[!n§ = 0;
            loop0:
            while(true)
            {
               §&j§ = 1;
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
                        continue loop0;
                        addr73:
                        if(_loc7_ && _loc2_)
                        {
                           continue;
                        }
                        loop9:
                        while(true)
                        {
                           §9"0§ = 9;
                           addr45:
                           while(_loc6_ || _loc1_)
                           {
                              if(_loc6_ || §4!b§)
                              {
                                 continue loop2;
                              }
                              continue loop0;
                           }
                           loop7:
                           while(true)
                           {
                              §#!x§ = 8;
                              while(_loc6_)
                              {
                                 §§goto(addr73);
                                 if(_loc6_ || _loc3_)
                                 {
                                    if(_loc6_)
                                    {
                                       if(true)
                                       {
                                          §8!6§ = describeType(ByteArray).factory.method.(!(_loc7_ && §4!b§)).parameter.length() > 0;
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             §0!"§ = describeType(ByteArray).factory.method.(if(!(_loc7_ && §4!b§))
                                             {
                                                if(@name != "inflate")
                                                {
                                                   continue loop13;
                                                }
                                                if(!_loc6_)
                                                {
                                                   continue loop13;
                                                }
                                             }, _loc1_[_loc2_] = _loc4_, false).length() > 0;
                                          }
                                       }
                                       else
                                       {
                                          addr144:
                                       }
                                       continue loop9;
                                       return;
                                    }
                                    continue loop1;
                                 }
                              }
                              addr90:
                              while(true)
                              {
                                 §>!+§ = 7;
                                 continue loop7;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §2!&§ = 10;
            if(!_loc7_)
            {
               §§goto(addr30);
            }
            §§goto(addr45);
         }
         §§goto(addr144);
      }
      
      protected var §7!>§:int = 0;
      
      protected var §1$§:String = "2.0";
      
      protected var §extends§:int = 8;
      
      protected var §9"4§:Boolean = false;
      
      protected var §=!W§:int = -1;
      
      protected var §9"7§:int = -1;
      
      protected var §["7§:int = -1;
      
      protected var §"!k§:Boolean = false;
      
      protected var §9!&§:Boolean = false;
      
      protected var §5!M§:Date;
      
      protected var §2"9§:uint;
      
      protected var §8!S§:Boolean = false;
      
      protected var §7h§:uint = 0;
      
      protected var §>K§:uint = 0;
      
      protected var §+!E§:String = "";
      
      protected var §>a§:String;
      
      protected var §`!@§:Dictionary;
      
      protected var §[![§:String = "";
      
      protected var §]!t§:ByteArray;
      
      var §8d§:uint;
      
      var §5!w§:uint = 0;
      
      var §&!_§:uint = 0;
      
      protected var §4"3§:Boolean = false;
      
      protected var §44§:Function;
      
      public function §4!b§(param1:String = "utf-8")
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§44§ = this.§!!t§;
            while(true)
            {
               super();
               while(!(_loc3_ && _loc3_))
               {
                  this.§>a§ = param1;
                  while(_loc2_)
                  {
                     this.§`!@§ = new Dictionary();
                     loop3:
                     while(!_loc3_)
                     {
                        while(true)
                        {
                           this.§]!t§ = new ByteArray();
                           do
                           {
                              this.§]!t§.endian = Endian.BIG_ENDIAN;
                           }
                           while(!(_loc2_ || this));
                           
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public function get §%0§() : Date
      {
         return this.§5!M§;
      }
      
      public function set §%0§(param1:Date) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this);
            if(!_loc2_)
            {
               §§pop().§5!M§ = param1 != null ? param1 : new Date();
               §§goto(addr52);
            }
            §§goto(addr45);
         }
         addr52:
      }
      
      public function get §['§() : String
      {
         return this.§+!E§;
      }
      
      public function set §['§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§+!E§ = param1;
         }
      }
      
      function get §'H§() : Boolean
      {
         return this.§"!k§;
      }
      
      public function get content() : ByteArray
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§4"3§)
            {
               if(!_loc1_)
               {
                  this.uncompress();
               }
            }
         }
         return this.§]!t§;
      }
      
      public function set content(param1:ByteArray) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§'h§(param1);
         }
      }
      
      public function §'h§(param1:ByteArray, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(param1 == null);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(param1.length > 0);
                           loop4:
                           while(!_loc4_)
                           {
                              loop9:
                              while(true)
                              {
                                 §§push(param2);
                                 if(!(_loc5_ || param2))
                                 {
                                    continue loop4;
                                 }
                                 if(_loc4_)
                                 {
                                    continue loop2;
                                 }
                                 if(!_loc5_)
                                 {
                                    continue loop0;
                                 }
                                 if(!§§pop())
                                 {
                                    this.§&!_§ = this.§5!w§ = this.§]!t§.length;
                                    break;
                                 }
                                 if(_loc5_)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(_loc4_)
                                       {
                                          while(!(_loc4_ && this))
                                          {
                                          }
                                          continue loop3;
                                          addr65:
                                       }
                                       if(_loc5_)
                                       {
                                          this.compress();
                                          if(!(_loc4_ && this))
                                          {
                                             addr51:
                                             if(!_loc4_)
                                             {
                                                if(true)
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   this.§4"3§ = false;
                                                   addr59:
                                                   while(true)
                                                   {
                                                      continue loop9;
                                                   }
                                                }
                                                addr55:
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   param1.position = 0;
                                                   addr153:
                                                   while(true)
                                                   {
                                                      param1.readBytes(this.§]!t§,0,param1.length);
                                                      addr140:
                                                      loop13:
                                                      while(true)
                                                      {
                                                         this.§8d§ = §["-§.§7"2§(this.§]!t§);
                                                         if(_loc4_ && param2)
                                                         {
                                                            break loop9;
                                                            addr109:
                                                         }
                                                         this.§8!S§ = false;
                                                         while(!(_loc5_ || param1))
                                                         {
                                                            continue loop13;
                                                            §§goto(addr131);
                                                         }
                                                         addr131:
                                                         continue loop9;
                                                      }
                                                   }
                                                }
                                                addr150:
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr109);
                                       §§goto(addr55);
                                    }
                                    §§goto(addr59);
                                 }
                                 §§goto(addr51);
                              }
                              return;
                           }
                           continue loop1;
                        }
                     }
                  }
                  while(true)
                  {
                     if(!§§pop())
                     {
                        this.§]!t§.length = 0;
                        if(!(_loc4_ && this))
                        {
                           if(_loc5_ || param1)
                           {
                              this.§]!t§.position = 0;
                              §§goto(addr65);
                           }
                           §§goto(addr153);
                        }
                        §§goto(addr184);
                     }
                     §§goto(addr150);
                  }
               }
            }
         }
         §§goto(addr140);
      }
      
      public function get §7!!§() : String
      {
         return this.§1$§;
      }
      
      public function get §6C§() : uint
      {
         return this.§5!w§;
      }
      
      public function get §-K§() : uint
      {
         return this.§&!_§;
      }
      
      public function §^! §(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = null;
         if(_loc5_ || this)
         {
            §§push(this.§4"3§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.uncompress();
                     addr166:
                     while(true)
                     {
                     }
                  }
                  addr164:
               }
               while(true)
               {
                  this.§]!t§.position = 0;
                  while(true)
                  {
                     §§push(param2);
                     while(true)
                     {
                        if(§§pop() != "utf-8")
                        {
                           §§push(this.§]!t§.readMultiByte(this.§]!t§.bytesAvailable,param2));
                           loop5:
                           while(true)
                           {
                              if(!(_loc4_ && _loc3_))
                              {
                                 _loc3_ = §§pop();
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       while(true)
                                       {
                                          this.§]!t§.position = 0;
                                          addr98:
                                          while(true)
                                          {
                                             if(!_loc4_)
                                             {
                                                continue loop0;
                                             }
                                             addr127:
                                             while(true)
                                             {
                                                if(!(_loc4_ && param2))
                                                {
                                                   §§push(this.§]!t§.readUTFBytes(this.§]!t§.bytesAvailable));
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                   }
                                                   addr141:
                                                }
                                                else
                                                {
                                                   §§goto(addr164);
                                                }
                                                §§goto(addr166);
                                             }
                                          }
                                          continue loop5;
                                          addr144:
                                       }
                                    }
                                    while(!_loc4_)
                                    {
                                       §§goto(addr144);
                                    }
                                    §§goto(addr166);
                                 }
                                 addr120:
                              }
                              §§goto(addr141);
                           }
                        }
                        §§goto(addr127);
                        if(!(_loc4_ && _loc3_))
                        {
                           return §§pop();
                        }
                     }
                     addr64:
                     if(_loc4_ && param2)
                     {
                        continue;
                     }
                     this.compress();
                     if(!(_loc4_ && this))
                     {
                        if(!_loc4_)
                        {
                           §§goto(addr28);
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr98);
                  }
               }
            }
         }
         §§goto(addr166);
      }
      
      public function §&!V§(param1:String, param2:String = "utf-8", param3:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            this.§]!t§.length = 0;
            loop0:
            while(true)
            {
               this.§]!t§.position = 0;
               loop1:
               while(true)
               {
                  this.§4"3§ = false;
                  loop2:
                  while(true)
                  {
                     §§push(param1);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() == null);
                        loop4:
                        while(true)
                        {
                           §§push(!§§pop());
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    addr172:
                                    while(true)
                                    {
                                       §§push(param1);
                                       if(_loc5_ || param1)
                                       {
                                          §§push(§§pop().length > 0);
                                          do
                                          {
                                             if(!(_loc5_ || param3))
                                             {
                                                continue loop6;
                                             }
                                          }
                                          while(!_loc6_);
                                          
                                          continue loop4;
                                          addr131:
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                              loop14:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(param3);
                                       if(_loc5_)
                                       {
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                this.compress();
                                                if(!_loc6_)
                                                {
                                                   addr142:
                                                   if(!(_loc6_ && this))
                                                   {
                                                      if(true)
                                                      {
                                                         break loop14;
                                                         addr46:
                                                      }
                                                      while(true)
                                                      {
                                                         this.§8!S§ = false;
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr211);
                                                         }
                                                         if(_loc5_ || param2)
                                                         {
                                                            if(_loc5_ || param1)
                                                            {
                                                               break;
                                                            }
                                                            addr152:
                                                            while(_loc5_ || param1)
                                                            {
                                                               this.§]!t§.writeUTFBytes(param1);
                                                            }
                                                            §§goto(addr172);
                                                         }
                                                         loop13:
                                                         while(true)
                                                         {
                                                            addr76:
                                                            while(true)
                                                            {
                                                               this.§8d§ = §["-§.§7"2§(this.§]!t§);
                                                               continue loop13;
                                                            }
                                                         }
                                                      }
                                                      if(_loc5_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      continue loop1;
                                                   }
                                                   while(!_loc6_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param2);
                                                      continue loop3;
                                                   }
                                                   addr142:
                                                }
                                             }
                                          }
                                          else
                                          {
                                             this.§&!_§ = this.§5!w§ = this.§]!t§.length;
                                          }
                                          §§goto(addr211);
                                       }
                                       §§goto(addr131);
                                       addr75:
                                    }
                                    continue loop5;
                                 }
                                 §§goto(addr142);
                              }
                              addr211:
                              return;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr46);
         }
      }
      
      public function §>!3§(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc19_:Boolean = true;
         var _loc20_:Boolean = false;
         var _loc10_:* = null;
         var _loc15_:ByteArray = null;
         var _loc16_:* = false;
         if(!_loc20_)
         {
            if(param1 == null)
            {
               if(_loc19_ || param1)
               {
                  return 0;
               }
            }
            else
            {
               loop0:
               while(true)
               {
                  if(!param3)
                  {
                     param1.writeUnsignedInt(§?!q§.§'!b§);
                     if(_loc19_)
                     {
                        if(!_loc20_)
                        {
                           loop1:
                           while(true)
                           {
                              param1.writeShort(this.§7!>§ << 8 | 20);
                              loop2:
                              while(_loc19_)
                              {
                                 if(!_loc20_)
                                 {
                                    while(true)
                                    {
                                       param1.writeShort(this.§>a§ == "utf-8" ? 2048 : 0);
                                       while(true)
                                       {
                                          if(!(_loc20_ && param2))
                                          {
                                             continue;
                                          }
                                          continue loop0;
                                       }
                                       addr130:
                                       var _loc5_:Date = this.§5!M§;
                                       §§push(uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5);
                                       if(_loc19_ || this)
                                       {
                                          §§push(§§pop() | uint(_loc5_.getHours()) << 11);
                                       }
                                       var _loc6_:uint = §§pop();
                                       §§push(uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5);
                                       if(!_loc20_)
                                       {
                                          §§push(§§pop() | uint(_loc5_.getFullYear() - 1980) << 9);
                                       }
                                       var _loc7_:uint = §§pop();
                                       if(_loc19_)
                                       {
                                          param1.writeShort(_loc6_);
                                          loop6:
                                          while(true)
                                          {
                                             param1.writeShort(_loc7_);
                                             while(true)
                                             {
                                                param1.writeUnsignedInt(this.§8d§);
                                                loop8:
                                                for(; !(_loc20_ && param3); loop10:
                                                while(!(_loc20_ && this))
                                                {
                                                   while(true)
                                                   {
                                                      param1.writeUnsignedInt(this.§&!_§);
                                                      if(!(_loc20_ && this))
                                                      {
                                                         continue loop6;
                                                      }
                                                      continue loop10;
                                                   }
                                                   var _loc8_:ByteArray;
                                                   (_loc8_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
                                                   if(_loc19_ || param1)
                                                   {
                                                      if(this.§>a§ == "utf-8")
                                                      {
                                                         if(_loc19_ || param2)
                                                         {
                                                            _loc8_.writeUTFBytes(this.§+!E§);
                                                            if(_loc19_ || param3)
                                                            {
                                                               addr288:
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         _loc8_.writeMultiByte(this.§+!E§,this.§>a§);
                                                      }
                                                      var _loc9_:uint = _loc8_.position;
                                                      for(_loc10_ in this.§`!@§)
                                                      {
                                                         if((_loc15_ = this.§`!@§[_loc10_] as ByteArray) != null)
                                                         {
                                                            if(_loc19_)
                                                            {
                                                               _loc8_.writeShort(uint(_loc10_));
                                                               if(!(_loc19_ || param1))
                                                               {
                                                                  continue;
                                                               }
                                                               _loc8_.writeShort(uint(_loc15_.length));
                                                               if(!_loc19_)
                                                               {
                                                                  continue;
                                                               }
                                                            }
                                                            _loc8_.writeBytes(_loc15_);
                                                         }
                                                      }
                                                      if(!(_loc20_ && param2))
                                                      {
                                                         §§push(param2);
                                                         if(!(_loc20_ && param3))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc19_ || this)
                                                               {
                                                                  §§push(this.§8!S§);
                                                                  if(!(_loc20_ && param1))
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§4"3§);
                                                                           loop14:
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              if(_loc19_ || param3)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc16_ = §§pop());
                                                                                    addr495:
                                                                                    loop63:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          addr496:
                                                                                          loop21:
                                                                                          while(true)
                                                                                          {
                                                                                             this.uncompress();
                                                                                             addr498:
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop21;
                                                                                             }
                                                                                          }
                                                                                          addr496:
                                                                                       }
                                                                                       loop23:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§2"9§ = §["-§.§2"+§(this.§]!t§,0,this.§]!t§.length);
                                                                                          addr444:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc20_)
                                                                                             {
                                                                                                break loop23;
                                                                                             }
                                                                                             this.§8!S§ = true;
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc16_);
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   continue loop63;
                                                                                                }
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   continue loop14;
                                                                                                }
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                             }
                                                                                             continue loop63;
                                                                                          }
                                                                                          continue loop63;
                                                                                       }
                                                                                       §§goto(addr496);
                                                                                    }
                                                                                 }
                                                                                 addr493:
                                                                              }
                                                                              §§goto(addr495);
                                                                           }
                                                                           addr420:
                                                                           addr388:
                                                                           while(_loc20_ && param3)
                                                                           {
                                                                              continue loop13;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              _loc8_.writeShort(56026);
                                                                              loop16:
                                                                              while(_loc19_ || this)
                                                                              {
                                                                                 if(_loc19_)
                                                                                 {
                                                                                    if(!_loc20_)
                                                                                    {
                                                                                       loop17:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc8_.writeShort(4);
                                                                                          loop18:
                                                                                          while(!_loc20_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                _loc8_.writeUnsignedInt(this.§2"9§);
                                                                                                if(_loc19_ || param1)
                                                                                                {
                                                                                                   if(!(_loc20_ && this))
                                                                                                   {
                                                                                                      if(true)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop17;
                                                                                                   }
                                                                                                   continue loop16;
                                                                                                }
                                                                                                continue loop18;
                                                                                             }
                                                                                             var _loc11_:uint = _loc8_.position - _loc9_;
                                                                                             if(_loc19_)
                                                                                             {
                                                                                                §§push(param3);
                                                                                                if(!(_loc20_ && param2))
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   if(!(_loc20_ && param1))
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         loop61:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               loop31:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§[![§);
                                                                                                                  if(_loc19_ || this)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  loop29:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop() == "utf-8")
                                                                                                                     {
                                                                                                                        if(!(_loc20_ && param3))
                                                                                                                        {
                                                                                                                           _loc8_.writeUTFBytes(this.§[![§);
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     _loc8_.writeMultiByte(this.§[![§,this.§>a§);
                                                                                                                     if(_loc20_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     if(_loc19_ || this)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(false)
                                                                                                                           {
                                                                                                                              continue loop31;
                                                                                                                           }
                                                                                                                           addr583:
                                                                                                                           addr583:
                                                                                                                           §§push(_loc8_.position - _loc9_);
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - _loc11_);
                                                                                                                           }
                                                                                                                           var _loc12_:uint = §§pop();
                                                                                                                           if(_loc19_ || param2)
                                                                                                                           {
                                                                                                                              param1.writeShort(_loc9_);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 param1.writeShort(_loc11_);
                                                                                                                                 loop33:
                                                                                                                                 while(!(_loc20_ && param3))
                                                                                                                                 {
                                                                                                                                    if(param3)
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          param1.writeShort(_loc12_);
                                                                                                                                          addr665:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             param1.writeShort(0);
                                                                                                                                             while(_loc19_)
                                                                                                                                             {
                                                                                                                                                param1.writeShort(0);
                                                                                                                                                loop37:
                                                                                                                                                while(_loc19_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc19_)
                                                                                                                                                   {
                                                                                                                                                      continue loop33;
                                                                                                                                                   }
                                                                                                                                                   param1.writeUnsignedInt(0);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      addr631:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         param1.writeUnsignedInt(param4);
                                                                                                                                                         addr635:
                                                                                                                                                         while(!_loc20_)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                         continue loop37;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr662:
                                                                                                                                    }
                                                                                                                                    loop41:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc9_);
                                                                                                                                       if(!_loc20_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + _loc11_);
                                                                                                                                          if(_loc19_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + _loc12_);
                                                                                                                                          }
                                                                                                                                          if(§§pop() > 0)
                                                                                                                                          {
                                                                                                                                             if(!(_loc20_ && param2))
                                                                                                                                             {
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   param1.writeBytes(_loc8_);
                                                                                                                                                   addr625:
                                                                                                                                                   if(!_loc20_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc20_)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(true)
                                                                                                                                                            {
                                                                                                                                                               addr682:
                                                                                                                                                               §§push(uint(0));
                                                                                                                                                               break loop41;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr631);
                                                                                                                                                         }
                                                                                                                                                         addr629:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr662);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr665);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr635);
                                                                                                                                                }
                                                                                                                                                §§goto(addr642);
                                                                                                                                             }
                                                                                                                                             §§goto(addr625);
                                                                                                                                          }
                                                                                                                                          §§goto(addr682);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    var _loc13_:* = §§pop();
                                                                                                                                    if(!_loc20_)
                                                                                                                                    {
                                                                                                                                       §§push(param3);
                                                                                                                                       if(!_loc20_)
                                                                                                                                       {
                                                                                                                                          §§push(!§§pop());
                                                                                                                                          if(_loc19_ || param1)
                                                                                                                                          {
                                                                                                                                             addr876:
                                                                                                                                             §§push(§§pop());
                                                                                                                                             loop59:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   addr878:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      addr879:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§]!t§.length > 0);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr878:
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   loop46:
                                                                                                                                                   while(§§pop())
                                                                                                                                                   {
                                                                                                                                                      loop47:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§4"3§);
                                                                                                                                                         if(!(_loc20_ && param3))
                                                                                                                                                         {
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               §§push(uint(this.§]!t§.length));
                                                                                                                                                               if(_loc19_ || this)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc20_ && param3))
                                                                                                                                                                     {
                                                                                                                                                                        _loc13_ = §§pop();
                                                                                                                                                                        loop48:
                                                                                                                                                                        while(!_loc20_)
                                                                                                                                                                        {
                                                                                                                                                                           param1.writeBytes(this.§]!t§,0,_loc13_);
                                                                                                                                                                           if(_loc20_ && param1)
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(false)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr708:
                                                                                                                                                                                    break loop46;
                                                                                                                                                                                 }
                                                                                                                                                                                 break loop46;
                                                                                                                                                                              }
                                                                                                                                                                              addr829:
                                                                                                                                                                              loop60:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 param1.writeBytes(this.§]!t§,0,_loc13_);
                                                                                                                                                                                 addr784:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc20_ && param2)
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§8!6§);
                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                             loop57:
                                                                                                                                                                                             while(_loc19_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                if(_loc20_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop59;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   loop56:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      addr864:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§0!"§);
                                                                                                                                                                                                         if(_loc19_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc19_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop57;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc20_ && param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop46;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!_loc20_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop56;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr863:
                                                                                                                                                                                                }
                                                                                                                                                                                                loop58:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr752:
                                                                                                                                                                                                      §§push(this.§]!t§.length - 6);
                                                                                                                                                                                                      if(!(_loc20_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr766:
                                                                                                                                                                                                         §§push(uint(§§pop()));
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc13_ = §§pop();
                                                                                                                                                                                                            break loop48;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr766:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(_loc12_);
                                                                                                                                                                                                      if(_loc19_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr909:
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         if(_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr908:
                                                                                                                                                                                                            §§push(§§pop() + _loc13_);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(uint(§§pop()));
                                                                                                                                                                                                         break loop47;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr908);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr815:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc19_ || param3)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop47;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(uint(this.§]!t§.length));
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc13_ = §§pop();
                                                                                                                                                                                                            continue loop60;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr864);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop58;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr752);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr878);
                                                                                                                                                                                             addr852:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr863);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr848:
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr708);
                                                                                                                                                                           }
                                                                                                                                                                           addr742:
                                                                                                                                                                           if(!(_loc20_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr708);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr879);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc19_ || this)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 param1.writeBytes(this.§]!t§,2,_loc13_);
                                                                                                                                                                                 §§goto(addr742);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr815);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr784);
                                                                                                                                                                           §§goto(addr766);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr828);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr766);
                                                                                                                                                               }
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr848);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr852);
                                                                                                                                                      }
                                                                                                                                                      var _loc14_:* = §§pop();
                                                                                                                                                      if(_loc19_)
                                                                                                                                                      {
                                                                                                                                                         if(param3)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc20_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr922);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr951);
                                                                                                                                                      }
                                                                                                                                                      addr922:
                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                      if(_loc19_ || param1)
                                                                                                                                                      {
                                                                                                                                                         §§push(uint(§§pop() + 16));
                                                                                                                                                         if(_loc19_ || this)
                                                                                                                                                         {
                                                                                                                                                            _loc14_ = §§pop();
                                                                                                                                                            addr951:
                                                                                                                                                            return _loc14_;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§push(30 + _loc9_);
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc11_);
                                                                                                                                                      if(!(_loc20_ && param2))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(_loc19_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr752);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr909);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr878);
                                                                                                                                       }
                                                                                                                                       §§goto(addr876);
                                                                                                                                    }
                                                                                                                                    §§goto(addr829);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr629);
                                                                                                                        }
                                                                                                                        addr526:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              §§push(this.§>a§);
                                                                                                                              continue loop29;
                                                                                                                           }
                                                                                                                           continue loop31;
                                                                                                                        }
                                                                                                                        addr545:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr583);
                                                                                                               }
                                                                                                               §§push(§§pop().length > 0);
                                                                                                               if(!_loc20_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               continue loop61;
                                                                                                            }
                                                                                                         }
                                                                                                         addr581:
                                                                                                      }
                                                                                                      while(§§pop())
                                                                                                      {
                                                                                                         §§goto(addr545);
                                                                                                      }
                                                                                                      §§goto(addr583);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr581);
                                                                                             }
                                                                                             §§goto(addr526);
                                                                                          }
                                                                                          §§goto(addr498);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr444);
                                                                                 }
                                                                                 §§goto(addr411);
                                                                              }
                                                                              §§goto(addr420);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr388);
                                                                  }
                                                                  §§goto(addr493);
                                                               }
                                                               §§goto(addr496);
                                                            }
                                                            §§goto(addr499);
                                                         }
                                                         §§goto(addr495);
                                                      }
                                                      §§goto(addr387);
                                                   }
                                                   §§goto(addr288);
                                                })
                                                {
                                                   while(true)
                                                   {
                                                      param1.writeUnsignedInt(this.§5!w§);
                                                      continue loop8;
                                                   }
                                                }
                                             }
                                             if(!(_loc19_ || param2))
                                             {
                                                continue;
                                             }
                                             if(false)
                                             {
                                                §§goto(addr216);
                                             }
                                             §§goto(addr251);
                                          }
                                       }
                                       §§goto(addr228);
                                       if(_loc20_)
                                       {
                                          break;
                                       }
                                       if(false)
                                       {
                                          continue;
                                       }
                                       if(this.§5!M§ != null)
                                       {
                                          §§goto(addr130);
                                       }
                                       else
                                       {
                                          §§push(new Date());
                                       }
                                       §§goto(addr130);
                                    }
                                    continue;
                                 }
                                 addr108:
                                 addr108:
                                 while(true)
                                 {
                                    param1.writeUnsignedInt(§?!q§.§-!Q§);
                                    break loop2;
                                 }
                              }
                              while(true)
                              {
                                 param1.writeShort(this.§7!>§ << 8 | 20);
                                 continue loop1;
                              }
                           }
                           addr69:
                        }
                        while(true)
                        {
                           §§goto(addr69);
                        }
                     }
                  }
                  §§goto(addr108);
               }
            }
            §§goto(addr130);
         }
         §§goto(addr108);
      }
      
      function parse(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         while(true)
         {
            §§push(Boolean(param1.bytesAvailable));
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(!(_loc3_ && param1))
                  {
                     §§pop();
                     if(!_loc3_)
                     {
                        §§push(Boolean(this.§44§(param1)));
                        if(_loc2_)
                        {
                           addr61:
                           if(§§pop())
                           {
                              continue;
                           }
                        }
                        break;
                     }
                     §§push(this.§44§ === this.§3c§);
                     break;
                  }
                  break;
               }
               §§goto(addr61);
            }
            break;
         }
         return §§pop();
      }
      
      protected function §3c§(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function §!!t§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1.bytesAvailable >= 30)
            {
               this.§=!;§(param1);
               if(this.§7h§ + this.§>K§ > 0)
               {
                  this.§44§ = this.§5m§;
               }
               else
               {
                  this.§44§ = this.§^""§;
                  if(_loc2_)
                  {
                     addr77:
                  }
                  else
                  {
                     addr100:
                  }
                  §§goto(addr33);
               }
               §§goto(addr100);
            }
            else
            {
               §§push(false);
               if(!(_loc3_ && _loc2_))
               {
                  return §§pop();
               }
            }
            addr33:
            return true;
         }
         §§goto(addr77);
      }
      
      protected function §5m§(param1:IDataInput) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1.bytesAvailable < this.§7h§ + this.§>K§)
            {
               §§push(false);
               if(!_loc2_)
               {
                  return §§pop();
               }
               addr29:
               return true;
            }
            loop0:
            while(true)
            {
               this.§>!-§(param1);
               addr79:
               while(true)
               {
                  this.§44§ = this.§^""§;
                  if(!_loc2_)
                  {
                     if(!(_loc2_ && this))
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
               §§goto(addr29);
            }
         }
         §§goto(addr79);
      }
      
      protected function §^""§(param1:IDataInput) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = true;
         if(_loc3_)
         {
            §§push(this.§"!k§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  if(this.§5!w§ != 0)
                  {
                     if(param1.bytesAvailable >= this.§5!w§)
                     {
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              if(!_loc4_)
                              {
                                 if(_loc3_ || _loc3_)
                                 {
                                    while(true)
                                    {
                                       this.§<h§(param1);
                                       addr102:
                                       while(true)
                                       {
                                          this.§44§ = this.§3c§;
                                          addr79:
                                          while(true)
                                          {
                                             addr21:
                                             loop5:
                                             while(true)
                                             {
                                                §§push(_loc2_);
                                                if(_loc4_)
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc3_ || this)
                                                      {
                                                         continue loop0;
                                                      }
                                                      addr131:
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                         addr142:
                                                         while(true)
                                                         {
                                                            continue loop5;
                                                         }
                                                      }
                                                      continue loop5;
                                                   }
                                                   addr32:
                                                }
                                                return §§pop();
                                             }
                                          }
                                       }
                                    }
                                    addr99:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§44§ = this.§3c§;
                                       addr150:
                                       while(true)
                                       {
                                       }
                                    }
                                    addr146:
                                 }
                                 §§goto(addr131);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    this.§44§ = this.§3c§;
                                    addr114:
                                    while(true)
                                    {
                                       if(_loc3_ || param1)
                                       {
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§goto(addr21);
                                          }
                                          else
                                          {
                                             §§goto(addr150);
                                          }
                                       }
                                    }
                                 }
                                 addr110:
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr114);
                        }
                        addr88:
                     }
                     else
                     {
                        §§push(false);
                     }
                     §§goto(addr32);
                  }
                  §§goto(addr110);
               }
               §§goto(addr146);
            }
         }
         §§goto(addr99);
      }
      
      protected function §=!;§(param1:IDataInput) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc2_:uint = param1.readUnsignedShort();
         if(_loc12_)
         {
            this.§7!>§ = _loc2_ >> 8;
            if(_loc12_ || param1)
            {
               §§push(this);
               §§push(Math.floor((_loc2_ & 255) / 10) + ".");
               if(!(_loc13_ && this))
               {
                  §§push(§§pop() + (_loc2_ & 255) % 10);
               }
               §§pop().§1$§ = §§pop();
            }
         }
         var _loc3_:uint = param1.readUnsignedShort();
         if(!(_loc13_ && param1))
         {
            this.§extends§ = param1.readUnsignedShort();
            while(true)
            {
               §§push(this);
               §§push((_loc3_ & 1) === 0);
               if(_loc12_)
               {
                  §§push(!§§pop());
               }
               §§pop().§9"4§ = §§pop();
               while(!(_loc13_ && _loc3_))
               {
                  §§push(this);
                  §§push((_loc3_ & 8) === 0);
                  if(_loc12_ || _loc2_)
                  {
                     §§push(!§§pop());
                  }
                  §§pop().§"!k§ = §§pop();
                  loop2:
                  while(!_loc13_)
                  {
                     while(true)
                     {
                        §§push(this);
                        §§push((_loc3_ & 32) === 0);
                        if(_loc12_ || param1)
                        {
                           §§push(!§§pop());
                        }
                        §§pop().§9!&§ = §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc12_)
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
                                       if(!(_loc13_ && _loc3_))
                                       {
                                          this.§>a§ = "utf-8";
                                       }
                                       while(true)
                                       {
                                          addr128:
                                          if(!(_loc12_ || _loc3_))
                                          {
                                             continue;
                                          }
                                          if(_loc13_)
                                          {
                                             continue loop4;
                                          }
                                          if(_loc13_)
                                          {
                                             continue loop2;
                                          }
                                          if(false)
                                          {
                                             addr141:
                                             §§push(this);
                                             if(_loc12_ || _loc3_)
                                             {
                                                §§push(_loc3_ & 4);
                                                if(_loc12_)
                                                {
                                                   if(§§pop() !== 0)
                                                   {
                                                      addr157:
                                                      §§push(3);
                                                      if(!_loc12_)
                                                      {
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(2);
                                                   }
                                                }
                                                §§pop().§9"7§ = §§pop();
                                                addr304:
                                                §§push(uint(param1.readUnsignedShort()));
                                                break loop4;
                                                addr163:
                                             }
                                             §§goto(addr157);
                                          }
                                          §§goto(addr304);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(this.§extends§);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§<o§);
                                          addr168:
                                          while(true)
                                          {
                                             if(_loc13_ && _loc2_)
                                             {
                                                continue loop6;
                                             }
                                             if(§§pop() !== §§pop())
                                             {
                                                continue loop9;
                                             }
                                             if(!(_loc13_ && param1))
                                             {
                                                §§push(this);
                                                if(_loc12_ || param1)
                                                {
                                                   §§push(_loc3_ & 2);
                                                   if(!(_loc13_ && param1))
                                                   {
                                                      if(§§pop() !== 0)
                                                      {
                                                         addr203:
                                                         §§push(8192);
                                                         if(_loc12_ || param1)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(4096);
                                                      }
                                                   }
                                                   §§pop().§=!W§ = §§pop();
                                                   addr224:
                                                   §§goto(addr141);
                                                }
                                                §§goto(addr203);
                                             }
                                             §§goto(addr224);
                                          }
                                          §§goto(addr304);
                                       }
                                    }
                                 }
                                 if(_loc13_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 §§push(§#!x§);
                                 if(_loc12_)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc13_ && this))
                                       {
                                          if(_loc12_ || param1)
                                          {
                                             §§push(this);
                                             §§push(_loc3_ & 6);
                                             if(!(_loc13_ && this))
                                             {
                                                §§push(§§pop() >> 1);
                                             }
                                             §§pop().§["7§ = §§pop();
                                             addr121:
                                             if(!(_loc13_ && param1))
                                             {
                                                §§goto(addr128);
                                             }
                                             §§goto(addr224);
                                          }
                                          §§goto(addr163);
                                       }
                                       §§goto(addr121);
                                    }
                                    §§goto(addr304);
                                 }
                                 §§goto(addr168);
                              }
                           }
                           break;
                        }
                        var _loc4_:* = §§pop();
                        var _loc5_:uint = param1.readUnsignedShort();
                        var _loc6_:* = _loc4_ & 31;
                        §§push(_loc4_ & 2016);
                        if(!(_loc13_ && _loc3_))
                        {
                           §§push(§§pop() >> 5);
                        }
                        var _loc7_:* = §§pop();
                        §§push(_loc4_ & 63488);
                        if(_loc12_)
                        {
                           §§push(§§pop() >> 11);
                        }
                        var _loc8_:* = §§pop();
                        var _loc9_:* = _loc5_ & 31;
                        §§push(_loc5_ & 480);
                        if(_loc12_ || _loc2_)
                        {
                           §§push(§§pop() >> 5);
                        }
                        var _loc10_:* = §§pop();
                        §§push(_loc5_ & 65024);
                        if(_loc12_ || _loc2_)
                        {
                           §§push(9);
                           if(!(_loc13_ && _loc2_))
                           {
                              addr378:
                              §§push(§§pop() >> §§pop());
                              if(!_loc13_)
                              {
                                 §§push(1980);
                              }
                              var _loc11_:* = §§pop();
                              if(!_loc13_)
                              {
                                 this.§5!M§ = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
                                 this.§8d§ = param1.readUnsignedInt();
                                 addr453:
                              }
                              this.§5!w§ = param1.readUnsignedInt();
                              addr422:
                              if(_loc12_)
                              {
                                 this.§&!_§ = param1.readUnsignedInt();
                                 addr414:
                                 if(!_loc13_)
                                 {
                                    this.§7h§ = param1.readUnsignedShort();
                                    addr406:
                                    if(_loc12_)
                                    {
                                       this.§>K§ = param1.readUnsignedShort();
                                       if(_loc12_)
                                       {
                                          if(!(_loc12_ || param1))
                                          {
                                             §§goto(addr414);
                                          }
                                          return;
                                       }
                                       §§goto(addr406);
                                    }
                                    §§goto(addr422);
                                 }
                                 §§goto(addr453);
                              }
                              addr430:
                              §§goto(addr430);
                           }
                           §§push(int(§§pop() + §§pop()));
                        }
                        §§goto(addr378);
                     }
                  }
               }
            }
         }
         §§goto(addr279);
      }
      
      protected function §>!-§(param1:IDataInput) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         var _loc5_:ByteArray = null;
         if(!_loc7_)
         {
            if(this.§>a§ == "utf-8")
            {
               if(!(_loc7_ && param1))
               {
                  this.§+!E§ = param1.readUTFBytes(this.§7h§);
                  if(_loc6_ || param1)
                  {
                  }
               }
            }
            else
            {
               this.§+!E§ = param1.readMultiByte(this.§7h§,this.§>a§);
            }
         }
         §§push(this.§>K§);
         if(!(_loc7_ && _loc2_))
         {
            §§push(uint(§§pop()));
         }
         var _loc2_:* = §§pop();
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc6_)
            {
               loop1:
               while(true)
               {
                  §§push(4);
                  if(_loc6_)
                  {
                     loop2:
                     while(true)
                     {
                        if(§§pop() <= §§pop())
                        {
                           if(!_loc7_)
                           {
                              §§goto(addr289);
                           }
                           §§goto(addr308);
                        }
                        else
                        {
                           §§push(uint(param1.readUnsignedShort()));
                           if(!_loc7_)
                           {
                              _loc3_ = §§pop();
                              loop3:
                              while(true)
                              {
                                 §§push(uint(param1.readUnsignedShort()));
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc6_ || param1)
                                    {
                                       _loc4_ = §§pop();
                                       loop5:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          if(!(_loc7_ && _loc3_))
                                          {
                                             while(true)
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      throw new Error("Parse error in file " + this.§+!E§ + ": Extra field data size too big.");
                                                   }
                                                   §§goto(addr308);
                                                }
                                                else
                                                {
                                                   §§push(_loc3_);
                                                   if(!_loc6_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§push(56026);
                                                   if(_loc6_)
                                                   {
                                                      §§push(§§pop() === §§pop());
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr162:
                                                               while(true)
                                                               {
                                                                  addr85:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(_loc7_ && this)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  §§goto(addr289);
                                                               }
                                                            }
                                                            addr161:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(0);
                                                                     if(!(_loc6_ || param1))
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           _loc5_ = new ByteArray();
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              param1.readBytes(_loc5_,0,_loc4_);
                                                                              if(_loc6_ || _loc2_)
                                                                              {
                                                                                 this.§`!@§[_loc3_] = _loc5_;
                                                                              }
                                                                           }
                                                                           §§goto(addr256);
                                                                        }
                                                                        §§goto(addr289);
                                                                     }
                                                                     §§goto(addr256);
                                                                  }
                                                                  break;
                                                               }
                                                               if(!_loc7_)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     this.§2"9§ = param1.readUnsignedInt();
                                                                     if(_loc6_ || this)
                                                                     {
                                                                        this.§8!S§ = true;
                                                                        if(!(_loc6_ || _loc3_))
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        if(true)
                                                                        {
                                                                           addr256:
                                                                           §§push(_loc2_);
                                                                           if(!_loc7_)
                                                                           {
                                                                              addr259:
                                                                              §§push(_loc4_);
                                                                              break loop5;
                                                                           }
                                                                        }
                                                                        §§goto(addr289);
                                                                     }
                                                                     addr289:
                                                                     §§goto(addr288);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr162);
                                                                  }
                                                               }
                                                               addr288:
                                                               addr290:
                                                               if(_loc2_ > 0)
                                                               {
                                                                  if(_loc6_ || _loc2_)
                                                                  {
                                                                     addr308:
                                                                     param1.readBytes(new ByteArray(),0,_loc2_);
                                                                  }
                                                               }
                                                               return;
                                                               §§goto(addr256);
                                                            }
                                                            addr271:
                                                            _loc2_ = §§pop();
                                                            if(!(_loc7_ && this))
                                                            {
                                                               continue loop0;
                                                            }
                                                            §§goto(addr289);
                                                            addr121:
                                                         }
                                                         §§goto(addr289);
                                                         addr114:
                                                         if(_loc7_ && _loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr121);
                                                      }
                                                   }
                                                   §§goto(addr225);
                                                }
                                             }
                                             addr184:
                                          }
                                          break;
                                       }
                                       §§push(uint(§§pop() - (§§pop() + 4)));
                                       if(_loc7_ && param1)
                                       {
                                          continue loop1;
                                       }
                                       §§goto(addr271);
                                    }
                                    §§goto(addr184);
                                 }
                              }
                           }
                           §§goto(addr259);
                        }
                     }
                  }
                  §§goto(addr289);
               }
            }
            §§goto(addr289);
         }
      }
      
      function §<h§(param1:IDataInput) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = uint(0);
         if(_loc4_)
         {
            §§push(this.§extends§);
            loop0:
            while(true)
            {
               §§push(§#!x§);
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
                                 §§push(this.§9"4§);
                                 if(!(_loc3_ && param1))
                                 {
                                    §§push(!§§pop());
                                    while(true)
                                    {
                                       loop33:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§push(this.§extends§);
                                             if(_loc4_)
                                             {
                                                if(!_loc3_)
                                                {
                                                   §§push(§[!n§);
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      if(§§pop() == §§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc4_)
                                                            {
                                                               if(!(_loc3_ && _loc2_))
                                                               {
                                                                  param1.readBytes(this.§]!t§,0,this.§5!w§);
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     this.§4"3§ = false;
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           if(!(_loc4_ || _loc2_))
                                                                           {
                                                                              loop15:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_ || _loc2_)
                                                                                 {
                                                                                    this.§]!t§.writeByte(_loc2_);
                                                                                    loop16:
                                                                                    while(!_loc3_)
                                                                                    {
                                                                                       param1.readBytes(this.§]!t§,2,this.§5!w§);
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             continue loop16;
                                                                                          }
                                                                                          this.§]!t§.position = this.§]!t§.length;
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc3_ && _loc2_))
                                                                                             {
                                                                                                this.§]!t§.writeUnsignedInt(this.§2"9§);
                                                                                                while(true)
                                                                                                {
                                                                                                }
                                                                                                addr137:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                loop34:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§8!6§);
                                                                                                   addr356:
                                                                                                   loop6:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      loop7:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(!(_loc4_ || _loc3_))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            loop8:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc3_)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  break loop15;
                                                                                                               }
                                                                                                               break;
                                                                                                               addr310:
                                                                                                               loop10:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc3_ && this))
                                                                                                                  {
                                                                                                                     if(_loc4_ || _loc3_)
                                                                                                                     {
                                                                                                                        if(!(_loc3_ && this))
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           loop28:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              while(!§§pop())
                                                                                                                              {
                                                                                                                                 §§push(this.§8!S§);
                                                                                                                                 if(!(_loc4_ || param1))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    continue loop10;
                                                                                                                                 }
                                                                                                                                 if(_loc3_ && _loc3_)
                                                                                                                                 {
                                                                                                                                    break loop28;
                                                                                                                                 }
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    continue loop4;
                                                                                                                                 }
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    throw new Error("Adler32 checksum not found.");
                                                                                                                                 }
                                                                                                                                 if(!(_loc3_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    this.§]!t§.writeByte(120);
                                                                                                                                 }
                                                                                                                                 §§goto(addr307);
                                                                                                                              }
                                                                                                                              §§goto(addr334);
                                                                                                                           }
                                                                                                                           continue loop6;
                                                                                                                           addr332:
                                                                                                                        }
                                                                                                                        continue loop33;
                                                                                                                     }
                                                                                                                     continue loop7;
                                                                                                                  }
                                                                                                                  continue loop8;
                                                                                                               }
                                                                                                               continue loop34;
                                                                                                            }
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         §§goto(addr332);
                                                                                                      }
                                                                                                      continue loop3;
                                                                                                   }
                                                                                                }
                                                                                                addr355:
                                                                                             }
                                                                                             §§goto(addr116);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr269);
                                                                                 }
                                                                                 break;
                                                                                 §§goto(addr225);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr310);
                                                                                 §§goto(addr226);
                                                                              }
                                                                              addr27:
                                                                           }
                                                                           loop14:
                                                                           while(true)
                                                                           {
                                                                              this.§]!t§.position = 0;
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              if(!_loc3_)
                                                                              {
                                                                                 return;
                                                                              }
                                                                              addr307:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§["7§);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    §§push(~§§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(6);
                                                                                       if(_loc4_ || _loc3_)
                                                                                       {
                                                                                          if(_loc3_ && _loc3_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(§§pop() << §§pop());
                                                                                          if(_loc4_ || this)
                                                                                          {
                                                                                             addr266:
                                                                                             §§push(192);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() & §§pop());
                                                                                                addr267:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(uint(§§pop()));
                                                                                                   loop27:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc2_ = §§pop();
                                                                                                      addr269:
                                                                                                      addr225:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc3_)
                                                                                                         {
                                                                                                            §§push(_loc2_);
                                                                                                            if(_loc4_ || _loc2_)
                                                                                                            {
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  continue loop27;
                                                                                                               }
                                                                                                               §§push(31);
                                                                                                               §§push(120);
                                                                                                               if(!(_loc3_ && this))
                                                                                                               {
                                                                                                                  §§push(8);
                                                                                                                  if(!(_loc3_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§push(§§pop() << §§pop());
                                                                                                                     if(_loc4_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr220:
                                                                                                                        §§push(§§pop() | _loc2_);
                                                                                                                        §§push(31);
                                                                                                                     }
                                                                                                                     §§goto(addr220);
                                                                                                                  }
                                                                                                                  §§push(uint(§§pop() + (§§pop() - §§pop() % §§pop())));
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr220);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         addr334:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            param1.readBytes(this.§]!t§,0,this.§5!w§);
                                                                                                            addr341:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               addr116:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§4"3§ = true;
                                                                                                                  addr120:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc3_)
                                                                                                                     {
                                                                                                                        continue loop14;
                                                                                                                     }
                                                                                                                     continue loop5;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop27;
                                                                                                      }
                                                                                                      _loc2_ = §§pop();
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr266:
                                                                                          }
                                                                                          §§goto(addr267);
                                                                                       }
                                                                                       §§goto(addr266);
                                                                                    }
                                                                                    continue loop1;
                                                                                    addr242:
                                                                                 }
                                                                                 §§goto(addr242);
                                                                              }
                                                                           }
                                                                           continue;
                                                                           addr226:
                                                                           §§goto(addr41);
                                                                        }
                                                                        §§goto(addr137);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr161);
                                                            }
                                                            §§goto(addr145);
                                                         }
                                                      }
                                                      addr41:
                                                      throw new Error("Compression method " + this.§extends§ + " is not supported.");
                                                   }
                                                   §§goto(addr266);
                                                }
                                                §§goto(addr242);
                                             }
                                             §§goto(addr267);
                                          }
                                          §§goto(addr355);
                                       }
                                    }
                                    addr353:
                                 }
                                 §§goto(addr356);
                              }
                           }
                        }
                        §§goto(addr353);
                     }
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      protected function compress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§4"3§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     if(this.§]!t§.length <= 0)
                     {
                        this.§5!w§ = 0;
                        loop2:
                        for(; !_loc1_; this.§&!_§ = 0,if(_loc1_)
                        {
                           continue;
                        },if(!(_loc1_ && this))
                        {
                           if(!_loc1_)
                           {
                              if(_loc2_)
                              {
                                 if(!_loc1_)
                                 {
                                    §§goto(addr25);
                                 }
                                 else
                                 {
                                    §§goto(addr165);
                                 }
                              }
                              else
                              {
                                 while(true)
                                 {
                                    if(!_loc1_)
                                    {
                                       if(!(_loc2_ || this))
                                       {
                                          continue loop1;
                                       }
                                       this.§5!w§ = this.§]!t§.length - 6;
                                       while(true)
                                       {
                                          §§goto(addr79);
                                       }
                                    }
                                    §§goto(addr179);
                                 }
                                 addr119:
                              }
                              §§goto(addr25);
                           }
                           §§goto(addr112);
                        },§§goto(addr64))
                        {
                           if(!_loc1_)
                           {
                              continue;
                           }
                           loop3:
                           while(true)
                           {
                              addr79:
                              while(true)
                              {
                                 this.§]!t§.position = 0;
                                 loop5:
                                 while(_loc2_)
                                 {
                                    if(_loc2_ || _loc2_)
                                    {
                                       this.§4"3§ = true;
                                       while(true)
                                       {
                                          if(_loc1_ && _loc2_)
                                          {
                                             continue loop5;
                                          }
                                          if(!(_loc1_ && _loc1_))
                                          {
                                             §§goto(addr25);
                                          }
                                       }
                                       addr64:
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          this.§]!t§.position = 0;
                                          addr211:
                                          while(true)
                                          {
                                             this.§&!_§ = this.§]!t§.length;
                                          }
                                       }
                                       addr207:
                                    }
                                    while(_loc1_)
                                    {
                                       §§goto(addr211);
                                    }
                                    §§push(§0!"§);
                                    while(!§§pop())
                                    {
                                       §§push(§8!6§);
                                       if(_loc2_ || this)
                                       {
                                          continue loop0;
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§]!t§.deflate();
                                       continue loop3;
                                    }
                                 }
                                 addr157:
                                 this.§]!t§.compress.apply(this.§]!t§,["deflate"]);
                                 addr165:
                                 while(true)
                                 {
                                    this.§5!w§ = this.§]!t§.length;
                                    break loop2;
                                 }
                              }
                              continue loop0;
                           }
                        }
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              §§goto(addr79);
                           }
                           §§goto(addr176);
                        }
                     }
                     §§goto(addr207);
                  }
               }
               addr25:
               return;
            }
         }
         §§goto(addr112);
      }
      
      protected function uncompress() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§4"3§);
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr170:
                        while(true)
                        {
                           §§push(this.§]!t§.length > 0);
                           addr145:
                           while(!_loc1_)
                           {
                           }
                           continue loop0;
                        }
                     }
                     addr169:
                  }
                  loop5:
                  while(§§pop())
                  {
                     loop6:
                     while(true)
                     {
                        this.§]!t§.position = 0;
                        loop7:
                        while(true)
                        {
                           §§push(§0!"§);
                           while(_loc2_ || _loc1_)
                           {
                              if(!(_loc1_ && _loc1_))
                              {
                                 if(§§pop())
                                 {
                                    continue loop6;
                                 }
                                 §§push(§8!6§);
                                 if(_loc1_ && this)
                                 {
                                    continue;
                                 }
                                 if(_loc2_)
                                 {
                                    if(!§§pop())
                                    {
                                       this.§]!t§.uncompress();
                                       continue loop7;
                                    }
                                    loop14:
                                    while(true)
                                    {
                                       this.§]!t§.uncompress.apply(this.§]!t§,["deflate"]);
                                       loop15:
                                       while(true)
                                       {
                                          addr33:
                                          loop11:
                                          while(true)
                                          {
                                             this.§]!t§.position = 0;
                                             while(true)
                                             {
                                                if(!(_loc2_ || this))
                                                {
                                                   continue loop7;
                                                }
                                                if(_loc1_ && _loc2_)
                                                {
                                                   continue loop15;
                                                }
                                                if(_loc1_)
                                                {
                                                   continue loop14;
                                                }
                                                addr54:
                                                if(!(_loc1_ && this))
                                                {
                                                   this.§4"3§ = false;
                                                   if(!_loc1_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         break loop5;
                                                      }
                                                      continue loop6;
                                                   }
                                                   continue;
                                                }
                                                addr136:
                                                while(true)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      continue loop11;
                                                   }
                                                   §§goto(addr170);
                                                   §§goto(addr54);
                                                }
                                             }
                                             continue loop15;
                                          }
                                          continue loop7;
                                       }
                                    }
                                 }
                                 §§goto(addr145);
                                 continue;
                              }
                              continue loop1;
                           }
                           §§goto(addr169);
                        }
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr149);
      }
      
      public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("[FZipFile]" + "\n  name:");
         if(_loc2_ || this)
         {
            §§push(this.§+!E§);
            if(!(_loc1_ && _loc1_))
            {
               §§push(§§pop() + §§pop());
               if(!_loc1_)
               {
                  §§push(§§pop() + "\n  date:");
                  if(_loc2_)
                  {
                     §§push(§§pop() + this.§5!M§);
                     if(_loc2_ || this)
                     {
                        §§push(§§pop() + "\n  sizeCompressed:");
                        if(!_loc1_)
                        {
                           §§push(this.§5!w§);
                           if(_loc2_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc2_)
                              {
                                 §§push(§§pop() + "\n  sizeUncompressed:");
                                 if(!(_loc1_ && _loc2_))
                                 {
                                    §§push(this.§&!_§);
                                    if(_loc2_ || _loc1_)
                                    {
                                       addr82:
                                       §§push(§§pop() + §§pop());
                                       if(!_loc1_)
                                       {
                                          addr85:
                                          §§push(§§pop() + "\n  versionHost:");
                                          if(_loc2_ || this)
                                          {
                                             §§push(this.§7!>§);
                                             if(!_loc1_)
                                             {
                                                §§push(§§pop() + §§pop());
                                                if(_loc2_ || _loc2_)
                                                {
                                                   §§push(§§pop() + "\n  versionNumber:");
                                                   if(_loc2_)
                                                   {
                                                      §§push(this.§1$§);
                                                      if(!_loc1_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc1_ && this))
                                                         {
                                                            §§push(§§pop() + "\n  compressionMethod:");
                                                            if(!(_loc1_ && _loc1_))
                                                            {
                                                               addr143:
                                                               §§push(§§pop() + this.§extends§);
                                                               if(_loc2_)
                                                               {
                                                                  §§push(§§pop() + "\n  encrypted:");
                                                                  if(!_loc1_)
                                                                  {
                                                                     §§push(this.§9"4§);
                                                                     if(!_loc1_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc2_ || this)
                                                                        {
                                                                           addr162:
                                                                           §§push(§§pop() + "\n  hasDataDescriptor:");
                                                                           if(_loc2_ || _loc1_)
                                                                           {
                                                                              addr171:
                                                                              §§push(this.§"!k§);
                                                                              if(_loc2_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!(_loc1_ && _loc2_))
                                                                                 {
                                                                                    addr183:
                                                                                    §§push(§§pop() + "\n  hasCompressedPatchedData:");
                                                                                    if(!_loc1_)
                                                                                    {
                                                                                       addr189:
                                                                                       §§push(§§pop() + this.§9!&§);
                                                                                       if(!_loc1_)
                                                                                       {
                                                                                          addr192:
                                                                                          §§push(§§pop() + "\n  filenameEncoding:");
                                                                                          if(!(_loc1_ && _loc2_))
                                                                                          {
                                                                                             addr201:
                                                                                             §§push(§§pop() + this.§>a§);
                                                                                             if(!_loc1_)
                                                                                             {
                                                                                                addr206:
                                                                                                §§push(§§pop() + "\n  crc32:");
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   §§push(this.§8d§);
                                                                                                   if(_loc2_ || this)
                                                                                                   {
                                                                                                      §§push(16);
                                                                                                      if(_loc2_ || this)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop().toString(§§pop()));
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            §§goto(addr255);
                                                                                                         }
                                                                                                         §§goto(addr250);
                                                                                                      }
                                                                                                      addr255:
                                                                                                      §§push(§§pop() + "\n  adler32:");
                                                                                                      if(!(_loc1_ && _loc1_))
                                                                                                      {
                                                                                                         addr250:
                                                                                                         §§push(this.§2"9§);
                                                                                                         §§push(16);
                                                                                                      }
                                                                                                      return §§pop();
                                                                                                      §§push(§§pop() + §§pop().toString(§§pop()));
                                                                                                   }
                                                                                                   §§goto(addr250);
                                                                                                }
                                                                                                §§goto(addr255);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr255);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr192);
                                                                              }
                                                                              §§goto(addr189);
                                                                           }
                                                                           §§goto(addr192);
                                                                        }
                                                                        §§goto(addr250);
                                                                     }
                                                                     §§goto(addr189);
                                                                  }
                                                                  §§goto(addr255);
                                                               }
                                                            }
                                                            §§goto(addr183);
                                                         }
                                                      }
                                                      §§goto(addr201);
                                                   }
                                                   §§goto(addr183);
                                                }
                                                §§goto(addr192);
                                             }
                                             §§goto(addr143);
                                          }
                                          §§goto(addr183);
                                       }
                                       §§goto(addr206);
                                    }
                                    §§goto(addr250);
                                 }
                                 §§goto(addr255);
                              }
                              §§goto(addr206);
                           }
                           §§goto(addr82);
                        }
                        §§goto(addr192);
                     }
                     §§goto(addr171);
                  }
                  §§goto(addr85);
               }
               §§goto(addr192);
            }
            §§goto(addr201);
         }
         §§goto(addr162);
      }
   }
}
