package §_-Cm§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §_-T5§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §_-VV§:Dictionary = new Dictionary();
      
      private static const §_-Sq§:Dictionary;
      
      private static const §_-Ev§:Dictionary;
      
      private static const § try§:int = 4;
      
      private static const §_-io§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §_-fW§:uint = 12;
      
      private static const §_-4l§:uint = 16;
      
      private static const §_-g7§:uint = 20;
      
      private static const §_-mR§:uint = 24;
      
      private static const §_-43§:uint = 28;
      
      private static const §_-yr§:uint = 1;
      
      private static const §_-yI§:uint = 2;
      
      private static const §_-yz§:uint = 32;
      
      private static const §_-cc§:uint = 64;
      
      private static const §_-RN§:uint = 1;
      
      private static const §for§:uint = 2;
      
      private static const §_-xp§:uint = 4;
      
      private static const §_-kJ§:uint = 8;
      
      private static const §_-s1§:uint = 16;
      
      private static const §_-EM§:uint = 32;
      
      private static const §_-pK§:uint = 64;
      
      private static const §_-r6§:uint = 128;
      
      private static const §_-AO§:String = "mov";
      
      private static const §_-6e§:String = "add";
      
      private static const §_-Vt§:String = "sub";
      
      private static const §_-Ch§:String = "mul";
      
      private static const §_-94§:String = "div";
      
      private static const §_-Ol§:String = "rcp";
      
      private static const §_-1x§:String = "min";
      
      private static const §_-Jn§:String = "max";
      
      private static const §_-4H§:String = "frc";
      
      private static const §_-Hf§:String = "sqt";
      
      private static const §_-KP§:String = "rsq";
      
      private static const §_-hN§:String = "pow";
      
      private static const §_-6J§:String = "log";
      
      private static const §_-Tv§:String = "exp";
      
      private static const §_-Ad§:String = "nrm";
      
      private static const §_-I2§:String = "sin";
      
      private static const §_-ul§:String = "cos";
      
      private static const §_-pI§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §_-Gw§:String = "abs";
      
      private static const §_-zb§:String = "neg";
      
      private static const §_-ce§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §_-Oc§:String = "ifz";
      
      private static const §_-b3§:String = "inz";
      
      private static const §_-XU§:String = "ife";
      
      private static const §_-qH§:String = "ine";
      
      private static const §_-fY§:String = "ifg";
      
      private static const §_-P7§:String = "ifl";
      
      private static const §_-3I§:String = "ieg";
      
      private static const §_-km§:String = "iel";
      
      private static const §_-i4§:String = "els";
      
      private static const §_-sH§:String = "eif";
      
      private static const §_-bq§:String = "rep";
      
      private static const §_-Mh§:String = "erp";
      
      private static const §_-hL§:String = "brk";
      
      private static const §_-1r§:String = "kil";
      
      private static const §_-lB§:String = "tex";
      
      private static const §_-W§:String = "sge";
      
      private static const §with§:String = "slt";
      
      private static const §_-No§:String = "sgn";
      
      private static const §_-SM§:String = "va";
      
      private static const §_-pe§:String = "vc";
      
      private static const §import§:String = "vt";
      
      private static const §_-fP§:String = "op";
      
      private static const §_-ph§:String = "v";
      
      private static const §_-Ik§:String = "fc";
      
      private static const §_-p6§:String = "ft";
      
      private static const §_-kG§:String = "fs";
      
      private static const §_-nm§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §_-fL§:String = "cube";
      
      private static const §_-of§:String = "mipnearest";
      
      private static const §_-qf§:String = "miplinear";
      
      private static const §_-gU§:String = "mipnone";
      
      private static const §_-y0§:String = "nomip";
      
      private static const §_-mU§:String = "nearest";
      
      private static const §_-yD§:String = "linear";
      
      private static const §_-5k§:String = "centroid";
      
      private static const §_-hc§:String = "single";
      
      private static const §_-UD§:String = "depth";
      
      private static const §_-RV§:String = "repeat";
      
      private static const §_-Dm§:String = "wrap";
      
      private static const §_-b1§:String = "clamp";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §_-Sq§ = new Dictionary();
            §_-Ev§ = new Dictionary();
            § try§ = 4;
            §_-io§ = 256;
            FRAGMENT = "fragment";
            VERTEX = "vertex";
            §_-fW§ = 12;
            §_-4l§ = 16;
            §_-g7§ = 20;
            §_-mR§ = 24;
            §_-43§ = 28;
            §_-yr§ = 1;
            §_-yI§ = 2;
            §_-yz§ = 32;
            if(_loc2_)
            {
               §_-cc§ = 64;
               if(_loc2_)
               {
                  §_-RN§ = 1;
                  §for§ = 2;
                  if(!_loc1_)
                  {
                     §_-xp§ = 4;
                     §_-kJ§ = 8;
                     §_-s1§ = 16;
                     if(!_loc1_)
                     {
                        §_-EM§ = 32;
                        if(_loc2_)
                        {
                           §_-pK§ = 64;
                           if(!(_loc1_ && _loc2_))
                           {
                              §_-r6§ = 128;
                              §_-AO§ = "mov";
                              if(_loc2_ || _loc1_)
                              {
                                 §_-6e§ = "add";
                                 if(_loc2_ || _loc1_)
                                 {
                                    §_-Vt§ = "sub";
                                    §_-Ch§ = "mul";
                                    if(_loc2_ || _loc1_)
                                    {
                                       §_-94§ = "div";
                                       §_-Ol§ = "rcp";
                                       if(!_loc1_)
                                       {
                                          §_-1x§ = "min";
                                          if(!(_loc1_ && §_-T5§))
                                          {
                                             §_-Jn§ = "max";
                                             if(_loc2_ || _loc2_)
                                             {
                                                §_-4H§ = "frc";
                                                §_-Hf§ = "sqt";
                                                §_-KP§ = "rsq";
                                                if(!(_loc1_ && _loc1_))
                                                {
                                                   §_-hN§ = "pow";
                                                   if(!_loc1_)
                                                   {
                                                      §_-6J§ = "log";
                                                      if(!_loc1_)
                                                      {
                                                         §_-Tv§ = "exp";
                                                         §_-Ad§ = "nrm";
                                                         §_-I2§ = "sin";
                                                         if(_loc2_)
                                                         {
                                                            §_-ul§ = "cos";
                                                            §_-pI§ = "crs";
                                                            if(_loc2_)
                                                            {
                                                               DP3 = "dp3";
                                                               if(_loc2_ || _loc1_)
                                                               {
                                                                  DP4 = "dp4";
                                                                  if(_loc2_)
                                                                  {
                                                                     §_-Gw§ = "abs";
                                                                     §_-zb§ = "neg";
                                                                     if(!_loc1_)
                                                                     {
                                                                        §_-ce§ = "sat";
                                                                        M33 = "m33";
                                                                        §§goto(addr258);
                                                                     }
                                                                     §§goto(addr263);
                                                                  }
                                                                  §§goto(addr427);
                                                               }
                                                               §§goto(addr459);
                                                            }
                                                            §§goto(addr383);
                                                         }
                                                         §§goto(addr465);
                                                      }
                                                      §§goto(addr325);
                                                   }
                                                   §§goto(addr364);
                                                }
                                                §§goto(addr289);
                                             }
                                             §§goto(addr419);
                                          }
                                          §§goto(addr325);
                                       }
                                       §§goto(addr289);
                                    }
                                    §§goto(addr477);
                                 }
                                 §§goto(addr289);
                              }
                              addr258:
                              M44 = "m44";
                              if(!_loc1_)
                              {
                                 addr263:
                                 M34 = "m34";
                                 if(!(_loc1_ && §_-T5§))
                                 {
                                    §_-Oc§ = "ifz";
                                    §_-b3§ = "inz";
                                    §_-XU§ = "ife";
                                    if(!(_loc1_ && _loc1_))
                                    {
                                       addr289:
                                       §_-qH§ = "ine";
                                       §_-fY§ = "ifg";
                                       if(_loc2_ || §_-T5§)
                                       {
                                          §_-P7§ = "ifl";
                                          if(!(_loc1_ && §_-T5§))
                                          {
                                             §_-3I§ = "ieg";
                                             §_-km§ = "iel";
                                             if(!(_loc1_ && §_-T5§))
                                             {
                                                addr325:
                                                §_-i4§ = "els";
                                                §_-sH§ = "eif";
                                                if(!_loc1_)
                                                {
                                                   §_-bq§ = "rep";
                                                   if(_loc2_)
                                                   {
                                                      addr338:
                                                      §_-Mh§ = "erp";
                                                      if(!(_loc1_ && _loc2_))
                                                      {
                                                         §_-hL§ = "brk";
                                                         if(_loc1_)
                                                         {
                                                         }
                                                         §§goto(addr465);
                                                      }
                                                      §_-1r§ = "kil";
                                                      if(_loc2_)
                                                      {
                                                         addr358:
                                                         §_-lB§ = "tex";
                                                         §_-W§ = "sge";
                                                         addr364:
                                                         §with§ = "slt";
                                                         §_-No§ = "sgn";
                                                         if(_loc2_)
                                                         {
                                                            §_-SM§ = "va";
                                                            §§goto(addr375);
                                                         }
                                                         §§goto(addr383);
                                                      }
                                                      §§goto(addr444);
                                                   }
                                                   §§goto(addr386);
                                                }
                                             }
                                             §§goto(addr383);
                                          }
                                          §§goto(addr427);
                                       }
                                       §§goto(addr358);
                                    }
                                    §§goto(addr477);
                                 }
                                 §§goto(addr338);
                              }
                              addr375:
                              §_-pe§ = "vc";
                              §import§ = "vt";
                              if(!_loc1_)
                              {
                                 addr383:
                                 §_-fP§ = "op";
                                 addr386:
                                 §_-ph§ = "v";
                                 if(!(_loc1_ && §_-T5§))
                                 {
                                    §_-Ik§ = "fc";
                                 }
                                 §§goto(addr436);
                              }
                              §_-p6§ = "ft";
                              if(_loc2_ || _loc2_)
                              {
                                 addr409:
                                 §_-kG§ = "fs";
                                 if(_loc2_)
                                 {
                                    §_-nm§ = "oc";
                                    if(!_loc1_)
                                    {
                                       addr419:
                                       D2 = "2d";
                                       D3 = "3d";
                                       if(_loc2_)
                                       {
                                          addr427:
                                          §_-fL§ = "cube";
                                          §§goto(addr430);
                                       }
                                       §§goto(addr477);
                                    }
                                    §§goto(addr480);
                                 }
                                 §§goto(addr477);
                              }
                              addr430:
                              §_-of§ = "mipnearest";
                              §_-qf§ = "miplinear";
                              addr436:
                              §_-gU§ = "mipnone";
                              §_-y0§ = "nomip";
                              if(_loc2_)
                              {
                                 addr444:
                                 §_-mU§ = "nearest";
                                 if(!_loc1_)
                                 {
                                    §_-yD§ = "linear";
                                    if(_loc2_ || _loc1_)
                                    {
                                       addr459:
                                       §_-5k§ = "centroid";
                                       §_-hc§ = "single";
                                       addr465:
                                       §_-UD§ = "depth";
                                       if(!_loc1_)
                                       {
                                          addr477:
                                          §_-RV§ = "repeat";
                                          addr480:
                                          §_-Dm§ = "wrap";
                                       }
                                    }
                                    §§goto(addr483);
                                 }
                                 §§goto(addr459);
                              }
                              addr483:
                              §_-b1§ = "clamp";
                              return;
                           }
                           §§goto(addr358);
                        }
                        §§goto(addr383);
                     }
                     §§goto(addr358);
                  }
                  §§goto(addr477);
               }
               §§goto(addr358);
            }
            §§goto(addr427);
         }
         §§goto(addr409);
      }
      
      private var §_-fH§:ByteArray = null;
      
      private var §_-c8§:String = "";
      
      private var §_-es§:Boolean = false;
      
      public function §_-T5§(param1:Boolean = false)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super();
            if(_loc2_ || _loc2_)
            {
               this.§_-es§ = param1;
               if(!_loc3_)
               {
                  addr41:
                  if(!initialized)
                  {
                     if(!(_loc3_ && param1))
                     {
                        init();
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr41);
      }
      
      private static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         initialized = true;
         §_-VV§[§_-AO§] = new OpCode(§_-AO§,2,0,0);
         if(!_loc2_)
         {
            §_-VV§[§_-6e§] = new OpCode(§_-6e§,3,1,0);
            §_-VV§[§_-Vt§] = new OpCode(§_-Vt§,3,2,0);
            §_-VV§[§_-Ch§] = new OpCode(§_-Ch§,3,3,0);
            if(!_loc2_)
            {
               §_-VV§[§_-94§] = new OpCode(§_-94§,3,4,0);
               §_-VV§[§_-Ol§] = new OpCode(§_-Ol§,2,5,0);
               §_-VV§[§_-1x§] = new OpCode(§_-1x§,3,6,0);
               §_-VV§[§_-Jn§] = new OpCode(§_-Jn§,3,7,0);
               if(!_loc2_)
               {
                  §_-VV§[§_-4H§] = new OpCode(§_-4H§,2,8,0);
                  if(!(_loc2_ && _loc2_))
                  {
                     §_-VV§[§_-Hf§] = new OpCode(§_-Hf§,2,9,0);
                     §_-VV§[§_-KP§] = new OpCode(§_-KP§,2,10,0);
                     §_-VV§[§_-hN§] = new OpCode(§_-hN§,3,11,0);
                     if(!(_loc2_ && _loc2_))
                     {
                        §_-VV§[§_-6J§] = new OpCode(§_-6J§,2,12,0);
                        §_-VV§[§_-Tv§] = new OpCode(§_-Tv§,2,13,0);
                        §_-VV§[§_-Ad§] = new OpCode(§_-Ad§,2,14,0);
                        addr171:
                        §_-VV§[§_-I2§] = new OpCode(§_-I2§,2,15,0);
                        if(!_loc2_)
                        {
                           §_-VV§[§_-ul§] = new OpCode(§_-ul§,2,16,0);
                           if(_loc1_ || §_-T5§)
                           {
                              §_-VV§[§_-pI§] = new OpCode(§_-pI§,3,17,0);
                              §_-VV§[DP3] = new OpCode(DP3,3,18,0);
                              §_-VV§[DP4] = new OpCode(DP4,3,19,0);
                              §_-VV§[§_-Gw§] = new OpCode(§_-Gw§,2,20,0);
                              if(_loc1_ || _loc2_)
                              {
                                 §_-VV§[§_-zb§] = new OpCode(§_-zb§,2,21,0);
                                 §_-VV§[§_-ce§] = new OpCode(§_-ce§,2,22,0);
                                 §_-VV§[M33] = new OpCode(M33,3,23,§_-s1§);
                                 if(!(_loc2_ && §_-T5§))
                                 {
                                    §_-VV§[M44] = new OpCode(M44,3,24,§_-s1§);
                                    addr284:
                                    §_-VV§[M34] = new OpCode(M34,3,25,§_-s1§);
                                    §_-VV§[§_-Oc§] = new OpCode(§_-Oc§,1,26,§_-r6§ | §for§ | §_-RN§);
                                    if(!_loc2_)
                                    {
                                       §_-VV§[§_-b3§] = new OpCode(§_-b3§,1,27,§_-r6§ | §for§ | §_-RN§);
                                       §_-VV§[§_-XU§] = new OpCode(§_-XU§,2,28,§_-r6§ | §for§ | §_-RN§);
                                       §_-VV§[§_-qH§] = new OpCode(§_-qH§,2,29,§_-r6§ | §for§ | §_-RN§);
                                       addr347:
                                       §_-VV§[§_-fY§] = new OpCode(§_-fY§,2,30,§_-r6§ | §for§ | §_-RN§);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §_-VV§[§_-P7§] = new OpCode(§_-P7§,2,31,§_-r6§ | §for§ | §_-RN§);
                                          §_-VV§[§_-3I§] = new OpCode(§_-3I§,2,32,§_-r6§ | §for§ | §_-RN§);
                                          if(_loc1_)
                                          {
                                             §_-VV§[§_-km§] = new OpCode(§_-km§,2,33,§_-r6§ | §for§ | §_-RN§);
                                             addr415:
                                             §_-VV§[§_-i4§] = new OpCode(§_-i4§,0,34,§_-r6§ | §for§ | §_-xp§);
                                             §_-VV§[§_-sH§] = new OpCode(§_-sH§,0,35,§_-r6§ | §_-xp§);
                                             if(!_loc2_)
                                             {
                                                §_-VV§[§_-bq§] = new OpCode(§_-bq§,1,36,§_-r6§ | §for§ | §_-RN§);
                                                if(!(_loc2_ && §_-T5§))
                                                {
                                                   §_-VV§[§_-Mh§] = new OpCode(§_-Mh§,0,37,§_-r6§ | §_-xp§);
                                                   if(!(_loc2_ && §_-T5§))
                                                   {
                                                      §_-VV§[§_-hL§] = new OpCode(§_-hL§,0,38,§_-r6§);
                                                      §_-VV§[§_-1r§] = new OpCode(§_-1r§,1,39,§_-r6§ | §_-EM§);
                                                      §_-VV§[§_-lB§] = new OpCode(§_-lB§,3,40,§_-EM§ | §_-kJ§);
                                                      if(!_loc2_)
                                                      {
                                                         §_-VV§[§_-W§] = new OpCode(§_-W§,3,41,0);
                                                         §_-VV§[§with§] = new OpCode(§with§,3,42,0);
                                                         §_-VV§[§_-No§] = new OpCode(§_-No§,2,43,0);
                                                         if(_loc1_)
                                                         {
                                                            §_-Sq§[§_-SM§] = new Register(§_-SM§,"vertex attribute",0,7,§_-cc§ | §_-yI§);
                                                            §_-Sq§[§_-pe§] = new Register(§_-pe§,"vertex constant",1,127,§_-cc§ | §_-yI§);
                                                            addr565:
                                                            §_-Sq§[§import§] = new Register(§import§,"vertex temporary",2,7,§_-cc§ | §_-yr§ | §_-yI§);
                                                            if(!(_loc2_ && _loc1_))
                                                            {
                                                               §_-Sq§[§_-fP§] = new Register(§_-fP§,"vertex output",3,0,§_-cc§ | §_-yr§);
                                                               §_-Sq§[§_-ph§] = new Register(§_-ph§,"varying",4,7,§_-cc§ | §_-yz§ | §_-yI§ | §_-yr§);
                                                               if(!_loc2_)
                                                               {
                                                                  §_-Sq§[§_-Ik§] = new Register(§_-Ik§,"fragment constant",1,27,§_-yz§ | §_-yI§);
                                                                  §_-Sq§[§_-p6§] = new Register(§_-p6§,"fragment temporary",2,7,§_-yz§ | §_-yr§ | §_-yI§);
                                                                  addr642:
                                                                  §_-Sq§[§_-kG§] = new Register(§_-kG§,"texture sampler",5,7,§_-yz§ | §_-yI§);
                                                                  if(!_loc2_)
                                                                  {
                                                                     §_-Sq§[§_-nm§] = new Register(§_-nm§,"fragment output",3,0,§_-yz§ | §_-yr§);
                                                                     §_-Ev§[D2] = new Sampler(D2,§_-fW§,0);
                                                                     §_-Ev§[D3] = new Sampler(D3,§_-fW§,2);
                                                                     if(!_loc2_)
                                                                     {
                                                                        addr686:
                                                                        §_-Ev§[§_-fL§] = new Sampler(§_-fL§,§_-fW§,1);
                                                                        addr694:
                                                                        §_-Ev§[§_-of§] = new Sampler(§_-of§,§_-mR§,1);
                                                                        addr702:
                                                                        §_-Ev§[§_-qf§] = new Sampler(§_-qf§,§_-mR§,2);
                                                                        §_-Ev§[§_-gU§] = new Sampler(§_-gU§,§_-mR§,0);
                                                                        §_-Ev§[§_-y0§] = new Sampler(§_-y0§,§_-mR§,0);
                                                                        §_-Ev§[§_-mU§] = new Sampler(§_-mU§,§_-43§,0);
                                                                        if(!_loc2_)
                                                                        {
                                                                           addr736:
                                                                           §_-Ev§[§_-yD§] = new Sampler(§_-yD§,§_-43§,1);
                                                                           if(!(_loc2_ && _loc2_))
                                                                           {
                                                                              addr751:
                                                                              §_-Ev§[§_-5k§] = new Sampler(§_-5k§,§_-4l§,1 << 0);
                                                                              if(_loc1_ || §_-T5§)
                                                                              {
                                                                                 §§goto(addr768);
                                                                              }
                                                                              §§goto(addr815);
                                                                           }
                                                                           §_-Ev§[§_-RV§] = new Sampler(§_-RV§,§_-g7§,1);
                                                                           §_-Ev§[§_-Dm§] = new Sampler(§_-Dm§,§_-g7§,1);
                                                                           §§goto(addr815);
                                                                        }
                                                                        §§goto(addr751);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr780);
                                                            }
                                                            §§goto(addr702);
                                                         }
                                                         §§goto(addr736);
                                                      }
                                                      addr768:
                                                      §_-Ev§[§_-hc§] = new Sampler(§_-hc§,§_-4l§,1 << 1);
                                                      if(_loc1_)
                                                      {
                                                         addr780:
                                                         §_-Ev§[§_-UD§] = new Sampler(§_-UD§,§_-4l§,1 << 2);
                                                         if(_loc2_)
                                                         {
                                                         }
                                                         addr815:
                                                         §_-Ev§[§_-b1§] = new Sampler(§_-b1§,§_-g7§,0);
                                                         §§goto(addr823);
                                                      }
                                                      addr823:
                                                      return;
                                                   }
                                                   §§goto(addr736);
                                                }
                                                §§goto(addr642);
                                             }
                                             §§goto(addr694);
                                             addr395:
                                          }
                                          §§goto(addr780);
                                       }
                                       §§goto(addr686);
                                    }
                                    §§goto(addr565);
                                 }
                                 §§goto(addr686);
                              }
                              §§goto(addr642);
                           }
                           §§goto(addr686);
                        }
                        §§goto(addr395);
                     }
                     §§goto(addr284);
                  }
                  §§goto(addr347);
               }
               §§goto(addr415);
            }
            §§goto(addr171);
         }
         §§goto(addr686);
      }
      
      public function get error() : String
      {
         return this.§_-c8§;
      }
      
      public function get §_-Ob§() : ByteArray
      {
         return this.§_-fH§;
      }
      
      public function §_-xm§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
