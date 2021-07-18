package §3;§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §%O§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §;E§:Dictionary;
      
      private static const §4!§:Dictionary;
      
      private static const §#!W§:Dictionary;
      
      private static const §&!4§:int = 4;
      
      private static const §6!+§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §0!W§:uint = 12;
      
      private static const §'!<§:uint = 16;
      
      private static const §^!=§:uint = 20;
      
      private static const § L§:uint = 24;
      
      private static const §'!0§:uint = 28;
      
      private static const §[!#§:uint = 1;
      
      private static const §,6§:uint = 2;
      
      private static const §@d§:uint = 32;
      
      private static const §8O§:uint = 64;
      
      private static const §-!@§:uint = 1;
      
      private static const §,U§:uint = 2;
      
      private static const §]U§:uint = 4;
      
      private static const §1!E§:uint = 8;
      
      private static const §#a§:uint = 16;
      
      private static const §'!"§:uint = 32;
      
      private static const § !1§:uint = 128;
      
      private static const §+c§:String = "mov";
      
      private static const §,!>§:String = "add";
      
      private static const §@L§:String = "sub";
      
      private static const §6!X§:String = "mul";
      
      private static const §[p§:String = "div";
      
      private static const §^!P§:String = "rcp";
      
      private static const §8n§:String = "min";
      
      private static const §`!9§:String = "max";
      
      private static const §`!%§:String = "frc";
      
      private static const §#N§:String = "sqt";
      
      private static const §3!5§:String = "rsq";
      
      private static const §;I§:String = "pow";
      
      private static const §7F§:String = "log";
      
      private static const §`!!§:String = "exp";
      
      private static const §6m§:String = "nrm";
      
      private static const §%§:String = "sin";
      
      private static const §?!"§:String = "cos";
      
      private static const §4o§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §2!c§:String = "abs";
      
      private static const §6!S§:String = "neg";
      
      private static const §+i§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §1!8§:String = "ifz";
      
      private static const §+!=§:String = "inz";
      
      private static const §-!?§:String = "ife";
      
      private static const §;!W§:String = "ine";
      
      private static const §1r§:String = "ifg";
      
      private static const §3!!§:String = "ifl";
      
      private static const §0!B§:String = "ieg";
      
      private static const §=e§:String = "iel";
      
      private static const §>F§:String = "els";
      
      private static const §5![§:String = "eif";
      
      private static const §5t§:String = "rep";
      
      private static const §-!%§:String = "erp";
      
      private static const §4!Q§:String = "brk";
      
      private static const §^!e§:String = "kil";
      
      private static const §#w§:String = "tex";
      
      private static const §?D§:String = "sge";
      
      private static const §=-§:String = "slt";
      
      private static const §>8§:String = "sgn";
      
      private static const §4!3§:String = "va";
      
      private static const §4t§:String = "vc";
      
      private static const §%l§:String = "vt";
      
      private static const §]!K§:String = "op";
      
      private static const §?,§:String = "v";
      
      private static const §9!Y§:String = "fc";
      
      private static const §]R§:String = "ft";
      
      private static const §true §:String = "fs";
      
      private static const §@j§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §,!C§:String = "cube";
      
      private static const § X§:String = "mipnearest";
      
      private static const §'f§:String = "miplinear";
      
      private static const §!h§:String = "mipnone";
      
      private static const §+z§:String = "nomip";
      
      private static const §@H§:String = "nearest";
      
      private static const § !H§:String = "linear";
      
      private static const §-F§:String = "centroid";
      
      private static const §'!'§:String = "single";
      
      private static const §!D§:String = "depth";
      
      private static const §1!Z§:String = "repeat";
      
      private static const §5!;§:String = "wrap";
      
      private static const §!!H§:String = "clamp";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            initialized = false;
            loop0:
            while(true)
            {
               §;E§ = new Dictionary();
               while(true)
               {
                  §4!§ = new Dictionary();
                  loop2:
                  while(true)
                  {
                     §#!W§ = new Dictionary();
                     loop3:
                     while(true)
                     {
                        §&!4§ = 4;
                        while(true)
                        {
                           §6!+§ = 256;
                           continue loop2;
                           loop45:
                           for(; !(_loc1_ && _loc1_); while(true)
                           {
                              if(!(_loc2_ || §%O§))
                              {
                                 continue loop45;
                              }
                              §§goto(addr506);
                              §§goto(addr295);
                           },§§goto(addr763))
                           {
                              §+i§ = "sat";
                              loop46:
                              while(true)
                              {
                                 if(_loc2_)
                                 {
                                    addr625:
                                    if(_loc2_ || §%O§)
                                    {
                                       M33 = "m33";
                                       while(true)
                                       {
                                          M44 = "m44";
                                          loop48:
                                          while(true)
                                          {
                                             M34 = "m34";
                                             loop49:
                                             while(true)
                                             {
                                                §1!8§ = "ifz";
                                                addr596:
                                                while(_loc2_ || _loc2_)
                                                {
                                                   §+!=§ = "inz";
                                                   while(true)
                                                   {
                                                      §-!?§ = "ife";
                                                      addr572:
                                                      addr826:
                                                      while(_loc2_ || _loc1_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      addr109:
                                                      while(true)
                                                      {
                                                         §'!"§ = 32;
                                                         break loop46;
                                                         §§goto(addr572);
                                                      }
                                                      if(!(_loc1_ && _loc1_))
                                                      {
                                                         continue loop48;
                                                      }
                                                   }
                                                }
                                                loop17:
                                                while(true)
                                                {
                                                   §,U§ = 2;
                                                   loop18:
                                                   while(true)
                                                   {
                                                      §]U§ = 4;
                                                      addr836:
                                                      while(true)
                                                      {
                                                         §1!E§ = 8;
                                                         addr831:
                                                         while(true)
                                                         {
                                                            §#a§ = 16;
                                                            §§goto(addr826);
                                                         }
                                                      }
                                                      addr380:
                                                      if(_loc1_ && _loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      addr387:
                                                      if(!(_loc1_ && _loc2_))
                                                      {
                                                         §%l§ = "vt";
                                                         loop70:
                                                         while(true)
                                                         {
                                                            §]!K§ = "op";
                                                            while(true)
                                                            {
                                                               §?,§ = "v";
                                                               while(true)
                                                               {
                                                                  §9!Y§ = "fc";
                                                                  loop73:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc1_)
                                                                     {
                                                                        addr351:
                                                                        if(_loc2_ || §%O§)
                                                                        {
                                                                           §]R§ = "ft";
                                                                           loop74:
                                                                           while(true)
                                                                           {
                                                                              if(_loc1_)
                                                                              {
                                                                                 continue loop46;
                                                                              }
                                                                              if(_loc1_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §true § = "fs";
                                                                              loop75:
                                                                              while(true)
                                                                              {
                                                                                 §@j§ = "oc";
                                                                                 continue loop74;
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc2_ || §%O§))
                                                                                    {
                                                                                       continue loop75;
                                                                                    }
                                                                                    addr288:
                                                                                    if(!(_loc1_ && _loc2_))
                                                                                    {
                                                                                       addr295:
                                                                                       if(!(_loc1_ && _loc2_))
                                                                                       {
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §,!C§ = "cube";
                                                                                          loop79:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc1_ && _loc2_))
                                                                                             {
                                                                                                addr267:
                                                                                                if(!(_loc2_ || _loc2_))
                                                                                                {
                                                                                                   continue loop74;
                                                                                                }
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                § X§ = "mipnearest";
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc1_)
                                                                                                   {
                                                                                                      addr246:
                                                                                                      if(!(_loc2_ || §%O§))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(!_loc1_)
                                                                                                      {
                                                                                                         §'f§ = "miplinear";
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §!h§ = "mipnone";
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc1_)
                                                                                                               {
                                                                                                                  addr220:
                                                                                                                  if(_loc2_ || _loc1_)
                                                                                                                  {
                                                                                                                     addr227:
                                                                                                                     if(_loc1_ && _loc2_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §+z§ = "nomip";
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  addr399:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §4t§ = "vc";
                                                                                                                     §§goto(addr220);
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     §§goto(addr380);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §2!c§ = "abs";
                                                                                                                        addr649:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §6!S§ = "neg";
                                                                                                                           continue loop45;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr654:
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc2_ || _loc1_)
                                                                                                               {
                                                                                                                  if(_loc1_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §`!!§ = "exp";
                                                                                                                  §§goto(addr686);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr734);
                                                                                                               }
                                                                                                               §§goto(addr227);
                                                                                                            }
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr886);
                                                                                                   }
                                                                                                   §§goto(addr437);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §-!%§ = "erp";
                                                                                                   addr480:
                                                                                                   while(!_loc1_)
                                                                                                   {
                                                                                                      §4!Q§ = "brk";
                                                                                                      §§goto(addr468);
                                                                                                   }
                                                                                                   §§goto(addr792);
                                                                                                   §§goto(addr246);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr309);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc2_ || _loc2_))
                                                                                                {
                                                                                                   continue loop79;
                                                                                                }
                                                                                                §§goto(addr181);
                                                                                                §§goto(addr153);
                                                                                             }
                                                                                             §§goto(addr463);
                                                                                          }
                                                                                          continue loop70;
                                                                                       }
                                                                                       continue loop45;
                                                                                    }
                                                                                    addr404:
                                                                                    loop67:
                                                                                    while(!_loc1_)
                                                                                    {
                                                                                       addr406:
                                                                                       if(!(_loc1_ && _loc1_))
                                                                                       {
                                                                                          §4!3§ = "va";
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §1r§ = "ifg";
                                                                                             break loop67;
                                                                                             §§goto(addr406);
                                                                                          }
                                                                                          addr567:
                                                                                       }
                                                                                       §§goto(addr288);
                                                                                    }
                                                                                    continue loop49;
                                                                                    §§goto(addr399);
                                                                                    if(!(_loc1_ && §%O§))
                                                                                    {
                                                                                       continue loop73;
                                                                                    }
                                                                                 }
                                                                                 continue loop17;
                                                                              }
                                                                           }
                                                                           §§goto(addr836);
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr527);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     DP3 = "dp3";
                                                                     §§goto(addr659);
                                                                     §§goto(addr351);
                                                                  }
                                                                  if(_loc1_ && _loc2_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§goto(addr109);
                                                               }
                                                               if(!(_loc2_ || §%O§))
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc2_)
                                                               {
                                                                  §§goto(addr44);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr480);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(_loc2_ || §%O§)
                                                      {
                                                         §0!W§ = 12;
                                                         §§goto(addr891);
                                                         §§goto(addr387);
                                                      }
                                                      while(true)
                                                      {
                                                         VERTEX = "vertex";
                                                         §§goto(addr896);
                                                      }
                                                      addr896:
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 §§goto(addr787);
                              }
                              while(true)
                              {
                                 § !1§ = 128;
                                 §§goto(addr809);
                                 §§goto(addr625);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr856);
      }
      
      private var §]!T§:ByteArray = null;
      
      private var §-!a§:String = "";
      
      private var §7l§:Boolean = false;
      
      public function §%O§(param1:Boolean = false)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.§7l§ = param1;
               while(true)
               {
                  if(_loc3_ || _loc3_)
                  {
                     if(initialized)
                     {
                        break;
                     }
                     if(!(_loc3_ || _loc2_))
                     {
                        break;
                     }
                     addr53:
                     continue;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr51);
      }
      
      private static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            initialized = true;
            loop0:
            while(true)
            {
               §;E§[§+c§] = new OpCode(§+c§,2,0,0);
               while(true)
               {
                  §;E§[§,!>§] = new OpCode(§,!>§,3,1,0);
                  loop2:
                  while(true)
                  {
                     §;E§[§@L§] = new OpCode(§@L§,3,2,0);
                     loop3:
                     while(true)
                     {
                        §;E§[§6!X§] = new OpCode(§6!X§,3,3,0);
                        loop4:
                        while(true)
                        {
                           §;E§[§[p§] = new OpCode(§[p§,3,4,0);
                           loop5:
                           while(true)
                           {
                              §;E§[§^!P§] = new OpCode(§^!P§,2,5,0);
                              loop6:
                              while(true)
                              {
                                 §;E§[§8n§] = new OpCode(§8n§,3,6,0);
                                 loop7:
                                 while(true)
                                 {
                                    §;E§[§`!9§] = new OpCode(§`!9§,3,7,0);
                                    loop8:
                                    while(true)
                                    {
                                       §;E§[§`!%§] = new OpCode(§`!%§,2,8,0);
                                       loop9:
                                       while(true)
                                       {
                                          §;E§[§#N§] = new OpCode(§#N§,2,9,0);
                                          loop10:
                                          while(true)
                                          {
                                             §;E§[§3!5§] = new OpCode(§3!5§,2,10,0);
                                             while(true)
                                             {
                                                §;E§[§;I§] = new OpCode(§;I§,3,11,0);
                                                loop12:
                                                while(true)
                                                {
                                                   §;E§[§7F§] = new OpCode(§7F§,2,12,0);
                                                   while(true)
                                                   {
                                                      §;E§[§`!!§] = new OpCode(§`!!§,2,13,0);
                                                      while(true)
                                                      {
                                                         §;E§[§6m§] = new OpCode(§6m§,2,14,0);
                                                         addr992:
                                                         while(_loc1_)
                                                         {
                                                            continue loop9;
                                                         }
                                                      }
                                                      loop19:
                                                      while(!(_loc2_ && §%O§))
                                                      {
                                                         §;E§[DP4] = new OpCode(DP4,3,19,0);
                                                         while(true)
                                                         {
                                                            §;E§[§2!c§] = new OpCode(§2!c§,2,20,0);
                                                            loop21:
                                                            while(true)
                                                            {
                                                               §;E§[§6!S§] = new OpCode(§6!S§,2,21,0);
                                                               loop22:
                                                               for(; _loc1_; while(_loc1_ || _loc2_)
                                                               {
                                                                  §;E§[§1r§] = new OpCode(§1r§,2,30,§ !1§ | §,U§ | §-!@§);
                                                                  continue loop0;
                                                               })
                                                               {
                                                                  §;E§[§+i§] = new OpCode(§+i§,2,22,0);
                                                                  while(true)
                                                                  {
                                                                     §;E§[M33] = new OpCode(M33,3,23,§#a§);
                                                                     loop24:
                                                                     while(true)
                                                                     {
                                                                        §;E§[M44] = new OpCode(M44,3,24,§#a§);
                                                                        continue loop21;
                                                                        addr521:
                                                                        if(!(_loc2_ && _loc1_))
                                                                        {
                                                                           §4!§[§4!3§] = new Register(§4!3§,"vertex attribute",0,7,§8O§ | §,6§);
                                                                           loop45:
                                                                           while(true)
                                                                           {
                                                                              if(_loc1_)
                                                                              {
                                                                                 if(_loc1_)
                                                                                 {
                                                                                    addr487:
                                                                                    if(_loc1_ || _loc1_)
                                                                                    {
                                                                                       if(!_loc1_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       continue loop7;
                                                                                    }
                                                                                    loop34:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc2_ && _loc2_)
                                                                                       {
                                                                                          while(!_loc2_)
                                                                                          {
                                                                                             §;E§[§1!8§] = new OpCode(§1!8§,1,26,§ !1§ | §,U§ | §-!@§);
                                                                                             §§goto(addr840);
                                                                                             continue loop34;
                                                                                          }
                                                                                          continue loop4;
                                                                                          addr851:
                                                                                       }
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          continue loop19;
                                                                                       }
                                                                                       if(!_loc1_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §;E§[§>F§] = new OpCode(§>F§,0,34,§ !1§ | §,U§ | §]U§);
                                                                                       while(true)
                                                                                       {
                                                                                          §;E§[§5![§] = new OpCode(§5![§,0,35,§ !1§ | §]U§);
                                                                                          loop36:
                                                                                          while(true)
                                                                                          {
                                                                                             §;E§[§5t§] = new OpCode(§5t§,1,36,§ !1§ | §,U§ | §-!@§);
                                                                                             addr653:
                                                                                             while(_loc1_ || §%O§)
                                                                                             {
                                                                                                §;E§[§-!%§] = new OpCode(§-!%§,0,37,§ !1§ | §]U§);
                                                                                                loop38:
                                                                                                while(true)
                                                                                                {
                                                                                                   §;E§[§4!Q§] = new OpCode(§4!Q§,0,38,§ !1§);
                                                                                                   loop39:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §;E§[§^!e§] = new OpCode(§^!e§,1,39,§ !1§ | §'!"§);
                                                                                                      addr600:
                                                                                                      loop40:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc1_ || _loc1_))
                                                                                                         {
                                                                                                            addr803:
                                                                                                            while(_loc1_ || _loc1_)
                                                                                                            {
                                                                                                               §;E§[§;!W§] = new OpCode(§;!W§,2,29,§ !1§ | §,U§ | §-!@§);
                                                                                                               continue loop22;
                                                                                                            }
                                                                                                            continue loop21;
                                                                                                            addr803:
                                                                                                         }
                                                                                                         if(!(_loc1_ || _loc2_))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §;E§[§#w§] = new OpCode(§#w§,3,40,§'!"§ | §1!E§);
                                                                                                         loop41:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §;E§[§?D§] = new OpCode(§?D§,3,41,0);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc2_ && §%O§))
                                                                                                               {
                                                                                                                  continue loop6;
                                                                                                               }
                                                                                                               continue loop41;
                                                                                                               addr446:
                                                                                                               loop47:
                                                                                                               while(_loc1_ || §%O§)
                                                                                                               {
                                                                                                                  §4!§[§]!K§] = new Register(§]!K§,"vertex output",3,0,§8O§ | §[!#§);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc2_ && _loc1_)
                                                                                                                     {
                                                                                                                        while(_loc1_)
                                                                                                                        {
                                                                                                                           §4!§[§%l§] = new Register(§%l§,"vertex temporary",2,7,§8O§ | §[!#§ | §,6§);
                                                                                                                           continue loop47;
                                                                                                                        }
                                                                                                                        continue loop38;
                                                                                                                        addr467:
                                                                                                                     }
                                                                                                                     if(!_loc1_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §4!§[§?,§] = new Register(§?,§,"varying",4,7,§8O§ | §@d§ | §,6§ | §[!#§);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §4!§[§9!Y§] = new Register(§9!Y§,"fragment constant",1,27,§@d§ | §,6§);
                                                                                                                        continue loop8;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop22;
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         addr514:
                                                                                                         loop44:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc2_ && _loc1_)
                                                                                                            {
                                                                                                               continue loop40;
                                                                                                            }
                                                                                                            §§goto(addr521);
                                                                                                            loop62:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc1_ || §%O§)
                                                                                                               {
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §#!W§[§-F§] = new Sampler(§-F§,§'!<§,1 << 0);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc1_)
                                                                                                                     {
                                                                                                                        addr144:
                                                                                                                        if(!(_loc2_ && §%O§))
                                                                                                                        {
                                                                                                                           continue loop10;
                                                                                                                        }
                                                                                                                        addr744:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §;E§[§0!B§] = new OpCode(§0!B§,2,32,§ !1§ | §,U§ | §-!@§);
                                                                                                                           §§goto(addr144);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        loop60:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc1_ || _loc1_))
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc1_)
                                                                                                                                 {
                                                                                                                                    if(_loc2_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §#!W§[§ X§] = new Sampler(§ X§,§ L§,1);
                                                                                                                                    loop57:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          if(!_loc1_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §#!W§[§'f§] = new Sampler(§'f§,§ L§,2);
                                                                                                                                          while(_loc1_)
                                                                                                                                          {
                                                                                                                                             §#!W§[§!h§] = new Sampler(§!h§,§ L§,0);
                                                                                                                                             continue loop57;
                                                                                                                                          }
                                                                                                                                          while(!_loc2_)
                                                                                                                                          {
                                                                                                                                             §#!W§[D2] = new Sampler(D2,§0!W§,0);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §#!W§[D3] = new Sampler(D3,§0!W§,2);
                                                                                                                                                continue loop36;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §4!§[§true §] = new Register(§true §,"texture sampler",5,7,§@d§ | §,6§);
                                                                                                                                             while(!_loc2_)
                                                                                                                                             {
                                                                                                                                                §4!§[§@j§] = new Register(§@j§,"fragment output",3,0,§@d§ | §[!#§);
                                                                                                                                                §§goto(addr327);
                                                                                                                                                if(!(_loc1_ || _loc2_))
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                addr232:
                                                                                                                                                if(!(_loc2_ && §%O§))
                                                                                                                                                {
                                                                                                                                                   §#!W§[§+z§] = new Sampler(§+z§,§ L§,0);
                                                                                                                                                   continue loop60;
                                                                                                                                                }
                                                                                                                                                addr970:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §;E§[§4o§] = new OpCode(§4o§,3,17,0);
                                                                                                                                                   break loop40;
                                                                                                                                                   §§goto(addr232);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop45;
                                                                                                                                          }
                                                                                                                                          addr327:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §;E§[§?!"§] = new OpCode(§?!"§,2,16,0);
                                                                                                                                       §§goto(addr970);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr407);
                                                                                                                                 }
                                                                                                                                 continue loop60;
                                                                                                                              }
                                                                                                                              continue loop2;
                                                                                                                              addr275:
                                                                                                                           }
                                                                                                                           if(!_loc1_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §#!W§[§@H§] = new Sampler(§@H§,§'!0§,0);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §#!W§[§ !H§] = new Sampler(§ !H§,§'!0§,1);
                                                                                                                              continue loop62;
                                                                                                                           }
                                                                                                                           addr187:
                                                                                                                        }
                                                                                                                        §§goto(addr421);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §;E§[§=e§] = new OpCode(§=e§,2,33,§ !1§ | §,U§ | §-!@§);
                                                                                                                        continue loop34;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop10;
                                                                                                               }
                                                                                                               continue loop44;
                                                                                                            }
                                                                                                            continue loop39;
                                                                                                         }
                                                                                                         continue loop24;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §;E§[DP3] = new OpCode(DP3,3,18,0);
                                                                                                         continue loop19;
                                                                                                         §§goto(addr607);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          if(!(_loc1_ || _loc1_))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §#!W§[§,!C§] = new Sampler(§,!C§,§0!W§,1);
                                                                                          §§goto(addr275);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §;E§[§-!?§] = new OpCode(§-!?§,2,28,§ !1§ | §,U§ | §-!@§);
                                                                                          §§goto(addr803);
                                                                                          §§goto(addr653);
                                                                                       }
                                                                                    }
                                                                                    continue loop3;
                                                                                 }
                                                                                 §§goto(addr653);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §;E§[§>8§] = new OpCode(§>8§,2,43,0);
                                                                                    §§goto(addr514);
                                                                                 }
                                                                                 addr539:
                                                                              }
                                                                              §§goto(addr600);
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               continue loop5;
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                if(_loc2_ && _loc2_)
                                                {
                                                   continue;
                                                }
                                                §#!W§[§!D§] = new Sampler(§!D§,§'!<§,1 << 2);
                                                §§goto(addr100);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(_loc2_ && _loc2_)
                  {
                     continue;
                  }
                  §4!§[§]R§] = new Register(§]R§,"fragment temporary",2,7,§@d§ | §[!#§ | §,6§);
                  §§goto(addr361);
               }
               while(_loc1_ || _loc2_)
               {
                  §;E§[§3!!§] = new OpCode(§3!!§,2,31,§ !1§ | §,U§ | §-!@§);
                  §§goto(addr744);
                  §§goto(addr40);
               }
            }
         }
         §§goto(addr49);
      }
      
      public function get error() : String
      {
         return this.§-!a§;
      }
      
      public function get §0! §() : ByteArray
      {
         return this.§]!T§;
      }
      
      public function §!!-§(param1:String, param2:String, param3:Boolean = false) : ByteArray
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}

class OpCode
{
    
   
   private var _emitCode:uint;
   
   private var _flags:uint;
   
   private var _name:String;
   
   private var _numRegister:uint;
   
   function OpCode(param1:String, param2:uint, param3:uint, param4:uint)
   {
      super();
      this._name = param1;
      this._numRegister = param2;
      this._emitCode = param3;
      this._flags = param4;
   }
   
   public function get emitCode() : uint
   {
      return this._emitCode;
   }
   
   public function get flags() : uint
   {
      return this._flags;
   }
   
   public function get name() : String
   {
      return this._name;
   }
   
   public function get numRegister() : uint
   {
      return this._numRegister;
   }
   
   public function toString() : String
   {
      return "[OpCode name=\"" + this._name + "\", numRegister=" + this._numRegister + ", emitCode=" + this._emitCode + ", flags=" + this._flags + "]";
   }
}

class Register
{
    
   
   private var _emitCode:uint;
   
   private var _name:String;
   
   private var _longName:String;
   
   private var _flags:uint;
   
   private var _range:uint;
   
   function Register(param1:String, param2:String, param3:uint, param4:uint, param5:uint)
   {
      super();
      this._name = param1;
      this._longName = param2;
      this._emitCode = param3;
      this._range = param4;
      this._flags = param5;
   }
   
   public function get emitCode() : uint
   {
      return this._emitCode;
   }
   
   public function get longName() : String
   {
      return this._longName;
   }
   
   public function get name() : String
   {
      return this._name;
   }
   
   public function get flags() : uint
   {
      return this._flags;
   }
   
   public function get range() : uint
   {
      return this._range;
   }
   
   public function toString() : String
   {
      return "[Register name=\"" + this._name + "\", longName=\"" + this._longName + "\", emitCode=" + this._emitCode + ", range=" + this._range + ", flags=" + this._flags + "]";
   }
}

class Sampler
{
    
   
   private var _flag:uint;
   
   private var _mask:uint;
   
   private var _name:String;
   
   function Sampler(param1:String, param2:uint, param3:uint)
   {
      super();
      this._name = param1;
      this._flag = param2;
      this._mask = param3;
   }
   
   public function get flag() : uint
   {
      return this._flag;
   }
   
   public function get mask() : uint
   {
      return this._mask;
   }
   
   public function get name() : String
   {
      return this._name;
   }
   
   public function toString() : String
   {
      return "[Sampler name=\"" + this._name + "\", flag=\"" + this._flag + "\", mask=" + this.mask + "]";
   }
}
