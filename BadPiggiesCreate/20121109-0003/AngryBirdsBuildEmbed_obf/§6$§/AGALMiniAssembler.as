package §6$§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §00§:Dictionary = new Dictionary();
      
      private static const §=!L§:Dictionary = new Dictionary();
      
      private static const §0!c§:Dictionary = new Dictionary();
      
      private static const §-J§:int = 4;
      
      private static const §>&§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §=!>§:uint = 12;
      
      private static const §3x§:uint = 16;
      
      private static const §5!2§:uint = 20;
      
      private static const §%u§:uint = 24;
      
      private static const §!v§:uint = 28;
      
      private static const §3!B§:uint = 1;
      
      private static const §=!s§:uint = 2;
      
      private static const §>!;§:uint = 32;
      
      private static const §[Y§:uint = 64;
      
      private static const §,§:uint = 1;
      
      private static const §#!;§:uint = 2;
      
      private static const §,N§:uint = 4;
      
      private static const §!!f§:uint = 8;
      
      private static const §3!#§:uint = 16;
      
      private static const §=!&§:uint = 32;
      
      private static const §%!O§:uint = 128;
      
      private static const §,!i§:String = "mov";
      
      private static const §+Y§:String = "add";
      
      private static const §@[§:String = "sub";
      
      private static const §;!V§:String = "mul";
      
      private static const §[!C§:String = "div";
      
      private static const §[!P§:String = "rcp";
      
      private static const §;E§:String = "min";
      
      private static const §4l§:String = "max";
      
      private static const §7B§:String = "frc";
      
      private static const §7F§:String = "sqt";
      
      private static const §+_§:String = "rsq";
      
      private static const §0R§:String = "pow";
      
      private static const §><§:String = "log";
      
      private static const §0!3§:String = "exp";
      
      private static const §1!7§:String = "nrm";
      
      private static const § T§:String = "sin";
      
      private static const §^!$§:String = "cos";
      
      private static const §7g§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §-t§:String = "abs";
      
      private static const §=1§:String = "neg";
      
      private static const §+!7§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §"!D§:String = "ifz";
      
      private static const §,z§:String = "inz";
      
      private static const §8![§:String = "ife";
      
      private static const §8P§:String = "ine";
      
      private static const §5!F§:String = "ifg";
      
      private static const §7X§:String = "ifl";
      
      private static const §8g§:String = "ieg";
      
      private static const §[![§:String = "iel";
      
      private static const §5!D§:String = "els";
      
      private static const §1f§:String = "eif";
      
      private static const §;!4§:String = "rep";
      
      private static const §^]§:String = "erp";
      
      private static const §@!6§:String = "brk";
      
      private static const §@!`§:String = "kil";
      
      private static const §]E§:String = "tex";
      
      private static const §@!O§:String = "sge";
      
      private static const §7!'§:String = "slt";
      
      private static const §;`§:String = "sgn";
      
      private static const §]!v§:String = "va";
      
      private static const §6!t§:String = "vc";
      
      private static const §%!=§:String = "vt";
      
      private static const §9!_§:String = "op";
      
      private static const V:String = "v";
      
      private static const §2!X§:String = "fc";
      
      private static const §@!8§:String = "ft";
      
      private static const §&!=§:String = "fs";
      
      private static const §-m§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §!!$§:String = "cube";
      
      private static const §@;§:String = "mipnearest";
      
      private static const §+=§:String = "miplinear";
      
      private static const §!O§:String = "mipnone";
      
      private static const §9W§:String = "nomip";
      
      private static const §,3§:String = "nearest";
      
      private static const §?0§:String = "linear";
      
      private static const §[!=§:String = "centroid";
      
      private static const §#=§:String = "single";
      
      private static const §?T§:String = "depth";
      
      private static const §^! §:String = "repeat";
      
      private static const §9!!§:String = "wrap";
      
      private static const §2z§:String = "clamp";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §=!>§ = 12;
            §3x§ = 16;
            §5!2§ = 20;
            if(!(_loc2_ && _loc1_))
            {
               §%u§ = 24;
               if(_loc1_ || AGALMiniAssembler)
               {
                  §!v§ = 28;
                  if(_loc1_ || _loc2_)
                  {
                     §3!B§ = 1;
                     if(!_loc2_)
                     {
                        §=!s§ = 2;
                        §>!;§ = 32;
                        §[Y§ = 64;
                        §,§ = 1;
                        if(!_loc2_)
                        {
                           §#!;§ = 2;
                           §,N§ = 4;
                           §!!f§ = 8;
                           §3!#§ = 16;
                           if(_loc1_ || AGALMiniAssembler)
                           {
                              §=!&§ = 32;
                              addr127:
                              §%!O§ = 128;
                              if(_loc1_ || AGALMiniAssembler)
                              {
                                 §,!i§ = "mov";
                                 §+Y§ = "add";
                                 §@[§ = "sub";
                                 if(_loc1_ || _loc2_)
                                 {
                                    §;!V§ = "mul";
                                    if(_loc1_)
                                    {
                                       §[!C§ = "div";
                                       addr161:
                                       §[!P§ = "rcp";
                                       if(!_loc2_)
                                       {
                                          addr166:
                                          §;E§ = "min";
                                          §4l§ = "max";
                                          §7B§ = "frc";
                                          if(_loc1_ || _loc2_)
                                          {
                                             §7F§ = "sqt";
                                             §+_§ = "rsq";
                                             §0R§ = "pow";
                                             §><§ = "log";
                                             §0!3§ = "exp";
                                             §1!7§ = "nrm";
                                             if(_loc1_)
                                             {
                                                § T§ = "sin";
                                                addr205:
                                                §^!$§ = "cos";
                                                §7g§ = "crs";
                                                if(!_loc2_)
                                                {
                                                   DP3 = "dp3";
                                                   if(_loc1_)
                                                   {
                                                      addr218:
                                                      DP4 = "dp4";
                                                      if(_loc1_ || AGALMiniAssembler)
                                                      {
                                                         §-t§ = "abs";
                                                         addr241:
                                                         §=1§ = "neg";
                                                         §+!7§ = "sat";
                                                         if(_loc1_ || _loc1_)
                                                         {
                                                            M33 = "m33";
                                                            if(_loc1_)
                                                            {
                                                               addr259:
                                                               M44 = "m44";
                                                               M34 = "m34";
                                                               if(!_loc2_)
                                                               {
                                                                  §"!D§ = "ifz";
                                                                  addr270:
                                                                  §,z§ = "inz";
                                                                  §8![§ = "ife";
                                                                  §8P§ = "ine";
                                                                  if(!_loc2_)
                                                                  {
                                                                     §5!F§ = "ifg";
                                                                     §7X§ = "ifl";
                                                                     §8g§ = "ieg";
                                                                     if(_loc1_ || _loc2_)
                                                                     {
                                                                        §[![§ = "iel";
                                                                        addr300:
                                                                        §5!D§ = "els";
                                                                        §1f§ = "eif";
                                                                        §;!4§ = "rep";
                                                                        §^]§ = "erp";
                                                                        if(!(_loc2_ && AGALMiniAssembler))
                                                                        {
                                                                           §@!6§ = "brk";
                                                                           §@!`§ = "kil";
                                                                           §]E§ = "tex";
                                                                           §@!O§ = "sge";
                                                                           if(!_loc2_)
                                                                           {
                                                                              addr333:
                                                                              §7!'§ = "slt";
                                                                              if(_loc1_)
                                                                              {
                                                                                 addr338:
                                                                                 §;`§ = "sgn";
                                                                                 if(!(_loc2_ && _loc2_))
                                                                                 {
                                                                                    §]!v§ = "va";
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       §6!t§ = "vc";
                                                                                       §%!=§ = "vt";
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          §§goto(addr361);
                                                                                       }
                                                                                       §§goto(addr394);
                                                                                    }
                                                                                    addr361:
                                                                                    §9!_§ = "op";
                                                                                    if(!(_loc2_ && AGALMiniAssembler))
                                                                                    {
                                                                                       V = "v";
                                                                                    }
                                                                                    §§goto(addr374);
                                                                                 }
                                                                                 §§goto(addr465);
                                                                              }
                                                                              §§goto(addr424);
                                                                           }
                                                                           addr374:
                                                                           §2!X§ = "fc";
                                                                           if(_loc1_ || _loc2_)
                                                                           {
                                                                              §@!8§ = "ft";
                                                                              if(_loc1_ || AGALMiniAssembler)
                                                                              {
                                                                                 addr394:
                                                                                 §&!=§ = "fs";
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    §-m§ = "oc";
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       D2 = "2d";
                                                                                       D3 = "3d";
                                                                                       §!!$§ = "cube";
                                                                                       addr413:
                                                                                       §@;§ = "mipnearest";
                                                                                       addr416:
                                                                                       §+=§ = "miplinear";
                                                                                       §!O§ = "mipnone";
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          addr424:
                                                                                          §9W§ = "nomip";
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             §§goto(addr429);
                                                                                          }
                                                                                          §§goto(addr470);
                                                                                       }
                                                                                       §2z§ = "clamp";
                                                                                    }
                                                                                    §§goto(addr470);
                                                                                 }
                                                                                 §§goto(addr424);
                                                                              }
                                                                              §§goto(addr465);
                                                                           }
                                                                           addr429:
                                                                           §,3§ = "nearest";
                                                                           if(!(_loc2_ && AGALMiniAssembler))
                                                                           {
                                                                              addr439:
                                                                              §?0§ = "linear";
                                                                              §[!=§ = "centroid";
                                                                              §#=§ = "single";
                                                                              if(_loc1_ || _loc2_)
                                                                              {
                                                                                 addr465:
                                                                                 §?T§ = "depth";
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    addr470:
                                                                                    §^! § = "repeat";
                                                                                    §§goto(addr473);
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr473:
                                                                           §9!!§ = "wrap";
                                                                           if(_loc2_)
                                                                           {
                                                                           }
                                                                           return;
                                                                        }
                                                                     }
                                                                     §§goto(addr470);
                                                                  }
                                                                  §§goto(addr300);
                                                               }
                                                               §§goto(addr470);
                                                            }
                                                            §§goto(addr416);
                                                         }
                                                      }
                                                      §§goto(addr333);
                                                   }
                                                   §§goto(addr259);
                                                }
                                                §§goto(addr338);
                                             }
                                             §§goto(addr205);
                                          }
                                          §§goto(addr259);
                                       }
                                       §§goto(addr361);
                                    }
                                    §§goto(addr413);
                                 }
                                 §§goto(addr439);
                              }
                              §§goto(addr218);
                           }
                           §§goto(addr241);
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr470);
                  }
                  §§goto(addr166);
               }
               §§goto(addr127);
            }
            §§goto(addr270);
         }
         §§goto(addr205);
      }
      
      private var §7I§:ByteArray = null;
      
      private var §8'§:String = "";
      
      private var §>!g§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            if(_loc2_)
            {
               this.§>!g§ = param1;
               if(!(_loc3_ && param1))
               {
                  if(!initialized)
                  {
                     if(!_loc3_)
                     {
                        addr46:
                        init();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      private static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            initialized = true;
            if(_loc2_)
            {
               §00§[§,!i§] = new OpCode(§,!i§,2,0,0);
               §00§[§+Y§] = new OpCode(§+Y§,3,1,0);
               §00§[§@[§] = new OpCode(§@[§,3,2,0);
               if(!(_loc1_ && AGALMiniAssembler))
               {
                  §00§[§;!V§] = new OpCode(§;!V§,3,3,0);
                  if(_loc2_ || _loc1_)
                  {
                     §00§[§[!C§] = new OpCode(§[!C§,3,4,0);
                     if(_loc2_ || AGALMiniAssembler)
                     {
                        §00§[§[!P§] = new OpCode(§[!P§,2,5,0);
                        if(!(_loc1_ && _loc2_))
                        {
                           §00§[§;E§] = new OpCode(§;E§,3,6,0);
                        }
                        §00§[§4l§] = new OpCode(§4l§,3,7,0);
                        if(_loc2_)
                        {
                           §00§[§7B§] = new OpCode(§7B§,2,8,0);
                           §00§[§7F§] = new OpCode(§7F§,2,9,0);
                           if(_loc2_)
                           {
                              §00§[§+_§] = new OpCode(§+_§,2,10,0);
                              if(!(_loc1_ && _loc2_))
                              {
                                 §00§[§0R§] = new OpCode(§0R§,3,11,0);
                                 if(!_loc1_)
                                 {
                                    §00§[§><§] = new OpCode(§><§,2,12,0);
                                    if(_loc2_ || _loc2_)
                                    {
                                       addr194:
                                       §00§[§0!3§] = new OpCode(§0!3§,2,13,0);
                                       §00§[§1!7§] = new OpCode(§1!7§,2,14,0);
                                       §00§[§ T§] = new OpCode(§ T§,2,15,0);
                                       §00§[§^!$§] = new OpCode(§^!$§,2,16,0);
                                       §00§[§7g§] = new OpCode(§7g§,3,17,0);
                                       if(_loc2_ || _loc2_)
                                       {
                                          §00§[DP3] = new OpCode(DP3,3,18,0);
                                          §00§[DP4] = new OpCode(DP4,3,19,0);
                                          §00§[§-t§] = new OpCode(§-t§,2,20,0);
                                          addr273:
                                          §00§[§=1§] = new OpCode(§=1§,2,21,0);
                                          if(!_loc1_)
                                          {
                                             §00§[§+!7§] = new OpCode(§+!7§,2,22,0);
                                             addr293:
                                             §00§[M33] = new OpCode(M33,3,23,§3!#§);
                                             if(_loc2_)
                                             {
                                                §00§[M44] = new OpCode(M44,3,24,§3!#§);
                                                if(_loc2_ || _loc1_)
                                                {
                                                   §00§[M34] = new OpCode(M34,3,25,§3!#§);
                                                   if(!_loc1_)
                                                   {
                                                      §00§[§"!D§] = new OpCode(§"!D§,1,26,§%!O§ | §#!;§ | §,§);
                                                      if(!_loc1_)
                                                      {
                                                         §00§[§,z§] = new OpCode(§,z§,1,27,§%!O§ | §#!;§ | §,§);
                                                         §00§[§8![§] = new OpCode(§8![§,2,28,§%!O§ | §#!;§ | §,§);
                                                         §00§[§8P§] = new OpCode(§8P§,2,29,§%!O§ | §#!;§ | §,§);
                                                         if(!(_loc1_ && AGALMiniAssembler))
                                                         {
                                                            §00§[§5!F§] = new OpCode(§5!F§,2,30,§%!O§ | §#!;§ | §,§);
                                                            §00§[§7X§] = new OpCode(§7X§,2,31,§%!O§ | §#!;§ | §,§);
                                                            §00§[§8g§] = new OpCode(§8g§,2,32,§%!O§ | §#!;§ | §,§);
                                                            if(_loc2_)
                                                            {
                                                               §00§[§[![§] = new OpCode(§[![§,2,33,§%!O§ | §#!;§ | §,§);
                                                               if(_loc2_)
                                                               {
                                                                  §00§[§5!D§] = new OpCode(§5!D§,0,34,§%!O§ | §#!;§ | §,N§);
                                                                  §00§[§1f§] = new OpCode(§1f§,0,35,§%!O§ | §,N§);
                                                                  addr482:
                                                                  §00§[§;!4§] = new OpCode(§;!4§,1,36,§%!O§ | §#!;§ | §,§);
                                                                  if(!_loc1_)
                                                                  {
                                                                     §00§[§^]§] = new OpCode(§^]§,0,37,§%!O§ | §,N§);
                                                                     if(!_loc1_)
                                                                     {
                                                                        §00§[§@!6§] = new OpCode(§@!6§,0,38,§%!O§);
                                                                        §00§[§@!`§] = new OpCode(§@!`§,1,39,§%!O§ | §=!&§);
                                                                        if(!(_loc1_ && _loc2_))
                                                                        {
                                                                           addr537:
                                                                           §00§[§]E§] = new OpCode(§]E§,3,40,§=!&§ | §!!f§);
                                                                           if(_loc2_)
                                                                           {
                                                                              addr550:
                                                                              §00§[§@!O§] = new OpCode(§@!O§,3,41,0);
                                                                              addr559:
                                                                              §00§[§7!'§] = new OpCode(§7!'§,3,42,0);
                                                                              §00§[§;`§] = new OpCode(§;`§,2,43,0);
                                                                              addr577:
                                                                              §=!L§[§]!v§] = new Register(§]!v§,"vertex attribute",0,7,§[Y§ | §=!s§);
                                                                              §=!L§[§6!t§] = new Register(§6!t§,"vertex constant",1,127,§[Y§ | §=!s§);
                                                                              if(_loc2_ || _loc1_)
                                                                              {
                                                                                 addr608:
                                                                                 §=!L§[§%!=§] = new Register(§%!=§,"vertex temporary",2,7,§[Y§ | §3!B§ | §=!s§);
                                                                                 §=!L§[§9!_§] = new Register(§9!_§,"vertex output",3,0,§[Y§ | §3!B§);
                                                                                 §=!L§[V] = new Register(V,"varying",4,7,§[Y§ | §>!;§ | §=!s§ | §3!B§);
                                                                                 §§goto(addr650);
                                                                              }
                                                                              §§goto(addr699);
                                                                           }
                                                                        }
                                                                        §§goto(addr664);
                                                                     }
                                                                     §§goto(addr742);
                                                                  }
                                                                  §§goto(addr773);
                                                               }
                                                               §§goto(addr537);
                                                            }
                                                            §§goto(addr577);
                                                         }
                                                         §§goto(addr537);
                                                      }
                                                      addr650:
                                                      §=!L§[§2!X§] = new Register(§2!X§,"fragment constant",1,27,§>!;§ | §=!s§);
                                                      if(!_loc1_)
                                                      {
                                                         addr664:
                                                         §=!L§[§@!8§] = new Register(§@!8§,"fragment temporary",2,7,§>!;§ | §3!B§ | §=!s§);
                                                         if(_loc2_)
                                                         {
                                                            §=!L§[§&!=§] = new Register(§&!=§,"texture sampler",5,7,§>!;§ | §=!s§);
                                                            if(!(_loc1_ && _loc2_))
                                                            {
                                                               addr699:
                                                               §=!L§[§-m§] = new Register(§-m§,"fragment output",3,0,§>!;§ | §3!B§);
                                                               §§goto(addr711);
                                                            }
                                                            §§goto(addr734);
                                                         }
                                                         §§goto(addr791);
                                                      }
                                                      addr711:
                                                      §0!c§[D2] = new Sampler(D2,§=!>§,0);
                                                      §0!c§[D3] = new Sampler(D3,§=!>§,2);
                                                      if(_loc2_ || _loc2_)
                                                      {
                                                         addr734:
                                                         §0!c§[§!!$§] = new Sampler(§!!$§,§=!>§,1);
                                                         addr742:
                                                         §0!c§[§@;§] = new Sampler(§@;§,§%u§,1);
                                                         addr750:
                                                         §0!c§[§+=§] = new Sampler(§+=§,§%u§,2);
                                                         if(_loc2_ || _loc1_)
                                                         {
                                                            §0!c§[§!O§] = new Sampler(§!O§,§%u§,0);
                                                            addr773:
                                                            §0!c§[§9W§] = new Sampler(§9W§,§%u§,0);
                                                            if(_loc2_)
                                                            {
                                                               §0!c§[§,3§] = new Sampler(§,3§,§!v§,0);
                                                               addr791:
                                                               §0!c§[§?0§] = new Sampler(§?0§,§!v§,1);
                                                               §0!c§[§[!=§] = new Sampler(§[!=§,§3x§,1 << 0);
                                                               §0!c§[§#=§] = new Sampler(§#=§,§3x§,1 << 1);
                                                               addr819:
                                                               §0!c§[§?T§] = new Sampler(§?T§,§3x§,1 << 2);
                                                               if(!_loc2_)
                                                               {
                                                               }
                                                            }
                                                            §§goto(addr856);
                                                         }
                                                         §0!c§[§^! §] = new Sampler(§^! §,§5!2§,1);
                                                         if(_loc1_ && _loc1_)
                                                         {
                                                         }
                                                         §§goto(addr856);
                                                      }
                                                      addr856:
                                                      §0!c§[§9!!§] = new Sampler(§9!!§,§5!2§,1);
                                                      §0!c§[§2z§] = new Sampler(§2z§,§5!2§,0);
                                                      return;
                                                   }
                                                   §§goto(addr819);
                                                }
                                                §§goto(addr550);
                                             }
                                             §§goto(addr791);
                                          }
                                          §§goto(addr664);
                                       }
                                       §§goto(addr559);
                                    }
                                    §§goto(addr293);
                                 }
                                 §§goto(addr699);
                              }
                              §§goto(addr194);
                           }
                           §§goto(addr791);
                        }
                        §§goto(addr194);
                     }
                     §§goto(addr699);
                  }
                  §§goto(addr608);
               }
               §§goto(addr750);
            }
            §§goto(addr482);
         }
         §§goto(addr273);
      }
      
      public function get error() : String
      {
         return this.§8'§;
      }
      
      public function get §-x§() : ByteArray
      {
         return this.§7I§;
      }
      
      public function §]!D§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
