package §#a§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §"!§:Dictionary;
      
      private static const §&L§:Dictionary;
      
      private static const §default§:Dictionary;
      
      private static const §=c§:int = 4;
      
      private static const §`!0§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §!!9§:uint = 12;
      
      private static const §9#§:uint = 16;
      
      private static const § "§:uint = 20;
      
      private static const §!V§:uint = 24;
      
      private static const §`!-§:uint = 28;
      
      private static const §?!%§:uint = 1;
      
      private static const §9P§:uint = 2;
      
      private static const §;!7§:uint = 32;
      
      private static const §,r§:uint = 64;
      
      private static const §=!7§:uint = 1;
      
      private static const §@8§:uint = 2;
      
      private static const §>!=§:uint = 4;
      
      private static const §1H§:uint = 8;
      
      private static const §@!@§:uint = 16;
      
      private static const §@k§:uint = 32;
      
      private static const §2`§:uint = 128;
      
      private static const §7! §:String = "mov";
      
      private static const §?8§:String = "add";
      
      private static const §>!"§:String = "sub";
      
      private static const §]%§:String = "mul";
      
      private static const §8O§:String = "div";
      
      private static const §?!G§:String = "rcp";
      
      private static const §5y§:String = "min";
      
      private static const §3P§:String = "max";
      
      private static const §]!A§:String = "frc";
      
      private static const §[j§:String = "sqt";
      
      private static const §^r§:String = "rsq";
      
      private static const §]6§:String = "pow";
      
      private static const §>!!§:String = "log";
      
      private static const §#v§:String = "exp";
      
      private static const §9!<§:String = "nrm";
      
      private static const §9!6§:String = "sin";
      
      private static const §'!0§:String = "cos";
      
      private static const § z§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §3u§:String = "abs";
      
      private static const §8a§:String = "neg";
      
      private static const §4'§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §+k§:String = "ifz";
      
      private static const §]I§:String = "inz";
      
      private static const §3!-§:String = "ife";
      
      private static const §9y§:String = "ine";
      
      private static const §!!0§:String = "ifg";
      
      private static const §8v§:String = "ifl";
      
      private static const §2Y§:String = "ieg";
      
      private static const §,t§:String = "iel";
      
      private static const §5-§:String = "els";
      
      private static const §2k§:String = "eif";
      
      private static const §7+§:String = "rep";
      
      private static const §!p§:String = "erp";
      
      private static const §4j§:String = "brk";
      
      private static const §4n§:String = "kil";
      
      private static const §4a§:String = "tex";
      
      private static const §9g§:String = "sge";
      
      private static const §`D§:String = "slt";
      
      private static const §?!+§:String = "sgn";
      
      private static const §`!'§:String = "va";
      
      private static const §8;§:String = "vc";
      
      private static const §?Y§:String = "vt";
      
      private static const §8j§:String = "op";
      
      private static const §;O§:String = "v";
      
      private static const §7O§:String = "fc";
      
      private static const §&!!§:String = "ft";
      
      private static const §#!D§:String = "fs";
      
      private static const §8Y§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §];§:String = "cube";
      
      private static const §'!F§:String = "mipnearest";
      
      private static const §"D§:String = "miplinear";
      
      private static const § get§:String = "mipnone";
      
      private static const §[!?§:String = "nomip";
      
      private static const § !E§:String = "nearest";
      
      private static const §7o§:String = "linear";
      
      private static const §`1§:String = "centroid";
      
      private static const §<N§:String = "single";
      
      private static const §6R§:String = "depth";
      
      private static const §^!6§:String = "repeat";
      
      private static const native:String = "wrap";
      
      private static const §@!§:String = "clamp";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            initialized = false;
            §"!§ = new Dictionary();
            §&L§ = new Dictionary();
            loop0:
            while(true)
            {
               §default§ = new Dictionary();
               while(true)
               {
                  §=c§ = 4;
                  §`!0§ = 256;
                  addr729:
                  while(true)
                  {
                     FRAGMENT = "fragment";
                     VERTEX = "vertex";
                  }
                  loop18:
                  while(true)
                  {
                     §^r§ = "rsq";
                     if(!_loc2_)
                     {
                        break;
                     }
                     §]6§ = "pow";
                     addr551:
                     if(_loc2_)
                     {
                        §>!!§ = "log";
                        §#v§ = "exp";
                        loop19:
                        while(_loc2_ || _loc1_)
                        {
                           §9!<§ = "nrm";
                           while(true)
                           {
                              §9!6§ = "sin";
                              addr515:
                              addr410:
                              while(true)
                              {
                                 §'!0§ = "cos";
                                 addr510:
                                 while(true)
                                 {
                                    § z§ = "crs";
                                    addr505:
                                    while(true)
                                    {
                                       DP3 = "dp3";
                                       DP4 = "dp4";
                                       continue loop18;
                                    }
                                 }
                              }
                              §2Y§ = "ieg";
                              §,t§ = "iel";
                              if(_loc1_ && _loc2_)
                              {
                                 continue;
                              }
                              §5-§ = "els";
                              loop31:
                              while(true)
                              {
                                 §2k§ = "eif";
                                 if(_loc2_ || _loc2_)
                                 {
                                    §7+§ = "rep";
                                    loop32:
                                    while(true)
                                    {
                                       §!p§ = "erp";
                                       loop33:
                                       while(_loc2_)
                                       {
                                          §4j§ = "brk";
                                          loop34:
                                          while(true)
                                          {
                                             if(!(_loc2_ || _loc1_))
                                             {
                                                continue loop33;
                                             }
                                             §4n§ = "kil";
                                             addr342:
                                             if(!(_loc1_ && _loc2_))
                                             {
                                                if(_loc2_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   §4a§ = "tex";
                                                   §9g§ = "sge";
                                                   while(true)
                                                   {
                                                      §`D§ = "slt";
                                                      if(!(_loc2_ || _loc1_))
                                                      {
                                                         break;
                                                      }
                                                      §?!+§ = "sgn";
                                                      continue loop32;
                                                      addr91:
                                                      while(true)
                                                      {
                                                         §6R§ = "depth";
                                                         if(!(_loc2_ || _loc2_))
                                                         {
                                                            break;
                                                         }
                                                         §^!6§ = "repeat";
                                                         continue loop31;
                                                      }
                                                   }
                                                   loop14:
                                                   while(true)
                                                   {
                                                      §8O§ = "div";
                                                      §?!G§ = "rcp";
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §5y§ = "min";
                                                         §3P§ = "max";
                                                         while(_loc2_)
                                                         {
                                                            §]!A§ = "frc";
                                                            while(true)
                                                            {
                                                               §[j§ = "sqt";
                                                               continue loop18;
                                                               addr490:
                                                               §8a§ = "neg";
                                                               if(!(_loc2_ || AGALMiniAssembler))
                                                               {
                                                                  continue;
                                                               }
                                                               §4'§ = "sat";
                                                               while(true)
                                                               {
                                                                  M33 = "m33";
                                                                  addr454:
                                                                  while(true)
                                                                  {
                                                                     M44 = "m44";
                                                                     loop27:
                                                                     while(true)
                                                                     {
                                                                        M34 = "m34";
                                                                        §+k§ = "ifz";
                                                                        while(_loc2_)
                                                                        {
                                                                           §]I§ = "inz";
                                                                           §3!-§ = "ife";
                                                                           continue loop27;
                                                                           addr55:
                                                                           if(_loc1_ && _loc2_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §@!§ = "clamp";
                                                                           addr62:
                                                                           if(!_loc2_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    while(_loc2_ || _loc1_)
                                                                                    {
                                                                                       §[!?§ = "nomip";
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             § !E§ = "nearest";
                                                                                             if(_loc1_ && _loc2_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue;
                                                                                             addr131:
                                                                                          }
                                                                                          §§goto(addr510);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §@k§ = 32;
                                                                                          addr620:
                                                                                          addr699:
                                                                                          while(true)
                                                                                          {
                                                                                             §2`§ = 128;
                                                                                             §7! § = "mov";
                                                                                             §?8§ = "add";
                                                                                             if(!(_loc2_ || _loc2_))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §>!"§ = "sub";
                                                                                             §]%§ = "mul";
                                                                                             continue loop14;
                                                                                             §§goto(addr551);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             § "§ = 20;
                                                                                             break loop19;
                                                                                             §§goto(addr620);
                                                                                          }
                                                                                          §§goto(addr131);
                                                                                       }
                                                                                    }
                                                                                    continue loop32;
                                                                                    addr136:
                                                                                 }
                                                                                 §§goto(addr55);
                                                                                 §§goto(addr62);
                                                                              }
                                                                              continue;
                                                                              addr53:
                                                                           }
                                                                           if(!_loc2_)
                                                                           {
                                                                              continue loop31;
                                                                           }
                                                                           if(_loc2_)
                                                                           {
                                                                              addr39:
                                                                              if(!(_loc1_ && AGALMiniAssembler))
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    return;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    D3 = "3d";
                                                                                 }
                                                                                 addr170:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §];§ = "cube";
                                                                                 §§goto(addr158);
                                                                                 §§goto(addr39);
                                                                              }
                                                                           }
                                                                           §§goto(addr91);
                                                                        }
                                                                        addr669:
                                                                        while(true)
                                                                        {
                                                                           §,r§ = 64;
                                                                           §=!7§ = 1;
                                                                           addr645:
                                                                           loop9:
                                                                           while(true)
                                                                           {
                                                                              if(!(_loc1_ && AGALMiniAssembler))
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              addr709:
                                                                              addr709:
                                                                              while(true)
                                                                              {
                                                                                 §!!9§ = 12;
                                                                                 addr704:
                                                                                 while(true)
                                                                                 {
                                                                                    §9#§ = 16;
                                                                                    §§goto(addr699);
                                                                                    addr483:
                                                                                    if(_loc1_ && _loc2_)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr490);
                                                                                 }
                                                                                 continue loop9;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr342);
                                                                  }
                                                               }
                                                            }
                                                            if(!(_loc2_ || _loc1_))
                                                            {
                                                               continue;
                                                            }
                                                            §&!!§ = "ft";
                                                            addr241:
                                                            if(_loc2_ || AGALMiniAssembler)
                                                            {
                                                               continue loop34;
                                                            }
                                                            addr263:
                                                            while(true)
                                                            {
                                                               §8j§ = "op";
                                                               §;O§ = "v";
                                                               continue loop15;
                                                               §§goto(addr241);
                                                            }
                                                         }
                                                         §§goto(addr729);
                                                      }
                                                   }
                                                   addr309:
                                                }
                                                else
                                                {
                                                   §§goto(addr459);
                                                }
                                                §§goto(addr709);
                                             }
                                             §§goto(addr454);
                                          }
                                          continue loop18;
                                       }
                                       addr689:
                                       while(true)
                                       {
                                          §`!-§ = 28;
                                          §?!%§ = 1;
                                          §9P§ = 2;
                                          §;!7§ = 32;
                                          §§goto(addr669);
                                       }
                                    }
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 §@!@§ = 16;
                                 §§goto(addr625);
                                 §§goto(addr381);
                              }
                              addr381:
                           }
                           §7O§ = "fc";
                           if(_loc1_ && AGALMiniAssembler)
                           {
                              continue;
                           }
                           §§goto(addr234);
                        }
                        while(true)
                        {
                           §!V§ = 24;
                           §§goto(addr689);
                           §§goto(addr525);
                        }
                        addr525:
                     }
                     else
                     {
                        §§goto(addr620);
                     }
                     §§goto(addr699);
                  }
               }
            }
         }
         §§goto(addr709);
      }
      
      private var §]H§:ByteArray = null;
      
      private var §?!8§:String = "";
      
      private var §6@§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§6@§ = param1;
            while(!initialized)
            {
               if(!(_loc3_ && _loc3_))
               {
                  continue loop0;
               }
               if(!(_loc3_ && param1))
               {
                  break;
               }
            }
            return;
         }
      }
      
      private static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         initialized = true;
         while(true)
         {
            §"!§[§7! §] = new OpCode(§7! §,2,0,0);
            loop1:
            while(true)
            {
               §"!§[§?8§] = new OpCode(§?8§,3,1,0);
               §"!§[§>!"§] = new OpCode(§>!"§,3,2,0);
               loop2:
               while(true)
               {
                  §"!§[§]%§] = new OpCode(§]%§,3,3,0);
                  §"!§[§8O§] = new OpCode(§8O§,3,4,0);
                  §"!§[§?!G§] = new OpCode(§?!G§,2,5,0);
                  loop3:
                  while(true)
                  {
                     §"!§[§5y§] = new OpCode(§5y§,3,6,0);
                     loop4:
                     while(true)
                     {
                        §"!§[§3P§] = new OpCode(§3P§,3,7,0);
                        §"!§[§]!A§] = new OpCode(§]!A§,2,8,0);
                        §"!§[§[j§] = new OpCode(§[j§,2,9,0);
                        §"!§[§^r§] = new OpCode(§^r§,2,10,0);
                        loop5:
                        while(true)
                        {
                           §"!§[§]6§] = new OpCode(§]6§,3,11,0);
                           continue loop3;
                           addr274:
                           if(!(_loc1_ || _loc2_))
                           {
                              continue;
                           }
                           §&L§[§8Y§] = new Register(§8Y§,"fragment output",3,0,§;!7§ | §?!%§);
                           §default§[D2] = new Sampler(D2,§!!9§,0);
                           loop26:
                           while(true)
                           {
                              §default§[D3] = new Sampler(D3,§!!9§,2);
                              if(!_loc1_)
                              {
                                 break;
                              }
                              §default§[§];§] = new Sampler(§];§,§!!9§,1);
                              if(!(_loc1_ || AGALMiniAssembler))
                              {
                                 continue;
                              }
                              §default§[§'!F§] = new Sampler(§'!F§,§!V§,1);
                              §default§[§"D§] = new Sampler(§"D§,§!V§,2);
                              loop27:
                              while(true)
                              {
                                 §default§[§ get§] = new Sampler(§ get§,§!V§,0);
                                 §default§[§[!?§] = new Sampler(§[!?§,§!V§,0);
                                 if(_loc1_ || _loc1_)
                                 {
                                    §default§[§ !E§] = new Sampler(§ !E§,§`!-§,0);
                                    loop28:
                                    while(true)
                                    {
                                       §default§[§7o§] = new Sampler(§7o§,§`!-§,1);
                                       while(_loc1_)
                                       {
                                          §default§[§`1§] = new Sampler(§`1§,§9#§,1 << 0);
                                          loop30:
                                          do
                                          {
                                             §default§[§<N§] = new Sampler(§<N§,§9#§,1 << 1);
                                             §default§[§6R§] = new Sampler(§6R§,§9#§,1 << 2);
                                             while(_loc1_)
                                             {
                                                §default§[§^!6§] = new Sampler(§^!6§,§ "§,1);
                                                while(!(_loc2_ && _loc2_))
                                                {
                                                   §default§[native] = new Sampler(native,§ "§,1);
                                                   if(!(_loc2_ && AGALMiniAssembler))
                                                   {
                                                      continue loop30;
                                                   }
                                                }
                                             }
                                             loop25:
                                             while(true)
                                             {
                                                if(!_loc1_)
                                                {
                                                   while(true)
                                                   {
                                                      §&L§[§&!!§] = new Register(§&!!§,"fragment temporary",2,7,§;!7§ | §?!%§ | §9P§);
                                                      if(!_loc1_)
                                                      {
                                                         break;
                                                      }
                                                      §&L§[§#!D§] = new Register(§#!D§,"texture sampler",5,7,§;!7§ | §9P§);
                                                      continue loop25;
                                                   }
                                                   while(true)
                                                   {
                                                      §&L§[§8j§] = new Register(§8j§,"vertex output",3,0,§,r§ | §?!%§);
                                                      §&L§[§;O§] = new Register(§;O§,"varying",4,7,§,r§ | §;!7§ | §9P§ | §?!%§);
                                                      if(_loc2_ && _loc1_)
                                                      {
                                                         break;
                                                      }
                                                      §&L§[§7O§] = new Register(§7O§,"fragment constant",1,27,§;!7§ | §9P§);
                                                      §§goto(addr313);
                                                   }
                                                   addr313:
                                                   while(_loc1_)
                                                   {
                                                      §&L§[§8;§] = new Register(§8;§,"vertex constant",1,127,§,r§ | §9P§);
                                                      §&L§[§?Y§] = new Register(§?Y§,"vertex temporary",2,7,§,r§ | §?!%§ | §9P§);
                                                      §§goto(addr368);
                                                   }
                                                   addr368:
                                                   continue loop2;
                                                   addr396:
                                                }
                                                §§goto(addr274);
                                             }
                                             continue loop5;
                                          }
                                          while(_loc2_);
                                          
                                          if(_loc1_ || _loc1_)
                                          {
                                             if(_loc2_)
                                             {
                                                break loop28;
                                             }
                                             continue loop28;
                                          }
                                       }
                                       loop12:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             if(!_loc1_)
                                             {
                                                break;
                                             }
                                             §"!§[§4'§] = new OpCode(§4'§,2,22,0);
                                             §"!§[M33] = new OpCode(M33,3,23,§@!@§);
                                             §"!§[M44] = new OpCode(M44,3,24,§@!@§);
                                             §"!§[M34] = new OpCode(M34,3,25,§@!@§);
                                             do
                                             {
                                                §"!§[§+k§] = new OpCode(§+k§,1,26,§2`§ | §@8§ | §=!7§);
                                                do
                                                {
                                                   §"!§[§]I§] = new OpCode(§]I§,1,27,§2`§ | §@8§ | §=!7§);
                                                   §"!§[§3!-§] = new OpCode(§3!-§,2,28,§2`§ | §@8§ | §=!7§);
                                                   §"!§[§9y§] = new OpCode(§9y§,2,29,§2`§ | §@8§ | §=!7§);
                                                }
                                                while(!(_loc1_ || _loc2_));
                                                
                                                §"!§[§!!0§] = new OpCode(§!!0§,2,30,§2`§ | §@8§ | §=!7§);
                                             }
                                             while(!(_loc1_ || _loc2_));
                                             
                                             §"!§[§8v§] = new OpCode(§8v§,2,31,§2`§ | §@8§ | §=!7§);
                                             while(true)
                                             {
                                                §"!§[§2Y§] = new OpCode(§2Y§,2,32,§2`§ | §@8§ | §=!7§);
                                                §"!§[§,t§] = new OpCode(§,t§,2,33,§2`§ | §@8§ | §=!7§);
                                                break loop26;
                                                addr541:
                                                §"!§[§7+§] = new OpCode(§7+§,1,36,§2`§ | §@8§ | §=!7§);
                                                §"!§[§!p§] = new OpCode(§!p§,0,37,§2`§ | §>!=§);
                                                §"!§[§4j§] = new OpCode(§4j§,0,38,§2`§);
                                                if(_loc1_ || _loc1_)
                                                {
                                                   §"!§[§4n§] = new OpCode(§4n§,1,39,§2`§ | §@k§);
                                                   addr486:
                                                   if(_loc1_)
                                                   {
                                                      §"!§[§4a§] = new OpCode(§4a§,3,40,§@k§ | §1H§);
                                                      break loop27;
                                                   }
                                                   addr784:
                                                   addr784:
                                                   while(true)
                                                   {
                                                      §"!§[DP4] = new OpCode(DP4,3,19,0);
                                                      if(_loc2_)
                                                      {
                                                         break;
                                                      }
                                                      §"!§[§3u§] = new OpCode(§3u§,2,20,0);
                                                      while(true)
                                                      {
                                                         §"!§[§8a§] = new OpCode(§8a§,2,21,0);
                                                         continue loop12;
                                                      }
                                                      §§goto(addr486);
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                          }
                                          §§goto(addr760);
                                       }
                                       addr817:
                                       while(true)
                                       {
                                          §"!§[§'!0§] = new OpCode(§'!0§,2,16,0);
                                          §"!§[§ z§] = new OpCode(§ z§,3,17,0);
                                          §"!§[DP3] = new OpCode(DP3,3,18,0);
                                          §§goto(addr784);
                                       }
                                    }
                                    while(!_loc2_)
                                    {
                                       §"!§[§?!+§] = new OpCode(§?!+§,2,43,0);
                                       continue loop4;
                                    }
                                    while(true)
                                    {
                                       §"!§[§`D§] = new OpCode(§`D§,3,42,0);
                                       §§goto(addr427);
                                    }
                                    addr427:
                                    addr440:
                                 }
                                 break;
                                 if(_loc1_ || _loc2_)
                                 {
                                    addr44:
                                    if(!(_loc2_ && AGALMiniAssembler))
                                    {
                                       if(!_loc2_)
                                       {
                                          return;
                                       }
                                       continue loop3;
                                    }
                                    continue loop4;
                                 }
                              }
                              while(true)
                              {
                                 §"!§[§9g§] = new OpCode(§9g§,3,41,0);
                                 §§goto(addr440);
                                 §§goto(addr195);
                              }
                              addr195:
                           }
                           while(true)
                           {
                              §"!§[§5-§] = new OpCode(§5-§,0,34,§2`§ | §@8§ | §>!=§);
                              do
                              {
                                 §"!§[§2k§] = new OpCode(§2k§,0,35,§2`§ | §>!=§);
                              }
                              while(!_loc1_);
                              
                              if(!_loc1_)
                              {
                                 break;
                              }
                              §§goto(addr541);
                              §§goto(addr244);
                           }
                           addr244:
                           while(true)
                           {
                              §"!§[§#v§] = new OpCode(§#v§,2,13,0);
                              continue loop1;
                              §§goto(addr571);
                           }
                           addr571:
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function get error() : String
      {
         return this.§?!8§;
      }
      
      public function get §]K§() : ByteArray
      {
         return this.§]H§;
      }
      
      public function §0!,§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
