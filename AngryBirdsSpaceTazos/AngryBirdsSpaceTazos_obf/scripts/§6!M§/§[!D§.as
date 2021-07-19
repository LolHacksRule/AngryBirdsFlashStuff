package §6!M§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §[!D§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §-"-§:Dictionary;
      
      private static const §[!6§:Dictionary;
      
      private static const §^Y§:Dictionary;
      
      private static const §8!'§:int = 4;
      
      private static const §+"E§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §,!J§:uint = 12;
      
      private static const §9!r§:uint = 16;
      
      private static const §2P§:uint = 20;
      
      private static const §6I§:uint = 24;
      
      private static const §;!r§:uint = 28;
      
      private static const §3"?§:uint = 1;
      
      private static const §1!I§:uint = 2;
      
      private static const §?!r§:uint = 32;
      
      private static const §]!0§:uint = 64;
      
      private static const §`0§:uint = 1;
      
      private static const §'!E§:uint = 2;
      
      private static const §?!b§:uint = 4;
      
      private static const §+!N§:uint = 8;
      
      private static const §'o§:uint = 16;
      
      private static const §!"F§:uint = 32;
      
      private static const §]!c§:uint = 128;
      
      private static const §<C§:String = "mov";
      
      private static const §;!N§:String = "add";
      
      private static const §9?§:String = "sub";
      
      private static const §7"7§:String = "mul";
      
      private static const §>!w§:String = "div";
      
      private static const §!G§:String = "rcp";
      
      private static const §=Y§:String = "min";
      
      private static const §9e§:String = "max";
      
      private static const §^q§:String = "frc";
      
      private static const §]!T§:String = "sqt";
      
      private static const §,"§:String = "rsq";
      
      private static const §<"$§:String = "pow";
      
      private static const §^z§:String = "log";
      
      private static const § b§:String = "exp";
      
      private static const §8!X§:String = "nrm";
      
      private static const §3Q§:String = "sin";
      
      private static const §#"A§:String = "cos";
      
      private static const §7!J§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const § +§:String = "abs";
      
      private static const §#!C§:String = "neg";
      
      private static const §`!w§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §2D§:String = "ifz";
      
      private static const §3!C§:String = "inz";
      
      private static const §`F§:String = "ife";
      
      private static const §<3§:String = "ine";
      
      private static const §%";§:String = "ifg";
      
      private static const §=[§:String = "ifl";
      
      private static const §1"#§:String = "ieg";
      
      private static const §>9§:String = "iel";
      
      private static const §,[§:String = "els";
      
      private static const §%"%§:String = "eif";
      
      private static const §`!n§:String = "rep";
      
      private static const §&!,§:String = "erp";
      
      private static const §9A§:String = "brk";
      
      private static const §=1§:String = "kil";
      
      private static const §[!#§:String = "tex";
      
      private static const §,q§:String = "sge";
      
      private static const §0"H§:String = "slt";
      
      private static const §<!T§:String = "sgn";
      
      private static const §%"§:String = "va";
      
      private static const §[o§:String = "vc";
      
      private static const §`E§:String = "vt";
      
      private static const §]!4§:String = "op";
      
      private static const V:String = "v";
      
      private static const §#!q§:String = "fc";
      
      private static const § !X§:String = "ft";
      
      private static const §2!K§:String = "fs";
      
      private static const §9!m§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §=!F§:String = "cube";
      
      private static const §5!2§:String = "mipnearest";
      
      private static const §catch§:String = "miplinear";
      
      private static const §0"=§:String = "mipnone";
      
      private static const §2`§:String = "nomip";
      
      private static const §>!3§:String = "nearest";
      
      private static const §!w§:String = "linear";
      
      private static const §`!@§:String = "centroid";
      
      private static const §,O§:String = "single";
      
      private static const §`%§:String = "depth";
      
      private static const §5v§:String = "repeat";
      
      private static const §8t§:String = "wrap";
      
      private static const §;!-§:String = "clamp";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            initialized = false;
            loop0:
            while(true)
            {
               §-"-§ = new Dictionary();
               loop1:
               while(true)
               {
                  §[!6§ = new Dictionary();
                  while(true)
                  {
                     §^Y§ = new Dictionary();
                     loop3:
                     for(; !(_loc2_ && §[!D§); if(_loc2_ && _loc2_)
                     {
                        continue;
                     },§%"§ = "va",§§goto(addr392))
                     {
                        §8!'§ = 4;
                        loop4:
                        while(true)
                        {
                           §+"E§ = 256;
                           while(true)
                           {
                              FRAGMENT = "fragment";
                              loop6:
                              for(; !(_loc2_ && _loc1_); if(_loc2_ && §[!D§)
                              {
                                 continue;
                              },while(true)
                              {
                                 §5!2§ = "mipnearest";
                                 §§goto(addr225);
                              })
                              {
                                 VERTEX = "vertex";
                                 loop7:
                                 while(true)
                                 {
                                    §,!J§ = 12;
                                    loop8:
                                    while(true)
                                    {
                                       §9!r§ = 16;
                                       loop9:
                                       while(true)
                                       {
                                          §2P§ = 20;
                                          loop10:
                                          while(true)
                                          {
                                             §6I§ = 24;
                                             loop11:
                                             while(true)
                                             {
                                                §;!r§ = 28;
                                                loop12:
                                                while(true)
                                                {
                                                   §3"?§ = 1;
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §1!I§ = 2;
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §?!r§ = 32;
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §]!0§ = 64;
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §`0§ = 1;
                                                               while(true)
                                                               {
                                                                  §'!E§ = 2;
                                                                  loop18:
                                                                  while(!(_loc2_ && §[!D§))
                                                                  {
                                                                     §?!b§ = 4;
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §+!N§ = 8;
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           §'o§ = 16;
                                                                           addr778:
                                                                           addr712:
                                                                           while(true)
                                                                           {
                                                                              §!"F§ = 32;
                                                                              continue loop0;
                                                                           }
                                                                           if(!(_loc1_ || _loc2_))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §^q§ = "frc";
                                                                           loop32:
                                                                           while(true)
                                                                           {
                                                                              §]!T§ = "sqt";
                                                                              loop33:
                                                                              while(true)
                                                                              {
                                                                                 §,"§ = "rsq";
                                                                                 loop34:
                                                                                 while(true)
                                                                                 {
                                                                                    §<"$§ = "pow";
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          continue loop11;
                                                                                       }
                                                                                       §§goto(addr778);
                                                                                       addr150:
                                                                                       if(!(_loc1_ || _loc2_))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §`%§ = "depth";
                                                                                       loop89:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             addr108:
                                                                                             if(!(_loc2_ && §[!D§))
                                                                                             {
                                                                                                addr115:
                                                                                                if(_loc1_ || §[!D§)
                                                                                                {
                                                                                                   addr122:
                                                                                                   if(!(_loc2_ && §[!D§))
                                                                                                   {
                                                                                                      addr129:
                                                                                                      if(_loc1_ || §[!D§)
                                                                                                      {
                                                                                                         §5v§ = "repeat";
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               continue loop89;
                                                                                                            }
                                                                                                            addr81:
                                                                                                            if(_loc1_ || _loc2_)
                                                                                                            {
                                                                                                               if(_loc1_)
                                                                                                               {
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     addr92:
                                                                                                                     if(!(_loc2_ && _loc2_))
                                                                                                                     {
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           §8t§ = "wrap";
                                                                                                                           loop91:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc2_ && _loc2_))
                                                                                                                              {
                                                                                                                                 addr60:
                                                                                                                                 if(_loc2_ && §[!D§)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 addr67:
                                                                                                                                 if(_loc1_ || _loc1_)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 addr397:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc1_ || _loc1_)
                                                                                                                                    {
                                                                                                                                       if(_loc1_)
                                                                                                                                       {
                                                                                                                                          continue loop32;
                                                                                                                                       }
                                                                                                                                       continue loop33;
                                                                                                                                    }
                                                                                                                                    loop38:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §3Q§ = "sin";
                                                                                                                                       loop39:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §#"A§ = "cos";
                                                                                                                                          loop40:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc1_)
                                                                                                                                             {
                                                                                                                                                continue loop34;
                                                                                                                                             }
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §7!J§ = "crs";
                                                                                                                                             loop41:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc2_)
                                                                                                                                                {
                                                                                                                                                   if(_loc1_)
                                                                                                                                                   {
                                                                                                                                                      DP3 = "dp3";
                                                                                                                                                      loop42:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         DP4 = "dp4";
                                                                                                                                                         loop43:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            § +§ = "abs";
                                                                                                                                                            addr620:
                                                                                                                                                            loop44:
                                                                                                                                                            while(_loc1_)
                                                                                                                                                            {
                                                                                                                                                               §#!C§ = "neg";
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §`!w§ = "sat";
                                                                                                                                                                  while(_loc1_)
                                                                                                                                                                  {
                                                                                                                                                                     M33 = "m33";
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        M44 = "m44";
                                                                                                                                                                        addr598:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           M34 = "m34";
                                                                                                                                                                           loop49:
                                                                                                                                                                           while(!_loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              §2D§ = "ifz";
                                                                                                                                                                              loop50:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §3!C§ = "inz";
                                                                                                                                                                                 addr579:
                                                                                                                                                                                 while(!_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §`F§ = "ife";
                                                                                                                                                                                    while(_loc1_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §<3§ = "ine";
                                                                                                                                                                                       loop53:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc1_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr558:
                                                                                                                                                                                             if(!(_loc2_ && _loc2_))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §%";§ = "ifg";
                                                                                                                                                                                                loop54:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §=[§ = "ifl";
                                                                                                                                                                                                   loop55:
                                                                                                                                                                                                   while(!_loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §1"#§ = "ieg";
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §>9§ = "iel";
                                                                                                                                                                                                         addr534:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §,[§ = "els";
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §%"%§ = "eif";
                                                                                                                                                                                                                  break loop89;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break;
                                                                                                                                                                                                               addr323:
                                                                                                                                                                                                               if(_loc2_ && §[!D§)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc1_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop41;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §9!m§ = "oc";
                                                                                                                                                                                                                  continue loop50;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr751:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §9?§ = "sub";
                                                                                                                                                                                                                  break loop41;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            loop30:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §9e§ = "max";
                                                                                                                                                                                                               loop31:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr712);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §=Y§ = "min";
                                                                                                                                                                                                                        continue loop30;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr729:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr463:
                                                                                                                                                                                                                  if(!(_loc2_ && _loc2_))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §0"H§ = "slt";
                                                                                                                                                                                                                     loop66:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc1_ || _loc1_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop10;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop54;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr504:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop44;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!_loc1_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop9;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §&!,§ = "erp";
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §9A§ = "brk";
                                                                                                                                                                                                                              loop62:
                                                                                                                                                                                                                              while(_loc1_ || _loc1_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §=1§ = "kil";
                                                                                                                                                                                                                                 loop63:
                                                                                                                                                                                                                                 for(; !_loc2_; while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc1_ || _loc1_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop63;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr463);
                                                                                                                                                                                                                                    addr251:
                                                                                                                                                                                                                                    if(!(_loc2_ && _loc1_))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc1_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop53;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop62;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 },continue loop31)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §[!#§ = "tex";
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §,q§ = "sge";
                                                                                                                                                                                                                                       continue loop63;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop55;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop66;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop15;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop10;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop20;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr122);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr129);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop18;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             while(_loc1_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §!G§ = "rcp";
                                                                                                                                                                                                §§goto(addr729);
                                                                                                                                                                                                §§goto(addr558);
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop0;
                                                                                                                                                                                             addr734:
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop42;
                                                                                                                                                                                          if(!(_loc2_ && §[!D§))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc1_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc1_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop14;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop19;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr674:
                                                                                                                                                                                             while(_loc1_)
                                                                                                                                                                                             {
                                                                                                                                                                                                § b§ = "exp";
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc2_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §8!X§ = "nrm";
                                                                                                                                                                                                         continue loop38;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr756:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §;!N§ = "add";
                                                                                                                                                                                                         §§goto(addr751);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                   addr297:
                                                                                                                                                                                                   if(!(_loc1_ || _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   D3 = "3d";
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §=!F§ = "cube";
                                                                                                                                                                                                      break loop91;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §>!w§ = "div";
                                                                                                                                                                                                   §§goto(addr734);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop7;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop13;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop43;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop49;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop1;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     while(_loc1_ || §[!D§)
                                                                                                                                                                     {
                                                                                                                                                                        § !X§ = "ft";
                                                                                                                                                                        continue loop39;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop4;
                                                                                                                                                                  addr380:
                                                                                                                                                                  if(_loc2_ && _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  §`E§ = "vt";
                                                                                                                                                                  loop70:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §]!4§ = "op";
                                                                                                                                                                     addr368:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        V = "v";
                                                                                                                                                                        addr363:
                                                                                                                                                                        addr225:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §#!q§ = "fc";
                                                                                                                                                                           §§goto(addr351);
                                                                                                                                                                        }
                                                                                                                                                                        while(!(_loc2_ && §[!D§))
                                                                                                                                                                        {
                                                                                                                                                                           addr232:
                                                                                                                                                                           if(!(_loc2_ && §[!D§))
                                                                                                                                                                           {
                                                                                                                                                                              §catch§ = "miplinear";
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc1_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc1_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop8;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr603);
                                                                                                                                                                                 }
                                                                                                                                                                                 break;
                                                                                                                                                                                 addr197:
                                                                                                                                                                                 while(!(_loc2_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §2`§ = "nomip";
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc1_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop70;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr309);
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                       addr41:
                                                                                                                                                                                       if(!(_loc2_ && _loc1_))
                                                                                                                                                                                       {
                                                                                                                                                                                          return;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr290);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr475);
                                                                                                                                                                              addr209:
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §[o§ = "vc";
                                                                                                                                                                                 addr378:
                                                                                                                                                                                 while(_loc1_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr380);
                                                                                                                                                                                    break loop91;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr232);
                                                                                                                                                                              }
                                                                                                                                                                              addr392:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr598);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop12;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                continue loop40;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §7"7§ = "mul";
                                                                                                                                                §§goto(addr741);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop16;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr67);
                                                                                                                                 }
                                                                                                                                 continue loop3;
                                                                                                                              }
                                                                                                                              §§goto(addr162);
                                                                                                                              §§goto(addr620);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc1_ || §[!D§)
                                                                                                                              {
                                                                                                                                 §§goto(addr251);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr378);
                                                                                                                              }
                                                                                                                              §§goto(addr60);
                                                                                                                           }
                                                                                                                           continue loop6;
                                                                                                                        }
                                                                                                                        §§goto(addr363);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§goto(addr225);
                                                                                                                  §§goto(addr368);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr197);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr141);
                                                                                                            if(!(_loc1_ || _loc2_))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            §§goto(addr41);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               §§goto(addr323);
                                                                                                            }
                                                                                                            break;
                                                                                                            §§goto(addr92);
                                                                                                         }
                                                                                                         §§goto(addr351);
                                                                                                      }
                                                                                                      §§goto(addr539);
                                                                                                   }
                                                                                                   §§goto(addr534);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr172);
                                                                                          }
                                                                                          §§goto(addr167);
                                                                                       }
                                                                                       while(!(_loc2_ && §[!D§))
                                                                                       {
                                                                                          §`!n§ = "rep";
                                                                                          §§goto(addr504);
                                                                                          §§goto(addr115);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §<C§ = "mov";
                                                                                          §§goto(addr756);
                                                                                          §§goto(addr515);
                                                                                       }
                                                                                       addr515:
                                                                                    }
                                                                                    continue loop11;
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
         §§goto(addr285);
      }
      
      private var § !u§:ByteArray = null;
      
      private var §4"7§:String = "";
      
      private var §>!I§:Boolean = false;
      
      public function §[!D§(param1:Boolean = false)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§>!I§ = param1;
               loop1:
               while(!initialized)
               {
                  if(_loc3_ || param1)
                  {
                     continue loop0;
                  }
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
               }
               return;
            }
         }
         while(true)
         {
            init();
            §§goto(addr53);
         }
      }
      
      private static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §[!D§))
         {
            initialized = true;
            loop0:
            while(true)
            {
               §-"-§[§<C§] = new OpCode(§<C§,2,0,0);
               loop1:
               while(true)
               {
                  §-"-§[§;!N§] = new OpCode(§;!N§,3,1,0);
                  loop2:
                  while(true)
                  {
                     §-"-§[§9?§] = new OpCode(§9?§,3,2,0);
                     loop3:
                     while(true)
                     {
                        §-"-§[§7"7§] = new OpCode(§7"7§,3,3,0);
                        loop4:
                        while(true)
                        {
                           §-"-§[§>!w§] = new OpCode(§>!w§,3,4,0);
                           loop5:
                           while(true)
                           {
                              §-"-§[§!G§] = new OpCode(§!G§,2,5,0);
                              loop6:
                              while(true)
                              {
                                 §-"-§[§=Y§] = new OpCode(§=Y§,3,6,0);
                                 loop7:
                                 while(true)
                                 {
                                    §-"-§[§9e§] = new OpCode(§9e§,3,7,0);
                                    loop8:
                                    while(true)
                                    {
                                       §-"-§[§^q§] = new OpCode(§^q§,2,8,0);
                                       while(true)
                                       {
                                          §-"-§[§]!T§] = new OpCode(§]!T§,2,9,0);
                                          addr1077:
                                          addr852:
                                          while(true)
                                          {
                                             §-"-§[§,"§] = new OpCode(§,"§,2,10,0);
                                             addr1066:
                                             while(true)
                                             {
                                                §-"-§[§<"$§] = new OpCode(§<"$§,3,11,0);
                                                continue loop0;
                                             }
                                          }
                                          loop28:
                                          while(!(_loc1_ && _loc2_))
                                          {
                                             §-"-§[§`F§] = new OpCode(§`F§,2,28,§]!c§ | §'!E§ | §`0§);
                                             loop29:
                                             while(true)
                                             {
                                                §-"-§[§<3§] = new OpCode(§<3§,2,29,§]!c§ | §'!E§ | §`0§);
                                                loop30:
                                                for(; _loc2_; if(_loc1_ && _loc1_)
                                                {
                                                   continue;
                                                },§[!6§[§ !X§] = new Register(§ !X§,"fragment temporary",2,7,§?!r§ | §3"?§ | §1!I§),§§goto(addr405))
                                                {
                                                   §-"-§[§%";§] = new OpCode(§%";§,2,30,§]!c§ | §'!E§ | §`0§);
                                                   loop31:
                                                   for(; _loc2_; if(!(_loc2_ || _loc2_))
                                                   {
                                                      continue;
                                                   },§[!6§[§#!q§] = new Register(§#!q§,"fragment constant",1,27,§?!r§ | §1!I§),§§goto(addr426))
                                                   {
                                                      §-"-§[§=[§] = new OpCode(§=[§,2,31,§]!c§ | §'!E§ | §`0§);
                                                      loop32:
                                                      while(true)
                                                      {
                                                         §-"-§[§1"#§] = new OpCode(§1"#§,2,32,§]!c§ | §'!E§ | §`0§);
                                                         addr766:
                                                         loop33:
                                                         while(!(_loc1_ && _loc2_))
                                                         {
                                                            §-"-§[§>9§] = new OpCode(§>9§,2,33,§]!c§ | §'!E§ | §`0§);
                                                            continue loop32;
                                                            loop63:
                                                            while(_loc2_ || _loc1_)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  if(!_loc1_)
                                                                  {
                                                                     §^Y§[§`!@§] = new Sampler(§`!@§,§9!r§,1 << 0);
                                                                     loop64:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc1_)
                                                                        {
                                                                           if(_loc1_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop5;
                                                                        }
                                                                        loop61:
                                                                        while(!_loc1_)
                                                                        {
                                                                           if(!_loc1_)
                                                                           {
                                                                              §^Y§[§>!3§] = new Sampler(§>!3§,§;!r§,0);
                                                                              loop62:
                                                                              while(_loc2_ || §[!D§)
                                                                              {
                                                                                 §^Y§[§!w§] = new Sampler(§!w§,§;!r§,1);
                                                                                 continue loop63;
                                                                                 addr59:
                                                                                 if(_loc1_ && _loc2_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       addr70:
                                                                                       if(_loc2_ || _loc1_)
                                                                                       {
                                                                                          return;
                                                                                          addr77:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §-"-§[M33] = new OpCode(M33,3,23,§'o§);
                                                                                             while(true)
                                                                                             {
                                                                                                §-"-§[M44] = new OpCode(M44,3,24,§'o§);
                                                                                                addr91:
                                                                                                if(_loc1_ && _loc1_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §^Y§[§;!-§] = new Sampler(§;!-§,§2P§,0);
                                                                                                addr98:
                                                                                                if(!(_loc1_ && _loc1_))
                                                                                                {
                                                                                                   addr45:
                                                                                                   if(!(_loc1_ && _loc1_))
                                                                                                   {
                                                                                                      addr52:
                                                                                                      if(_loc1_ && _loc2_)
                                                                                                      {
                                                                                                         loop66:
                                                                                                         for(; _loc2_ || _loc1_; §§goto(addr52))
                                                                                                         {
                                                                                                            if(_loc1_)
                                                                                                            {
                                                                                                               continue loop28;
                                                                                                            }
                                                                                                            §^Y§[§5v§] = new Sampler(§5v§,§2P§,1);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc1_ && _loc2_))
                                                                                                               {
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                     addr87:
                                                                                                                  }
                                                                                                                  §^Y§[§8t§] = new Sampler(§8t§,§2P§,1);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        continue loop63;
                                                                                                                     }
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     §§goto(addr91);
                                                                                                                     §§goto(addr98);
                                                                                                                  }
                                                                                                                  loop56:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        while(!_loc1_)
                                                                                                                        {
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              §^Y§[§=!F§] = new Sampler(§=!F§,§,!J§,1);
                                                                                                                              continue loop56;
                                                                                                                           }
                                                                                                                           §§goto(addr700);
                                                                                                                        }
                                                                                                                        continue loop2;
                                                                                                                        addr327:
                                                                                                                     }
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        addr296:
                                                                                                                        if(_loc2_ || _loc2_)
                                                                                                                        {
                                                                                                                           addr303:
                                                                                                                           if(_loc2_ || §[!D§)
                                                                                                                           {
                                                                                                                              continue loop7;
                                                                                                                           }
                                                                                                                           addr663:
                                                                                                                           while(_loc2_)
                                                                                                                           {
                                                                                                                              §-"-§[§9A§] = new OpCode(§9A§,0,38,§]!c§);
                                                                                                                              loop39:
                                                                                                                              while(_loc2_)
                                                                                                                              {
                                                                                                                                 §-"-§[§=1§] = new OpCode(§=1§,1,39,§]!c§ | §!"F§);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc2_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(_loc2_)
                                                                                                                                       {
                                                                                                                                          §-"-§[§[!#§] = new OpCode(§[!#§,3,40,§!"F§ | §+!N§);
                                                                                                                                          break loop62;
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    continue loop39;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §-"-§[§#!C§] = new OpCode(§#!C§,2,21,0);
                                                                                                                                    break loop30;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop6;
                                                                                                                              §§goto(addr303);
                                                                                                                           }
                                                                                                                           continue loop0;
                                                                                                                        }
                                                                                                                        addr426:
                                                                                                                        addr536:
                                                                                                                        loop50:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc1_ && §[!D§))
                                                                                                                           {
                                                                                                                              addr433:
                                                                                                                              if(!(_loc1_ && §[!D§))
                                                                                                                              {
                                                                                                                                 continue loop30;
                                                                                                                              }
                                                                                                                              addr488:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §[!6§[V] = new Register(V,"varying",4,7,§]!0§ | §?!r§ | §1!I§ | §3"?§);
                                                                                                                                 break loop50;
                                                                                                                                 §§goto(addr433);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           break;
                                                                                                                           §§goto(addr296);
                                                                                                                        }
                                                                                                                        while(!_loc1_)
                                                                                                                        {
                                                                                                                           continue loop31;
                                                                                                                           §§goto(addr426);
                                                                                                                        }
                                                                                                                        addr426:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §[!6§[§[o§] = new Register(§[o§,"vertex constant",1,127,§]!0§ | §1!I§);
                                                                                                                           addr518:
                                                                                                                           loop46:
                                                                                                                           while(_loc2_)
                                                                                                                           {
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 §[!6§[§`E§] = new Register(§`E§,"vertex temporary",2,7,§]!0§ | §3"?§ | §1!I§);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §[!6§[§]!4§] = new Register(§]!4§,"vertex output",3,0,§]!0§ | §3"?§);
                                                                                                                                    §§goto(addr488);
                                                                                                                                    break loop66;
                                                                                                                                 }
                                                                                                                                 addr504:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §-"-§[§8!X§] = new OpCode(§8!X§,2,14,0);
                                                                                                                                    break loop46;
                                                                                                                                 }
                                                                                                                                 addr1026:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §-"-§[§3Q§] = new OpCode(§3Q§,2,15,0);
                                                                                                                              addr1004:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §-"-§[§#"A§] = new OpCode(§#"A§,2,16,0);
                                                                                                                                 addr993:
                                                                                                                                 addr737:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §-"-§[§7!J§] = new OpCode(§7!J§,3,17,0);
                                                                                                                                    addr980:
                                                                                                                                    while(!_loc1_)
                                                                                                                                    {
                                                                                                                                       §-"-§[DP3] = new OpCode(DP3,3,18,0);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §-"-§[DP4] = new OpCode(DP4,3,19,0);
                                                                                                                                          break loop33;
                                                                                                                                          addr595:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc1_ && §[!D§))
                                                                                                                                             {
                                                                                                                                                §-"-§[§0"H§] = new OpCode(§0"H§,3,42,0);
                                                                                                                                                break loop61;
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                             addr159:
                                                                                                                                             if(!(_loc1_ && §[!D§))
                                                                                                                                             {
                                                                                                                                                §^Y§[§`%§] = new Sampler(§`%§,§9!r§,1 << 2);
                                                                                                                                                continue loop66;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       break loop61;
                                                                                                                                    }
                                                                                                                                    continue loop4;
                                                                                                                                 }
                                                                                                                                 if(!(_loc2_ || _loc1_))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 addr744:
                                                                                                                                 if(!(_loc1_ && §[!D§))
                                                                                                                                 {
                                                                                                                                    §-"-§[§,[§] = new OpCode(§,[§,0,34,§]!c§ | §'!E§ | §?!b§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §-"-§[§%"%§] = new OpCode(§%"%§,0,35,§]!c§ | §?!b§);
                                                                                                                                       addr700:
                                                                                                                                       addr405:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §-"-§[§`!n§] = new OpCode(§`!n§,1,36,§]!c§ | §'!E§ | §`0§);
                                                                                                                                          continue loop2;
                                                                                                                                       }
                                                                                                                                       while(!(_loc1_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §[!6§[§2!K§] = new Register(§2!K§,"texture sampler",5,7,§?!r§ | §1!I§);
                                                                                                                                          while(!_loc1_)
                                                                                                                                          {
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                §[!6§[§9!m§] = new Register(§9!m§,"fragment output",3,0,§?!r§ | §3"?§);
                                                                                                                                                while(!_loc1_)
                                                                                                                                                {
                                                                                                                                                   §^Y§[D2] = new Sampler(D2,§,!J§,0);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc2_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         continue loop29;
                                                                                                                                                      }
                                                                                                                                                      continue loop32;
                                                                                                                                                   }
                                                                                                                                                   continue loop29;
                                                                                                                                                }
                                                                                                                                                continue loop1;
                                                                                                                                                addr369:
                                                                                                                                             }
                                                                                                                                             continue loop3;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §-"-§[M34] = new OpCode(M34,3,25,§'o§);
                                                                                                                                             addr892:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §-"-§[§2D§] = new OpCode(§2D§,1,26,§]!c§ | §'!E§ | §`0§);
                                                                                                                                                continue loop8;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §-"-§[§ b§] = new OpCode(§ b§,2,13,0);
                                                                                                                                       §§goto(addr1026);
                                                                                                                                       §§goto(addr744);
                                                                                                                                    }
                                                                                                                                    addr1037:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr369);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop7;
                                                                                                               }
                                                                                                               continue loop64;
                                                                                                               §§goto(addr45);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §^Y§[§0"=§] = new Sampler(§0"=§,§6I§,0);
                                                                                                               break loop66;
                                                                                                            }
                                                                                                         }
                                                                                                         while(_loc2_ || _loc1_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §^Y§[§2`§] = new Sampler(§2`§,§6I§,0);
                                                                                                               continue loop61;
                                                                                                            }
                                                                                                            §§goto(addr77);
                                                                                                            §§goto(addr129);
                                                                                                         }
                                                                                                         addr129:
                                                                                                         §§goto(addr504);
                                                                                                      }
                                                                                                      §§goto(addr59);
                                                                                                   }
                                                                                                   §§goto(addr108);
                                                                                                }
                                                                                                §§goto(addr87);
                                                                                             }
                                                                                             §§goto(addr70);
                                                                                          }
                                                                                          addr925:
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr385);
                                                                                    }
                                                                                    §§goto(addr903);
                                                                                 }
                                                                                 §§goto(addr341);
                                                                              }
                                                                              addr220:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr628);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §-"-§[§,q§] = new OpCode(§,q§,3,41,0);
                                                                              §§goto(addr595);
                                                                              §§goto(addr220);
                                                                           }
                                                                        }
                                                                        while(!(_loc1_ && §[!D§))
                                                                        {
                                                                           if(!_loc1_)
                                                                           {
                                                                              §-"-§[§<!T§] = new OpCode(§<!T§,2,43,0);
                                                                              addr547:
                                                                              while(!(_loc1_ && _loc2_))
                                                                              {
                                                                                 §[!6§[§%"§] = new Register(§%"§,"vertex attribute",0,7,§]!0§ | §1!I§);
                                                                                 §§goto(addr536);
                                                                              }
                                                                              continue loop8;
                                                                              addr547:
                                                                           }
                                                                           §§goto(addr1066);
                                                                        }
                                                                        §§goto(addr980);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              §^Y§[§catch§] = new Sampler(§catch§,§6I§,2);
                                                                              §§goto(addr268);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr405);
                                                                     }
                                                                     §§goto(addr518);
                                                                     addr278:
                                                                  }
                                                                  §§goto(addr993);
                                                               }
                                                               §§goto(addr892);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §-"-§[§ +§] = new OpCode(§ +§,2,20,0);
                                                            §§goto(addr947);
                                                            §§goto(addr766);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr1077);
                                                }
                                                while(true)
                                                {
                                                   §-"-§[§`!w§] = new OpCode(§`!w§,2,22,0);
                                                   §§goto(addr925);
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
         §§goto(addr258);
      }
      
      public function get error() : String
      {
         return this.§4"7§;
      }
      
      public function get §4R§() : ByteArray
      {
         return this.§ !u§;
      }
      
      public function §>!q§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
