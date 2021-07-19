package §-!<§
{
   import § N§.§1!A§;
   import § N§.DisplayObject;
   import § N§.Sprite;
   import §#e§.§'?§;
   import §#e§.§4^§;
   import §#e§.§@!+§;
   import §#e§.§`!9§;
   import §-!&§.§3!,§;
   import §8!B§.§#! §;
   import §8z§.Texture;
   import §9T§.§'!?§;
   import §9T§.§1r§;
   import §`K§.§^F§;
   
   public class §8R§
   {
      
      public static const §@2§:int = 0;
      
      public static const §`R§:int = 1;
      
      public static const §0f§:int = 2;
      
      public static const §!J§:int = 3;
      
      public static const PARTICLE_NAME_BIRD_TRAIL1:String = "Effect_Trail_Bird1";
      
      public static const PARTICLE_NAME_BIRD_TRAIL2:String = "Effect_Trail_Bird2";
      
      public static const PARTICLE_NAME_BIRD_TRAIL3:String = "Effect_Trail_Bird3";
      
      public static const §[!$§:String = "Effect_TrailBig_Bird";
      
      public static const §3G§:String = "Effect_Trail_Sparkle";
      
      public static const §'5§:String = "Effect_Floating_Score";
      
      public static const §<T§:String = "Effect_Floating_Text";
      
      public static const §=6§:String = "Effect_Explosion_Particle";
      
      public static const §1d§:String = "Effect_Explosion_Core";
      
      public static const §!H§:String = "Effect_Pig_Destruction";
      
      public static const §,!B§:String = "Effect_Pig_Destruction_Headshot";
      
      public static const §#'§:String = "Effect_Bird_Destruction";
      
      public static const §+`§:String = "Effect_Block_Destruction_Particles";
      
      public static const §-!'§:String = "Effect_Block_Destruction_Core";
      
      public static const §0k§:int = 0;
      
      public static const §"G§:int = 1;
      
      public static const §#§:int = 2;
      
      public static const §7$§:int = 3;
      
      public static const §2!§:int = 4;
      
      public static const §2!=§:int = 5;
      
      public static const §!!J§:int = 6;
      
      public static const §"!8§:int = 7;
      
      public static const §%3§:int = 8;
      
      public static const §@! §:int = 9;
      
      public static const §=!;§:int = 10;
      
      public static const §^!M§:int = 11;
      
      public static const §>5§:int = 12;
      
      public static const §2!!§:int = 13;
      
      public static const §>!#§:int = 14;
      
      public static const §6!P§:int = 15;
      
      public static const §"h§:int = 16;
      
      public static const §+0§:int = 17;
      
      public static const §-1§:int = 18;
      
      public static const §?J§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         do
         {
            §`R§ = 1;
         }
         while(!_loc1_);
         
         loop1:
         while(true)
         {
            §!J§ = 3;
            PARTICLE_NAME_BIRD_TRAIL1 = "Effect_Trail_Bird1";
            PARTICLE_NAME_BIRD_TRAIL2 = "Effect_Trail_Bird2";
            while(true)
            {
               PARTICLE_NAME_BIRD_TRAIL3 = "Effect_Trail_Bird3";
               while(true)
               {
                  §[!$§ = "Effect_TrailBig_Bird";
                  loop4:
                  while(true)
                  {
                     §3G§ = "Effect_Trail_Sparkle";
                     §'5§ = "Effect_Floating_Score";
                     addr239:
                     while(true)
                     {
                        §<T§ = "Effect_Floating_Text";
                        §=6§ = "Effect_Explosion_Particle";
                        continue loop4;
                     }
                  }
                  while(true)
                  {
                     §%3§ = 8;
                     if(_loc2_)
                     {
                        break;
                     }
                     if(_loc1_)
                     {
                        continue;
                     }
                     continue loop1;
                  }
               }
               §!H§ = "Effect_Pig_Destruction";
               §,!B§ = "Effect_Pig_Destruction_Headshot";
               if(!_loc1_)
               {
                  continue;
               }
               §#'§ = "Effect_Bird_Destruction";
               §+`§ = "Effect_Block_Destruction_Particles";
               §§goto(addr195);
            }
         }
      }
      
      public var §#!2§:int;
      
      public var §[!6§:int;
      
      public var §6f§:String;
      
      public var §5!N§:Number;
      
      public var §<Q§:Number;
      
      public var §%A§:Number;
      
      public var §5K§:Number;
      
      public var § !'§:Number = 0;
      
      public var §6-§:Number;
      
      public var §+t§:Number;
      
      public var §"!3§:String;
      
      public var §[K§:Number = -1;
      
      public var §^Q§:int;
      
      public var §]!B§:Number;
      
      public var §5G§:Number;
      
      private var §-8§:Sprite;
      
      private var §=f§:§'!?§;
      
      private var §%!+§:int;
      
      protected var §[!#§:int;
      
      protected var §5!C§:Boolean;
      
      private var §3!Q§:§4^§;
      
      private var §0M§:Boolean;
      
      private var §'_§:§@!+§;
      
      private var §2"§:§'?§;
      
      private var §'!0§:§3!,§;
      
      public function §8R§(param1:§@!+§, param2:§'?§, param3:String, param4:int, param5:int, param6:Number, param7:Number, param8:Number, param9:String, param10:int, param11:Number = 0, param12:Number = 0, param13:Number = 0, param14:Number = 0, param15:Number = 1, param16:int = -1, param17:Boolean = false)
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         if(!(_loc19_ && param2))
         {
            this.§-8§ = new Sprite();
         }
         super();
         loop0:
         while(true)
         {
            this.§'_§ = param1;
            this.§2"§ = param2;
            loop1:
            while(true)
            {
               this.§6f§ = param3;
               continue loop0;
               addr128:
               this.§<Q§ = param12;
               if(_loc18_)
               {
                  this.§ !'§ = param14;
                  loop12:
                  while(true)
                  {
                     if(!(_loc19_ && this))
                     {
                        this.§5K§ = param13;
                        addr99:
                        if(_loc18_)
                        {
                           this.createVisuals();
                           loop13:
                           while(_loc18_ || param3)
                           {
                              this.§%!8§();
                              while(true)
                              {
                                 if(_loc18_)
                                 {
                                    if(this.§#!2§ != §`R§)
                                    {
                                       break;
                                    }
                                    if(_loc18_)
                                    {
                                       if(_loc19_)
                                       {
                                          continue;
                                       }
                                       if(_loc19_)
                                       {
                                          continue loop13;
                                       }
                                       if(!(_loc18_ || param2))
                                       {
                                          break loop12;
                                       }
                                       §§push(this);
                                       §§push(§#! §.§`'§.§9!>§.§^!O§);
                                       if(!_loc19_)
                                       {
                                          §§push(§§pop() + this.§-8§.height * §1r§.§[M§);
                                       }
                                       §§pop().§[K§ = §§pop();
                                    }
                                    if(!_loc19_)
                                    {
                                       break;
                                    }
                                    continue loop12;
                                 }
                                 addr162:
                                 while(_loc18_)
                                 {
                                    this.§6-§ = param15;
                                    while(true)
                                    {
                                       this.§%A§ = param11;
                                       break loop13;
                                    }
                                 }
                                 while(!(_loc19_ && param1))
                                 {
                                    this.§]!B§ = param6;
                                    this.§5G§ = param7;
                                    §§goto(addr138);
                                 }
                                 addr138:
                                 while(true)
                                 {
                                    this.§+t§ = param8;
                                    §§goto(addr150);
                                 }
                                 addr150:
                              }
                              return;
                           }
                           while(true)
                           {
                              if(_loc18_ || param1)
                              {
                                 §§goto(addr128);
                              }
                              else
                              {
                                 loop4:
                                 while(true)
                                 {
                                    this.§[!#§ = param16;
                                    while(true)
                                    {
                                       this.§5!C§ = param17;
                                       this.§"!3§ = param9;
                                       addr167:
                                       while(_loc18_ || param2)
                                       {
                                          addr174:
                                          if(_loc18_ || this)
                                          {
                                             this.§5!N§ = 0;
                                             §§goto(addr162);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                this.§^Q§ = param10;
                                                continue loop4;
                                                §§goto(addr174);
                                             }
                                             addr201:
                                          }
                                          §§goto(addr99);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr73);
                           }
                           addr73:
                           continue loop1;
                        }
                        §§goto(addr167);
                     }
                     §§goto(addr133);
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public static function §[q§(param1:String) : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(param1);
         while(§§pop().toUpperCase().indexOf("BIRD_RED") < 0)
         {
            §§push(param1);
            loop1:
            for(; !_loc2_; loop3:
            while(_loc3_)
            {
               if(§§pop().toUpperCase().indexOf("BIRD_BLUE") < 0)
               {
                  §§push(param1);
                  loop4:
                  while(true)
                  {
                     if(§§pop().toUpperCase().indexOf("BIRD_BLACK") < 0)
                     {
                        if(param1.toUpperCase().indexOf("BIRD_WHITE") >= 0)
                        {
                           return §2!§;
                        }
                        §§push(param1);
                        while(§§pop().toUpperCase().indexOf("BIRD_GREEN") < 0)
                        {
                           if(param1.toUpperCase().indexOf("MIGHTY_EAGLE") >= 0)
                           {
                              if(_loc3_ || §8R§)
                              {
                                 §§goto(addr186);
                              }
                           }
                           §§push(param1);
                           if(!(_loc3_ || _loc2_))
                           {
                              continue;
                           }
                           if(_loc2_ && param1)
                           {
                              continue loop3;
                           }
                           if(§§pop().toUpperCase().indexOf("PIG") >= 0)
                           {
                              if(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    §§push(§!!J§);
                                    break loop4;
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 if(!(_loc3_ || param1))
                                 {
                                    addr244:
                                    §§push(§"G§);
                                    break;
                                 }
                                 §§goto(addr90);
                              }
                              §§goto(addr245);
                           }
                           while(true)
                           {
                              §§push(param1);
                              loop8:
                              for(; §§pop().toUpperCase().indexOf("ICE") < 0; while(true)
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    if(_loc2_)
                                    {
                                       continue loop4;
                                    }
                                    if(§§pop().toUpperCase().indexOf("STONE") >= 0)
                                    {
                                       §§push(§%3§);
                                       break;
                                    }
                                    §§push(param1);
                                 }
                                 continue loop8;
                                 if(!_loc2_)
                                 {
                                    if(!_loc2_)
                                    {
                                       if(§§pop().toUpperCase().indexOf("SNOW") >= 0)
                                       {
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§push(§=!;§);
                                          }
                                          else
                                          {
                                             if(_loc2_ && _loc3_)
                                             {
                                                break loop8;
                                             }
                                             addr18:
                                             §§push(§^!M§);
                                             if(!(_loc2_ && §8R§))
                                             {
                                                if(_loc2_)
                                                {
                                                   break;
                                                }
                                                if(_loc3_)
                                                {
                                                   return §§pop();
                                                }
                                                §§goto(addr245);
                                             }
                                          }
                                          if(!_loc2_)
                                          {
                                             return §§pop();
                                          }
                                          break loop4;
                                       }
                                       §§goto(addr18);
                                    }
                                    else
                                    {
                                       §§goto(addr85);
                                    }
                                 }
                                 continue;
                                 return §§pop();
                              },return §§pop())
                              {
                                 §§push(param1);
                                 while(true)
                                 {
                                    if(§§pop().toUpperCase().indexOf("WOOD") < 0)
                                    {
                                       §§push(param1);
                                       continue loop8;
                                    }
                                    addr90:
                                    if(_loc2_ && §8R§)
                                    {
                                       continue loop6;
                                    }
                                    §§push(§"!8§);
                                    if(_loc3_)
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr110);
                                 }
                              }
                              addr110:
                              if(_loc3_ || §8R§)
                              {
                                 return §§pop();
                              }
                              addr186:
                              return §-1§;
                           }
                        }
                        return §7$§;
                     }
                     if(_loc3_ || §8R§)
                     {
                        return §2!=§;
                     }
                     §§goto(addr258);
                  }
                  return §§pop();
               }
               §§goto(addr244);
            })
            {
               if(§§pop().toUpperCase().indexOf("BIRD_YELLOW") >= 0)
               {
                  return §#§;
               }
               while(true)
               {
                  §§push(param1);
                  continue loop1;
                  addr258:
               }
            }
         }
         return §0k§;
      }
      
      public static function §4!§(param1:String) : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(param1.toUpperCase().indexOf("BIRD_RED") >= 0)
            {
               return §>5§;
            }
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop().toUpperCase().indexOf("BIRD_YELLOW") >= 0)
               {
                  addr176:
                  return §>!#§;
               }
               addr142:
               while(true)
               {
                  §§push(param1);
                  continue loop0;
               }
            }
         }
         §§goto(addr50);
      }
      
      public function get §-!-§() : DisplayObject
      {
         return this.§-8§;
      }
      
      public function §!'§(param1:Number, param2:Number) : void
      {
      }
      
      protected function createVisuals() : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc1_:int = 0;
         var _loc2_:Sprite = null;
         var _loc3_:§4^§ = null;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         var _loc7_:int = 0;
         var _loc8_:* = 0;
         if(!_loc10_)
         {
            _loc1_ = Math.random() * 100;
         }
         §§push(this.§6f§);
         loop0:
         while(true)
         {
            var _loc9_:* = §§pop();
            if(_loc11_)
            {
               if(PARTICLE_NAME_BIRD_TRAIL1 === _loc9_)
               {
                  §§push(0);
               }
               else
               {
                  §§push(PARTICLE_NAME_BIRD_TRAIL2);
                  if(_loc11_ || this)
                  {
                     §§push(_loc9_);
                     if(!_loc10_)
                     {
                        if(§§pop() === §§pop())
                        {
                           addr1235:
                           §§push(1);
                           if(_loc11_ || this)
                           {
                              §§goto(addr1409);
                           }
                           addr1404:
                           addr1409:
                           loop1:
                           while(true)
                           {
                              loop11:
                              switch(§§pop())
                              {
                                 case 0:
                                    this.createParticle("TRAIL_1");
                                    if(_loc11_ || _loc2_)
                                    {
                                       break loop1;
                                    }
                                    addr422:
                                    §§push(7201353);
                                    if(_loc11_)
                                    {
                                       _loc8_ = §§pop();
                                       addr426:
                                       _loc2_ = new Sprite();
                                       _loc3_ = this.§'_§.getAnimation("NUMBERS");
                                    }
                                    continue;
                                    this.§=f§ = new §'!?§(_loc2_,_loc3_,true);
                                    if(_loc11_ || _loc3_)
                                    {
                                       while(true)
                                       {
                                          this.§=f§.§1M§(parseInt(this.§"!3§));
                                          §§push(this.§-8§);
                                          if(!(_loc10_ && _loc2_))
                                          {
                                             §§pop().addChild(_loc2_);
                                             if(true)
                                             {
                                                _loc2_.scaleX = _loc2_.scaleY = 0.75;
                                                _loc2_.color = _loc8_;
                                                if(_loc11_)
                                                {
                                                   _loc2_.flatten();
                                                   addr553:
                                                   break loop1;
                                                }
                                                addr1000:
                                             }
                                             continue;
                                             §§push(this.§-8§);
                                             if(_loc11_)
                                             {
                                                addr1200:
                                                if(§§pop())
                                                {
                                                   §§push(this.§-8§);
                                                   break;
                                                }
                                                break loop1;
                                             }
                                             break;
                                          }
                                          addr1021:
                                          if(§§pop())
                                          {
                                             addr1022:
                                             §§push(this.§-8§);
                                             if(!(_loc11_ || _loc1_))
                                             {
                                                break;
                                             }
                                             §§push(Math.random() * 360);
                                             if(!(_loc10_ && _loc1_))
                                             {
                                                §§push(180);
                                                if(!(_loc10_ && _loc1_))
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   if(_loc11_)
                                                   {
                                                      addr1053:
                                                      §§push(§§pop() * Math.PI);
                                                      if(!_loc10_)
                                                      {
                                                         §§pop().rotation = §§pop();
                                                         addr1001:
                                                         break loop1;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr1181:
                                                      §§push(§§pop() / 180);
                                                      if(_loc11_ || this)
                                                      {
                                                         addr1189:
                                                         §§push(§§pop() * Math.PI);
                                                      }
                                                   }
                                                   §§pop().rotation = §§pop();
                                                   if(!(_loc11_ || this))
                                                   {
                                                      break loop11;
                                                   }
                                                   §§goto(addr1200);
                                                }
                                                §§goto(addr1181);
                                             }
                                             §§goto(addr1053);
                                          }
                                          §§goto(addr1001);
                                          §§goto(addr1200);
                                       }
                                       addr1169:
                                       §§push(Math.random() * 360);
                                       if(_loc11_ || _loc3_)
                                       {
                                          §§goto(addr1181);
                                       }
                                       §§goto(addr1189);
                                    }
                                    else
                                    {
                                       addr1012:
                                       §§push(this.§-8§);
                                       if(!(_loc10_ && _loc2_))
                                       {
                                          §§goto(addr1021);
                                       }
                                       addr666:
                                    }
                                    §§goto(addr1031);
                                    break;
                                 case 1:
                                    this.createParticle("TRAIL_2");
                                    break loop1;
                                 case 2:
                                    this.createParticle("TRAIL_3");
                                    break loop1;
                                 case 3:
                                    this.createParticle("SMOKE_SMALL",null,15,false);
                                    break loop1;
                                 case 4:
                                    addr241:
                                    addr242:
                                    §§push(false);
                                    if(false)
                                    {
                                       addr243:
                                       §§pop();
                                       while(true)
                                       {
                                          §§push(Math.random() < 0.5);
                                       }
                                       addr244:
                                    }
                                    loop9:
                                    while(true)
                                    {
                                       addr230:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             this.createParticle("??");
                                             addr223:
                                             break loop9;
                                          }
                                          if(!_loc10_)
                                          {
                                             this.createParticle("??");
                                             break loop9;
                                             addr236:
                                          }
                                          §§goto(addr244);
                                       }
                                    }
                                    break loop1;
                                 case 5:
                                    this.createParticle("SMOKE_BIG",null,20,true);
                                    break loop1;
                                 case 6:
                                    this.createParticle("EXPLOSION",null,20,true);
                                    break loop1;
                                 case 7:
                                    this.createParticle("SMOKE_SMALL",null,15,false);
                                    break loop1;
                                    addr196:
                                 case 8:
                                    this.createParticle("EXPLOSION",null,20,true);
                                    if(_loc11_)
                                    {
                                       break loop1;
                                    }
                                    §§goto(addr196);
                                    break;
                                 case 9:
                                    addr168:
                                    continue loop0;
                                 case 10:
                                 case 11:
                                    §§push(int(1 + _loc1_ % 5));
                                    §§push(parseInt(this.§"!3§) == 10000);
                                    if(_loc11_)
                                    {
                                       if(!_loc10_)
                                       {
                                          §§push(§§pop());
                                          if(_loc11_ || this)
                                          {
                                             if(!§§pop())
                                             {
                                                do
                                                {
                                                   §§pop();
                                                   §§push(parseInt(this.§"!3§) == 5000);
                                                }
                                                while(_loc10_);
                                                
                                                if(!_loc10_)
                                                {
                                                   if(_loc11_)
                                                   {
                                                      addr119:
                                                      if(§§pop())
                                                      {
                                                         _loc8_ = 16777215;
                                                         §§push(this.§^Q§);
                                                         if(!(_loc10_ && this))
                                                         {
                                                            _loc9_ = §§pop();
                                                            §§push(§>5§);
                                                            if(_loc11_)
                                                            {
                                                               §§push(_loc9_);
                                                               if(_loc11_ || _loc1_)
                                                               {
                                                                  if(§§pop() === §§pop())
                                                                  {
                                                                     §§push(0);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(§2!!§);
                                                                     if(!(_loc10_ && _loc3_))
                                                                     {
                                                                        §§push(_loc9_);
                                                                        if(_loc11_)
                                                                        {
                                                                           if(§§pop() === §§pop())
                                                                           {
                                                                              addr400:
                                                                              addr401:
                                                                              switch(1)
                                                                              {
                                                                                 case 0:
                                                                                    _loc8_ = 16058683;
                                                                                    if(_loc11_ || _loc2_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr422);
                                                                                 case 1:
                                                                                    _loc8_ = 55294;
                                                                                    if(!(_loc10_ && _loc3_))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr223);
                                                                                    break;
                                                                                 case 2:
                                                                                    §§push(1878602);
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       if(_loc11_ || _loc1_)
                                                                                       {
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             addr48:
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr236);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr168);
                                                                                    break;
                                                                                 case 3:
                                                                                    §§push(3552822);
                                                                                    if(!(_loc10_ && this))
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    continue loop0;
                                                                                 case 4:
                                                                                    break;
                                                                                 case 5:
                                                                                    _loc8_ = 16705792;
                                                                                    if(true)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr48);
                                                                              }
                                                                              if(parseInt(this.§"!3§) == 5000)
                                                                              {
                                                                                 if(!(_loc10_ && _loc1_))
                                                                                 {
                                                                                    §§goto(addr422);
                                                                                 }
                                                                                 break loop1;
                                                                              }
                                                                              §§goto(addr426);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(§6!P§);
                                                                              if(!_loc10_)
                                                                              {
                                                                                 §§push(_loc9_);
                                                                                 if(_loc11_ || this)
                                                                                 {
                                                                                    addr342:
                                                                                    if(§§pop() === §§pop())
                                                                                    {
                                                                                       §§push(2);
                                                                                       if(!(_loc11_ || _loc1_))
                                                                                       {
                                                                                          addr392:
                                                                                          if(§§pop() === _loc9_)
                                                                                          {
                                                                                             addr395:
                                                                                             §§goto(addr400);
                                                                                             §§push(5);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr400);
                                                                                             §§push(6);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr400);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(§+0§);
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          §§push(_loc9_);
                                                                                          if(_loc11_ || _loc3_)
                                                                                          {
                                                                                             addr363:
                                                                                             if(§§pop() === §§pop())
                                                                                             {
                                                                                                if(!(_loc10_ && _loc3_))
                                                                                                {
                                                                                                   §§push(3);
                                                                                                   if(!(_loc10_ && this))
                                                                                                   {
                                                                                                      addr379:
                                                                                                      §§goto(addr400);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr392);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr385:
                                                                                                   §§push(4);
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      addr388:
                                                                                                      §§goto(addr400);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr395);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr395);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(§"h§);
                                                                                                §§push(_loc9_);
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   addr384:
                                                                                                   if(§§pop() === §§pop())
                                                                                                   {
                                                                                                      §§goto(addr385);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(§>!#§);
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         §§goto(addr392);
                                                                                                      }
                                                                                                      §§goto(addr395);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr392);
                                                                                          }
                                                                                          §§goto(addr384);
                                                                                       }
                                                                                       §§goto(addr379);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr384);
                                                                              }
                                                                              §§goto(addr395);
                                                                           }
                                                                        }
                                                                        §§goto(addr363);
                                                                     }
                                                                     §§goto(addr395);
                                                                  }
                                                                  §§goto(addr400);
                                                               }
                                                               §§goto(addr342);
                                                            }
                                                            §§goto(addr388);
                                                         }
                                                         §§goto(addr401);
                                                      }
                                                      else
                                                      {
                                                         _loc2_ = new Sprite();
                                                         _loc3_ = this.§'_§.getAnimation("NUMBERS");
                                                         if(_loc11_)
                                                         {
                                                            this.§=f§ = new §'!?§(_loc2_,_loc3_);
                                                            loop5:
                                                            while(true)
                                                            {
                                                               addr521:
                                                               while(true)
                                                               {
                                                                  this.§=f§.§1M§(parseInt(this.§"!3§));
                                                                  continue loop5;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr553);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr241);
                                                   }
                                                }
                                                §§goto(addr230);
                                                addr146:
                                             }
                                             §§goto(addr119);
                                          }
                                          §§goto(addr242);
                                       }
                                       §§goto(addr243);
                                    }
                                    §§goto(addr146);
                                 case 12:
                                    §§push(this.§^Q§);
                                    if(!_loc10_)
                                    {
                                       _loc9_ = §§pop();
                                       if(_loc11_ || _loc2_)
                                       {
                                          if(§@! § === _loc9_)
                                          {
                                             addr856:
                                             §§push(_loc11_ || _loc3_ ? 0 : 3);
                                             loop4:
                                             while(true)
                                             {
                                                switch(§§pop())
                                                {
                                                   case 0:
                                                      §§push(1);
                                                      if(!(_loc10_ && this))
                                                      {
                                                         §§push(_loc1_);
                                                         if(!(_loc11_ || this))
                                                         {
                                                            addr766:
                                                            break;
                                                         }
                                                         §§push(5);
                                                         if(!_loc10_)
                                                         {
                                                            §§push(§§pop() % §§pop());
                                                            if(_loc11_ || _loc1_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  if(!_loc10_)
                                                                  {
                                                                     _loc6_ = §§pop();
                                                                     §§push(this);
                                                                     §§push("PARTICLE_ICE_");
                                                                     if(!(_loc10_ && _loc2_))
                                                                     {
                                                                        §§push(§§pop() + _loc6_);
                                                                     }
                                                                     §§pop().createParticle(§§pop());
                                                                     break loop4;
                                                                  }
                                                                  continue;
                                                               }
                                                               addr754:
                                                               _loc6_ = int(§§pop());
                                                               §§push(this);
                                                               §§push("PARTICLE_WOOD_");
                                                               if(!(_loc10_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() + _loc6_);
                                                               }
                                                               §§pop().createParticle(§§pop());
                                                               if(_loc11_ || _loc2_)
                                                               {
                                                                  break loop4;
                                                               }
                                                               addr895:
                                                               addr753:
                                                            }
                                                            else
                                                            {
                                                               addr1010:
                                                               _loc7_ = §§pop() + §§pop();
                                                               addr1009:
                                                               §§push(this.§^Q§);
                                                               if(!_loc10_)
                                                               {
                                                                  _loc9_ = §§pop();
                                                                  if(!(_loc10_ && _loc3_))
                                                                  {
                                                                     if(§0k§ === _loc9_)
                                                                     {
                                                                        if(_loc11_)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc10_)
                                                                           {
                                                                              addr1084:
                                                                              §§push(_loc9_);
                                                                              if(!(_loc10_ && _loc2_))
                                                                              {
                                                                                 addr1092:
                                                                                 if(§§pop() === §§pop())
                                                                                 {
                                                                                    addr1093:
                                                                                    §§push(1);
                                                                                    if(!(_loc10_ && _loc1_))
                                                                                    {
                                                                                       addr1160:
                                                                                       switch(§§pop())
                                                                                       {
                                                                                          case 0:
                                                                                             §§push(this);
                                                                                             §§push("PARTICLE_BIRDRED_");
                                                                                             if(_loc11_ || _loc1_)
                                                                                             {
                                                                                                §§push(§§pop() + _loc7_);
                                                                                             }
                                                                                             §§pop().createParticle(§§pop());
                                                                                             §§goto(addr1000);
                                                                                          case 1:
                                                                                             §§push(this);
                                                                                             §§push("PARTICLE_BIRDBLACK_");
                                                                                             if(!(_loc10_ && _loc3_))
                                                                                             {
                                                                                                §§push(§§pop() + _loc7_);
                                                                                             }
                                                                                             §§pop().createParticle(§§pop());
                                                                                             break;
                                                                                             addr984:
                                                                                          case 2:
                                                                                             §§push(this);
                                                                                             §§push("PARTICLE_BIRDBLUE_");
                                                                                             if(_loc11_ || this)
                                                                                             {
                                                                                                §§push(§§pop() + _loc7_);
                                                                                             }
                                                                                             §§pop().createParticle(§§pop());
                                                                                             break;
                                                                                          case 3:
                                                                                             §§push(this);
                                                                                             §§push("PARTICLE_BIRDGREEN_");
                                                                                             if(!(_loc10_ && _loc1_))
                                                                                             {
                                                                                                §§push(§§pop() + _loc7_);
                                                                                             }
                                                                                             §§pop().createParticle(§§pop());
                                                                                             if(!(_loc10_ && _loc1_))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr1200);
                                                                                          case 4:
                                                                                             §§push(this);
                                                                                             §§push("PARTICLE_BIRDWHITE_");
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                §§push(§§pop() + _loc7_);
                                                                                             }
                                                                                             §§pop().createParticle(§§pop());
                                                                                             if(_loc11_ || _loc2_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr1022);
                                                                                             break;
                                                                                          case 5:
                                                                                             §§push(this);
                                                                                             §§push("PARTICLE_BIRDYELLOW_");
                                                                                             if(_loc11_ || _loc2_)
                                                                                             {
                                                                                                §§push(§§pop() + _loc7_);
                                                                                             }
                                                                                             §§pop().createParticle(§§pop());
                                                                                             addr878:
                                                                                             break;
                                                                                          case 6:
                                                                                             §§push(this);
                                                                                             §§push("PARTICLE_BIRDBLACK_");
                                                                                             if(!(_loc10_ && _loc3_))
                                                                                             {
                                                                                                §§push(§§pop() + _loc7_);
                                                                                             }
                                                                                             §§pop().createParticle(§§pop());
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                §§goto(addr895);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr984);
                                                                                             }
                                                                                          default:
                                                                                             §§push(this);
                                                                                             §§push("PARTICLE_BIRDWHITE_");
                                                                                             if(!(_loc10_ && this))
                                                                                             {
                                                                                                §§push(§§pop() + _loc7_);
                                                                                             }
                                                                                             §§pop().createParticle(§§pop());
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                if(true)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr878);
                                                                                             }
                                                                                       }
                                                                                       §§goto(addr1000);
                                                                                       addr1160:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr1148:
                                                                                       §§goto(addr1160);
                                                                                    }
                                                                                 }
                                                                                 else if(§"G§ === _loc9_)
                                                                                 {
                                                                                    if(_loc11_ || _loc2_)
                                                                                    {
                                                                                       addr1112:
                                                                                       §§goto(addr1160);
                                                                                       §§push(2);
                                                                                    }
                                                                                    §§goto(addr1160);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(§7$§);
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       addr1118:
                                                                                       if(§§pop() === _loc9_)
                                                                                       {
                                                                                          addr1119:
                                                                                          §§push(3);
                                                                                          if(_loc10_)
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr1160);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(§2!§);
                                                                                       }
                                                                                       §§push(_loc9_);
                                                                                       if(!(_loc10_ && _loc3_))
                                                                                       {
                                                                                          if(§§pop() === §§pop())
                                                                                          {
                                                                                             addr1133:
                                                                                             §§goto(addr1160);
                                                                                             §§push(4);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(§#§);
                                                                                             if(_loc11_)
                                                                                             {
                                                                                                addr1138:
                                                                                                if(§§pop() === _loc9_)
                                                                                                {
                                                                                                   addr1140:
                                                                                                   §§push(5);
                                                                                                   if(!(_loc10_ && _loc3_))
                                                                                                   {
                                                                                                      §§goto(addr1148);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr1155:
                                                                                                      §§goto(addr1160);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(§-1§);
                                                                                                   §§push(_loc9_);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1160);
                                                                                          }
                                                                                          §§goto(addr1160);
                                                                                       }
                                                                                       if(§§pop() !== §§pop())
                                                                                       {
                                                                                          §§goto(addr1160);
                                                                                          §§push(7);
                                                                                       }
                                                                                       §§goto(addr1160);
                                                                                    }
                                                                                    §§goto(addr1138);
                                                                                 }
                                                                                 §§goto(addr1160);
                                                                              }
                                                                              §§goto(addr1118);
                                                                           }
                                                                           §§goto(addr1160);
                                                                        }
                                                                        §§goto(addr1112);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(§2!=§);
                                                                     }
                                                                     §§goto(addr1084);
                                                                  }
                                                                  §§goto(addr1093);
                                                               }
                                                               §§goto(addr1160);
                                                               addr1009:
                                                               addr1008:
                                                               addr1011:
                                                            }
                                                            §§goto(addr1000);
                                                         }
                                                         else
                                                         {
                                                            addr751:
                                                            §§push(§§pop() + §§pop() % §§pop());
                                                         }
                                                         §§goto(addr753);
                                                      }
                                                      §§goto(addr754);
                                                   case 1:
                                                      §§goto(addr766);
                                                   case 2:
                                                      addr749:
                                                      §§push(1);
                                                      §§push(_loc1_);
                                                      §§push(1);
                                                      §§push(_loc1_);
                                                      §§push(3);
                                                      if(!_loc11_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr751);
                                                      break;
                                                   case 3:
                                                      §§push(1);
                                                      if(_loc11_)
                                                      {
                                                         addr674:
                                                         §§push(_loc1_);
                                                         if(_loc11_ || _loc3_)
                                                         {
                                                            §§push(3);
                                                            if(_loc11_)
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(§§pop() % §§pop());
                                                                  if(_loc11_ || _loc3_)
                                                                  {
                                                                     if(!(_loc10_ && this))
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc10_ && this))
                                                                        {
                                                                           _loc6_ = int(§§pop());
                                                                           addr651:
                                                                           §§push(this);
                                                                           §§push("PARTICLE_STONE_");
                                                                           if(!(_loc10_ && _loc1_))
                                                                           {
                                                                              §§push(§§pop() + _loc6_);
                                                                           }
                                                                           §§pop().createParticle(§§pop());
                                                                           if(_loc11_)
                                                                           {
                                                                              §§goto(addr666);
                                                                           }
                                                                           §§goto(addr1022);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr1009);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr751);
                                                                     }
                                                                     §§goto(addr895);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr1008);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr749);
                                                               }
                                                               §§goto(addr751);
                                                            }
                                                            else
                                                            {
                                                               addr1007:
                                                               §§push(§§pop() % §§pop());
                                                            }
                                                            §§goto(addr1009);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr766);
                                                         }
                                                      }
                                                      addr770:
                                                      _loc6_ = §§pop();
                                                      this.createParticle("??");
                                                      break loop4;
                                                   case 4:
                                                      §§push(1);
                                                      §§push(_loc1_);
                                                      if(_loc11_)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            if(_loc11_ || _loc1_)
                                                            {
                                                               §§push(3);
                                                               if(!_loc10_)
                                                               {
                                                                  §§push(§§pop() % §§pop());
                                                                  if(_loc11_)
                                                                  {
                                                                     if(_loc11_ || _loc3_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc10_)
                                                                        {
                                                                           if(!(_loc10_ && _loc2_))
                                                                           {
                                                                              if(!(_loc10_ && _loc1_))
                                                                              {
                                                                                 §§push(int(§§pop()));
                                                                                 if(!(_loc10_ && _loc1_))
                                                                                 {
                                                                                    _loc6_ = §§pop();
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       if(true)
                                                                                       {
                                                                                          break loop4;
                                                                                       }
                                                                                       §§goto(addr651);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr1011);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr1010);
                                                                                 }
                                                                                 §§goto(addr1010);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr769:
                                                                                 §§goto(addr770);
                                                                                 §§push(int(§§pop()));
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr754);
                                                                           }
                                                                           §§goto(addr895);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr1010);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr768:
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                     §§goto(addr769);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr1010);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr1007);
                                                               }
                                                               §§goto(addr1010);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr749);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr674);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr1006:
                                                         §§push(3);
                                                      }
                                                      §§goto(addr1007);
                                                }
                                                §§goto(addr768);
                                             }
                                             §§goto(addr1012);
                                          }
                                          else
                                          {
                                             §§push(§=!;§);
                                             if(!(_loc10_ && _loc3_))
                                             {
                                                if(§§pop() === _loc9_)
                                                {
                                                   if(_loc11_ || _loc1_)
                                                   {
                                                      §§goto(addr856);
                                                      §§push(1);
                                                   }
                                                   §§goto(addr1140);
                                                }
                                                else if(§"!8§ === _loc9_)
                                                {
                                                   §§goto(addr856);
                                                   §§push(2);
                                                }
                                                else if(§%3§ === _loc9_)
                                                {
                                                   if(_loc11_)
                                                   {
                                                      §§goto(addr841);
                                                   }
                                                   §§goto(addr1133);
                                                }
                                                else
                                                {
                                                   §§push(§^!M§);
                                                   §§push(_loc9_);
                                                   if(_loc11_)
                                                   {
                                                      if(§§pop() === §§pop())
                                                      {
                                                         §§goto(addr856);
                                                         §§push(4);
                                                      }
                                                      else
                                                      {
                                                         §§push(5);
                                                         if(!_loc10_)
                                                         {
                                                            §§goto(addr856);
                                                         }
                                                         §§goto(addr1138);
                                                      }
                                                      §§goto(addr1138);
                                                   }
                                                }
                                                §§goto(addr1092);
                                             }
                                          }
                                          §§goto(addr1138);
                                       }
                                       §§goto(addr1119);
                                    }
                                    else
                                    {
                                       addr1005:
                                       §§push(_loc1_);
                                    }
                                    §§goto(addr1006);
                                 case 13:
                                    §§goto(addr1005);
                                 default:
                                    this.createParticle(this.§6f§,null,this.§[!#§,this.§5!C§);
                              }
                              break;
                           }
                           return;
                           §§goto(addr1409);
                        }
                        else
                        {
                           §§push(PARTICLE_NAME_BIRD_TRAIL3);
                           if(!_loc10_)
                           {
                              if(§§pop() === _loc9_)
                              {
                                 if(!(_loc10_ && _loc2_))
                                 {
                                    §§goto(addr1409);
                                    §§push(2);
                                 }
                                 else
                                 {
                                    addr1304:
                                    §§goto(addr1409);
                                    §§push(6);
                                 }
                                 §§goto(addr1409);
                              }
                              else
                              {
                                 §§push(§[!$§);
                                 if(_loc11_)
                                 {
                                    §§push(_loc9_);
                                    if(!_loc10_)
                                    {
                                       if(§§pop() === §§pop())
                                       {
                                          if(!_loc10_)
                                          {
                                             §§goto(addr1409);
                                             §§push(3);
                                          }
                                          §§goto(addr1409);
                                       }
                                       else
                                       {
                                          §§push(§3G§);
                                          §§push(_loc9_);
                                          if(_loc11_)
                                          {
                                             if(§§pop() === §§pop())
                                             {
                                                §§push(4);
                                                if(_loc10_ && this)
                                                {
                                                   addr1345:
                                                }
                                                §§goto(addr1409);
                                             }
                                             else
                                             {
                                                addr1284:
                                                §§push(§!H§);
                                                §§push(_loc9_);
                                                if(_loc11_)
                                                {
                                                   if(§§pop() === §§pop())
                                                   {
                                                      if(_loc11_)
                                                      {
                                                         §§push(5);
                                                         if(!(_loc10_ && _loc3_))
                                                         {
                                                            §§goto(addr1409);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr1345);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr1356:
                                                         §§push(10);
                                                         if(_loc11_)
                                                         {
                                                            addr1359:
                                                            §§goto(addr1409);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr1404);
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      addr1301:
                                                      if(§,!B§ === _loc9_)
                                                      {
                                                         if(_loc11_)
                                                         {
                                                            §§goto(addr1304);
                                                         }
                                                         else
                                                         {
                                                            addr1391:
                                                            §§push(12);
                                                            if(_loc11_ || this)
                                                            {
                                                               §§goto(addr1409);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr1404);
                                                            }
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(§-!'§);
                                                         §§push(_loc9_);
                                                         if(_loc11_ || _loc3_)
                                                         {
                                                            if(§§pop() === §§pop())
                                                            {
                                                               §§goto(addr1409);
                                                               §§push(7);
                                                            }
                                                            else
                                                            {
                                                               addr1319:
                                                               §§push(§1d§);
                                                               §§push(_loc9_);
                                                            }
                                                            §§goto(addr1409);
                                                         }
                                                         if(§§pop() === §§pop())
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               §§push(8);
                                                               if(!_loc10_)
                                                               {
                                                                  §§goto(addr1409);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr1345);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr1356);
                                                            }
                                                         }
                                                         else if(§=6§ === _loc9_)
                                                         {
                                                            if(!(_loc10_ && _loc2_))
                                                            {
                                                               §§push(9);
                                                               if(!(_loc10_ && _loc3_))
                                                               {
                                                                  §§goto(addr1345);
                                                               }
                                                               §§goto(addr1409);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr1356);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(§'5§);
                                                            if(_loc11_ || this)
                                                            {
                                                               addr1355:
                                                               if(§§pop() === _loc9_)
                                                               {
                                                                  §§goto(addr1356);
                                                               }
                                                               else
                                                               {
                                                                  §§push(§<T§);
                                                                  §§push(_loc9_);
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr1364:
                                                                     if(§§pop() === §§pop())
                                                                     {
                                                                        if(_loc11_)
                                                                        {
                                                                           §§goto(addr1409);
                                                                           §§push(11);
                                                                        }
                                                                        §§goto(addr1409);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(§+`§);
                                                                        if(!(_loc10_ && this))
                                                                        {
                                                                           §§push(_loc9_);
                                                                           if(_loc11_)
                                                                           {
                                                                              addr1390:
                                                                              if(§§pop() === §§pop())
                                                                              {
                                                                                 §§goto(addr1391);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr1401:
                                                                                 §§push(§#'§);
                                                                                 §§push(_loc9_);
                                                                              }
                                                                              §§goto(addr1409);
                                                                           }
                                                                           if(§§pop() !== §§pop())
                                                                           {
                                                                              §§goto(addr1409);
                                                                              §§push(14);
                                                                           }
                                                                           §§goto(addr1409);
                                                                        }
                                                                        §§goto(addr1401);
                                                                     }
                                                                     §§push(13);
                                                                  }
                                                                  §§goto(addr1390);
                                                               }
                                                            }
                                                            §§goto(addr1401);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr1409);
                                                }
                                                §§goto(addr1364);
                                             }
                                          }
                                          §§goto(addr1355);
                                       }
                                    }
                                    §§goto(addr1301);
                                 }
                                 §§goto(addr1355);
                              }
                           }
                           §§goto(addr1284);
                        }
                     }
                     §§goto(addr1301);
                  }
                  §§goto(addr1319);
               }
               §§goto(addr1409);
            }
            §§goto(addr1235);
         }
      }
      
      protected function createParticle(param1:String, param2:String = null, param3:int = -1, param4:Boolean = false) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc5_:§`!9§ = null;
         var _loc6_:Texture = null;
         if(_loc10_)
         {
            if(param1 == "??")
            {
               if(!(_loc11_ && param3))
               {
                  return;
               }
            }
            this.§0M§ = param4;
         }
         var _loc7_:* = Number(1);
         if(_loc10_)
         {
            this.§3!Q§ = this.§'_§.getAnimation(param1);
            if(_loc10_ || this)
            {
               §§push(this.§3!Q§);
               if(_loc10_ || param2)
               {
                  if(§§pop())
                  {
                     addr75:
                     _loc6_ = (_loc5_ = this.§3!Q§.getFrame(0)).texture;
                     addr73:
                     if(!_loc11_)
                     {
                        §§push(_loc5_.scale);
                        if(_loc10_)
                        {
                           §§push(Number(§§pop()));
                        }
                        _loc7_ = §§pop();
                        if(_loc10_ || this)
                        {
                           addr138:
                           this.§%!+§ = param3;
                        }
                     }
                     var _loc8_:§1!A§ = this.§;N§(_loc6_);
                     §§push(_loc8_);
                     §§push(_loc8_);
                     §§push(this.§6-§);
                     if(!_loc11_)
                     {
                        §§push(_loc7_);
                        if(!(_loc11_ && param2))
                        {
                           addr161:
                           §§push(§§pop() * §§pop());
                           §§push(§§pop() * §§pop());
                        }
                        var _loc9_:* = §§pop();
                        §§pop().scaleY = §§pop();
                        §§pop().scaleX = _loc9_;
                        this.§-8§.addChild(_loc8_);
                        do
                        {
                           if(_loc5_)
                           {
                              if(_loc10_)
                              {
                                 §§push(_loc8_);
                                 §§push(-_loc5_.pivotX);
                                 if(_loc10_)
                                 {
                                    §§push(§§pop() * this.§6-§);
                                 }
                                 §§pop().x = §§pop();
                              }
                              do
                              {
                                 §§push(_loc8_);
                                 §§push(-_loc5_.pivotY);
                                 if(!_loc11_)
                                 {
                                    §§push(§§pop() * this.§6-§);
                                 }
                                 §§pop().y = §§pop();
                              }
                              while(!_loc10_);
                              
                              break;
                           }
                           §§push(_loc8_);
                           §§push(-this.§-8§.width);
                           if(_loc10_)
                           {
                              §§push(§§pop() / 2);
                           }
                           §§pop().x = §§pop();
                           do
                           {
                              §§push(_loc8_);
                              §§push(-this.§-8§.height);
                              if(_loc10_)
                              {
                                 §§push(§§pop() / 2);
                              }
                              §§pop().y = §§pop();
                           }
                           while(!(_loc10_ || param1));
                           
                        }
                        while(_loc11_);
                        
                        return;
                     }
                     §§goto(addr161);
                  }
                  else
                  {
                     if(!(_loc5_ = this.§2"§.§&! §(param1)))
                     {
                        return;
                     }
                     if(!_loc11_)
                     {
                        _loc6_ = _loc5_.texture;
                        if(!_loc11_)
                        {
                           §§push(_loc5_.scale);
                           if(_loc10_ || param3)
                           {
                              §§push(Number(§§pop()));
                           }
                           _loc7_ = §§pop();
                        }
                     }
                  }
                  §§goto(addr138);
               }
               §§goto(addr75);
            }
         }
         §§goto(addr73);
      }
      
      protected function §;N§(param1:Texture) : §1!A§
      {
         return new §1!A§(param1,false);
      }
      
      public function §%!8§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§-8§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§-8§);
                     addr93:
                     addr85:
                     loop1:
                     while(true)
                     {
                        §§push(this.§]!B§);
                        if(!(_loc1_ && _loc1_))
                        {
                           §§push(§1r§.§[M§);
                           while(true)
                           {
                              §§push(§§pop() / §§pop());
                           }
                           addr104:
                        }
                        loop3:
                        while(true)
                        {
                           §§pop().x = §§pop();
                           while(true)
                           {
                              §§push(this.§-8§);
                              if(!_loc2_)
                              {
                                 break;
                              }
                              §§push(this.§5G§);
                              if(!_loc1_)
                              {
                                 if(_loc1_ && this)
                                 {
                                    continue loop3;
                                 }
                                 §§push(§1r§.§[M§);
                                 if(!_loc1_)
                                 {
                                    §§push(§§pop() / §§pop());
                                 }
                                 else
                                 {
                                    §§goto(addr104);
                                 }
                              }
                              §§pop().y = §§pop();
                              if(!(_loc1_ && _loc2_))
                              {
                                 continue loop0;
                              }
                           }
                           continue loop1;
                        }
                     }
                     addr85:
                  }
               }
               return;
            }
            §§goto(addr93);
         }
         §§goto(addr85);
      }
      
      public function §<F§(param1:§3!,§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§'!0§ = param1;
         }
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:§`!9§ = null;
         var _loc6_:Texture = null;
         var _loc7_:* = NaN;
         var _loc8_:§1!A§ = null;
         if(_loc10_ || _loc3_)
         {
            §§push(this);
            §§push(this.§5!N§);
            if(!_loc11_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§5!N§ = §§pop();
         }
         var _loc2_:* = false;
         if(_loc10_)
         {
            §§push(this.§'!0§);
            if(!(_loc11_ && _loc2_))
            {
               if(§§pop())
               {
                  addr138:
                  §§push(this.§'!0§);
                  loop25:
                  while(true)
                  {
                     §§push(§§pop().sprite == null);
                     §§push(§§pop().sprite == null);
                     loop1:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           if(!_loc11_)
                           {
                              §§pop();
                              if(!(_loc11_ && this))
                              {
                                 §§push(this.§'!0§);
                                 if(!_loc10_)
                                 {
                                    continue loop25;
                                 }
                                 §§push(§§pop().§+!?§ == null);
                                 if(_loc10_)
                                 {
                                    §§goto(addr121);
                                 }
                                 §§goto(addr505);
                              }
                              §§goto(addr366);
                           }
                           break;
                        }
                        addr121:
                        if(§§pop())
                        {
                           return false;
                        }
                        else
                        {
                           this.§]!B§ = this.§'!0§.§`%§().GetPosition().x;
                           this.§5G§ = this.§'!0§.§`%§().GetPosition().y;
                           while(true)
                           {
                              §§push(this.§%!+§);
                              if(!_loc11_)
                              {
                                 §§push(0);
                                 if(_loc10_ || _loc3_)
                                 {
                                    §§push(§§pop() > §§pop());
                                    §§push(§§pop() > §§pop());
                                    if(_loc10_)
                                    {
                                       if(_loc11_)
                                       {
                                          continue loop1;
                                       }
                                       if(§§pop())
                                       {
                                          if(!_loc10_)
                                          {
                                             break;
                                          }
                                          §§pop();
                                          if(!_loc11_)
                                          {
                                             §§push(this.§3!Q§);
                                             if(_loc10_)
                                             {
                                                addr57:
                                                if(§§pop())
                                                {
                                                   §§push(15);
                                                   if(!_loc11_)
                                                   {
                                                      _loc3_ = §§pop();
                                                      if(_loc10_)
                                                      {
                                                         if(false)
                                                         {
                                                            continue;
                                                         }
                                                         §§push(this.§5!N§);
                                                         §§push(1000);
                                                         if(!(_loc11_ && param1))
                                                         {
                                                            §§push(§§pop() / §§pop());
                                                            §§push(1);
                                                            if(!_loc11_)
                                                            {
                                                               §§push(§§pop() / _loc3_);
                                                               if(_loc10_ || this)
                                                               {
                                                                  §§push(int(§§pop() / §§pop()));
                                                                  if(_loc10_)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc10_)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        if(!(_loc11_ && _loc3_))
                                                                        {
                                                                           addr194:
                                                                           §§push(this.§3!Q§.getFrameCount());
                                                                           if(_loc10_ || this)
                                                                           {
                                                                              addr204:
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    addr209:
                                                                                    _loc6_ = (_loc5_ = this.§3!Q§.getFrame(_loc4_)).texture;
                                                                                    if(!_loc11_)
                                                                                    {
                                                                                       §§push(_loc5_.scale);
                                                                                       if(_loc10_ || _loc3_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       _loc7_ = §§pop();
                                                                                    }
                                                                                    _loc8_ = this.§;N§(_loc6_);
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       §§push(this.§-8§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().§5a§(0,-1,true);
                                                                                          loop12:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§-8§);
                                                                                             if(!(_loc10_ || this))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §§pop().addChild(_loc8_);
                                                                                             if(_loc10_ || param1)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc8_);
                                                                                                   §§push(-_loc5_.pivotX);
                                                                                                   if(!(_loc11_ && _loc3_))
                                                                                                   {
                                                                                                      §§push(§§pop() * this.§6-§);
                                                                                                   }
                                                                                                   §§pop().x = §§pop();
                                                                                                   if(!(_loc10_ || param1))
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   continue loop12;
                                                                                                }
                                                                                             }
                                                                                             if(this.§#!2§ == §`R§)
                                                                                             {
                                                                                                if(_loc10_ || this)
                                                                                                {
                                                                                                   this.§9O§(param1);
                                                                                                }
                                                                                                _loc2_ = Boolean(this.§?!$§(param1));
                                                                                                addr528:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                this.§9O§(param1);
                                                                                                loop6:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§?!$§(param1));
                                                                                                   loop7:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      loop8:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc2_ = §§pop();
                                                                                                         if(!(_loc11_ && _loc2_))
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               loop3:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§+t§);
                                                                                                                  §§push(0);
                                                                                                                  if(!_loc11_)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() > §§pop());
                                                                                                                        loop4:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                           if(_loc11_ && this)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              loop5:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc10_)
                                                                                                                                 {
                                                                                                                                    continue loop7;
                                                                                                                                 }
                                                                                                                                 §§pop();
                                                                                                                                 §§push(this.§5!N§);
                                                                                                                                 §§push(this.§+t§);
                                                                                                                                 if(!(_loc11_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() >= §§pop());
                                                                                                                                       if(_loc10_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          if(_loc11_)
                                                                                                                                          {
                                                                                                                                             continue loop5;
                                                                                                                                          }
                                                                                                                                          if(_loc11_ && _loc3_)
                                                                                                                                          {
                                                                                                                                             continue loop8;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!§§pop())
                                                                                                                                             {
                                                                                                                                                §§push(_loc2_);
                                                                                                                                                if(!_loc11_)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      if(_loc11_)
                                                                                                                                                      {
                                                                                                                                                         addr422:
                                                                                                                                                         §§push(false);
                                                                                                                                                         while(!(_loc11_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            return §§pop();
                                                                                                                                                         }
                                                                                                                                                         break loop1;
                                                                                                                                                         addr423:
                                                                                                                                                      }
                                                                                                                                                      if(!(_loc10_ || _loc2_))
                                                                                                                                                      {
                                                                                                                                                         continue loop6;
                                                                                                                                                      }
                                                                                                                                                      if(!_loc11_)
                                                                                                                                                      {
                                                                                                                                                         addr388:
                                                                                                                                                         this.§%!8§();
                                                                                                                                                         addr390:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            continue loop3;
                                                                                                                                                         }
                                                                                                                                                         addr470:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   return true;
                                                                                                                                                }
                                                                                                                                                continue loop4;
                                                                                                                                             }
                                                                                                                                             §§goto(addr422);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr423);
                                                                                                                                    }
                                                                                                                                    addr403:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() > §§pop());
                                                                                                                                       addr483:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          break loop1;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr482:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop7;
                                                                                                                           }
                                                                                                                           §§goto(addr420);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr442:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     addr502:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() > §§pop());
                                                                                                                        addr503:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop());
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr502:
                                                                                                                  }
                                                                                                                  addr504:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           §§goto(addr482);
                                                                                                                        }
                                                                                                                        addr505:
                                                                                                                     }
                                                                                                                     §§goto(addr483);
                                                                                                                  }
                                                                                                               }
                                                                                                               addr485:
                                                                                                               return false;
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                            addr469:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                            }
                                                                                                            addr513:
                                                                                                         }
                                                                                                         §§goto(addr502);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr513);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr347);
                                                                                 }
                                                                                 §§goto(addr390);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(this.§0M§);
                                                                                 if(!_loc11_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!(_loc11_ && _loc3_))
                                                                                       {
                                                                                          this.§-8§.§5a§(0,-1,true);
                                                                                          addr366:
                                                                                          §§goto(addr514);
                                                                                       }
                                                                                       §§goto(addr469);
                                                                                    }
                                                                                    §§goto(addr514);
                                                                                 }
                                                                              }
                                                                              §§goto(addr503);
                                                                           }
                                                                        }
                                                                        §§goto(addr514);
                                                                     }
                                                                     §§goto(addr204);
                                                                  }
                                                                  §§goto(addr194);
                                                               }
                                                               §§goto(addr403);
                                                            }
                                                            §§goto(addr502);
                                                         }
                                                         §§goto(addr442);
                                                      }
                                                      §§goto(addr388);
                                                   }
                                                }
                                                §§goto(addr514);
                                             }
                                             §§goto(addr209);
                                          }
                                          §§goto(addr528);
                                       }
                                       §§goto(addr57);
                                    }
                                    §§goto(addr504);
                                 }
                                 §§goto(addr204);
                              }
                              §§goto(addr194);
                           }
                           addr67:
                        }
                        return §§pop();
                     }
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§goto(addr470);
                        }
                        §§goto(addr485);
                     }
                  }
                  addr140:
               }
               §§goto(addr67);
            }
            §§goto(addr140);
         }
         §§goto(addr138);
      }
      
      public function §9O§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.§<Q§);
            if(!_loc3_)
            {
               §§push(param1);
               if(_loc2_)
               {
                  §§push(§§pop() * this.§5K§);
                  if(_loc2_ || _loc3_)
                  {
                     §§push(§§pop() / 1000);
                  }
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().§<Q§ = §§pop();
            while(true)
            {
               §§push(this);
               §§push(this.§5G§);
               if(!(_loc3_ && this))
               {
                  §§push(this.§<Q§);
                  if(_loc2_)
                  {
                     §§push(§§pop() * param1);
                     if(_loc2_)
                     {
                        §§push(§§pop() / 1000);
                     }
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().§5G§ = §§pop();
               addr137:
               while(true)
               {
                  §§push(this);
                  §§push(this.§]!B§);
                  if(!(_loc3_ && param1))
                  {
                     §§push(this.§%A§);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(§§pop() * param1);
                        if(!_loc3_)
                        {
                           §§push(§§pop() / 1000);
                        }
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().§]!B§ = §§pop();
               }
               addr57:
               if(!(_loc2_ || this))
               {
                  continue;
               }
               §§goto(addr19);
            }
         }
         for(; this.§ !'§ != 0; if(_loc3_ && this)
         {
            continue;
         },this.§-8§.rotation += this.§ !'§ * param1 / 1000 / 180 * Math.PI,§§goto(addr55))
         {
            if(_loc2_)
            {
               continue;
            }
            addr55:
            if(_loc2_)
            {
               §§goto(addr57);
            }
            §§goto(addr137);
         }
         addr19:
      }
      
      public function §?!$§(param1:Number) : Boolean
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:Number = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         if(!(_loc7_ && _loc3_))
         {
            §§push(this.§#!2§);
            if(!_loc7_)
            {
               §§push(§@2§);
               loop0:
               while(true)
               {
                  if(§§pop() == §§pop())
                  {
                     if(!(_loc7_ && _loc3_))
                     {
                        if(this.§+t§ > 0)
                        {
                           if(_loc8_ || param1)
                           {
                              §§push(1);
                              loop9:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 if(_loc8_)
                                 {
                                    addr376:
                                    §§push(this.§6f§);
                                    §§push(§<T§);
                                    if(!(_loc7_ && param1))
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          §§push(this.§5!N§);
                                          §§push(this.§+t§);
                                          if(!(_loc7_ && _loc2_))
                                          {
                                             §§push(Number(§§pop() / §§pop()));
                                             while(true)
                                             {
                                                §§push(§§pop());
                                             }
                                             addr398:
                                          }
                                          loop11:
                                          while(true)
                                          {
                                             _loc4_ = §§pop();
                                             if(§§pop() > 0.2)
                                             {
                                                §§push(_loc4_);
                                                while(true)
                                                {
                                                   if(§§pop() >= 0.8)
                                                   {
                                                      §§push(1);
                                                   }
                                                   else
                                                   {
                                                      addr342:
                                                      §§push(1);
                                                      if(_loc8_)
                                                      {
                                                         addr345:
                                                         _loc3_ = Number(§§pop());
                                                         loop13:
                                                         while(true)
                                                         {
                                                            addr308:
                                                            §§push(_loc3_);
                                                            if(_loc8_ || _loc3_)
                                                            {
                                                               if(!(_loc8_ || _loc3_))
                                                               {
                                                                  addr368:
                                                                  while(!_loc7_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  continue loop11;
                                                                  addr368:
                                                               }
                                                               if(!_loc8_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(0.5);
                                                               if(!_loc7_)
                                                               {
                                                                  _loc2_ = §§pop() * (§§pop() + int(this.§"!3§) / 5000);
                                                                  addr337:
                                                                  while(true)
                                                                  {
                                                                     addr302:
                                                                     this.§-8§.scaleX = _loc2_;
                                                                     if(!_loc7_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     addr402:
                                                                     addr402:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        §§push(0.2);
                                                                     }
                                                                  }
                                                                  addr296:
                                                                  this.§-8§.scaleY = _loc2_;
                                                                  addr279:
                                                                  §§push(true);
                                                                  if(!(_loc7_ && this))
                                                                  {
                                                                     return §§pop();
                                                                  }
                                                                  addr444:
                                                                  addr444:
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr447:
                                                                        §§push(this.§-8§);
                                                                        §§push(this.§-8§);
                                                                        §§push(0.2);
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push(this.§+t§);
                                                                           if(_loc8_ || param1)
                                                                           {
                                                                              §§push(this.§5!N§);
                                                                              if(!(_loc7_ && param1))
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§push(this.§+t§);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§push(§§pop() / §§pop());
                                                                                       if(_loc8_ || param1)
                                                                                       {
                                                                                          addr498:
                                                                                          §§push(§§pop() * 1.8);
                                                                                          if(_loc8_ || _loc2_)
                                                                                          {
                                                                                          }
                                                                                          §§goto(addr508);
                                                                                       }
                                                                                       addr507:
                                                                                       addr508:
                                                                                       var _loc6_:* = §§pop();
                                                                                       §§pop().scaleY = §§pop();
                                                                                       addr512:
                                                                                       §§pop().scaleX = _loc6_;
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          addr515:
                                                                                          §§push(true);
                                                                                          if(!(_loc7_ && param1))
                                                                                          {
                                                                                             §§goto(addr523);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          addr524:
                                                                                          §§push(false);
                                                                                       }
                                                                                       return §§pop();
                                                                                       §§push(§§pop() + §§pop());
                                                                                       §§push(§§pop() + §§pop());
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr508);
                                                                              }
                                                                           }
                                                                           §§goto(addr498);
                                                                        }
                                                                        §§goto(addr507);
                                                                     }
                                                                     §§goto(addr524);
                                                                  }
                                                                  §§goto(addr515);
                                                                  addr298:
                                                                  addr295:
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc3_ = Number(§§pop() / §§pop());
                                                                  addr407:
                                                                  continue loop13;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               _loc3_ = §§pop();
                                                               addr372:
                                                               continue loop13;
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                      addr354:
                                                      if(_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(_loc4_);
                                                      if(!_loc7_)
                                                      {
                                                         §§push(0.8);
                                                         if(!_loc7_)
                                                         {
                                                            addr367:
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc8_)
                                                            {
                                                               §§push(0.2);
                                                            }
                                                            §§goto(addr368);
                                                            §§push(§§pop() - §§pop());
                                                         }
                                                         §§push(§§pop() / §§pop());
                                                      }
                                                      §§goto(addr367);
                                                      §§goto(addr368);
                                                   }
                                                   §§goto(addr354);
                                                }
                                                continue loop9;
                                             }
                                             §§goto(addr402);
                                          }
                                       }
                                       §§goto(addr298);
                                    }
                                    else
                                    {
                                       addr441:
                                       §§push(§§pop() == §§pop());
                                       if(!_loc7_)
                                       {
                                          §§goto(addr444);
                                       }
                                    }
                                    addr523:
                                    return §§pop();
                                 }
                              }
                              addr433:
                           }
                           §§goto(addr524);
                        }
                        §§goto(addr279);
                     }
                     §§goto(addr515);
                  }
                  else
                  {
                     while(true)
                     {
                        §§push(this.§#!2§);
                        if(_loc7_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     addr212:
                  }
                  §§goto(addr342);
               }
            }
            §§goto(addr433);
         }
         §§goto(addr402);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§=f§);
         if(_loc2_ || this)
         {
            if(§§pop())
            {
               while(true)
               {
                  §§push(this.§=f§);
                  addr102:
                  while(true)
                  {
                     §§pop().clear();
                     this.§=f§ = null;
                     addr89:
                     while(true)
                     {
                     }
                  }
                  addr33:
                  this.§'!0§ = null;
                  if(!_loc2_)
                  {
                     continue;
                  }
                  §§goto(addr18);
               }
            }
            while(true)
            {
               §§push(this.§-8§);
               if(_loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        if(!_loc2_)
                        {
                           continue;
                        }
                        addr83:
                        this.§-8§.dispose();
                     }
                     while(true)
                     {
                        this.§-8§ = null;
                        loop3:
                        for(; _loc2_ || _loc2_; if(_loc1_ && this)
                        {
                           continue;
                        },§§goto(addr33))
                        {
                           while(this.§'!0§)
                           {
                              continue loop3;
                           }
                           addr18:
                           return;
                        }
                     }
                  }
                  §§goto(addr22);
               }
               §§goto(addr83);
            }
         }
         §§goto(addr102);
      }
   }
}
