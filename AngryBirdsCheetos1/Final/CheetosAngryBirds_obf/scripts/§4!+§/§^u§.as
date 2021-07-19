package §4!+§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §^u§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §,e§:Dictionary;
      
      private static const §5!H§:Dictionary;
      
      private static const §+&§:Dictionary;
      
      private static const §-!M§:int = 4;
      
      private static const §#!M§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §&!=§:uint = 12;
      
      private static const §7!K§:uint = 16;
      
      private static const §5!4§:uint = 20;
      
      private static const §]!Y§:uint = 24;
      
      private static const §-u§:uint = 28;
      
      private static const §%0§:uint = 1;
      
      private static const §'!O§:uint = 2;
      
      private static const §!u§:uint = 32;
      
      private static const §;!I§:uint = 64;
      
      private static const §21§:uint = 1;
      
      private static const §#!2§:uint = 2;
      
      private static const §0!O§:uint = 4;
      
      private static const §#?§:uint = 8;
      
      private static const §2!I§:uint = 16;
      
      private static const §^!8§:uint = 32;
      
      private static const §-3§:uint = 128;
      
      private static const §;R§:String = "mov";
      
      private static const §2X§:String = "add";
      
      private static const §-L§:String = "sub";
      
      private static const §`!'§:String = "mul";
      
      private static const §8!G§:String = "div";
      
      private static const §>L§:String = "rcp";
      
      private static const §1!U§:String = "min";
      
      private static const §6T§:String = "max";
      
      private static const §^X§:String = "frc";
      
      private static const §<r§:String = "sqt";
      
      private static const §!N§:String = "rsq";
      
      private static const §`!B§:String = "pow";
      
      private static const §-!7§:String = "log";
      
      private static const §]!O§:String = "exp";
      
      private static const §1?§:String = "nrm";
      
      private static const §,#§:String = "sin";
      
      private static const §,!@§:String = "cos";
      
      private static const §04§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §1U§:String = "abs";
      
      private static const §8d§:String = "neg";
      
      private static const §5!%§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §3!#§:String = "ifz";
      
      private static const §-!=§:String = "inz";
      
      private static const §#!G§:String = "ife";
      
      private static const §1k§:String = "ine";
      
      private static const §#!6§:String = "ifg";
      
      private static const §?0§:String = "ifl";
      
      private static const §!!3§:String = "ieg";
      
      private static const §!p§:String = "iel";
      
      private static const §"!!§:String = "els";
      
      private static const §5t§:String = "eif";
      
      private static const §1!"§:String = "rep";
      
      private static const §@!%§:String = "erp";
      
      private static const §+a§:String = "brk";
      
      private static const §3!_§:String = "kil";
      
      private static const §@F§:String = "tex";
      
      private static const §2_§:String = "sge";
      
      private static const §[!T§:String = "slt";
      
      private static const §"U§:String = "sgn";
      
      private static const §1O§:String = "va";
      
      private static const §'!9§:String = "vc";
      
      private static const §&!1§:String = "vt";
      
      private static const §[!0§:String = "op";
      
      private static const §]X§:String = "v";
      
      private static const §9!&§:String = "fc";
      
      private static const §!O§:String = "ft";
      
      private static const §!0§:String = "fs";
      
      private static const §4"§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §`!,§:String = "cube";
      
      private static const §3!0§:String = "mipnearest";
      
      private static const §,!D§:String = "miplinear";
      
      private static const §`!"§:String = "mipnone";
      
      private static const §@3§:String = "nomip";
      
      private static const §,!<§:String = "nearest";
      
      private static const §[!]§:String = "linear";
      
      private static const §,B§:String = "centroid";
      
      private static const §#T§:String = "single";
      
      private static const §3!1§:String = "depth";
      
      private static const §=!"§:String = "repeat";
      
      private static const §<V§:String = "wrap";
      
      private static const §&!;§:String = "clamp";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            initialized = false;
            while(true)
            {
               §,e§ = new Dictionary();
               while(true)
               {
                  §5!H§ = new Dictionary();
                  loop2:
                  while(true)
                  {
                     §+&§ = new Dictionary();
                     while(true)
                     {
                        §-!M§ = 4;
                        while(true)
                        {
                           §#!M§ = 256;
                           while(true)
                           {
                              FRAGMENT = "fragment";
                              while(true)
                              {
                                 VERTEX = "vertex";
                                 while(true)
                                 {
                                    §&!=§ = 12;
                                    while(_loc1_)
                                    {
                                       §7!K§ = 16;
                                       while(true)
                                       {
                                          §5!4§ = 20;
                                          loop10:
                                          while(true)
                                          {
                                             §]!Y§ = 24;
                                             loop11:
                                             while(true)
                                             {
                                                §-u§ = 28;
                                                addr815:
                                                while(!_loc2_)
                                                {
                                                   §%0§ = 1;
                                                   while(true)
                                                   {
                                                      §'!O§ = 2;
                                                      addr803:
                                                      while(!_loc2_)
                                                      {
                                                         §!u§ = 32;
                                                         continue loop11;
                                                      }
                                                   }
                                                }
                                                continue loop10;
                                             }
                                          }
                                          if(_loc2_ && _loc2_)
                                          {
                                             continue;
                                          }
                                          §!!3§ = "ieg";
                                          §§goto(addr481);
                                       }
                                    }
                                    continue loop2;
                                 }
                                 if(!(_loc1_ || §^u§))
                                 {
                                    continue;
                                 }
                                 §1?§ = "nrm";
                                 §§goto(addr633);
                              }
                              while(!(_loc2_ && _loc2_))
                              {
                                 §#?§ = 8;
                                 §§goto(addr759);
                                 §§goto(addr102);
                              }
                           }
                           while(_loc1_ || _loc1_)
                           {
                              §-L§ = "sub";
                              §§goto(addr720);
                           }
                        }
                        while(!(_loc2_ && _loc1_))
                        {
                           §`!B§ = "pow";
                           §§goto(addr666);
                           §§goto(addr462);
                        }
                     }
                  }
               }
               if(!(_loc1_ || §^u§))
               {
                  continue;
               }
               §,!<§ = "nearest";
               §§goto(addr163);
            }
         }
         §§goto(addr399);
      }
      
      private var §56§:ByteArray = null;
      
      private var §^!^§:String = "";
      
      private var §7u§:Boolean = false;
      
      public function §^u§(param1:Boolean = false)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.§7u§ = param1;
               while(!initialized)
               {
                  if(!_loc3_)
                  {
                     continue loop0;
                  }
                  if(!(_loc3_ && _loc2_))
                  {
                     addr64:
                     break;
                  }
               }
               return;
            }
         }
         §§goto(addr64);
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
               §,e§[§;R§] = new OpCode(§;R§,2,0,0);
               loop1:
               while(true)
               {
                  §,e§[§2X§] = new OpCode(§2X§,3,1,0);
                  loop2:
                  while(true)
                  {
                     §,e§[§-L§] = new OpCode(§-L§,3,2,0);
                     loop3:
                     while(true)
                     {
                        §,e§[§`!'§] = new OpCode(§`!'§,3,3,0);
                        loop4:
                        while(true)
                        {
                           §,e§[§8!G§] = new OpCode(§8!G§,3,4,0);
                           loop5:
                           while(true)
                           {
                              §,e§[§>L§] = new OpCode(§>L§,2,5,0);
                              loop6:
                              while(true)
                              {
                                 §,e§[§1!U§] = new OpCode(§1!U§,3,6,0);
                                 while(true)
                                 {
                                    §,e§[§6T§] = new OpCode(§6T§,3,7,0);
                                    addr1011:
                                    while(_loc1_ || _loc1_)
                                    {
                                       continue loop2;
                                    }
                                 }
                                 addr487:
                                 if(_loc2_ && §^u§)
                                 {
                                    continue;
                                 }
                                 §5!H§[§&!1§] = new Register(§&!1§,"vertex temporary",2,7,§;!I§ | §%0§ | §'!O§);
                                 loop47:
                                 while(true)
                                 {
                                    if(!(_loc2_ && §^u§))
                                    {
                                       §5!H§[§[!0§] = new Register(§[!0§,"vertex output",3,0,§;!I§ | §%0§);
                                       loop48:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             if(_loc1_)
                                             {
                                                if(_loc1_)
                                                {
                                                   §5!H§[§]X§] = new Register(§]X§,"varying",4,7,§;!I§ | §!u§ | §'!O§ | §%0§);
                                                   loop49:
                                                   while(true)
                                                   {
                                                      §5!H§[§9!&§] = new Register(§9!&§,"fragment constant",1,27,§!u§ | §'!O§);
                                                      loop50:
                                                      while(true)
                                                      {
                                                         §5!H§[§!O§] = new Register(§!O§,"fragment temporary",2,7,§!u§ | §%0§ | §'!O§);
                                                         addr382:
                                                         while(!(_loc2_ && _loc1_))
                                                         {
                                                            §5!H§[§!0§] = new Register(§!0§,"texture sampler",5,7,§!u§ | §'!O§);
                                                            while(true)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  continue loop48;
                                                               }
                                                               continue loop49;
                                                               addr316:
                                                               loop54:
                                                               for(; !(_loc2_ && §^u§); if(!(_loc2_ && §^u§))
                                                               {
                                                                  continue loop47;
                                                               })
                                                               {
                                                                  §+&§[D3] = new Sampler(D3,§&!=§,2);
                                                                  while(true)
                                                                  {
                                                                     §+&§[§`!,§] = new Sampler(§`!,§,§&!=§,1);
                                                                     while(_loc1_)
                                                                     {
                                                                        §+&§[§3!0§] = new Sampler(§3!0§,§]!Y§,1);
                                                                        continue loop50;
                                                                        if(_loc1_ || §^u§)
                                                                        {
                                                                           continue loop54;
                                                                        }
                                                                     }
                                                                     addr780:
                                                                     addr839:
                                                                     while(!_loc2_)
                                                                     {
                                                                        §,e§[§#!G§] = new OpCode(§#!G§,2,28,§-3§ | §#!2§ | §21§);
                                                                        break loop48;
                                                                     }
                                                                     addr839:
                                                                     while(true)
                                                                     {
                                                                        §,e§[M44] = new OpCode(M44,3,24,§2!I§);
                                                                        addr828:
                                                                        while(true)
                                                                        {
                                                                           §,e§[M34] = new OpCode(M34,3,25,§2!I§);
                                                                           break loop47;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop4;
                                                         }
                                                         loop42:
                                                         while(true)
                                                         {
                                                            §,e§[§[!T§] = new OpCode(§[!T§,3,42,0);
                                                            addr537:
                                                            loop43:
                                                            while(true)
                                                            {
                                                               if(_loc1_ || _loc2_)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     §,e§[§"U§] = new OpCode(§"U§,2,43,0);
                                                                     loop44:
                                                                     while(!(_loc2_ && _loc1_))
                                                                     {
                                                                        §5!H§[§1O§] = new Register(§1O§,"vertex attribute",0,7,§;!I§ | §'!O§);
                                                                        while(true)
                                                                        {
                                                                           §5!H§[§'!9§] = new Register(§'!9§,"vertex constant",1,127,§;!I§ | §'!O§);
                                                                           loop46:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc1_)
                                                                              {
                                                                                 continue loop44;
                                                                              }
                                                                              addr480:
                                                                              if(_loc1_ || _loc1_)
                                                                              {
                                                                                 §§goto(addr487);
                                                                              }
                                                                              else
                                                                              {
                                                                                 loop38:
                                                                                 while(true)
                                                                                 {
                                                                                    §,e§[§+a§] = new OpCode(§+a§,0,38,§-3§);
                                                                                    loop39:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc1_)
                                                                                       {
                                                                                          continue loop0;
                                                                                       }
                                                                                       §,e§[§3!_§] = new OpCode(§3!_§,1,39,§-3§ | §^!8§);
                                                                                       loop40:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc2_ && §^u§))
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §,e§[§@F§] = new OpCode(§@F§,3,40,§^!8§ | §#?§);
                                                                                             while(true)
                                                                                             {
                                                                                                §,e§[§2_§] = new OpCode(§2_§,3,41,0);
                                                                                                continue loop42;
                                                                                                addr270:
                                                                                                if(!(_loc2_ && §^u§))
                                                                                                {
                                                                                                   continue loop40;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          addr718:
                                                                                          addr750:
                                                                                          while(!_loc2_)
                                                                                          {
                                                                                             §,e§[§!!3§] = new OpCode(§!!3§,2,32,§-3§ | §#!2§ | §21§);
                                                                                             while(true)
                                                                                             {
                                                                                                §,e§[§!p§] = new OpCode(§!p§,2,33,§-3§ | §#!2§ | §21§);
                                                                                                addr686:
                                                                                                while(_loc1_)
                                                                                                {
                                                                                                   §,e§[§"!!§] = new OpCode(§"!!§,0,34,§-3§ | §#!2§ | §0!O§);
                                                                                                   break loop44;
                                                                                                }
                                                                                                §§goto(addr828);
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §,e§[§#!6§] = new OpCode(§#!6§,2,30,§-3§ | §#!2§ | §21§);
                                                                                             while(true)
                                                                                             {
                                                                                                §,e§[§?0§] = new OpCode(§?0§,2,31,§-3§ | §#!2§ | §21§);
                                                                                                §§goto(addr718);
                                                                                                addr201:
                                                                                                if(_loc2_ && _loc2_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   §+&§[§[!]§] = new Sampler(§[!]§,§-u§,1);
                                                                                                   loop62:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §+&§[§,B§] = new Sampler(§,B§,§7!K§,1 << 0);
                                                                                                      loop63:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc1_ || _loc1_))
                                                                                                         {
                                                                                                            continue loop62;
                                                                                                         }
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            addr161:
                                                                                                            if(_loc2_ && _loc2_)
                                                                                                            {
                                                                                                               while(_loc1_)
                                                                                                               {
                                                                                                                  §+&§[§@3§] = new Sampler(§@3§,§]!Y§,0);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           §+&§[§,!<§] = new Sampler(§,!<§,§-u§,0);
                                                                                                                           §§goto(addr199);
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr306);
                                                                                                                     §§goto(addr839);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §,e§[§^X§] = new OpCode(§^X§,2,8,0);
                                                                                                                     §§goto(addr1047);
                                                                                                                  }
                                                                                                                  §§goto(addr161);
                                                                                                               }
                                                                                                               continue loop42;
                                                                                                               addr234:
                                                                                                            }
                                                                                                            if(_loc1_)
                                                                                                            {
                                                                                                               addr170:
                                                                                                               if(!(_loc2_ && §^u§))
                                                                                                               {
                                                                                                                  if(_loc1_)
                                                                                                                  {
                                                                                                                     §+&§[§#T§] = new Sampler(§#T§,§7!K§,1 << 1);
                                                                                                                     loop64:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           addr131:
                                                                                                                           if(_loc1_ || _loc1_)
                                                                                                                           {
                                                                                                                              if(!_loc1_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §+&§[§3!1§] = new Sampler(§3!1§,§7!K§,1 << 2);
                                                                                                                              loop65:
                                                                                                                              while(_loc1_)
                                                                                                                              {
                                                                                                                                 §+&§[§=!"§] = new Sampler(§=!"§,§5!4§,1);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc2_ && _loc2_)
                                                                                                                                    {
                                                                                                                                       continue loop65;
                                                                                                                                    }
                                                                                                                                    if(!_loc1_)
                                                                                                                                    {
                                                                                                                                       while(!_loc2_)
                                                                                                                                       {
                                                                                                                                          §+&§[D2] = new Sampler(D2,§&!=§,0);
                                                                                                                                          §§goto(addr316);
                                                                                                                                       }
                                                                                                                                       continue loop46;
                                                                                                                                       addr337:
                                                                                                                                    }
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       if(!_loc1_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §+&§[§<V§] = new Sampler(§<V§,§5!4§,1);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc1_)
                                                                                                                                          {
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          continue loop64;
                                                                                                                                       }
                                                                                                                                       continue loop3;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §,e§[§5!%§] = new OpCode(§5!%§,2,22,0);
                                                                                                                                       addr850:
                                                                                                                                       addr1047:
                                                                                                                                       while(_loc1_ || §^u§)
                                                                                                                                       {
                                                                                                                                          §,e§[M33] = new OpCode(M33,3,23,§2!I§);
                                                                                                                                          §§goto(addr839);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §,e§[§<r§] = new OpCode(§<r§,2,9,0);
                                                                                                                                          addr1036:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §,e§[§!N§] = new OpCode(§!N§,2,10,0);
                                                                                                                                             break loop63;
                                                                                                                                          }
                                                                                                                                          §§goto(addr850);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr839);
                                                                                                                                 }
                                                                                                                                 addr916:
                                                                                                                                 while(_loc1_ || _loc1_)
                                                                                                                                 {
                                                                                                                                    §,e§[DP3] = new OpCode(DP3,3,18,0);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §,e§[DP4] = new OpCode(DP4,3,19,0);
                                                                                                                                       addr892:
                                                                                                                                       while(!_loc2_)
                                                                                                                                       {
                                                                                                                                          §,e§[§1U§] = new OpCode(§1U§,2,20,0);
                                                                                                                                          while(!_loc2_)
                                                                                                                                          {
                                                                                                                                             §,e§[§8d§] = new OpCode(§8d§,2,21,0);
                                                                                                                                             §§goto(addr868);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1036);
                                                                                                                                          §§goto(addr170);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §,e§[§,!@§] = new OpCode(§,!@§,2,16,0);
                                                                                                                                    break loop40;
                                                                                                                                    §§goto(addr916);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc2_)
                                                                                                                                 {
                                                                                                                                    continue loop50;
                                                                                                                                 }
                                                                                                                                 §§goto(addr201);
                                                                                                                              }
                                                                                                                              §§goto(addr850);
                                                                                                                           }
                                                                                                                           while(!(_loc2_ && _loc1_))
                                                                                                                           {
                                                                                                                              §,e§[§-!=§] = new OpCode(§-!=§,1,27,§-3§ | §#!2§ | §21§);
                                                                                                                              §§goto(addr780);
                                                                                                                              §§goto(addr131);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc2_)
                                                                                                                              {
                                                                                                                                 §,e§[§]!O§] = new OpCode(§]!O§,2,13,0);
                                                                                                                                 break loop43;
                                                                                                                              }
                                                                                                                              break;
                                                                                                                              §§goto(addr797);
                                                                                                                           }
                                                                                                                           addr797:
                                                                                                                           continue loop5;
                                                                                                                           addr987:
                                                                                                                        }
                                                                                                                        continue loop39;
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §,e§[§,#§] = new OpCode(§,#§,2,15,0);
                                                                                                                        §§goto(addr945);
                                                                                                                     }
                                                                                                                     addr956:
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr892);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §,e§[§1!"§] = new OpCode(§1!"§,1,36,§-3§ | §#!2§ | §21§);
                                                                                                                  addr643:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §,e§[§@!%§] = new OpCode(§@!%§,0,37,§-3§ | §0!O§);
                                                                                                                     continue loop38;
                                                                                                                  }
                                                                                                               }
                                                                                                               addr656:
                                                                                                            }
                                                                                                            §§goto(addr306);
                                                                                                         }
                                                                                                         §§goto(addr220);
                                                                                                         if(!(_loc1_ || _loc2_))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         if(_loc1_)
                                                                                                         {
                                                                                                            §§goto(addr45);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §+&§[§`!"§] = new Sampler(§`!"§,§]!Y§,0);
                                                                                                               §§goto(addr234);
                                                                                                            }
                                                                                                            addr246:
                                                                                                         }
                                                                                                         §§goto(addr306);
                                                                                                      }
                                                                                                      §§goto(addr1011);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr850);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §,e§[§04§] = new OpCode(§04§,3,17,0);
                                                                                          §§goto(addr916);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop6;
                                                                           addr263:
                                                                           if(!(_loc1_ || §^u§))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§goto(addr270);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §,e§[§5t§] = new OpCode(§5t§,0,35,§-3§ | §0!O§);
                                                                        §§goto(addr656);
                                                                        §§goto(addr519);
                                                                     }
                                                                     addr519:
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr643);
                                                            }
                                                            addr1000:
                                                            while(!_loc2_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            while(true)
                                                            {
                                                               §,e§[§-!7§] = new OpCode(§-!7§,2,12,0);
                                                               §§goto(addr987);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                break;
                                             }
                                             §§goto(addr686);
                                          }
                                          §§goto(addr537);
                                       }
                                       while(true)
                                       {
                                          §,e§[§1k§] = new OpCode(§1k§,2,29,§-3§ | §#!2§ | §21§);
                                          §§goto(addr750);
                                       }
                                    }
                                    break;
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       return;
                                    }
                                 }
                                 while(true)
                                 {
                                    if(_loc1_)
                                    {
                                       §,e§[§3!#§] = new OpCode(§3!#§,1,26,§-3§ | §#!2§ | §21§);
                                       §§goto(addr131);
                                    }
                                    break;
                                    §§goto(addr457);
                                 }
                                 addr457:
                                 §§goto(addr879);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr1058);
      }
      
      public function get error() : String
      {
         return this.§^!^§;
      }
      
      public function get §'Y§() : ByteArray
      {
         return this.§56§;
      }
      
      public function §8!S§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
