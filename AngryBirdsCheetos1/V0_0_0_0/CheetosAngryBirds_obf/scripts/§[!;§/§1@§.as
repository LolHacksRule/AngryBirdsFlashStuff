package §[!;§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §1@§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §-,§:Dictionary;
      
      private static const §7i§:Dictionary;
      
      private static const §"S§:Dictionary;
      
      private static const §92§:int = 4;
      
      private static const §-!0§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §[!Q§:uint = 12;
      
      private static const §7-§:uint = 16;
      
      private static const §&`§:uint = 20;
      
      private static const §2M§:uint = 24;
      
      private static const §8B§:uint = 28;
      
      private static const override:uint = 1;
      
      private static const §2!I§:uint = 2;
      
      private static const §-1§:uint = 32;
      
      private static const §=!7§:uint = 64;
      
      private static const §<V§:uint = 1;
      
      private static const §"t§:uint = 2;
      
      private static const §,&§:uint = 4;
      
      private static const § K§:uint = 8;
      
      private static const §#o§:uint = 16;
      
      private static const §'U§:uint = 32;
      
      private static const §<Y§:uint = 128;
      
      private static const §0F§:String = "mov";
      
      private static const §`l§:String = "add";
      
      private static const §`'§:String = "sub";
      
      private static const §'^§:String = "mul";
      
      private static const §8!>§:String = "div";
      
      private static const §@F§:String = "rcp";
      
      private static const §!!X§:String = "min";
      
      private static const §=!6§:String = "max";
      
      private static const §6C§:String = "frc";
      
      private static const §&!Z§:String = "sqt";
      
      private static const §<n§:String = "rsq";
      
      private static const § r§:String = "pow";
      
      private static const §1!4§:String = "log";
      
      private static const §@o§:String = "exp";
      
      private static const §?x§:String = "nrm";
      
      private static const §=^§:String = "sin";
      
      private static const §^A§:String = "cos";
      
      private static const §5e§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §6!+§:String = "abs";
      
      private static const §'i§:String = "neg";
      
      private static const §+T§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §3,§:String = "ifz";
      
      private static const §4T§:String = "inz";
      
      private static const §8^§:String = "ife";
      
      private static const §3=§:String = "ine";
      
      private static const §[h§:String = "ifg";
      
      private static const §9R§:String = "ifl";
      
      private static const §;! §:String = "ieg";
      
      private static const §^!F§:String = "iel";
      
      private static const §try§:String = "els";
      
      private static const §#!§:String = "eif";
      
      private static const §8t§:String = "rep";
      
      private static const §&Z§:String = "erp";
      
      private static const § i§:String = "brk";
      
      private static const §#g§:String = "kil";
      
      private static const §1S§:String = "tex";
      
      private static const §,!G§:String = "sge";
      
      private static const §9A§:String = "slt";
      
      private static const §;!N§:String = "sgn";
      
      private static const §-c§:String = "va";
      
      private static const §]K§:String = "vc";
      
      private static const §3!E§:String = "vt";
      
      private static const §`!9§:String = "op";
      
      private static const §^v§:String = "v";
      
      private static const § '§:String = "fc";
      
      private static const §2!Z§:String = "ft";
      
      private static const §`^§:String = "fs";
      
      private static const §,W§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §;3§:String = "cube";
      
      private static const §78§:String = "mipnearest";
      
      private static const §,1§:String = "miplinear";
      
      private static const §"!"§:String = "mipnone";
      
      private static const §#B§:String = "nomip";
      
      private static const §]%§:String = "nearest";
      
      private static const §?!O§:String = "linear";
      
      private static const §#p§:String = "centroid";
      
      private static const §9D§:String = "single";
      
      private static const §7!'§:String = "depth";
      
      private static const §`<§:String = "repeat";
      
      private static const § !1§:String = "wrap";
      
      private static const §!!R§:String = "clamp";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            initialized = false;
            loop0:
            while(true)
            {
               §-,§ = new Dictionary();
               loop1:
               while(true)
               {
                  §7i§ = new Dictionary();
                  loop2:
                  while(true)
                  {
                     §"S§ = new Dictionary();
                     loop3:
                     while(true)
                     {
                        §92§ = 4;
                        loop4:
                        while(true)
                        {
                           §-!0§ = 256;
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
                                    §[!Q§ = 12;
                                    loop8:
                                    while(true)
                                    {
                                       §7-§ = 16;
                                       loop9:
                                       while(true)
                                       {
                                          §&`§ = 20;
                                          loop10:
                                          while(true)
                                          {
                                             §2M§ = 24;
                                             loop11:
                                             while(true)
                                             {
                                                §8B§ = 28;
                                                loop12:
                                                while(true)
                                                {
                                                   override = 1;
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §2!I§ = 2;
                                                      while(true)
                                                      {
                                                         §-1§ = 32;
                                                         addr844:
                                                         addr776:
                                                         while(true)
                                                         {
                                                            §=!7§ = 64;
                                                            addr839:
                                                            while(true)
                                                            {
                                                               §<V§ = 1;
                                                               addr834:
                                                               while(true)
                                                               {
                                                                  §"t§ = 2;
                                                                  addr829:
                                                                  while(true)
                                                                  {
                                                                     §,&§ = 4;
                                                                     continue loop2;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         loop23:
                                                         for(; !(_loc2_ && _loc2_); while(!(_loc2_ && _loc1_))
                                                         {
                                                            §6C§ = "frc";
                                                            §§goto(addr713);
                                                            §§goto(addr75);
                                                         })
                                                         {
                                                            §0F§ = "mov";
                                                            loop24:
                                                            while(true)
                                                            {
                                                               §`l§ = "add";
                                                               loop25:
                                                               while(true)
                                                               {
                                                                  §`'§ = "sub";
                                                                  loop26:
                                                                  for(; !_loc2_; if(!(_loc1_ || _loc2_))
                                                                  {
                                                                     continue;
                                                                  },§]K§ = "vc",§§goto(addr404))
                                                                  {
                                                                     §'^§ = "mul";
                                                                     while(true)
                                                                     {
                                                                        §8!>§ = "div";
                                                                        addr747:
                                                                        while(_loc1_)
                                                                        {
                                                                           §@F§ = "rcp";
                                                                           continue loop13;
                                                                        }
                                                                        continue loop7;
                                                                        loop58:
                                                                        while(!(_loc2_ && _loc1_))
                                                                        {
                                                                           §#!§ = "eif";
                                                                           loop59:
                                                                           while(true)
                                                                           {
                                                                              if(_loc1_)
                                                                              {
                                                                                 addr505:
                                                                                 if(_loc2_ && _loc1_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §8t§ = "rep";
                                                                                 loop60:
                                                                                 for(; _loc1_ || _loc1_; while(true)
                                                                                 {
                                                                                    if(_loc1_ || _loc2_)
                                                                                    {
                                                                                       continue loop24;
                                                                                    }
                                                                                    continue loop60;
                                                                                    §§goto(addr270);
                                                                                 },continue loop24)
                                                                                 {
                                                                                    §&Z§ = "erp";
                                                                                    loop61:
                                                                                    while(true)
                                                                                    {
                                                                                       § i§ = "brk";
                                                                                       while(true)
                                                                                       {
                                                                                          §#g§ = "kil";
                                                                                          loop63:
                                                                                          while(true)
                                                                                          {
                                                                                             §1S§ = "tex";
                                                                                             while(true)
                                                                                             {
                                                                                                §,!G§ = "sge";
                                                                                                loop65:
                                                                                                while(true)
                                                                                                {
                                                                                                   §9A§ = "slt";
                                                                                                   loop66:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §;!N§ = "sgn";
                                                                                                      loop67:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc1_ || _loc1_)
                                                                                                         {
                                                                                                            addr449:
                                                                                                            if(_loc2_ && _loc2_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §-c§ = "va";
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc1_)
                                                                                                               {
                                                                                                                  addr413:
                                                                                                                  if(!(_loc1_ || _loc1_))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop26;
                                                                                                               }
                                                                                                               continue loop63;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               § r§ = "pow";
                                                                                                               break loop60;
                                                                                                               §§goto(addr413);
                                                                                                            }
                                                                                                            addr411:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            loop56:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §^!F§ = "iel";
                                                                                                               loop57:
                                                                                                               while(!_loc2_)
                                                                                                               {
                                                                                                                  §try§ = "els";
                                                                                                                  continue loop58;
                                                                                                                  loop88:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc1_ || §1@§)
                                                                                                                     {
                                                                                                                        addr115:
                                                                                                                        if(!(_loc1_ || _loc1_))
                                                                                                                        {
                                                                                                                           break;
                                                                                                                           addr685:
                                                                                                                        }
                                                                                                                        §`<§ = "repeat";
                                                                                                                        loop89:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc2_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(_loc1_)
                                                                                                                              {
                                                                                                                                 addr96:
                                                                                                                                 if(!(_loc1_ || §1@§))
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 § !1§ = "wrap";
                                                                                                                                 loop90:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc1_ || §1@§)
                                                                                                                                    {
                                                                                                                                       addr57:
                                                                                                                                       if(_loc1_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          if(_loc1_)
                                                                                                                                          {
                                                                                                                                             addr66:
                                                                                                                                             if(!(_loc2_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                if(!_loc2_)
                                                                                                                                                {
                                                                                                                                                   addr75:
                                                                                                                                                   if(_loc2_ && _loc1_)
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                continue loop58;
                                                                                                                                             }
                                                                                                                                             addr270:
                                                                                                                                             addr270:
                                                                                                                                             while(!(_loc2_ && §1@§))
                                                                                                                                             {
                                                                                                                                                §78§ = "mipnearest";
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc2_ && _loc1_))
                                                                                                                                                   {
                                                                                                                                                      continue loop8;
                                                                                                                                                   }
                                                                                                                                                   loop47:
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
                                                                                                                                                            if(!(_loc2_ && _loc1_))
                                                                                                                                                            {
                                                                                                                                                               if(!_loc1_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §3,§ = "ifz";
                                                                                                                                                               loop50:
                                                                                                                                                               while(!_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §4T§ = "inz";
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §8^§ = "ife";
                                                                                                                                                                     loop52:
                                                                                                                                                                     for(; _loc1_ || §1@§; while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc2_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop10;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop52;
                                                                                                                                                                        §§goto(addr136);
                                                                                                                                                                     },continue loop10)
                                                                                                                                                                     {
                                                                                                                                                                        §3=§ = "ine";
                                                                                                                                                                        while(!_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           §[h§ = "ifg";
                                                                                                                                                                           loop54:
                                                                                                                                                                           while(!(_loc2_ && _loc2_))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc1_)
                                                                                                                                                                              {
                                                                                                                                                                                 §9R§ = "ifl";
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §;! § = "ieg";
                                                                                                                                                                                    continue loop56;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr541:
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr834);
                                                                                                                                                                              }
                                                                                                                                                                              loop81:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc1_ || _loc1_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr239:
                                                                                                                                                                                    if(!(_loc2_ && _loc1_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §"!"§ = "mipnone";
                                                                                                                                                                                       loop82:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop49;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!_loc2_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc1_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!_loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §#B§ = "nomip";
                                                                                                                                                                                                   addr205:
                                                                                                                                                                                                   while(_loc1_ || _loc1_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §]%§ = "nearest";
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop82;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc2_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §?!O§ = "linear";
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §#p§ = "centroid";
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc1_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop67;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr301:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        D3 = "3d";
                                                                                                                                                                                                                        continue loop52;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop90;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop11;
                                                                                                                                                                                                                  addr162:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop12;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr730:
                                                                                                                                                                                                            addr404:
                                                                                                                                                                                                            while(_loc1_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §3!E§ = "vt";
                                                                                                                                                                                                               continue loop65;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §=!6§ = "max";
                                                                                                                                                                                                               break loop90;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr747);
                                                                                                                                                                                                         addr129:
                                                                                                                                                                                                         if(!(_loc2_ && §1@§))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr136:
                                                                                                                                                                                                            if(!(_loc2_ && _loc2_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr143:
                                                                                                                                                                                                               if(!(_loc2_ && §1@§))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr150:
                                                                                                                                                                                                                  if(!(_loc2_ && §1@§))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §7!'§ = "depth";
                                                                                                                                                                                                                     continue loop88;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop61;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr324:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop59;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr411);
                                                                                                                                                                                                                  §§goto(addr143);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop59;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop52;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop66;
                                                                                                                                                                                                      §§goto(addr57);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr308:
                                                                                                                                                                                                         if(!(_loc1_ || _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc1_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop4;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            D2 = "2d";
                                                                                                                                                                                                            §§goto(addr301);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §&!Z§ = "sqt";
                                                                                                                                                                                                               break loop67;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr713:
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(_loc1_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            DP4 = "dp4";
                                                                                                                                                                                                            break loop88;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr829);
                                                                                                                                                                                                         addr644:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr205);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr205:
                                                                                                                                                                                                   continue loop25;
                                                                                                                                                                                                   addr306:
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop3;
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §'i§ = "neg";
                                                                                                                                                                                                break loop54;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc2_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop65;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc2_ && §1@§)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §`^§ = "fs";
                                                                                                                                                                                                §§goto(addr324);
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §^A§ = "cos";
                                                                                                                                                                                                break loop81;
                                                                                                                                                                                                §§goto(addr340);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr338:
                                                                                                                                                                                             addr663:
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §?x§ = "nrm";
                                                                                                                                                                                          continue loop25;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr680:
                                                                                                                                                                                    }
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop54;
                                                                                                                                                                              }
                                                                                                                                                                              while(!_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 §5e§ = "crs";
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    DP3 = "dp3";
                                                                                                                                                                                    §§goto(addr644);
                                                                                                                                                                                    break loop54;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr239);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop2;
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc1_ || §1@§)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop0;
                                                                                                                                                                                 }
                                                                                                                                                                                 §+T§ = "sat";
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    M33 = "m33";
                                                                                                                                                                                    continue loop47;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr651);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr546);
                                                                                                                                                                           }
                                                                                                                                                                           addr546:
                                                                                                                                                                        }
                                                                                                                                                                        continue loop50;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop48;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr615);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr844);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop89;
                                                                                                                                                }
                                                                                                                                                continue loop8;
                                                                                                                                                §§goto(addr66);
                                                                                                                                             }
                                                                                                                                             continue loop60;
                                                                                                                                          }
                                                                                                                                          §§goto(addr232);
                                                                                                                                          §§goto(addr546);
                                                                                                                                       }
                                                                                                                                       §§goto(addr205);
                                                                                                                                    }
                                                                                                                                    §§goto(addr162);
                                                                                                                                 }
                                                                                                                                 continue loop23;
                                                                                                                              }
                                                                                                                              addr383:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §^v§ = "v";
                                                                                                                                 continue loop60;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr251);
                                                                                                                        }
                                                                                                                        while(_loc1_)
                                                                                                                        {
                                                                                                                           if(_loc1_)
                                                                                                                           {
                                                                                                                              §@o§ = "exp";
                                                                                                                              §§goto(addr680);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr839);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop6;
                                                                                                                     }
                                                                                                                     continue loop57;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §6!+§ = "abs";
                                                                                                                     §§goto(addr634);
                                                                                                                     §§goto(addr115);
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop5;
                                                                                                            }
                                                                                                            addr536:
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §<n§ = "rsq";
                                                                                                         §§goto(addr703);
                                                                                                         §§goto(addr449);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(_loc1_)
                                                                                 {
                                                                                    if(!_loc1_)
                                                                                    {
                                                                                       continue loop1;
                                                                                    }
                                                                                    §1!4§ = "log";
                                                                                    §§goto(addr685);
                                                                                    §§goto(addr491);
                                                                                 }
                                                                                 addr491:
                                                                                 continue loop13;
                                                                              }
                                                                              §§goto(addr541);
                                                                              §§goto(addr536);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §'U§ = 32;
                                                                              continue loop3;
                                                                              §§goto(addr505);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop9;
                                                               }
                                                               if(!(_loc1_ || _loc2_))
                                                               {
                                                                  continue;
                                                               }
                                                               § '§ = "fc";
                                                               §§goto(addr352);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             if(!(_loc1_ || _loc1_))
                                             {
                                                continue;
                                             }
                                             §;3§ = "cube";
                                             §§goto(addr270);
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
         §§goto(addr651);
      }
      
      private var §`G§:ByteArray = null;
      
      private var §]§:String = "";
      
      private var §>!,§:Boolean = false;
      
      public function §1@§(param1:Boolean = false)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            super();
            while(true)
            {
               this.§>!,§ = param1;
               addr58:
               if(_loc2_)
               {
                  continue;
               }
               §§goto(addr25);
            }
         }
         while(!initialized)
         {
            if(_loc3_ || _loc2_)
            {
               init();
            }
            if(_loc2_ && param1)
            {
               continue;
            }
            §§goto(addr58);
         }
         addr25:
      }
      
      private static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            initialized = true;
            loop0:
            while(true)
            {
               §-,§[§0F§] = new OpCode(§0F§,2,0,0);
               loop1:
               while(true)
               {
                  §-,§[§`l§] = new OpCode(§`l§,3,1,0);
                  while(true)
                  {
                     §-,§[§`'§] = new OpCode(§`'§,3,2,0);
                     loop3:
                     while(true)
                     {
                        §-,§[§'^§] = new OpCode(§'^§,3,3,0);
                        loop4:
                        while(true)
                        {
                           §-,§[§8!>§] = new OpCode(§8!>§,3,4,0);
                           while(true)
                           {
                              §-,§[§@F§] = new OpCode(§@F§,2,5,0);
                              loop6:
                              while(true)
                              {
                                 §-,§[§!!X§] = new OpCode(§!!X§,3,6,0);
                                 loop7:
                                 while(true)
                                 {
                                    §-,§[§=!6§] = new OpCode(§=!6§,3,7,0);
                                    while(true)
                                    {
                                       §-,§[§6C§] = new OpCode(§6C§,2,8,0);
                                       continue loop0;
                                       loop37:
                                       while(!(_loc2_ && _loc1_))
                                       {
                                          while(true)
                                          {
                                             §-,§[§&Z§] = new OpCode(§&Z§,0,37,§<Y§ | §,&§);
                                             addr644:
                                             loop39:
                                             for(; _loc1_ || _loc1_; while(true)
                                             {
                                                if(!(_loc1_ || _loc2_))
                                                {
                                                   continue loop39;
                                                }
                                                §§goto(addr624);
                                             },§§goto(addr864))
                                             {
                                                if(_loc2_ && _loc2_)
                                                {
                                                   continue loop6;
                                                }
                                                addr658:
                                                if(_loc1_ || _loc2_)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      §-,§[§ i§] = new OpCode(§ i§,0,38,§<Y§);
                                                      continue;
                                                   }
                                                   continue loop4;
                                                }
                                                loop19:
                                                while(true)
                                                {
                                                   §-,§[DP4] = new OpCode(DP4,3,19,0);
                                                   addr939:
                                                   while(!(_loc2_ && §1@§))
                                                   {
                                                      §-,§[§6!+§] = new OpCode(§6!+§,2,20,0);
                                                      continue loop1;
                                                   }
                                                   loop17:
                                                   while(true)
                                                   {
                                                      §-,§[§5e§] = new OpCode(§5e§,3,17,0);
                                                      loop18:
                                                      while(!_loc2_)
                                                      {
                                                         §-,§[DP3] = new OpCode(DP3,3,18,0);
                                                         continue loop19;
                                                         addr552:
                                                         if(_loc2_ && §1@§)
                                                         {
                                                            continue;
                                                         }
                                                         if(!_loc2_)
                                                         {
                                                            §-,§[§9A§] = new OpCode(§9A§,3,42,0);
                                                            loop44:
                                                            for(; _loc1_; if(!(_loc1_ || _loc1_))
                                                            {
                                                               continue;
                                                            },if(_loc1_)
                                                            {
                                                               §"S§[§#p§] = new Sampler(§#p§,§7-§,1 << 0);
                                                               §§goto(addr155);
                                                            },§§goto(addr992))
                                                            {
                                                               §-,§[§;!N§] = new OpCode(§;!N§,2,43,0);
                                                               loop45:
                                                               while(true)
                                                               {
                                                                  §7i§[§-c§] = new Register(§-c§,"vertex attribute",0,7,§=!7§ | §2!I§);
                                                                  loop46:
                                                                  while(!_loc2_)
                                                                  {
                                                                     addr489:
                                                                     if(_loc1_ || _loc2_)
                                                                     {
                                                                        §7i§[§]K§] = new Register(§]K§,"vertex constant",1,127,§=!7§ | §2!I§);
                                                                        loop47:
                                                                        while(true)
                                                                        {
                                                                           §7i§[§3!E§] = new Register(§3!E§,"vertex temporary",2,7,§=!7§ | override | §2!I§);
                                                                           loop48:
                                                                           while(_loc1_)
                                                                           {
                                                                              §7i§[§`!9§] = new Register(§`!9§,"vertex output",3,0,§=!7§ | override);
                                                                              loop49:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc2_ && _loc1_))
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 while(_loc1_ || _loc2_)
                                                                                 {
                                                                                    §-,§[§,!G§] = new OpCode(§,!G§,3,41,0);
                                                                                    break loop44;
                                                                                 }
                                                                                 loop34:
                                                                                 while(true)
                                                                                 {
                                                                                    §-,§[§try§] = new OpCode(§try§,0,34,§<Y§ | §"t§ | §,&§);
                                                                                    addr717:
                                                                                    while(_loc1_)
                                                                                    {
                                                                                       §-,§[§#!§] = new OpCode(§#!§,0,35,§<Y§ | §,&§);
                                                                                       break loop39;
                                                                                    }
                                                                                    loop31:
                                                                                    while(true)
                                                                                    {
                                                                                       §-,§[§9R§] = new OpCode(§9R§,2,31,§<Y§ | §"t§ | §<V§);
                                                                                       while(true)
                                                                                       {
                                                                                          §-,§[§;! §] = new OpCode(§;! §,2,32,§<Y§ | §"t§ | §<V§);
                                                                                          addr749:
                                                                                          while(true)
                                                                                          {
                                                                                             §-,§[§^!F§] = new OpCode(§^!F§,2,33,§<Y§ | §"t§ | §<V§);
                                                                                             continue loop34;
                                                                                          }
                                                                                          loop61:
                                                                                          for(; !(_loc2_ && §1@§); if(!(_loc1_ || _loc2_))
                                                                                          {
                                                                                             continue;
                                                                                          },if(!_loc2_)
                                                                                          {
                                                                                             §"S§[§ !1§] = new Sampler(§ !1§,§&`§,1);
                                                                                             §§goto(addr56);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr404);
                                                                                          })
                                                                                          {
                                                                                             §"S§[§]%§] = new Sampler(§]%§,§8B§,0);
                                                                                             loop62:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc1_)
                                                                                                {
                                                                                                   if(_loc1_)
                                                                                                   {
                                                                                                      §"S§[§?!O§] = new Sampler(§?!O§,§8B§,1);
                                                                                                      addr992:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            addr174:
                                                                                                            if(!(_loc2_ && _loc2_))
                                                                                                            {
                                                                                                               continue loop44;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §7i§[§`^§] = new Register(§`^§,"texture sampler",5,7,§-1§ | §2!I§);
                                                                                                               continue loop47;
                                                                                                               §§goto(addr174);
                                                                                                            }
                                                                                                            addr365:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §"S§[D2] = new Sampler(D2,§[!Q§,0);
                                                                                                               addr305:
                                                                                                               addr875:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc2_ && _loc1_))
                                                                                                                  {
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        §"S§[D3] = new Sampler(D3,§[!Q§,2);
                                                                                                                        break loop62;
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop47;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §-,§[M34] = new OpCode(M34,3,25,§#o§);
                                                                                                                  addr864:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §-,§[§3,§] = new OpCode(§3,§,1,26,§<Y§ | §"t§ | §<V§);
                                                                                                                     continue loop6;
                                                                                                                     addr624:
                                                                                                                     if(!(_loc1_ || _loc2_))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §-,§[§#g§] = new OpCode(§#g§,1,39,§<Y§ | §'U§);
                                                                                                                     while(_loc1_)
                                                                                                                     {
                                                                                                                        §-,§[§1S§] = new OpCode(§1S§,3,40,§'U§ | § K§);
                                                                                                                        continue loop34;
                                                                                                                        while(!(_loc2_ && §1@§))
                                                                                                                        {
                                                                                                                           §7i§[§2!Z§] = new Register(§2!Z§,"fragment temporary",2,7,§-1§ | override | §2!I§);
                                                                                                                           §§goto(addr365);
                                                                                                                           if(_loc1_ || §1@§)
                                                                                                                           {
                                                                                                                              continue loop49;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr717);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr328:
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §-,§[§^A§] = new OpCode(§^A§,2,16,0);
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                      addr172:
                                                                                                      addr992:
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                addr276:
                                                                                                while(_loc1_ || §1@§)
                                                                                                {
                                                                                                   §"S§[§78§] = new Sampler(§78§,§2M§,1);
                                                                                                   loop58:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §"S§[§,1§] = new Sampler(§,1§,§2M§,2);
                                                                                                      addr245:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc1_ || §1@§))
                                                                                                         {
                                                                                                            continue loop58;
                                                                                                         }
                                                                                                         if(_loc1_)
                                                                                                         {
                                                                                                            if(!_loc1_)
                                                                                                            {
                                                                                                               break;
                                                                                                               addr231:
                                                                                                            }
                                                                                                            §"S§[§"!"§] = new Sampler(§"!"§,§2M§,0);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc1_)
                                                                                                               {
                                                                                                                  if(!_loc1_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §"S§[§#B§] = new Sampler(§#B§,§2M§,0);
                                                                                                                  continue loop61;
                                                                                                               }
                                                                                                               continue loop45;
                                                                                                            }
                                                                                                            continue loop17;
                                                                                                         }
                                                                                                         §§goto(addr305);
                                                                                                      }
                                                                                                      continue loop48;
                                                                                                   }
                                                                                                }
                                                                                                loop29:
                                                                                                while(true)
                                                                                                {
                                                                                                   §-,§[§3=§] = new OpCode(§3=§,2,29,§<Y§ | §"t§ | §<V§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §-,§[§[h§] = new OpCode(§[h§,2,30,§<Y§ | §"t§ | §<V§);
                                                                                                      continue loop31;
                                                                                                      addr72:
                                                                                                      if(_loc2_ && §1@§)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §"S§[§!!R§] = new Sampler(§!!R§,§&`§,0);
                                                                                                      addr79:
                                                                                                      if(_loc2_ && _loc1_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc1_)
                                                                                                            {
                                                                                                               continue loop62;
                                                                                                            }
                                                                                                            §§goto(addr58);
                                                                                                            §§goto(addr79);
                                                                                                         }
                                                                                                         continue;
                                                                                                         addr56:
                                                                                                      }
                                                                                                      addr39:
                                                                                                      if(!(_loc2_ && §1@§))
                                                                                                      {
                                                                                                         return;
                                                                                                      }
                                                                                                      addr404:
                                                                                                      addr404:
                                                                                                      loop67:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               addr93:
                                                                                                               if(_loc1_ || _loc2_)
                                                                                                               {
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     continue loop61;
                                                                                                                  }
                                                                                                                  §§goto(addr172);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  addr155:
                                                                                                                  while(!(_loc2_ && _loc1_))
                                                                                                                  {
                                                                                                                     §"S§[§9D§] = new Sampler(§9D§,§7-§,1 << 1);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §"S§[§7!'§] = new Sampler(§7!'§,§7-§,1 << 2);
                                                                                                                        addr123:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc1_)
                                                                                                                           {
                                                                                                                              if(_loc1_)
                                                                                                                              {
                                                                                                                                 if(_loc2_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 if(!_loc2_)
                                                                                                                                 {
                                                                                                                                    §"S§[§`<§] = new Sampler(§`<§,§&`§,1);
                                                                                                                                    continue loop67;
                                                                                                                                 }
                                                                                                                                 loop11:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §-,§[§ r§] = new OpCode(§ r§,3,11,0);
                                                                                                                                    addr1052:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §-,§[§1!4§] = new OpCode(§1!4§,2,12,0);
                                                                                                                                       addr1025:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc1_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             addr1032:
                                                                                                                                             if(_loc2_ && _loc2_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             if(!_loc1_)
                                                                                                                                             {
                                                                                                                                                continue loop7;
                                                                                                                                             }
                                                                                                                                             §-,§[§@o§] = new OpCode(§@o§,2,13,0);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §-,§[§?x§] = new OpCode(§?x§,2,14,0);
                                                                                                                                                break loop18;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §-,§[§<n§] = new OpCode(§<n§,2,10,0);
                                                                                                                                                continue loop11;
                                                                                                                                             }
                                                                                                                                             addr1074:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop0;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr245);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr231);
                                                                                                                        }
                                                                                                                        continue loop37;
                                                                                                                     }
                                                                                                                     §§goto(addr93);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §-,§[§8^§] = new OpCode(§8^§,2,28,§<Y§ | §"t§ | §<V§);
                                                                                                                     continue loop29;
                                                                                                                     §§goto(addr155);
                                                                                                                  }
                                                                                                                  addr155:
                                                                                                                  addr824:
                                                                                                               }
                                                                                                               §§goto(addr305);
                                                                                                            }
                                                                                                            §§goto(addr143);
                                                                                                         }
                                                                                                         §§goto(addr123);
                                                                                                      }
                                                                                                      while(_loc1_)
                                                                                                      {
                                                                                                         §7i§[§ '§] = new Register(§ '§,"fragment constant",1,27,§-1§ | §2!I§);
                                                                                                      }
                                                                                                      §§goto(addr1014);
                                                                                                      §§goto(addr379);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(_loc1_)
                                                                                             {
                                                                                                §"S§[§;3§] = new Sampler(§;3§,§[!Q§,1);
                                                                                                §§goto(addr276);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §-,§[M44] = new OpCode(M44,3,24,§#o§);
                                                                                                §§goto(addr875);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr574:
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           continue loop46;
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §-,§[M33] = new OpCode(M33,3,23,§#o§);
                                                                        §§goto(addr886);
                                                                        §§goto(addr489);
                                                                     }
                                                                  }
                                                                  continue loop39;
                                                               }
                                                            }
                                                            while(_loc1_ || _loc2_)
                                                            {
                                                               addr538:
                                                               if(_loc1_ || _loc1_)
                                                               {
                                                                  addr545:
                                                                  if(!(_loc1_ || §1@§))
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  §§goto(addr552);
                                                               }
                                                               else
                                                               {
                                                                  while(_loc1_)
                                                                  {
                                                                     §-,§[§+T§] = new OpCode(§+T§,2,22,0);
                                                                     §§goto(addr538);
                                                                  }
                                                                  §§goto(addr1025);
                                                                  addr908:
                                                               }
                                                               §§goto(addr897);
                                                            }
                                                            §§goto(addr749);
                                                         }
                                                         §§goto(addr1052);
                                                      }
                                                      while(true)
                                                      {
                                                         §-,§[§=^§] = new OpCode(§=^§,2,15,0);
                                                         §§goto(addr992);
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §-,§[§8t§] = new OpCode(§8t§,1,36,§<Y§ | §"t§ | §<V§);
                                                continue loop37;
                                                §§goto(addr644);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              if(_loc2_ && §1@§)
                              {
                                 continue;
                              }
                              §-,§[§4T§] = new OpCode(§4T§,1,27,§<Y§ | §"t§ | §<V§);
                              §§goto(addr824);
                           }
                        }
                     }
                     if(!(_loc1_ || §1@§))
                     {
                        continue;
                     }
                     §7i§[§^v§] = new Register(§^v§,"varying",4,7,§=!7§ | §-1§ | §2!I§ | override);
                     §§goto(addr404);
                  }
               }
            }
         }
         §§goto(addr689);
      }
      
      public function get error() : String
      {
         return this.§]§;
      }
      
      public function get §[!5§() : ByteArray
      {
         return this.§`G§;
      }
      
      public function §'v§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
