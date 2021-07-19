package §4!y§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §9!Z§:Dictionary;
      
      private static const §?"C§:Dictionary;
      
      private static const §!!A§:Dictionary;
      
      private static const §-z§:int = 4;
      
      private static const §;Z§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §%K§:uint = 12;
      
      private static const §2y§:uint = 16;
      
      private static const §@"L§:uint = 20;
      
      private static const §%n§:uint = 24;
      
      private static const §9!]§:uint = 28;
      
      private static const §=G§:uint = 1;
      
      private static const §2V§:uint = 2;
      
      private static const §9u§:uint = 32;
      
      private static const §<C§:uint = 64;
      
      private static const §!5§:uint = 1;
      
      private static const §[b§:uint = 2;
      
      private static const §<!;§:uint = 4;
      
      private static const §2!7§:uint = 8;
      
      private static const §[+§:uint = 16;
      
      private static const §"!Q§:uint = 32;
      
      private static const §7!R§:uint = 128;
      
      private static const §0"C§:String = "mov";
      
      private static const §4"U§:String = "add";
      
      private static const §1!;§:String = "sub";
      
      private static const §"f§:String = "mul";
      
      private static const §36§:String = "div";
      
      private static const §5x§:String = "rcp";
      
      private static const §9!W§:String = "min";
      
      private static const §?%§:String = "max";
      
      private static const §9"R§:String = "frc";
      
      private static const §47§:String = "sqt";
      
      private static const §!s§:String = "rsq";
      
      private static const §finally§:String = "pow";
      
      private static const §=N§:String = "log";
      
      private static const §8!&§:String = "exp";
      
      private static const §<",§:String = "nrm";
      
      private static const §,!y§:String = "sin";
      
      private static const §6!R§:String = "cos";
      
      private static const §?!%§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §#!;§:String = "abs";
      
      private static const § "T§:String = "neg";
      
      private static const §@u§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §4!4§:String = "ifz";
      
      private static const §^"=§:String = "inz";
      
      private static const §1!]§:String = "ife";
      
      private static const §&!O§:String = "ine";
      
      private static const §&^§:String = "ifg";
      
      private static const §37§:String = "ifl";
      
      private static const §76§:String = "ieg";
      
      private static const §@C§:String = "iel";
      
      private static const §^[§:String = "els";
      
      private static const §4k§:String = "eif";
      
      private static const §import§:String = "rep";
      
      private static const §<!r§:String = "erp";
      
      private static const §[!h§:String = "brk";
      
      private static const §&!]§:String = "kil";
      
      private static const §'P§:String = "tex";
      
      private static const §7r§:String = "sge";
      
      private static const § !$§:String = "slt";
      
      private static const §["7§:String = "sgn";
      
      private static const §<!4§:String = "va";
      
      private static const §&Z§:String = "vc";
      
      private static const §<"J§:String = "vt";
      
      private static const §-!a§:String = "op";
      
      private static const §@!b§:String = "v";
      
      private static const §2!y§:String = "fc";
      
      private static const §>n§:String = "ft";
      
      private static const §`"3§:String = "fs";
      
      private static const §0!K§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §&<§:String = "cube";
      
      private static const §,"2§:String = "mipnearest";
      
      private static const §0q§:String = "miplinear";
      
      private static const §3!;§:String = "mipnone";
      
      private static const §8"N§:String = "nomip";
      
      private static const §<"-§:String = "nearest";
      
      private static const §%#§:String = "linear";
      
      private static const §0G§:String = "centroid";
      
      private static const §9"J§:String = "single";
      
      private static const §#"=§:String = "depth";
      
      private static const §<6§:String = "repeat";
      
      private static const §1W§:String = "wrap";
      
      private static const §;p§:String = "clamp";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            initialized = false;
            loop0:
            while(true)
            {
               §9!Z§ = new Dictionary();
               while(true)
               {
                  §?"C§ = new Dictionary();
                  loop2:
                  while(true)
                  {
                     §!!A§ = new Dictionary();
                     while(true)
                     {
                        §-z§ = 4;
                        loop4:
                        while(true)
                        {
                           §;Z§ = 256;
                           loop5:
                           while(true)
                           {
                              FRAGMENT = "fragment";
                              loop6:
                              while(true)
                              {
                                 VERTEX = "vertex";
                                 loop7:
                                 while(true)
                                 {
                                    §%K§ = 12;
                                    loop8:
                                    while(true)
                                    {
                                       §2y§ = 16;
                                       loop9:
                                       while(true)
                                       {
                                          §@"L§ = 20;
                                          loop10:
                                          while(true)
                                          {
                                             §%n§ = 24;
                                             loop11:
                                             while(true)
                                             {
                                                §9!]§ = 28;
                                                loop12:
                                                while(true)
                                                {
                                                   §=G§ = 1;
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §2V§ = 2;
                                                      while(true)
                                                      {
                                                         §9u§ = 32;
                                                         addr840:
                                                         addr150:
                                                         while(true)
                                                         {
                                                            §<C§ = 64;
                                                            continue loop4;
                                                         }
                                                         if(!(_loc2_ || _loc1_))
                                                         {
                                                            continue;
                                                         }
                                                         §9"J§ = "single";
                                                         loop88:
                                                         while(true)
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  addr131:
                                                                  if(_loc2_ || AGALMiniAssembler)
                                                                  {
                                                                     §#"=§ = "depth";
                                                                     loop89:
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_ || _loc2_)
                                                                        {
                                                                           if(!_loc1_)
                                                                           {
                                                                              if(!_loc1_)
                                                                              {
                                                                                 addr106:
                                                                                 if(!(_loc1_ && AGALMiniAssembler))
                                                                                 {
                                                                                    addr113:
                                                                                    if(!(_loc1_ && _loc2_))
                                                                                    {
                                                                                       if(!_loc1_)
                                                                                       {
                                                                                          §<6§ = "repeat";
                                                                                          loop90:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                continue loop88;
                                                                                             }
                                                                                             addr72:
                                                                                             if(_loc2_ || _loc1_)
                                                                                             {
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                addr81:
                                                                                                if(_loc2_ || AGALMiniAssembler)
                                                                                                {
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      §1W§ = "wrap";
                                                                                                      continue;
                                                                                                   }
                                                                                                   addr823:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §[b§ = 2;
                                                                                                      addr818:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §<!;§ = 4;
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §2!7§ = 8;
                                                                                                            addr808:
                                                                                                            addr702:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §[+§ = 16;
                                                                                                               addr803:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §"!Q§ = 32;
                                                                                                               }
                                                                                                            }
                                                                                                            addr702:
                                                                                                            while(_loc2_ || _loc1_)
                                                                                                            {
                                                                                                               §!s§ = "rsq";
                                                                                                               break loop90;
                                                                                                            }
                                                                                                         }
                                                                                                         addr573:
                                                                                                         if(_loc1_ && _loc1_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         §4!4§ = "ifz";
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §^"=§ = "inz";
                                                                                                            loop51:
                                                                                                            while(!_loc1_)
                                                                                                            {
                                                                                                               addr554:
                                                                                                               if(_loc2_ || _loc1_)
                                                                                                               {
                                                                                                                  §1!]§ = "ife";
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §&!O§ = "ine";
                                                                                                                     loop53:
                                                                                                                     for(; _loc2_; while(_loc2_ || AGALMiniAssembler)
                                                                                                                     {
                                                                                                                        if(_loc2_)
                                                                                                                        {
                                                                                                                           §4k§ = "eif";
                                                                                                                           §§goto(addr474);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(_loc2_)
                                                                                                                           {
                                                                                                                              DP3 = "dp3";
                                                                                                                              §§goto(addr628);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §0"C§ = "mov";
                                                                                                                              §§goto(addr788);
                                                                                                                           }
                                                                                                                           addr793:
                                                                                                                           addr633:
                                                                                                                        }
                                                                                                                        §§goto(addr616);
                                                                                                                        §§goto(addr143);
                                                                                                                     })
                                                                                                                     {
                                                                                                                        addr535:
                                                                                                                        if(!(_loc1_ && _loc1_))
                                                                                                                        {
                                                                                                                           §&^§ = "ifg";
                                                                                                                           addr514:
                                                                                                                           while(!(_loc1_ && _loc2_))
                                                                                                                           {
                                                                                                                              continue loop11;
                                                                                                                              §§goto(addr113);
                                                                                                                           }
                                                                                                                           while(!_loc1_)
                                                                                                                           {
                                                                                                                              continue loop10;
                                                                                                                              §§goto(addr514);
                                                                                                                           }
                                                                                                                           addr514:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §4"U§ = "add";
                                                                                                                           }
                                                                                                                           addr762:
                                                                                                                           addr788:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(_loc2_)
                                                                                                                           {
                                                                                                                              M33 = "m33";
                                                                                                                              loop47:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 M44 = "m44";
                                                                                                                                 loop48:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    M34 = "m34";
                                                                                                                                    while(!_loc1_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr573);
                                                                                                                                       addr246:
                                                                                                                                       if(!(_loc2_ || _loc2_))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       §&<§ = "cube";
                                                                                                                                       loop80:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc1_ && AGALMiniAssembler))
                                                                                                                                          {
                                                                                                                                             if(_loc1_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §,"2§ = "mipnearest";
                                                                                                                                             loop81:
                                                                                                                                             while(_loc2_)
                                                                                                                                             {
                                                                                                                                                §0q§ = "miplinear";
                                                                                                                                                loop82:
                                                                                                                                                for(; !(_loc1_ && _loc2_); while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc1_ && AGALMiniAssembler))
                                                                                                                                                   {
                                                                                                                                                      continue loop81;
                                                                                                                                                   }
                                                                                                                                                   continue loop82;
                                                                                                                                                },while(true)
                                                                                                                                                {
                                                                                                                                                   DP4 = "dp4";
                                                                                                                                                   §§goto(addr623);
                                                                                                                                                })
                                                                                                                                                {
                                                                                                                                                   §3!;§ = "mipnone";
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §8"N§ = "nomip";
                                                                                                                                                      addr201:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §<"-§ = "nearest";
                                                                                                                                                         addr185:
                                                                                                                                                         loop85:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc1_ && _loc2_))
                                                                                                                                                            {
                                                                                                                                                               if(_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc1_)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  §%#§ = "linear";
                                                                                                                                                                  continue loop82;
                                                                                                                                                               }
                                                                                                                                                               addr507:
                                                                                                                                                               addr683:
                                                                                                                                                               loop75:
                                                                                                                                                               while(!_loc1_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc1_)
                                                                                                                                                                  {
                                                                                                                                                                     §`"3§ = "fs";
                                                                                                                                                                     while(_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           §0!K§ = "oc";
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc2_ || _loc1_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    D2 = "2d";
                                                                                                                                                                                    addr416:
                                                                                                                                                                                    loop78:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc1_ && _loc1_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr330:
                                                                                                                                                                                          while(_loc2_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr714:
                                                                                                                                                                                                while(!(_loc1_ && _loc2_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §47§ = "sqt";
                                                                                                                                                                                                   §§goto(addr702);
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop4;
                                                                                                                                                                                                addr714:
                                                                                                                                                                                             }
                                                                                                                                                                                             §2!y§ = "fc";
                                                                                                                                                                                             while(_loc2_ || _loc1_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §>n§ = "ft";
                                                                                                                                                                                                continue loop75;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop78;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop7;
                                                                                                                                                                                          addr330:
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc1_ && _loc1_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr272:
                                                                                                                                                                                       if(!(_loc1_ && _loc1_))
                                                                                                                                                                                       {
                                                                                                                                                                                          D3 = "3d";
                                                                                                                                                                                          while(_loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr246);
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §7r§ = "sge";
                                                                                                                                                                                             continue loop7;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr411:
                                                                                                                                                                                          addr244:
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §,!y§ = "sin";
                                                                                                                                                                                             addr654:
                                                                                                                                                                                             loop39:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc1_ && _loc1_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §6!R§ = "cos";
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §5x§ = "rcp";
                                                                                                                                                                                                      addr745:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §9!W§ = "min";
                                                                                                                                                                                                         addr738:
                                                                                                                                                                                                         while(_loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §?%§ = "max";
                                                                                                                                                                                                            continue loop0;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop8;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop39;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr750:
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop5;
                                                                                                                                                                                             §§goto(addr272);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr668:
                                                                                                                                                                                       }
                                                                                                                                                                                       while(!_loc1_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop6;
                                                                                                                                                                                          §§goto(addr318);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr840);
                                                                                                                                                                                    }
                                                                                                                                                                                    loop63:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc2_ || _loc2_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr423:
                                                                                                                                                                                          if(!(_loc1_ && _loc1_))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr430:
                                                                                                                                                                                             if(_loc2_ || _loc1_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §'P§ = "tex";
                                                                                                                                                                                                §§goto(addr411);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                addr616:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      § "T§ = "neg";
                                                                                                                                                                                                      break loop82;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                   §§goto(addr430);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr654);
                                                                                                                                                                                                addr616:
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §import§ = "rep";
                                                                                                                                                                                                break loop63;
                                                                                                                                                                                                §§goto(addr423);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr474:
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                       §§goto(addr265);
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc2_ || AGALMiniAssembler)
                                                                                                                                                                                       {
                                                                                                                                                                                          §<!r§ = "erp";
                                                                                                                                                                                          break loop81;
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                       §§goto(addr416);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr416:
                                                                                                                                                                                    while(!_loc1_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §36§ = "div";
                                                                                                                                                                                       §§goto(addr750);
                                                                                                                                                                                       §§goto(addr462);
                                                                                                                                                                                    }
                                                                                                                                                                                    addr462:
                                                                                                                                                                                    continue loop9;
                                                                                                                                                                                    addr258:
                                                                                                                                                                                    addr755:
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop48;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr318);
                                                                                                                                                                              continue loop85;
                                                                                                                                                                           }
                                                                                                                                                                           while(!_loc1_)
                                                                                                                                                                           {
                                                                                                                                                                              §^[§ = "els";
                                                                                                                                                                              continue loop53;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop51;
                                                                                                                                                                           addr493:
                                                                                                                                                                           addr284:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr623:
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §#!;§ = "abs";
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr616);
                                                                                                                                                                        continue loop80;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop12;
                                                                                                                                                                     addr300:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr803);
                                                                                                                                                               }
                                                                                                                                                               while(_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §76§ = "ieg";
                                                                                                                                                                  while(_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     §@C§ = "iel";
                                                                                                                                                                     §§goto(addr493);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop47;
                                                                                                                                                               }
                                                                                                                                                               while(!_loc1_)
                                                                                                                                                               {
                                                                                                                                                                  §=N§ = "log";
                                                                                                                                                                  break loop88;
                                                                                                                                                               }
                                                                                                                                                               continue loop13;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr284);
                                                                                                                                                         }
                                                                                                                                                         addr452:
                                                                                                                                                         addr58:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §&!]§ = "kil";
                                                                                                                                                            §§goto(addr416);
                                                                                                                                                         }
                                                                                                                                                         if(!(_loc1_ && _loc1_))
                                                                                                                                                         {
                                                                                                                                                            §;p§ = "clamp";
                                                                                                                                                            if(!(_loc1_ && _loc1_))
                                                                                                                                                            {
                                                                                                                                                               continue loop89;
                                                                                                                                                            }
                                                                                                                                                            continue loop90;
                                                                                                                                                            addr65:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc1_)
                                                                                                                                                   {
                                                                                                                                                      continue loop2;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr745);
                                                                                                                                                   §§goto(addr211);
                                                                                                                                                }
                                                                                                                                                addr211:
                                                                                                                                                continue loop2;
                                                                                                                                                if(!(_loc2_ || AGALMiniAssembler))
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                if(_loc2_)
                                                                                                                                                {
                                                                                                                                                   if(_loc2_)
                                                                                                                                                   {
                                                                                                                                                      §0G§ = "centroid";
                                                                                                                                                      addr143:
                                                                                                                                                      while(!(_loc1_ && _loc1_))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr150);
                                                                                                                                                      }
                                                                                                                                                      continue loop53;
                                                                                                                                                      addr143:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr628);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr244);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §[!h§ = "brk";
                                                                                                                                                §§goto(addr452);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr300);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §<!4§ = "va";
                                                                                                                                          break loop89;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr535);
                                                                                                                           }
                                                                                                                           §§goto(addr808);
                                                                                                                           addr595:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §1!;§ = "sub";
                                                                                                                           §§goto(addr762);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §<",§ = "nrm";
                                                                                                                     §§goto(addr668);
                                                                                                                     §§goto(addr554);
                                                                                                                  }
                                                                                                                  addr673:
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §7!R§ = 128;
                                                                                                   §§goto(addr793);
                                                                                                   §§goto(addr81);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr344:
                                                                                                while(!(_loc1_ && _loc1_))
                                                                                                {
                                                                                                   §@!b§ = "v";
                                                                                                   §§goto(addr330);
                                                                                                   §§goto(addr72);
                                                                                                }
                                                                                                while(_loc2_)
                                                                                                {
                                                                                                   §["7§ = "sgn";
                                                                                                   §§goto(addr385);
                                                                                                   §§goto(addr344);
                                                                                                }
                                                                                                addr344:
                                                                                                §§goto(addr500);
                                                                                                addr390:
                                                                                             }
                                                                                             §§goto(addr818);
                                                                                          }
                                                                                          while(_loc2_ || _loc2_)
                                                                                          {
                                                                                             §finally§ = "pow";
                                                                                             §§goto(addr683);
                                                                                          }
                                                                                          continue loop0;
                                                                                          addr690:
                                                                                       }
                                                                                       §§goto(addr702);
                                                                                    }
                                                                                    §§goto(addr514);
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr258);
                                                                           }
                                                                           §§goto(addr185);
                                                                        }
                                                                        §§goto(addr162);
                                                                     }
                                                                     while(_loc2_ || _loc1_)
                                                                     {
                                                                        §&Z§ = "vc";
                                                                        §§goto(addr368);
                                                                        §§goto(addr106);
                                                                     }
                                                                     §§goto(addr738);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr230);
                                                            }
                                                            §§goto(addr206);
                                                         }
                                                         while(true)
                                                         {
                                                            §8!&§ = "exp";
                                                            §§goto(addr673);
                                                            §§goto(addr131);
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
                           }
                        }
                     }
                  }
                  if(!(_loc2_ || _loc2_))
                  {
                     continue;
                  }
                  §"f§ = "mul";
                  §§goto(addr755);
               }
            }
         }
         while(true)
         {
            §-!a§ = "op";
            §§goto(addr344);
         }
      }
      
      private var §0T§:ByteArray = null;
      
      private var §"!w§:String = "";
      
      private var §^!+§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§^!+§ = param1;
            while(!initialized)
            {
               if(!(_loc2_ && param1))
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
                  if(_loc2_)
                  {
                     continue loop0;
                  }
                  init();
               }
               break;
            }
            return;
         }
      }
      
      private static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || AGALMiniAssembler)
         {
            initialized = true;
            loop0:
            while(true)
            {
               §9!Z§[§0"C§] = new OpCode(§0"C§,2,0,0);
               loop1:
               while(true)
               {
                  §9!Z§[§4"U§] = new OpCode(§4"U§,3,1,0);
                  loop2:
                  while(true)
                  {
                     §9!Z§[§1!;§] = new OpCode(§1!;§,3,2,0);
                     loop3:
                     while(true)
                     {
                        §9!Z§[§"f§] = new OpCode(§"f§,3,3,0);
                        while(true)
                        {
                           §9!Z§[§36§] = new OpCode(§36§,3,4,0);
                           loop5:
                           while(true)
                           {
                              §9!Z§[§5x§] = new OpCode(§5x§,2,5,0);
                              while(true)
                              {
                                 §9!Z§[§9!W§] = new OpCode(§9!W§,3,6,0);
                                 loop7:
                                 while(true)
                                 {
                                    §9!Z§[§?%§] = new OpCode(§?%§,3,7,0);
                                    loop8:
                                    while(true)
                                    {
                                       §9!Z§[§9"R§] = new OpCode(§9"R§,2,8,0);
                                       loop9:
                                       while(true)
                                       {
                                          §9!Z§[§47§] = new OpCode(§47§,2,9,0);
                                          loop10:
                                          while(true)
                                          {
                                             §9!Z§[§!s§] = new OpCode(§!s§,2,10,0);
                                             loop11:
                                             while(true)
                                             {
                                                §9!Z§[§finally§] = new OpCode(§finally§,3,11,0);
                                                while(true)
                                                {
                                                   §9!Z§[§=N§] = new OpCode(§=N§,2,12,0);
                                                   continue loop7;
                                                   addr439:
                                                   loop50:
                                                   for(; _loc1_ || _loc1_; if(!(_loc1_ || _loc2_))
                                                   {
                                                      continue;
                                                   },if(!_loc2_)
                                                   {
                                                      return;
                                                   },§§goto(addr540))
                                                   {
                                                      §?"C§[§2!y§] = new Register(§2!y§,"fragment constant",1,27,§9u§ | §2V§);
                                                      loop51:
                                                      while(true)
                                                      {
                                                         §?"C§[§>n§] = new Register(§>n§,"fragment temporary",2,7,§9u§ | §=G§ | §2V§);
                                                         loop52:
                                                         while(true)
                                                         {
                                                            §?"C§[§`"3§] = new Register(§`"3§,"texture sampler",5,7,§9u§ | §2V§);
                                                            addr380:
                                                            loop53:
                                                            for(; _loc1_ || AGALMiniAssembler; while(true)
                                                            {
                                                               if(!(_loc1_ || _loc1_))
                                                               {
                                                                  continue loop53;
                                                               }
                                                               §§goto(addr240);
                                                               §§goto(addr132);
                                                            },§§goto(addr592))
                                                            {
                                                               if(_loc1_)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     §?"C§[§0!K§] = new Register(§0!K§,"fragment output",3,0,§9u§ | §=G§);
                                                                     while(true)
                                                                     {
                                                                        §!!A§[D2] = new Sampler(D2,§%K§,0);
                                                                        addr352:
                                                                        while(true)
                                                                        {
                                                                           §!!A§[D3] = new Sampler(D3,§%K§,2);
                                                                           continue loop0;
                                                                           addr139:
                                                                           if(_loc1_ || _loc1_)
                                                                           {
                                                                              continue loop52;
                                                                           }
                                                                        }
                                                                     }
                                                                     addr366:
                                                                  }
                                                                  else
                                                                  {
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        §9!Z§[M33] = new OpCode(M33,3,23,§[+§);
                                                                        loop24:
                                                                        while(true)
                                                                        {
                                                                           if(_loc1_)
                                                                           {
                                                                              §9!Z§[M44] = new OpCode(M44,3,24,§[+§);
                                                                              loop25:
                                                                              while(true)
                                                                              {
                                                                                 §9!Z§[M34] = new OpCode(M34,3,25,§[+§);
                                                                                 while(true)
                                                                                 {
                                                                                    §9!Z§[§4!4§] = new OpCode(§4!4§,1,26,§7!R§ | §[b§ | §!5§);
                                                                                    loop27:
                                                                                    while(true)
                                                                                    {
                                                                                       §9!Z§[§^"=§] = new OpCode(§^"=§,1,27,§7!R§ | §[b§ | §!5§);
                                                                                       loop28:
                                                                                       while(true)
                                                                                       {
                                                                                          §9!Z§[§1!]§] = new OpCode(§1!]§,2,28,§7!R§ | §[b§ | §!5§);
                                                                                          addr836:
                                                                                          addr976:
                                                                                          while(_loc1_)
                                                                                          {
                                                                                             continue loop11;
                                                                                          }
                                                                                          loop18:
                                                                                          while(true)
                                                                                          {
                                                                                             §9!Z§[DP3] = new OpCode(DP3,3,18,0);
                                                                                             while(true)
                                                                                             {
                                                                                                §9!Z§[DP4] = new OpCode(DP4,3,19,0);
                                                                                                addr954:
                                                                                                while(true)
                                                                                                {
                                                                                                   §9!Z§[§#!;§] = new OpCode(§#!;§,2,20,0);
                                                                                                   break loop24;
                                                                                                }
                                                                                                addr777:
                                                                                                if(!(_loc1_ || _loc1_))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                addr784:
                                                                                                if(!(_loc2_ && _loc2_))
                                                                                                {
                                                                                                   §9!Z§[§76§] = new OpCode(§76§,2,32,§7!R§ | §[b§ | §!5§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §9!Z§[§@C§] = new OpCode(§@C§,2,33,§7!R§ | §[b§ | §!5§);
                                                                                                      addr736:
                                                                                                      while(_loc1_)
                                                                                                      {
                                                                                                         if(_loc1_)
                                                                                                         {
                                                                                                            §9!Z§[§^[§] = new OpCode(§^[§,0,34,§7!R§ | §[b§ | §<!;§);
                                                                                                            loop35:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §9!Z§[§4k§] = new OpCode(§4k§,0,35,§7!R§ | §<!;§);
                                                                                                               loop36:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §9!Z§[§import§] = new OpCode(§import§,1,36,§7!R§ | §[b§ | §!5§);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §9!Z§[§<!r§] = new OpCode(§<!r§,0,37,§7!R§ | §<!;§);
                                                                                                                     addr669:
                                                                                                                     while(_loc1_)
                                                                                                                     {
                                                                                                                        continue loop10;
                                                                                                                     }
                                                                                                                     continue loop36;
                                                                                                                     addr212:
                                                                                                                     loop63:
                                                                                                                     while(!(_loc2_ && _loc2_))
                                                                                                                     {
                                                                                                                        if(_loc1_)
                                                                                                                        {
                                                                                                                           if(_loc1_)
                                                                                                                           {
                                                                                                                              §!!A§[§0G§] = new Sampler(§0G§,§2y§,1 << 0);
                                                                                                                              loop64:
                                                                                                                              while(_loc1_ || _loc2_)
                                                                                                                              {
                                                                                                                                 §!!A§[§9"J§] = new Sampler(§9"J§,§2y§,1 << 1);
                                                                                                                                 loop65:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          addr169:
                                                                                                                                          if(_loc1_ || _loc1_)
                                                                                                                                          {
                                                                                                                                             continue loop8;
                                                                                                                                          }
                                                                                                                                          addr261:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc1_)
                                                                                                                                             {
                                                                                                                                                addr263:
                                                                                                                                                if(!(_loc1_ || _loc2_))
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                if(_loc1_)
                                                                                                                                                {
                                                                                                                                                   §!!A§[§<"-§] = new Sampler(§<"-§,§9!]§,0);
                                                                                                                                                   continue loop53;
                                                                                                                                                }
                                                                                                                                                continue loop27;
                                                                                                                                             }
                                                                                                                                             continue loop51;
                                                                                                                                             §§goto(addr169);
                                                                                                                                          }
                                                                                                                                          continue loop35;
                                                                                                                                       }
                                                                                                                                       continue loop63;
                                                                                                                                    }
                                                                                                                                    continue loop64;
                                                                                                                                    addr125:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc1_ || _loc2_))
                                                                                                                                       {
                                                                                                                                          continue loop65;
                                                                                                                                       }
                                                                                                                                       if(_loc2_ && AGALMiniAssembler)
                                                                                                                                       {
                                                                                                                                          continue loop53;
                                                                                                                                       }
                                                                                                                                       §§goto(addr139);
                                                                                                                                    }
                                                                                                                                    continue loop52;
                                                                                                                                 }
                                                                                                                                 continue loop8;
                                                                                                                              }
                                                                                                                              while(_loc1_)
                                                                                                                              {
                                                                                                                                 §!!A§[§,"2§] = new Sampler(§,"2§,§%n§,1);
                                                                                                                                 continue loop5;
                                                                                                                                 §§goto(addr195);
                                                                                                                              }
                                                                                                                              addr195:
                                                                                                                              continue loop0;
                                                                                                                              addr323:
                                                                                                                           }
                                                                                                                           continue loop25;
                                                                                                                        }
                                                                                                                        continue loop28;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr836);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr998:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §9!Z§[§6!R§] = new OpCode(§6!R§,2,16,0);
                                                                                                      §§goto(addr784);
                                                                                                   }
                                                                                                   addr998:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §9!Z§[§?!%§] = new OpCode(§?!%§,3,17,0);
                                                                                                   continue loop18;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr592:
                                                                                    while(_loc1_ || _loc1_)
                                                                                    {
                                                                                       addr599:
                                                                                       if(!(_loc2_ && _loc1_))
                                                                                       {
                                                                                          §9!Z§[§ !$§] = new OpCode(§ !$§,3,42,0);
                                                                                          while(true)
                                                                                          {
                                                                                             §9!Z§[§["7§] = new OpCode(§["7§,2,43,0);
                                                                                             while(true)
                                                                                             {
                                                                                                §?"C§[§<!4§] = new Register(§<!4§,"vertex attribute",0,7,§<C§ | §2V§);
                                                                                                addr540:
                                                                                                while(_loc1_)
                                                                                                {
                                                                                                   addr542:
                                                                                                   if(!(_loc2_ && _loc1_))
                                                                                                   {
                                                                                                      §?"C§[§&Z§] = new Register(§&Z§,"vertex constant",1,127,§<C§ | §2V§);
                                                                                                      §§goto(addr515);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc1_)
                                                                                                         {
                                                                                                            addr647:
                                                                                                            if(!(_loc2_ && _loc1_))
                                                                                                            {
                                                                                                               if(_loc2_)
                                                                                                               {
                                                                                                                  continue loop7;
                                                                                                               }
                                                                                                               §9!Z§[§&!]§] = new OpCode(§&!]§,1,39,§7!R§ | §"!Q§);
                                                                                                               §§goto(addr632);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §9!Z§[§,!y§] = new OpCode(§,!y§,2,15,0);
                                                                                                                  §§goto(addr998);
                                                                                                                  §§goto(addr647);
                                                                                                               }
                                                                                                               addr1009:
                                                                                                            }
                                                                                                            §§goto(addr987);
                                                                                                         }
                                                                                                         break;
                                                                                                         §§goto(addr542);
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §9!Z§[§@u§] = new OpCode(§@u§,2,22,0);
                                                                                                         continue loop23;
                                                                                                      }
                                                                                                      addr932:
                                                                                                      addr645:
                                                                                                   }
                                                                                                   §§goto(addr998);
                                                                                                }
                                                                                             }
                                                                                             addr76:
                                                                                             if(!(_loc1_ || _loc2_))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(!_loc1_)
                                                                                             {
                                                                                                continue loop1;
                                                                                             }
                                                                                             §!!A§[§;p§] = new Sampler(§;p§,§@"L§,0);
                                                                                             addr85:
                                                                                             if(!(_loc1_ || _loc2_))
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      if(_loc1_)
                                                                                                      {
                                                                                                         §§goto(addr76);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr366);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc1_)
                                                                                                         {
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               §§goto(addr99);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(!_loc2_)
                                                                                                               {
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               addr460:
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr125);
                                                                                                         }
                                                                                                         §§goto(addr954);
                                                                                                      }
                                                                                                      §§goto(addr770);
                                                                                                      addr95:
                                                                                                   }
                                                                                                   §§goto(addr352);
                                                                                                   §§goto(addr85);
                                                                                                }
                                                                                                continue;
                                                                                                addr72:
                                                                                             }
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                addr46:
                                                                                                if(!(_loc2_ && _loc1_))
                                                                                                {
                                                                                                   continue loop50;
                                                                                                }
                                                                                                addr292:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   if(!_loc1_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §!!A§[§3!;§] = new Sampler(§3!;§,§%n§,0);
                                                                                                   §§goto(addr46);
                                                                                                }
                                                                                                continue loop9;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §!!A§[§8"N§] = new Sampler(§8"N§,§%n§,0);
                                                                                                §§goto(addr261);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §9!Z§[§<",§] = new OpCode(§<",§,2,14,0);
                                                                                             §§goto(addr599);
                                                                                          }
                                                                                          addr1020:
                                                                                       }
                                                                                       §§goto(addr1009);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           break;
                                                                           if(_loc2_ && AGALMiniAssembler)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §!!A§[§1W§] = new Sampler(§1W§,§@"L§,1);
                                                                           §§goto(addr72);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §9!Z§[§ "T§] = new OpCode(§ "T§,2,21,0);
                                                                           §§goto(addr932);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr736);
                                                               }
                                                               §§goto(addr976);
                                                            }
                                                            while(true)
                                                            {
                                                               §9!Z§[§7r§] = new OpCode(§7r§,3,41,0);
                                                               §§goto(addr592);
                                                               §§goto(addr380);
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
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr526);
      }
      
      public function get error() : String
      {
         return this.§"!w§;
      }
      
      public function get §,"T§() : ByteArray
      {
         return this.§0T§;
      }
      
      public function §?!i§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
