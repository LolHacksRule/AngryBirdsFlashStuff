package § var§
{
   import § ! §.§=!%§;
   import § ! §.§>p§;
   import §#I§.b2Body;
   import §#I§.b2BodyDef;
   import §#I§.b2FilterData;
   import §#I§.b2Fixture;
   import §#I§.b2World;
   import §&H§.b2Vec2;
   import §0S§.§ L§;
   import §0S§.§4K§;
   import §0S§.§6!D§;
   import §0S§.§6R§;
   import §0S§.§7!Z§;
   import §1!B§.§<m§;
   import §3b§.b2PolygonShape;
   import §40§.§-!8§;
   import §40§.§5G§;
   import §@!3§.b2Settings;
   import §[!b§.§-!Q§;
   import §`g§.Sprite;
   import flash.geom.Point;
   
   public class §!u§
   {
      
      public static const §`z§:uint;
      
      public static const §<!z§:uint;
      
      public static const §3d§:uint;
      
      public static const §6!3§:uint;
      
      public static const §[!o§:Boolean = true;
      
      public static const §6!X§:Number = 5;
      
      public static const §0!V§:Number = 10;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(§§findproperty(§`z§));
            §§push(1);
            if(_loc1_)
            {
               §§push(§§pop() << §§pop());
            }
            §§pop().§`z§ = §§pop();
            while(true)
            {
               §§push(§§findproperty(§<!z§));
               §§push(1);
               if(_loc1_ || _loc1_)
               {
                  §§push(§§pop() << 2);
               }
               §§pop().§<!z§ = §§pop();
               loop1:
               while(true)
               {
                  §§push(§§findproperty(§3d§));
                  §§push(1);
                  if(_loc1_ || _loc1_)
                  {
                     §§push(§§pop() << 3);
                  }
                  §§pop().§3d§ = §§pop();
                  do
                  {
                     §§push(§§findproperty(§6!3§));
                     §§push(1);
                     if(!_loc2_)
                     {
                        §§push(§§pop() << 4);
                     }
                     §§pop().§6!3§ = §§pop();
                     continue loop1;
                  }
                  while(!_loc1_);
                  
               }
               loop4:
               for(; _loc1_ || _loc1_; if(!(_loc1_ || §!u§))
               {
                  continue;
               },§§goto(addr41))
               {
                  §6!X§ = 5;
                  while(!_loc2_)
                  {
                     §0!V§ = 10;
                     if(!_loc2_)
                     {
                        continue loop4;
                     }
                  }
                  §§goto(addr81);
               }
            }
         }
      }
      
      private var §5I§:String;
      
      private var §6!M§:int;
      
      private var §#"#§:int;
      
      public var §-!>§:String;
      
      public var §-!o§:int;
      
      protected var §,!;§:§4K§;
      
      private var §>0§:§ 4§;
      
      private var mWorld:b2World;
      
      protected var §?!T§:String = "";
      
      protected var §&!-§:int = 1;
      
      private var §]""§:b2Fixture;
      
      private var §@4§:b2Body;
      
      private var §[$§:b2Vec2;
      
      public var §0M§:Number;
      
      public var §]!3§:Number;
      
      private var §=!X§:Number;
      
      private var §<!;§:Boolean = false;
      
      private var § !@§:Number;
      
      private var §,!k§:Number;
      
      private var §7!<§:Number;
      
      private var §+! §:Number;
      
      private var §4Q§:Number;
      
      private var §]!Z§:Number;
      
      public var §,z§:Number = 1;
      
      private var §'!T§:Boolean = false;
      
      public var §4j§:Number = 0;
      
      public var §@Z§:Number = 0;
      
      protected var §,![§:Boolean = false;
      
      public var §+!j§:§7!r§;
      
      protected var §]2§:Sprite;
      
      private var §#!!§:Number = 0;
      
      private var §!!3§:Number = 0;
      
      private var §2F§:Number = 0;
      
      protected var §?z§:Number = 1.0;
      
      private var §4!!§:Boolean = false;
      
      protected var §1!7§:§[!8§;
      
      private var §!+§:Boolean = true;
      
      public function §!u§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc14_:b2PolygonShape = null;
         if(!(_loc17_ && param1))
         {
            super();
            loop0:
            while(true)
            {
               this.§-!>§ = param6;
               loop1:
               while(true)
               {
                  this.§,!;§ = §7!Z§.§`!H§(param6);
                  loop2:
                  while(true)
                  {
                     this.§>0§ = param1;
                     loop3:
                     while(true)
                     {
                        this.§]2§ = param2;
                        loop4:
                        while(true)
                        {
                           this.§?z§ = param10;
                           loop5:
                           while(true)
                           {
                              this.§4!!§ = param11;
                              loop6:
                              while(true)
                              {
                                 this.§6!M§ = param5;
                                 loop7:
                                 for(; _loc16_; if(!(_loc16_ || param2))
                                 {
                                    continue;
                                 },§§push(this.§+!j§),loop14:
                                 while(true)
                                 {
                                    §§push(this.§#"#§);
                                    addr109:
                                    while(true)
                                    {
                                       §§pop().§3![§(§§pop(),this.§,!;§.§-l§(),this.§,!;§.§%!Q§() / §5G§.§6+§,this.§,!;§.§]§() / §5G§.§6+§);
                                       addr125:
                                       addr148:
                                       while(!_loc17_)
                                       {
                                          if(_loc16_)
                                          {
                                             if(_loc16_)
                                             {
                                                continue loop14;
                                             }
                                             continue loop0;
                                          }
                                          §§goto(addr155);
                                       }
                                       while(true)
                                       {
                                          this.§+!j§ = new §7!r§(this,param2,param4);
                                          while(true)
                                          {
                                             §§push(this.§+!j§);
                                             addr86:
                                             while(true)
                                             {
                                                if(§§pop().§]J§(param1.§#!U§.animationManager))
                                                {
                                                   continue loop14;
                                                }
                                                §§goto(addr91);
                                             }
                                             addr73:
                                             if(!(_loc16_ || param3))
                                             {
                                                continue;
                                             }
                                             if(!_loc16_)
                                             {
                                                continue loop2;
                                             }
                                             this.mWorld = param3;
                                             addr82:
                                             if(_loc17_)
                                             {
                                                while(true)
                                                {
                                                   if(_loc16_)
                                                   {
                                                      §§goto(addr73);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr91);
                                                   }
                                                }
                                                §§goto(addr125);
                                                addr71:
                                             }
                                             if(!(_loc17_ && param2))
                                             {
                                                if(_loc17_)
                                                {
                                                   continue loop3;
                                                }
                                                if(!_loc16_)
                                                {
                                                   continue loop1;
                                                }
                                                while(false)
                                                {
                                                   continue loop14;
                                                }
                                                var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
                                                if(_loc16_)
                                                {
                                                   this.§@4§ = this.mWorld.§4!H§(_loc12_);
                                                   if(_loc16_)
                                                   {
                                                      addr230:
                                                      this.§@4§.§%V§(this);
                                                      if(!_loc17_)
                                                      {
                                                         §§push(this.§#"#§);
                                                         if(_loc16_ || param3)
                                                         {
                                                            §§push(§6R§.§&!'§);
                                                            if(!_loc17_)
                                                            {
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  if(!_loc17_)
                                                                  {
                                                                     §§push(b2PolygonShape);
                                                                     §§push(this.§,!;§.shape.§3!8§);
                                                                     if(_loc16_)
                                                                     {
                                                                        §§push(param10);
                                                                        if(!_loc17_)
                                                                        {
                                                                           addr263:
                                                                           §§push(§§pop() * §§pop());
                                                                           §§push(this.§,!;§.shape.§0!Q§);
                                                                           if(_loc16_)
                                                                           {
                                                                              §§push(§§pop() * param10);
                                                                           }
                                                                        }
                                                                        _loc14_ = §§pop().§!!@§(§§pop(),§§pop());
                                                                        if(_loc16_)
                                                                        {
                                                                           this.§]""§ = this.§@4§.CreateFixture2(_loc14_,this.§,!;§.§7"§());
                                                                           if(!_loc17_)
                                                                           {
                                                                              addr342:
                                                                              §§push(this.§]""§);
                                                                              if(!_loc17_)
                                                                              {
                                                                                 §§push(this.§,!;§);
                                                                                 if(_loc16_ || param2)
                                                                                 {
                                                                                    §§push(§§pop().§4Z§());
                                                                                    if(!(_loc17_ && param1))
                                                                                    {
                                                                                       §§pop().§+k§(§§pop());
                                                                                       if(!(_loc17_ && param3))
                                                                                       {
                                                                                          addr386:
                                                                                          this.§]""§.§5!,§(this.§,!;§.§]!&§());
                                                                                       }
                                                                                       var _loc13_:b2FilterData = new b2FilterData();
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          §§push(this.§]!?§());
                                                                                          loop20:
                                                                                          while(true)
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   _loc13_.§[!k§ = §`z§;
                                                                                                   §§push(_loc13_);
                                                                                                   §§push(65535);
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      §§push(§§pop() & ~§<!z§);
                                                                                                   }
                                                                                                   §§pop().§?!K§ = §§pop();
                                                                                                   addr521:
                                                                                                   if(!(_loc17_ && param1))
                                                                                                   {
                                                                                                      addr409:
                                                                                                      loop32:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§]""§.§?!o§(_loc13_);
                                                                                                         if(!(_loc17_ && param1))
                                                                                                         {
                                                                                                            if(!_loc17_)
                                                                                                            {
                                                                                                               this.§=!X§ = this.§,!;§.§@!`§();
                                                                                                               if(_loc16_ || param3)
                                                                                                               {
                                                                                                                  if(false)
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  §§push(this.§,!;§);
                                                                                                                  if(!(_loc17_ && param1))
                                                                                                                  {
                                                                                                                     §§push(§§pop().§]!3§);
                                                                                                                     if(_loc16_ || param3)
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        if(!(_loc17_ && param2))
                                                                                                                        {
                                                                                                                           if(§§pop() > §§pop())
                                                                                                                           {
                                                                                                                              addr669:
                                                                                                                              if(!(_loc17_ && param3))
                                                                                                                              {
                                                                                                                                 this.§0M§ = this.§]!3§ = this.§,!;§.§]!3§;
                                                                                                                                 if(_loc16_ || param2)
                                                                                                                                 {
                                                                                                                                    addr723:
                                                                                                                                    if(this.§,!;§.§-!o§ != §4K§.§&!8§)
                                                                                                                                    {
                                                                                                                                       §§push(this.§+!j§);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().setDamagedFrame();
                                                                                                                                          addr715:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc16_ || param3))
                                                                                                                                             {
                                                                                                                                                break loop32;
                                                                                                                                             }
                                                                                                                                             loop26:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                addr684:
                                                                                                                                                if(!this.isTexture())
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                addr685:
                                                                                                                                                loop31:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(param9);
                                                                                                                                                   addr686:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(0);
                                                                                                                                                      addr687:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop() != §§pop())
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc17_ && param3))
                                                                                                                                                            {
                                                                                                                                                               this.§4I§(param9);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            addr708:
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            this.§>!d§();
                                                                                                                                                            addr673:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc16_ || param3)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     this.§?!5§(0,1);
                                                                                                                                                                     addr662:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc16_ || param1))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop31;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop31;
                                                                                                                                                                  }
                                                                                                                                                                  return;
                                                                                                                                                                  addr656:
                                                                                                                                                                  addr680:
                                                                                                                                                               }
                                                                                                                                                               continue loop26;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr714:
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 addr613:
                                                                                                                                 this.§0M§ = this.§]!3§ = 1;
                                                                                                                                 if(_loc16_)
                                                                                                                                 {
                                                                                                                                    addr624:
                                                                                                                                    §§goto(addr723);
                                                                                                                                 }
                                                                                                                                 §§goto(addr685);
                                                                                                                                 §§goto(addr685);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§+!j§);
                                                                                                                                 if(_loc16_)
                                                                                                                                 {
                                                                                                                                    §§pop().§8c§(this.§,!;§.shape);
                                                                                                                                    if(_loc16_)
                                                                                                                                    {
                                                                                                                                       if(_loc16_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc17_ && param1))
                                                                                                                                          {
                                                                                                                                             if(!(_loc16_ || param1))
                                                                                                                                             {
                                                                                                                                                §§goto(addr715);
                                                                                                                                             }
                                                                                                                                             §§goto(addr656);
                                                                                                                                          }
                                                                                                                                          §§goto(addr708);
                                                                                                                                       }
                                                                                                                                       §§goto(addr673);
                                                                                                                                    }
                                                                                                                                    §§goto(addr662);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr714);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr669:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              this.§0M§ = this.§]!3§ = Math.round(this.§^!e§(true) * this.§,!;§.§2!H§());
                                                                                                                              if(!_loc17_)
                                                                                                                              {
                                                                                                                                 addr593:
                                                                                                                                 §§push(this.§0M§);
                                                                                                                                 if(_loc16_)
                                                                                                                                 {
                                                                                                                                    §§push(1);
                                                                                                                                    if(_loc16_ || param1)
                                                                                                                                    {
                                                                                                                                       addr605:
                                                                                                                                       if(§§pop() < §§pop())
                                                                                                                                       {
                                                                                                                                          if(_loc16_ || this)
                                                                                                                                          {
                                                                                                                                             §§goto(addr613);
                                                                                                                                          }
                                                                                                                                          §§goto(addr669);
                                                                                                                                       }
                                                                                                                                       §§goto(addr723);
                                                                                                                                    }
                                                                                                                                    §§goto(addr687);
                                                                                                                                 }
                                                                                                                                 §§goto(addr686);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr624);
                                                                                                                        }
                                                                                                                        §§goto(addr605);
                                                                                                                     }
                                                                                                                     §§goto(addr686);
                                                                                                                  }
                                                                                                                  §§goto(addr723);
                                                                                                               }
                                                                                                               §§goto(addr680);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr521);
                                                                                                            }
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§]2§.visible = false;
                                                                                                         §§goto(addr733);
                                                                                                      }
                                                                                                      addr409:
                                                                                                      addr729:
                                                                                                   }
                                                                                                   §§goto(addr685);
                                                                                                }
                                                                                                §§goto(addr593);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(this.§-!>§);
                                                                                                loop21:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().toUpperCase() == "MISC_WHITE_BIRD_EGG");
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         addr485:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               if(_loc17_ && param3)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               continue loop21;
                                                                                                            }
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         §§goto(addr656);
                                                                                                         addr485:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr465:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc13_.§[!k§ = §<!z§;
                                                                                                               if(!_loc17_)
                                                                                                               {
                                                                                                                  §§push(_loc13_);
                                                                                                                  §§push(65535);
                                                                                                                  if(!(_loc17_ && this))
                                                                                                                  {
                                                                                                                     §§push(§§pop() & ~§`z§);
                                                                                                                  }
                                                                                                                  §§pop().§?!K§ = §§pop();
                                                                                                                  if(_loc16_)
                                                                                                                  {
                                                                                                                     if(!_loc16_)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§goto(addr409);
                                                                                                                  }
                                                                                                                  §§goto(addr669);
                                                                                                               }
                                                                                                               §§goto(addr656);
                                                                                                            }
                                                                                                            addr467:
                                                                                                         }
                                                                                                         §§goto(addr409);
                                                                                                      }
                                                                                                      §§goto(addr729);
                                                                                                   }
                                                                                                   §§goto(addr485);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr656);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr467);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr386);
                                                                           }
                                                                        }
                                                                        §§goto(addr386);
                                                                     }
                                                                     §§goto(addr263);
                                                                  }
                                                                  §§goto(addr342);
                                                               }
                                                               else
                                                               {
                                                                  §§push(this.§#"#§);
                                                                  if(!_loc17_)
                                                                  {
                                                                     addr292:
                                                                     §§push(§6R§.§9!Z§);
                                                                     if(_loc16_ || param1)
                                                                     {
                                                                        addr301:
                                                                        §§push(§§pop() == §§pop());
                                                                        if(!(_loc17_ && param2))
                                                                        {
                                                                           if(!§§pop())
                                                                           {
                                                                              if(_loc16_)
                                                                              {
                                                                                 addr313:
                                                                                 §§pop();
                                                                                 if(!(_loc17_ && this))
                                                                                 {
                                                                                    addr326:
                                                                                    if(this.§#"#§ == §6R§.§#""§)
                                                                                    {
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr342);
                                                                                 }
                                                                                 this.§]""§ = this.§@4§.CreateFixture2(this.§,!;§.shape.§'!k§(param10),this.§,!;§.§7"§());
                                                                                 §§goto(addr342);
                                                                              }
                                                                           }
                                                                           §§goto(addr326);
                                                                        }
                                                                        §§goto(addr313);
                                                                     }
                                                                  }
                                                                  §§goto(addr326);
                                                               }
                                                            }
                                                            §§goto(addr301);
                                                         }
                                                         §§goto(addr292);
                                                      }
                                                      §§goto(addr342);
                                                   }
                                                   §§goto(addr326);
                                                }
                                                §§goto(addr230);
                                             }
                                             else
                                             {
                                                §§goto(addr125);
                                             }
                                          }
                                       }
                                    }
                                 })
                                 {
                                    this.§-!o§ = this.§,!;§.§-!o§;
                                    while(true)
                                    {
                                       this.§#"#§ = this.§,!;§.§7!X§();
                                       addr155:
                                       while(_loc16_)
                                       {
                                          continue loop5;
                                       }
                                       addr91:
                                       continue loop6;
                                       while(!(_loc17_ && param3))
                                       {
                                          continue loop7;
                                       }
                                    }
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      public static function §5F§(param1:int, param2:§6!D§, param3:String = "") : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            if(param2 == null)
            {
               if(_loc5_)
               {
                  §§goto(addr28);
               }
            }
            var _loc4_:String;
            §§push(_loc4_ = param2.§2!?§[param1]);
            if(_loc5_)
            {
               if(§§pop().length > 0)
               {
                  if(_loc5_ || param1)
                  {
                     §§push(param3);
                     if(_loc5_)
                     {
                        addr71:
                        if(§§pop().length <= 0)
                        {
                           if(!_loc6_)
                           {
                              §§push(param2.§8!F§);
                              if(_loc6_ && param3)
                              {
                              }
                           }
                           §§goto(addr86);
                        }
                        §-!Q§.§7"$§(_loc4_,param3);
                     }
                     §§goto(addr86);
                  }
               }
               addr86:
               param3 = §§pop();
               if(!_loc5_)
               {
               }
               return;
            }
            §§goto(addr71);
         }
         addr28:
      }
      
      public static function §=!P§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(360);
         §§push(param1);
         if(_loc2_)
         {
            §§push(180);
            if(_loc2_ || §!u§)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc3_ && param1))
               {
                  §§push(§§pop() / Math.PI);
                  if(!_loc3_)
                  {
                     addr52:
                     §§push(§§pop() % 360);
                  }
               }
               §§push(§§pop() - §§pop());
               if(_loc2_)
               {
                  return §§pop() % 360;
               }
            }
         }
         §§goto(addr52);
      }
      
      public static function §[!R§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(360);
         §§push(param1);
         if(_loc4_)
         {
            §§push(§§pop() % 360);
         }
         §§push(§§pop() - §§pop());
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop() / (180 / Math.PI));
            if(_loc4_ || param1)
            {
               addr53:
               return Number(§§pop());
            }
         }
         §§goto(addr53);
      }
      
      public function get sprite() : Sprite
      {
         return this.§]2§;
      }
      
      public function get x() : Number
      {
         return this.§#!!§;
      }
      
      public function get y() : Number
      {
         return this.§!!3§;
      }
      
      public function get scale() : Number
      {
         return this.§?z§;
      }
      
      public function get front() : Boolean
      {
         return this.§4!!§;
      }
      
      public function get §`!v§() : Number
      {
         return this.§@4§.GetPosition().x;
      }
      
      public function get §&x§() : Number
      {
         return this.§@4§.GetPosition().y;
      }
      
      public function get §2f§() : §4K§
      {
         return this.§,!;§;
      }
      
      public function get §5d§() : Boolean
      {
         return this.§=!X§ >= 0;
      }
      
      public function get §^!W§() : § 4§
      {
         return this.§>0§;
      }
      
      public function get §6]§() : Boolean
      {
         return this.§!+§;
      }
      
      public function set §6]§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§!+§ = param1;
         }
      }
      
      public function set §+!z§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§<!;§ = param1;
         }
      }
      
      public function set §;c§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§1!7§.§;c§ = param1;
         }
      }
      
      public function get §;c§() : uint
      {
         return this.§1!7§.§;c§;
      }
      
      public function get §1!U§() : Boolean
      {
         return this.§'!T§;
      }
      
      public function set §1!U§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§'!T§ = param1;
         }
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function getSpecialAnimationTimeLeft() : Number
      {
         return 0;
      }
      
      public function get uniqueID() : String
      {
         return this.§5I§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§5I§ = param1;
         }
      }
      
      public function §-!w§(param1:b2FilterData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§]""§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(_loc3_)
                  {
                     addr28:
                     this.§]""§.§?!o§(param1);
                  }
               }
               return;
            }
         }
         §§goto(addr28);
      }
      
      protected function §=!f§(param1:String) : int
      {
         return §>p§.§=!f§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2BodyDef = new b2BodyDef();
         if(_loc4_ || _loc3_)
         {
            §§push(_loc3_.position);
            loop0:
            while(true)
            {
               §§push(param1);
               addr137:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr44);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.mWorld);
            if(!(_loc1_ && _loc2_))
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.mWorld);
                     addr139:
                     while(true)
                     {
                        §§pop().§],§(this.§63§());
                        loop10:
                        while(true)
                        {
                           this.mWorld = null;
                           loop11:
                           while(true)
                           {
                              if(!(_loc2_ || _loc2_))
                              {
                                 continue loop10;
                              }
                              addr126:
                              while(true)
                              {
                                 this.§+!j§.dispose();
                                 loop2:
                                 while(true)
                                 {
                                    §§push(this.§]2§);
                                    if(_loc2_ || _loc1_)
                                    {
                                       if(!§§pop())
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             this.§]""§ = null;
                                             while(true)
                                             {
                                                if(!_loc1_)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      this.§[$§ = null;
                                                      while(!_loc1_)
                                                      {
                                                         if(_loc2_ || _loc2_)
                                                         {
                                                            this.§,!;§ = null;
                                                            if(!_loc1_)
                                                            {
                                                               return;
                                                            }
                                                            continue;
                                                            continue;
                                                         }
                                                         continue loop11;
                                                      }
                                                      continue;
                                                   }
                                                   continue loop0;
                                                }
                                                while(true)
                                                {
                                                   if(!(_loc2_ || _loc2_))
                                                   {
                                                      continue loop2;
                                                   }
                                                   if(!_loc1_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   addr99:
                                                   this.§]2§ = null;
                                                }
                                                continue loop2;
                                             }
                                             continue loop10;
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(this.§]2§);
                                       }
                                       addr89:
                                    }
                                    while(true)
                                    {
                                       §§pop().dispose();
                                       continue loop2;
                                    }
                                 }
                                 §§goto(addr126);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr100);
            }
            §§goto(addr139);
         }
         §§goto(addr89);
      }
      
      public function §4I§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§63§());
            §§push(360);
            §§push(param1);
            if(_loc3_)
            {
               §§push(§§pop() % 360);
            }
            §§push(§§pop() - §§pop());
            if(!(_loc2_ && _loc3_))
            {
               §§push(§§pop() / (180 / Math.PI));
            }
            §§pop().§?!=§(§§pop());
         }
      }
      
      public function §3C§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(360);
         §§push(this.§63§().GetAngle());
         if(!_loc2_)
         {
            §§push(180);
            if(!_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(_loc2_)
               {
               }
               §§goto(addr50);
            }
            §§push(§§pop() % §§pop());
         }
         addr50:
         §§push(§§pop() / Math.PI);
         if(!(_loc2_ && _loc1_))
         {
            §§push(360);
         }
         §§push(§§pop() - §§pop());
         if(!_loc2_)
         {
            return §§pop() % 360;
         }
      }
      
      public function §5!;§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.§63§().SetLinearVelocity(param1);
            while(true)
            {
               §§push(param2);
               while(true)
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  if(!_loc4_)
                  {
                     this.§<"#§();
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§]""§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            §§push(this.§63§());
            while(true)
            {
               §§push(§§pop().GetPosition());
               loop1:
               while(true)
               {
                  §§push(§§pop().x);
                  loop2:
                  while(true)
                  {
                     §§push(param3);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() >= §§pop());
                        while(true)
                        {
                           §§push(§§pop());
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       §§push(this.§63§());
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§§pop().GetPosition());
                                          loop9:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             loop10:
                                             while(true)
                                             {
                                                §§push(param4);
                                                loop11:
                                                while(!_loc6_)
                                                {
                                                   §§push(§§pop() <= §§pop());
                                                   if(!_loc6_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop22:
                                                         while(true)
                                                         {
                                                            if(!(_loc5_ || param2))
                                                            {
                                                               continue loop5;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc5_)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           return §§pop();
                                                                        }
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           if(!_loc5_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§63§());
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              addr29:
                                                                              §§push(§§pop().GetPosition());
                                                                              if(!(_loc6_ && param2))
                                                                              {
                                                                                 addr37:
                                                                                 §§push(§§pop().y);
                                                                                 if(_loc5_ || param3)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                    §§push(param2);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       continue loop20;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(_loc5_)
                                                                                    {
                                                                                       §§push(param1);
                                                                                       §§goto(addr37);
                                                                                    }
                                                                                    continue loop2;
                                                                                    addr101:
                                                                                 }
                                                                                 while(_loc5_)
                                                                                 {
                                                                                    §§push(§§pop() >= §§pop());
                                                                                    continue loop18;
                                                                                 }
                                                                                 continue loop11;
                                                                              }
                                                                              addr96:
                                                                              while(_loc5_)
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 §§push(§§pop().y);
                                                                                 §§goto(addr29);
                                                                              }
                                                                              continue loop9;
                                                                              §§goto(addr101);
                                                                           }
                                                                        }
                                                                        while(!_loc6_)
                                                                        {
                                                                           §§push(this.§63§());
                                                                           continue loop8;
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                     continue loop22;
                                                                  }
                                                                  continue loop22;
                                                               }
                                                               continue loop5;
                                                            }
                                                         }
                                                      }
                                                      addr127:
                                                   }
                                                   §§goto(addr147);
                                                }
                                                continue loop3;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr127);
                           }
                        }
                     }
                  }
               }
               if(!(_loc5_ || param1))
               {
                  continue;
               }
               §§goto(addr96);
               §§push(§§pop().GetPosition());
            }
         }
         §§goto(addr115);
      }
      
      public function §'y§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§[$§ = param1;
         }
      }
      
      public function §]!u§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§[$§)
            {
               do
               {
                  this.§5!;§(this.§[$§,false);
                  do
                  {
                     this.§[$§ = null;
                  }
                  while(_loc1_);
                  
               }
               while(_loc1_);
               
               addr46:
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function §<"#§(param1:b2Vec2 = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1)
            {
               if(_loc2_)
               {
                  §§push(this.§63§());
                  if(!(_loc3_ && this))
                  {
                     param1 = §§pop().GetLinearVelocity();
                     addr34:
                     §§push(param1.x);
                     if(_loc2_ || this)
                     {
                        §§push(0);
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(§§pop() == §§pop());
                           if(!(_loc3_ && this))
                           {
                              if(§§pop())
                              {
                                 if(_loc2_ || this)
                                 {
                                    addr78:
                                    §§pop();
                                    if(_loc2_ || _loc3_)
                                    {
                                       addr129:
                                       if(param1.y != 0)
                                       {
                                          §§push(this.§63§());
                                          if(!_loc3_)
                                          {
                                             addr108:
                                             §§pop().§&e§(Math.atan2(param1.x,param1.y));
                                             if(!_loc3_)
                                             {
                                                if(_loc3_ && param1)
                                                {
                                                   addr132:
                                                   this.§63§().§&e§(0);
                                                   addr134:
                                                   addr130:
                                                }
                                                else
                                                {
                                                   addr124:
                                                }
                                                return;
                                             }
                                             §§goto(addr134);
                                          }
                                          §§goto(addr132);
                                       }
                                       addr86:
                                    }
                                    §§goto(addr130);
                                 }
                              }
                              §§goto(addr129);
                           }
                           §§goto(addr78);
                        }
                     }
                     §§goto(addr129);
                  }
                  §§goto(addr108);
               }
               §§goto(addr124);
            }
            §§goto(addr34);
         }
         §§goto(addr86);
      }
      
      public function §,!!§(param1:b2Vec2 = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            if(!param1)
            {
               addr45:
               param1 = this.§63§().GetLinearVelocity();
            }
            §§push(Math.atan2(-param1.y,param1.x) * (180 / Math.PI));
            if(_loc3_)
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(_loc3_)
            {
               this.§4I§(_loc2_);
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function §!!g§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§63§().§&e§(param1);
         }
      }
      
      public function §63§() : b2Body
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§]""§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop() != null)
               {
                  if(_loc1_)
                  {
                     §§goto(addr48);
                  }
               }
               return null;
            }
            §§goto(addr48);
         }
         addr48:
         return this.§]""§.GetBody();
      }
      
      public function §9H§(param1:Number = -9999, param2:Number = -9999) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            if(param1 != -9999)
            {
               if(_loc3_)
               {
                  this.§#!!§ = param1;
               }
               while(true)
               {
                  this.§!!3§ = param2;
                  addr110:
                  while(!_loc4_)
                  {
                  }
               }
            }
            while(true)
            {
               §§push(this.§63§());
               loop3:
               while(true)
               {
                  §§push(§§pop().GetPosition());
                  addr99:
                  while(true)
                  {
                     §§push(this.§#!!§);
                     addr101:
                     while(true)
                     {
                        §§push(§5G§.§6+§);
                        addr103:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           addr104:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              continue loop3;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      public function §?!5§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc3_:* = false;
         if(!_loc6_)
         {
            §§push(this.§,![§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(true);
                     loop2:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        while(true)
                        {
                           this.§,![§ = false;
                           while(!_loc6_)
                           {
                              loop9:
                              while(!(_loc6_ && this))
                              {
                                 while(true)
                                 {
                                    addr396:
                                    addr422:
                                    while(true)
                                    {
                                       §§push(this.updateFlyingFrameAnimations(param2));
                                       if(!_loc6_)
                                       {
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(true);
                                                addr406:
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   addr417:
                                                   while(true)
                                                   {
                                                   }
                                                }
                                             }
                                             addr405:
                                          }
                                          loop12:
                                          while(true)
                                          {
                                             §§push(this.updateScreamingFrameAnimations(param2));
                                             loop13:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(true);
                                                      addr392:
                                                      while(_loc5_)
                                                      {
                                                         _loc3_ = §§pop();
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      continue loop0;
                                                   }
                                                   addr391:
                                                }
                                                while(true)
                                                {
                                                   §§push(this.updateBlinkingFrameAnimations(param2));
                                                   loop18:
                                                   while(_loc5_ || param2)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(true);
                                                            addr384:
                                                            while(true)
                                                            {
                                                               _loc3_ = §§pop();
                                                               addr385:
                                                               while(true)
                                                               {
                                                               }
                                                            }
                                                            loop46:
                                                            while(!(_loc6_ && this))
                                                            {
                                                               if(!(_loc5_ || _loc3_))
                                                               {
                                                                  continue loop9;
                                                               }
                                                               addr119:
                                                               loop39:
                                                               while(true)
                                                               {
                                                                  §§push(this.§]2§);
                                                                  while(true)
                                                                  {
                                                                     §§pop().x = Math.round(this.§#!!§);
                                                                     loop41:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§]2§);
                                                                        loop42:
                                                                        while(true)
                                                                        {
                                                                           §§pop().y = Math.round(this.§!!3§);
                                                                           addr83:
                                                                           addr63:
                                                                           while(true)
                                                                           {
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 continue loop42;
                                                                              }
                                                                              continue loop41;
                                                                           }
                                                                           if(_loc6_)
                                                                           {
                                                                              continue loop46;
                                                                           }
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(_loc5_ || param1)
                                                                              {
                                                                                 return;
                                                                              }
                                                                              loop44:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc6_ && param2))
                                                                                 {
                                                                                    this.§#!!§ = this.§ !@§;
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(!(_loc5_ || param2))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                this.§!!3§ = this.§,!k§;
                                                                                                continue loop46;
                                                                                             }
                                                                                             loop26:
                                                                                             while(true)
                                                                                             {
                                                                                                loop27:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§,z§);
                                                                                                   loop28:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() > 1);
                                                                                                      if(!(_loc6_ && this))
                                                                                                      {
                                                                                                         if(_loc5_)
                                                                                                         {
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  loop47:
                                                                                                                  for(; !(_loc6_ && param2); do
                                                                                                                  {
                                                                                                                     if(_loc6_ && this)
                                                                                                                     {
                                                                                                                        continue loop47;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(_loc5_);
                                                                                                                  ,while(!_loc6_)
                                                                                                                  {
                                                                                                                     if(!(_loc6_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           continue loop27;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§+!j§);
                                                                                                                           addr369:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop().§=!2§();
                                                                                                                              continue loop27;
                                                                                                                           }
                                                                                                                           continue loop44;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc3_ = §§pop();
                                                                                                                           continue loop9;
                                                                                                                        }
                                                                                                                        addr426:
                                                                                                                     }
                                                                                                                  },continue loop18)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§+!j§);
                                                                                                                        addr266:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop().§2!G§));
                                                                                                                           continue loop47;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop13;
                                                                                                                  addr346:
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     loop30:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(4);
                                                                                                                        §§push(this.§+!j§.§2!G§.blurX - 4);
                                                                                                                        if(!(_loc6_ && _loc3_))
                                                                                                                        {
                                                                                                                           §§push(param2);
                                                                                                                           if(_loc5_ || this)
                                                                                                                           {
                                                                                                                              §§push(§§pop() / 20);
                                                                                                                           }
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!_loc6_)
                                                                                                                           {
                                                                                                                              addr306:
                                                                                                                              §§push(§§pop() % 28);
                                                                                                                           }
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc5_ || param2)
                                                                                                                           {
                                                                                                                              if(_loc6_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           _loc4_ = §§pop();
                                                                                                                           while(!(_loc6_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§push(this.§+!j§);
                                                                                                                              while(_loc5_)
                                                                                                                              {
                                                                                                                                 if(_loc5_ || param1)
                                                                                                                                 {
                                                                                                                                    §§pop().§2!G§.blurX = _loc4_;
                                                                                                                                    while(!_loc6_)
                                                                                                                                    {
                                                                                                                                       §§push(this.§+!j§);
                                                                                                                                       loop34:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§pop().§2!G§.blurY = _loc4_;
                                                                                                                                          addr238:
                                                                                                                                          while(!_loc6_)
                                                                                                                                          {
                                                                                                                                             if(_loc5_)
                                                                                                                                             {
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   continue loop34;
                                                                                                                                                }
                                                                                                                                                continue loop1;
                                                                                                                                             }
                                                                                                                                             §§goto(addr405);
                                                                                                                                          }
                                                                                                                                          §§goto(addr395);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop30;
                                                                                                                                    addr260:
                                                                                                                                 }
                                                                                                                                 §§goto(addr369);
                                                                                                                              }
                                                                                                                              §§goto(addr266);
                                                                                                                              if(!(_loc5_ || this))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              if(!(_loc6_ && param1))
                                                                                                                              {
                                                                                                                                 continue loop39;
                                                                                                                              }
                                                                                                                              §§goto(addr391);
                                                                                                                           }
                                                                                                                           continue loop12;
                                                                                                                        }
                                                                                                                        §§goto(addr306);
                                                                                                                     }
                                                                                                                     continue loop28;
                                                                                                                  }
                                                                                                                  §§goto(addr200);
                                                                                                               }
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr384);
                                                                                                      }
                                                                                                      §§goto(addr346);
                                                                                                   }
                                                                                                   §§goto(addr406);
                                                                                                   continue loop26;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr260);
                                                                                       }
                                                                                       §§goto(addr176);
                                                                                    }
                                                                                    §§goto(addr385);
                                                                                    addr125:
                                                                                 }
                                                                                 §§goto(addr367);
                                                                              }
                                                                           }
                                                                           §§goto(addr125);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr357);
                                                         §§goto(addr385);
                                                      }
                                                   }
                                                   §§goto(addr392);
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr406);
                                    }
                                    while(!_loc6_)
                                    {
                                       if(!§§pop())
                                       {
                                          §§goto(addr396);
                                       }
                                       §§goto(addr425);
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr422);
               }
            }
         }
         §§goto(addr434);
      }
      
      public function §>!d§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§63§().GetPosition().x);
         if(_loc4_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(this.§63§().GetPosition().y);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            this.§]!Z§ = this.§7!<§;
            while(true)
            {
               this.§+! § = this.§ !@§;
               while(true)
               {
                  this.§4Q§ = this.§,!k§;
                  loop2:
                  for(; _loc4_ || this; loop4:
                  while(!(_loc3_ && _loc3_))
                  {
                     §§push(this);
                     §§push(_loc1_);
                     if(_loc4_ || this)
                     {
                        §§push(§§pop() / §5G§.§6+§);
                     }
                     §§pop().§ !@§ = §§pop();
                     loop5:
                     while(true)
                     {
                        §§push(this);
                        §§push(_loc2_);
                        if(!(_loc3_ && _loc2_))
                        {
                           §§push(§§pop() / §5G§.§6+§);
                        }
                        §§pop().§,!k§ = §§pop();
                        loop6:
                        while(!_loc3_)
                        {
                           §§push(this.§1!7§);
                           while(true)
                           {
                              §§pop().§+!R§();
                              while(true)
                              {
                                 §§push(this.§1!7§);
                                 if(!_loc4_)
                                 {
                                    break;
                                 }
                                 §§pop().§4k§(this.§63§());
                                 if(_loc4_ || _loc2_)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop5;
                                    }
                                    continue loop6;
                                 }
                              }
                           }
                        }
                        continue loop4;
                     }
                  })
                  {
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§63§().GetAngle());
                        if(_loc4_ || this)
                        {
                           §§push(180);
                           if(_loc4_ || _loc3_)
                           {
                              §§push(§§pop() * (§§pop() / Math.PI));
                              if(_loc4_ || this)
                              {
                                 addr156:
                                 §§push(§§pop() % 360);
                              }
                              §§pop().§7!<§ = §§pop();
                              continue loop2;
                           }
                        }
                        §§goto(addr156);
                     }
                  }
               }
               if(_loc4_ || this)
               {
                  return;
               }
            }
         }
         §§goto(addr188);
      }
      
      protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         return false;
      }
      
      protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         return false;
      }
      
      protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         return false;
      }
      
      protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §]!4§(param1:Number, param2:Number = -1) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(1e-9);
               loop1:
               while(true)
               {
                  if(§§pop() > §§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(§<m§);
                        §§push("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = ");
                        if(_loc3_ || _loc3_)
                        {
                           §§push(§§pop() + param1);
                           if(_loc3_)
                           {
                              addr961:
                              §§push(§§pop() + " overriding to 0");
                           }
                           §§pop().log(§§pop());
                           loop3:
                           while(true)
                           {
                              addr921:
                              while(true)
                              {
                                 §§push(param2);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(0);
                                    loop6:
                                    while(true)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             §§push(this.§>0§.§#!U§.mLevelEngine.§8l§);
                                             while(true)
                                             {
                                                §§push(1000);
                                                addr941:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   addr942:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr943:
                                                      while(true)
                                                      {
                                                         param2 = §§pop();
                                                         addr944:
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                   }
                                                }
                                                addr696:
                                                if(_loc4_ && this)
                                                {
                                                   continue;
                                                }
                                                §§push(0);
                                                loop52:
                                                while(true)
                                                {
                                                   §§push(§§pop() == §§pop());
                                                   loop53:
                                                   while(!_loc4_)
                                                   {
                                                      loop54:
                                                      while(!§§pop())
                                                      {
                                                         §§push(this.§]!Z§);
                                                         loop55:
                                                         while(true)
                                                         {
                                                            §§push(this.§7!<§);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() > §§pop());
                                                               loop57:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  loop58:
                                                                  while(!(_loc4_ && param2))
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           loop66:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    if(!(_loc4_ && this))
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          if(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             §§push(this);
                                                                                             §§push(this.§7!<§);
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                §§push(param1);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §§push(this.§]!Z§);
                                                                                                   if(!(_loc4_ && param2))
                                                                                                   {
                                                                                                      §§push(§§pop() - this.§7!<§);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr655:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            addr653:
                                                                                                            §§push(§§pop() / param2);
                                                                                                         }
                                                                                                         §§pop().§2F§ = §§pop() + §§pop();
                                                                                                         addr656:
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            addr658:
                                                                                                            if(_loc3_ || param1)
                                                                                                            {
                                                                                                               §§goto(addr24);
                                                                                                            }
                                                                                                            loop42:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  continue loop7;
                                                                                                               }
                                                                                                               §§push(this);
                                                                                                               §§push(this.§,!k§);
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + this.§@Z§);
                                                                                                               }
                                                                                                               §§pop().§!!3§ = §§pop();
                                                                                                               loop43:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  loop44:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§7!<§);
                                                                                                                     addr717:
                                                                                                                     loop45:
                                                                                                                     while(!_loc4_)
                                                                                                                     {
                                                                                                                        §§push(this.§]!Z§);
                                                                                                                        loop46:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                           loop47:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              addr723:
                                                                                                                              while(_loc3_ || param2)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    break loop53;
                                                                                                                                 }
                                                                                                                                 continue loop54;
                                                                                                                              }
                                                                                                                              loop35:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    loop36:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       addr836:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(param1);
                                                                                                                                          loop38:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             loop39:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() == §§pop());
                                                                                                                                                addr805:
                                                                                                                                                loop40:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§pop();
                                                                                                                                                         break loop40;
                                                                                                                                                      }
                                                                                                                                                      addr912:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                loop24:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(param1);
                                                                                                                                                   loop25:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(0);
                                                                                                                                                      addr890:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() == §§pop());
                                                                                                                                                         addr891:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            addr892:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     this.§4j§ = 0;
                                                                                                                                                                     addr896:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        this.§#!!§ = this.§ !@§;
                                                                                                                                                                        addr886:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr893:
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§push(this);
                                                                                                                                                                  §§push(param1);
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§+! §);
                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - this.§ !@§);
                                                                                                                                                                        if(!(_loc4_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           addr879:
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(_loc3_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param2);
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().§4j§ = §§pop();
                                                                                                                                                                           loop29:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this);
                                                                                                                                                                              §§push(this.§ !@§);
                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + this.§4j§);
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().§#!!§ = §§pop();
                                                                                                                                                                              loop30:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 addr820:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§,!k§);
                                                                                                                                                                                    loop32:
                                                                                                                                                                                    while(!(_loc4_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§4Q§);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() == §§pop());
                                                                                                                                                                                          addr833:
                                                                                                                                                                                          addr73:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop35;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc4_ && param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr81:
                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                          §§push(180);
                                                                                                                                                                                          if(!(_loc4_ && _loc3_))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc3_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc4_ && param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop39;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!(_loc3_ || param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop6;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() > §§pop());
                                                                                                                                                                                                if(!(_loc4_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc4_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr115:
                                                                                                                                                                                                      if(_loc3_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         loop93:
                                                                                                                                                                                                         for(; §§pop(); §§goto(addr115))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc4_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc4_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc4_ && param2))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop3;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(this);
                                                                                                                                                                                                                        §§push(this.§7!<§);
                                                                                                                                                                                                                        if(!(_loc4_ && param2))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(param1);
                                                                                                                                                                                                                           if(!_loc4_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§]!Z§);
                                                                                                                                                                                                                              if(!(_loc4_ && param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() + 360);
                                                                                                                                                                                                                                 if(_loc3_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr175:
                                                                                                                                                                                                                                    §§push(§§pop() - this.§7!<§);
                                                                                                                                                                                                                                    if(!(_loc4_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr195:
                                                                                                                                                                                                                                       addr196:
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       if(_loc3_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(param2);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§pop().§2F§ = §§pop() + §§pop();
                                                                                                                                                                                                                                       if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop29;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr392:
                                                                                                                                                                                                                                       if(!(_loc4_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr793:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc4_ && param2))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop44;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr886);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr195);
                                                                                                                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr175);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr195);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr196);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        loop60:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§]!Z§);
                                                                                                                                                                                                                              loop61:
                                                                                                                                                                                                                              for(; !_loc4_; if(!(_loc3_ || param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                              },if(!_loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop55;
                                                                                                                                                                                                                              },§§goto(addr232),§§push(this.§7!<§))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§7!<§);
                                                                                                                                                                                                                                 loop62:
                                                                                                                                                                                                                                 for(; !(_loc4_ && param1); if(!(_loc3_ || _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                 },§§push(§§pop() < §§pop()),if(_loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr244);
                                                                                                                                                                                                                                 },§§goto(addr273))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                    loop63:
                                                                                                                                                                                                                                    while(!(_loc4_ && param2))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop52;
                                                                                                                                                                                                                                       loop73:
                                                                                                                                                                                                                                       for(; !(_loc4_ && _loc3_); while(_loc3_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(180);
                                                                                                                                                                                                                                          while(!(_loc4_ && param2))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc3_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr338);
                                                                                                                                                                                                                                                §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§goto(addr941);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr942);
                                                                                                                                                                                                                                             §§goto(addr81);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop52;
                                                                                                                                                                                                                                       })
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this.§7!<§);
                                                                                                                                                                                                                                          loop74:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                             addr457:
                                                                                                                                                                                                                                             loop75:
                                                                                                                                                                                                                                             while(!(_loc4_ && this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(180);
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                   loop77:
                                                                                                                                                                                                                                                   while(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      loop78:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr485:
                                                                                                                                                                                                                                                            if(_loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc4_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop30;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push(this);
                                                                                                                                                                                                                                                               §§push(this.§7!<§);
                                                                                                                                                                                                                                                               if(_loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(param1);
                                                                                                                                                                                                                                                                  if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(this.§]!Z§);
                                                                                                                                                                                                                                                                     if(_loc3_ || param2)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() - 360);
                                                                                                                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() - this.§7!<§);
                                                                                                                                                                                                                                                                           if(!_loc4_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr526:
                                                                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr524:
                                                                                                                                                                                                                                                                                 §§push(§§pop() / param2);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§pop().§2F§ = §§pop() + §§pop();
                                                                                                                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 break loop93;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop2;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr524);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr526);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.§]!Z§);
                                                                                                                                                                                                                                                            loop79:
                                                                                                                                                                                                                                                            for(; _loc3_ || param2; while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc4_ && param2)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop79;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!(_loc3_ || param1))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!_loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop32;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr312);
                                                                                                                                                                                                                                                               §§push(this.§]!Z§);
                                                                                                                                                                                                                                                               §§goto(addr40);
                                                                                                                                                                                                                                                            },continue loop75)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(this.§7!<§);
                                                                                                                                                                                                                                                               loop80:
                                                                                                                                                                                                                                                               while(_loc3_ || param2)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                                                                     addr423:
                                                                                                                                                                                                                                                                     loop82:
                                                                                                                                                                                                                                                                     while(_loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr734:
                                                                                                                                                                                                                                                                           loop83:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc4_ && param2))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr433:
                                                                                                                                                                                                                                                                                 if(!(_loc3_ || param2))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    loop69:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc3_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc4_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop53;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop36;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          if(_loc3_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                                                                             break loop82;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr833);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                                                                             break loop69;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr683:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr433);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop60;
                                                                                                                                                                                                                                                                                    addr549:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                                                                 while(_loc3_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(this.§7!<§);
                                                                                                                                                                                                                                                                                    continue loop79;
                                                                                                                                                                                                                                                                                    if(!(_loc3_ || this))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(!_loc4_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc4_ && _loc3_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          break loop54;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(_loc3_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(this);
                                                                                                                                                                                                                                                                                          §§push(this.§7!<§);
                                                                                                                                                                                                                                                                                          if(_loc3_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(param1);
                                                                                                                                                                                                                                                                                             if(!_loc4_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(this.§]!Z§);
                                                                                                                                                                                                                                                                                                if(_loc3_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() - this.§7!<§);
                                                                                                                                                                                                                                                                                                   if(_loc3_ || this)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr391:
                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                      if(!(_loc4_ && param1))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr389:
                                                                                                                                                                                                                                                                                                         §§push(§§pop() / param2);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§pop().§2F§ = §§pop() + §§pop();
                                                                                                                                                                                                                                                                                                      §§goto(addr392);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr389);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr391);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§goto(addr893);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr526);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(this.§ !@§);
                                                                                                                                                                                                                                                                                    break loop63;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr561:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                                                                 break loop83;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop93;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc4_ && param1)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break loop93;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr713:
                                                                                                                                                                                                                                                                                 §§push(this.§]!Z§);
                                                                                                                                                                                                                                                                                 continue loop73;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr656);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(!_loc4_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(param1);
                                                                                                                                                                                                                                                                              break loop75;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop43;
                                                                                                                                                                                                                                                                           addr562:
                                                                                                                                                                                                                                                                           addr426:
                                                                                                                                                                                                                                                                           addr734:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr338:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr338:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr339:
                                                                                                                                                                                                                                                                           while(!§§pop())
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(this.§]!Z§);
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop61;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop73;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop61;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr340);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop77;
                                                                                                                                                                                                                                                                        §§goto(addr441);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(_loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!§§pop())
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop78;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr561);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr244:
                                                                                                                                                                                                                                                                     continue loop58;
                                                                                                                                                                                                                                                                     if(_loc4_ && this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop77;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop66;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                                                                                                                        if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc3_ || this)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr273:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc3_ || this))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop57;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr282:
                                                                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc4_ && param2))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(this.§7!<§);
                                                                                                                                                                                                                                                                                          if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc4_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr40:
                                                                                                                                                                                                                                                                                                if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr47:
                                                                                                                                                                                                                                                                                                   if(_loc4_ && this)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      while(!(_loc4_ && param1))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc3_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop0;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§push(this.§7!<§);
                                                                                                                                                                                                                                                                                                         §§goto(addr47);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop45;
                                                                                                                                                                                                                                                                                                      addr535:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop25;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(_loc4_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop5;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(this.§]!Z§);
                                                                                                                                                                                                                                                                                                   if(!_loc4_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc3_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop74;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop80;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr232:
                                                                                                                                                                                                                                                                                                   addr312:
                                                                                                                                                                                                                                                                                                   while(!_loc4_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop62;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(_loc3_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                      continue loop73;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(_loc3_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr549);
                                                                                                                                                                                                                                                                                                      §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop46;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop79;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr81);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr219);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr340);
                                                                                                                                                                                                                                                                                       §§goto(addr282);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr441);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop47;
                                                                                                                                                                                                                                                                                 addr273:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop93;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr723);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr423);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr805);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                                                  break loop77;
                                                                                                                                                                                                                                                                  §§goto(addr414);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr414:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(-1);
                                                                                                                                                                                                                                                               addr917:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  break loop45;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr405);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr405:
                                                                                                                                                                                                                                                            addr916:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr562);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                                                                      break loop58;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc4_ && param2))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr696);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      param1 = §§pop();
                                                                                                                                                                                                                                                      §§goto(addr920);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr919:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr457);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr941);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop1;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop38;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop24;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr485);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(_loc3_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr909);
                                                                                                                                                                                                                     §§push(this.§+! §);
                                                                                                                                                                                                                     §§goto(addr587);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr942);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr283);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr195);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr24:
                                                                                                                                                                                                         return;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr426);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr339);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr273);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr475);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr323);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr943);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr879);
                                                                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr879);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr820);
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
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       continue loop3;
                                                                                                                                    }
                                                                                                                                    §§push(this);
                                                                                                                                    §§push(param1);
                                                                                                                                    if(!(_loc4_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(this.§4Q§);
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - this.§,!k§);
                                                                                                                                          if(_loc3_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             addr784:
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!(_loc4_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(param2);
                                                                                                                                             }
                                                                                                                                             §§pop().§@Z§ = §§pop();
                                                                                                                                             continue loop42;
                                                                                                                                          }
                                                                                                                                          §§goto(addr784);
                                                                                                                                          §§push(§§pop() / §§pop());
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr784);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr919);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr734);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr653);
                                                                                             }
                                                                                             §§goto(addr655);
                                                                                          }
                                                                                          §§goto(addr944);
                                                                                       }
                                                                                       §§goto(addr836);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr819:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§!!3§ = this.§,!k§;
                                                                                          §§goto(addr793);
                                                                                       }
                                                                                       addr819:
                                                                                    }
                                                                                    §§goto(addr886);
                                                                                 }
                                                                                 §§goto(addr655);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr535);
                                                                                 §§push(this.§]!Z§);
                                                                              }
                                                                              §§goto(addr717);
                                                                           }
                                                                        }
                                                                        addr607:
                                                                     }
                                                                     §§goto(addr683);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        §§goto(addr912);
                                                                     }
                                                                     §§goto(addr891);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      this.§2F§ = this.§7!<§;
                                                      §§goto(addr713);
                                                   }
                                                   while(_loc3_)
                                                   {
                                                      §§pop();
                                                      §§goto(addr734);
                                                   }
                                                   §§goto(addr892);
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr916);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr961);
                     }
                  }
                  §§goto(addr921);
               }
            }
         }
         §§goto(addr819);
      }
      
      public function get §]!k§() : Point
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!§[!o§)
            {
            }
         }
         return null;
      }
      
      public function §]!?§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§-!o§);
            if(!_loc1_)
            {
               §§push(§4K§.§6r§);
               if(!_loc1_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(_loc2_ || this)
                        {
                           addr64:
                           §§pop();
                           return this.§-!o§ == §4K§.§5-§;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      public function §^A§() : Boolean
      {
         return this.§-!o§ == §4K§.§8!J§;
      }
      
      public function §'!j§() : Boolean
      {
         return this.§-!o§ == §4K§.§,<§;
      }
      
      public function §1!b§() : Boolean
      {
         return this.§-!o§ == §4K§.§5-§;
      }
      
      public function §=C§() : Boolean
      {
         return false;
      }
      
      public function isTexture() : Boolean
      {
         return this.§-!o§ == §4K§.§9A§;
      }
      
      public function isGround() : Boolean
      {
         return this.§-!o§ == §4K§.§&!8§;
      }
      
      public function §,!y§() : Boolean
      {
         return this.§-!o§ == §4K§.§^!Q§;
      }
      
      public function §]q§() : Boolean
      {
         return this.§-!o§ == §4K§.§!!U§;
      }
      
      public function §-!?§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§-!>§);
            loop0:
            while(true)
            {
               §§push("MISC_EXPLOSIVE_TNT");
               addr92:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc2_)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!(_loc1_ && this))
                              {
                                 if(!_loc1_)
                                 {
                                    addr86:
                                    §§push(true);
                                    break;
                                 }
                                 continue loop0;
                              }
                           }
                           §§push(false);
                           if(_loc1_)
                           {
                              break;
                           }
                           if(_loc2_)
                           {
                              return §§pop();
                           }
                           addr58:
                           while(true)
                           {
                              if(_loc2_ || _loc2_)
                              {
                                 continue loop2;
                              }
                              addr97:
                              addr97:
                              while(true)
                              {
                                 §§pop();
                                 continue loop0;
                              }
                           }
                        }
                        return §§pop();
                        addr75:
                     }
                  }
                  §§goto(addr97);
               }
            }
         }
         §§goto(addr86);
      }
      
      public function §2b§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§^A§());
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc2_ && this))
               {
                  §§push(§§pop());
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop10:
                        while(true)
                        {
                           §§pop();
                           loop11:
                           while(true)
                           {
                              §§push(this.§,!y§());
                              if(!_loc2_)
                              {
                                 §§push(Boolean(§§pop()));
                                 while(true)
                                 {
                                 }
                                 addr114:
                              }
                              loop3:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop4:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          §§pop();
                                          addr118:
                                          while(true)
                                          {
                                             if(_loc2_ && _loc1_)
                                             {
                                                continue loop11;
                                             }
                                             while(true)
                                             {
                                                §§push(this.§]q§());
                                                if(_loc1_ || _loc2_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                                addr66:
                                                while(!(_loc1_ || _loc2_))
                                                {
                                                   continue loop5;
                                                }
                                             }
                                          }
                                          continue loop11;
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc1_)
                                       {
                                          if(_loc1_)
                                          {
                                             if(!§§pop())
                                             {
                                                break;
                                             }
                                             while(true)
                                             {
                                                if(!(_loc1_ || _loc2_))
                                                {
                                                   continue loop3;
                                                }
                                                if(!(_loc1_ || this))
                                                {
                                                   continue loop10;
                                                }
                                                §§pop();
                                                if(!_loc2_)
                                                {
                                                   §§push(this.§1!U§);
                                                   if(!_loc1_)
                                                   {
                                                      break;
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr118);
                                             }
                                             if(!_loc2_)
                                             {
                                                break;
                                             }
                                             continue loop0;
                                          }
                                          continue loop1;
                                       }
                                       continue loop4;
                                    }
                                    return §§pop();
                                 }
                              }
                           }
                        }
                        addr138:
                     }
                     §§goto(addr114);
                  }
               }
               §§goto(addr138);
            }
         }
         §§goto(addr125);
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §6!E§() : Number
      {
         return Number(Math.sqrt(this.§63§().GetLinearVelocity().x * this.§63§().GetLinearVelocity().x + this.§63§().GetLinearVelocity().y * this.§63§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         if(!(_loc10_ && this))
         {
            §§push(this.§'!j§());
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§>0§);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop().§ h§());
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(this.§=!X§);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(0);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§pop() < §§pop());
                                       loop7:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop8:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop10:
                                                   while(true)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         addr842:
                                                         §§push(this.§0M§);
                                                         break;
                                                      }
                                                      §§push(param6);
                                                      if(!_loc10_)
                                                      {
                                                         §§push(!§§pop());
                                                         while(true)
                                                         {
                                                         }
                                                         addr806:
                                                      }
                                                      loop11:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  §§push(this.§=!X§);
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(param1);
                                                                           if(!(_loc10_ && this))
                                                                           {
                                                                              §§push(this.§=!X§);
                                                                              if(_loc9_)
                                                                              {
                                                                                 if(_loc9_ || param3)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(§§pop() - §§pop());
                                                                                    loop16:
                                                                                    for(; !(_loc10_ && param3); while(true)
                                                                                    {
                                                                                       if(_loc9_ || param2)
                                                                                       {
                                                                                          if(_loc9_)
                                                                                          {
                                                                                             §§goto(addr521);
                                                                                             §§push(int(§§pop()));
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       continue loop16;
                                                                                       §§goto(addr40);
                                                                                    },§§goto(addr720))
                                                                                    {
                                                                                       if(_loc10_)
                                                                                       {
                                                                                          continue loop5;
                                                                                       }
                                                                                       §§push(Number(§§pop()));
                                                                                       loop17:
                                                                                       while(true)
                                                                                       {
                                                                                          param1 = §§pop();
                                                                                          loop18:
                                                                                          while(!(_loc10_ && param1))
                                                                                          {
                                                                                             §§push(param2);
                                                                                             while(_loc9_)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   loop20:
                                                                                                   for(; !(_loc10_ && param1); while(true)
                                                                                                   {
                                                                                                      if(_loc10_ && this)
                                                                                                      {
                                                                                                         continue loop20;
                                                                                                      }
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         §§goto(addr345);
                                                                                                      }
                                                                                                      §§goto(addr403);
                                                                                                   },continue loop8)
                                                                                                   {
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               loop22:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(int(Math.min(this.§0M§,int(param1))));
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc7_ = §§pop();
                                                                                                                     loop24:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§5G§.§'!4§.getValue());
                                                                                                                        if(_loc9_ || this)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * _loc7_);
                                                                                                                           continue loop17;
                                                                                                                        }
                                                                                                                        addr567:
                                                                                                                        loop26:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc8_ = §§pop();
                                                                                                                           loop27:
                                                                                                                           while(!_loc10_)
                                                                                                                           {
                                                                                                                              §§push(param5);
                                                                                                                              loop28:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc9_ || param2)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       loop33:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(this.§>0§);
                                                                                                                                          if(_loc10_ && param2)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§push(§§pop().§#!U§);
                                                                                                                                          §§push(_loc8_);
                                                                                                                                          §§push(§-!8§.§6!K§);
                                                                                                                                          if(_loc9_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(this.§0M§ > param1);
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   if(!_loc10_)
                                                                                                                                                   {
                                                                                                                                                      §§pop();
                                                                                                                                                      addr463:
                                                                                                                                                      §§push(param3);
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         addr466:
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr466);
                                                                                                                                                }
                                                                                                                                                §§pop().addScore(§§pop(),§§pop(),§§pop(),this.§63§().GetPosition().x,this.§63§().GetPosition().y,§>p§.§?`§(this.§-!>§));
                                                                                                                                                loop34:
                                                                                                                                                for(; !_loc10_; if(_loc10_ && this)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                },if(_loc10_ && param2)
                                                                                                                                                {
                                                                                                                                                   continue loop24;
                                                                                                                                                },this.§0M§ = 0,§§goto(addr170))
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(param5);
                                                                                                                                                      loop36:
                                                                                                                                                      for(; _loc9_; while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc10_ && this))
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc10_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               if(_loc10_ && this)
                                                                                                                                                               {
                                                                                                                                                                  continue loop20;
                                                                                                                                                               }
                                                                                                                                                               if(!§§pop())
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr232);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr305);
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         continue loop36;
                                                                                                                                                         §§goto(addr223);
                                                                                                                                                      },§§goto(addr684))
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop());
                                                                                                                                                            continue loop20;
                                                                                                                                                            addr208:
                                                                                                                                                            if(!(_loc9_ || this))
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            if(!(_loc9_ || param1))
                                                                                                                                                            {
                                                                                                                                                               continue loop0;
                                                                                                                                                            }
                                                                                                                                                            addr223:
                                                                                                                                                            §§push(Boolean(§§pop()));
                                                                                                                                                            if(_loc10_ && param2)
                                                                                                                                                            {
                                                                                                                                                               continue loop36;
                                                                                                                                                            }
                                                                                                                                                            if(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               continue loop28;
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop())
                                                                                                                                                               {
                                                                                                                                                                  loop51:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc9_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           this.§0M§ = 1;
                                                                                                                                                                           loop52:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc10_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§0M§);
                                                                                                                                                                                    addr137:
                                                                                                                                                                                    loop54:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(1);
                                                                                                                                                                                       if(_loc10_ && param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(§§pop() < §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc9_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop34;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop52;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr107:
                                                                                                                                                                                       this.§'!S§(§6!D§.§@""§);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop51;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop52;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr72:
                                                                                                                                                                                       §§push(this.§0M§);
                                                                                                                                                                                       if(_loc10_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!(_loc9_ || param3))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr257:
                                                                                                                                                                                          while(!(_loc10_ && param3))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc9_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                break loop54;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop17;
                                                                                                                                                                                          addr257:
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc10_ && this)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop16;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc9_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             return §§pop();
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop13;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr675:
                                                                                                                                                                                       addr673:
                                                                                                                                                                                       §§push(this.§]!3§);
                                                                                                                                                                                       if(!(_loc10_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr684:
                                                                                                                                                                                          if(§§pop() == §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr685);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr658);
                                                                                                                                                                                       }
                                                                                                                                                                                       if(§§pop() >= §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          break loop18;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr702);
                                                                                                                                                                                       §§goto(addr658);
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc9_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() < §§pop());
                                                                                                                                                                                             continue loop36;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr780:
                                                                                                                                                                                          addr809:
                                                                                                                                                                                          addr810:
                                                                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§'!S§(§6!D§.§84§);
                                                                                                                                                                                             addr811:
                                                                                                                                                                                             break loop51;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(param1);
                                                                                                                                                                                          if(!(_loc10_ && param3))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr788:
                                                                                                                                                                                             §§push(12);
                                                                                                                                                                                             if(!(_loc10_ && param2))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop() > §§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr796:
                                                                                                                                                                                                   this.§'!S§(§6!D§.§@""§);
                                                                                                                                                                                                   §§goto(addr800);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr767:
                                                                                                                                                                                                §§push(param1);
                                                                                                                                                                                                break;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop6;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr810);
                                                                                                                                                                                          §§push(30);
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                       §§goto(addr137);
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc10_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop() > §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          addr771:
                                                                                                                                                                                          this.§'!S§(§6!D§.§<j§);
                                                                                                                                                                                          break loop27;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr744);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr788);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr134:
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 loop49:
                                                                                                                                                                                 for(; !_loc10_; continue loop52)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc10_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§]!?§());
                                                                                                                                                                                       if(_loc9_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc10_)
                                                                                                                                                                                             {
                                                                                                                                                                                                while(_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc10_ && param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc10_ && param3))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc9_ || param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               loop44:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr257);
                                                                                                                                                                                                                  §§push(this.§0M§);
                                                                                                                                                                                                                  addr386:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop44;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr720:
                                                                                                                                                                                                               §§push(param1);
                                                                                                                                                                                                               if(_loc9_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr729:
                                                                                                                                                                                                                  §§goto(addr673);
                                                                                                                                                                                                                  §§push(this.§=!X§ / 2);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr767);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr377:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc10_ && param2))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr386);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(_loc9_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc10_ && param3)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           return this.§0M§;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr849:
                                                                                                                                                                                                                        addr851:
                                                                                                                                                                                                                        continue loop33;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr531:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc10_ && param2))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§<!;§);
                                                                                                                                                                                                                        continue loop28;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop22;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr423:
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr377:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr811);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this);
                                                                                                                                                                                                         §§push(this.§0M§);
                                                                                                                                                                                                         if(!_loc10_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() - param1);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§pop().§0M§ = §§pop();
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr377);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr809);
                                                                                                                                                                                                   §§push(param1);
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop7;
                                                                                                                                                                                                addr343:
                                                                                                                                                                                             }
                                                                                                                                                                                             addr201:
                                                                                                                                                                                             if(!(_loc9_ || param3))
                                                                                                                                                                                             {
                                                                                                                                                                                                while(_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop11;
                                                                                                                                                                                                   §§goto(addr201);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr708:
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                addr709:
                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc10_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr673);
                                                                                                                                                                                                      §§push(this.§0M§);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop1;
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop10;
                                                                                                                                                                                                addr403:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr208);
                                                                                                                                                                                             §§goto(addr658);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             while(_loc9_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                continue loop49;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr702);
                                                                                                                                                                                             addr305:
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr223);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr493);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr796);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop12;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr744);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr134);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr702);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr685);
                                                                                                                                             }
                                                                                                                                             §§goto(addr466);
                                                                                                                                          }
                                                                                                                                          §§goto(addr463);
                                                                                                                                       }
                                                                                                                                       continue loop2;
                                                                                                                                    }
                                                                                                                                    while(!(_loc10_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(_loc8_);
                                                                                                                                       if(!(_loc10_ && param2))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §5G§.§ !T§);
                                                                                                                                          continue loop16;
                                                                                                                                       }
                                                                                                                                       continue loop26;
                                                                                                                                    }
                                                                                                                                    addr685:
                                                                                                                                    if(!(_loc9_ || param1))
                                                                                                                                    {
                                                                                                                                       addr702:
                                                                                                                                       §§push(Boolean(this.§]!?§()));
                                                                                                                                       §§push(Boolean(this.§]!?§()));
                                                                                                                                       break loop20;
                                                                                                                                       addr743:
                                                                                                                                    }
                                                                                                                                    §§push(this);
                                                                                                                                    §§push(this.§]!3§);
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() - 1);
                                                                                                                                    }
                                                                                                                                    §§pop().§0M§ = §§pop();
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       addr658:
                                                                                                                                       §§push(this.§0M§);
                                                                                                                                       if(!(_loc10_ && param2))
                                                                                                                                       {
                                                                                                                                          return §§pop();
                                                                                                                                       }
                                                                                                                                       break loop10;
                                                                                                                                    }
                                                                                                                                    addr744:
                                                                                                                                    addr744:
                                                                                                                                    §§push(this.§0M§);
                                                                                                                                    break loop16;
                                                                                                                                    addr800:
                                                                                                                                    addr493:
                                                                                                                                    §§goto(addr702);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr612:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       break loop28;
                                                                                                                                    }
                                                                                                                                    addr612:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(_loc9_)
                                                                                                                              {
                                                                                                                                 §§push(this.§2b§());
                                                                                                                                 continue loop0;
                                                                                                                              }
                                                                                                                              continue loop4;
                                                                                                                           }
                                                                                                                           §§goto(addr744);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr387);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr612);
                                                                                                   }
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      §§goto(addr708);
                                                                                                   }
                                                                                                   §§goto(addr684);
                                                                                                }
                                                                                                §§goto(addr612);
                                                                                             }
                                                                                             continue loop3;
                                                                                          }
                                                                                          if(_loc9_ || param2)
                                                                                          {
                                                                                             this.§'!S§(§6!D§.§<j§);
                                                                                             §§goto(addr743);
                                                                                          }
                                                                                          §§goto(addr771);
                                                                                       }
                                                                                    }
                                                                                    if(_loc10_ && this)
                                                                                    {
                                                                                       §§goto(addr780);
                                                                                    }
                                                                                    if(_loc9_ || param3)
                                                                                    {
                                                                                       return §§pop();
                                                                                    }
                                                                                    §§goto(addr851);
                                                                                    addr639:
                                                                                 }
                                                                                 §§goto(addr729);
                                                                              }
                                                                              §§goto(addr675);
                                                                           }
                                                                           §§goto(addr639);
                                                                        }
                                                                        continue;
                                                                     }
                                                                     §§goto(addr720);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr808);
                                                      }
                                                   }
                                                   return §§pop();
                                                }
                                             }
                                             §§goto(addr806);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr842);
                        }
                     }
                  }
               }
               §§goto(addr849);
            }
         }
         §§goto(addr386);
      }
      
      public function §'!S§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §!u§.§5F§(param1,this.§,!;§.§9!M§);
         }
      }
      
      public function §%v§(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§,!;§.material.§3G§(param1));
         if(_loc3_ || _loc3_)
         {
            return §§pop() * this.§,z§;
         }
      }
      
      public function §-!K§(param1:String) : Number
      {
         return this.§,!;§.material.§%!+§(param1);
      }
      
      public function §#7§() : String
      {
         return this.§,!;§.material.mName;
      }
      
      public function §`&§() : Number
      {
         return this.§,!;§.§2!H§();
      }
      
      public function § !0§() : int
      {
         return this.§,!;§.§>x§();
      }
      
      public function §&V§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 30;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§63§().IsAwake());
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop());
                  loop1:
                  while(§§pop())
                  {
                     loop11:
                     while(_loc3_ || _loc1_)
                     {
                        if(!§§pop())
                        {
                           loop12:
                           while(!(_loc2_ && _loc2_))
                           {
                              §§pop();
                              loop13:
                              for(; _loc3_; if(_loc2_ && this)
                              {
                                 continue;
                              },if(!(_loc2_ && this))
                              {
                                 §§goto(addr120);
                              },§§goto(addr202))
                              {
                                 §§push(Math.abs(this.§63§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                 while(true)
                                 {
                                    loop15:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop16:
                                       while(true)
                                       {
                                          if(_loc3_)
                                          {
                                             if(§§pop())
                                             {
                                                loop20:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc2_ && _loc2_)
                                                   {
                                                      continue loop16;
                                                   }
                                                   if(_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      break loop1;
                                                   }
                                                   loop19:
                                                   while(true)
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         addr86:
                                                         if(!(_loc3_ || this))
                                                         {
                                                            break;
                                                         }
                                                         addr93:
                                                         §§pop();
                                                         if(!_loc2_)
                                                         {
                                                            continue loop13;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc2_)
                                                            {
                                                               break loop16;
                                                            }
                                                            §§pop();
                                                         }
                                                         addr138:
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(Math.abs(this.§63§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                         if(!(_loc2_ && _loc2_))
                                                         {
                                                            continue loop15;
                                                         }
                                                         continue loop19;
                                                         §§goto(addr93);
                                                      }
                                                      addr199:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         addr200:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  addr202:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§0M§ == this.§]!3§);
                                                                     break loop19;
                                                                  }
                                                               }
                                                               addr201:
                                                            }
                                                            addr157:
                                                            while(true)
                                                            {
                                                               break loop20;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         §§goto(addr157);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr201);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      break loop13;
                                                   }
                                                }
                                                continue loop11;
                                                addr72:
                                             }
                                             §§goto(addr138);
                                          }
                                          else
                                          {
                                             §§goto(addr200);
                                          }
                                       }
                                       continue loop12;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(this.§]!?§());
                                 break loop12;
                              }
                           }
                           while(true)
                           {
                              if(!(_loc2_ && this))
                              {
                                 §§goto(addr199);
                                 §§push(Boolean(§§pop()));
                              }
                              else
                              {
                                 §§goto(addr216);
                              }
                              §§goto(addr217);
                              §§goto(addr167);
                           }
                           addr167:
                        }
                        §§goto(addr133);
                     }
                  }
                  return §§pop();
               }
               §§goto(addr216);
            }
         }
         §§goto(addr217);
      }
      
      public function §,1§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§63§().IsAwake());
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     §§push(true);
                     if(!_loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr41:
                     §§push(this.§""#§());
                     if(_loc2_)
                     {
                        addr45:
                        return !§§pop();
                     }
                  }
                  return §§pop();
               }
               §§goto(addr41);
            }
            §§goto(addr45);
         }
         §§goto(addr41);
      }
      
      protected function §""#§() : Boolean
      {
         return this.§1!7§.§""#§();
      }
      
      public function §7N§(param1:Number = 3) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§,z§ = param1;
         }
         for(; this.§,z§ <= 1; if(!(_loc2_ || _loc2_))
         {
            continue;
         },§§goto(addr24))
         {
            §§push(this.§+!j§);
            if(!_loc3_)
            {
               §§pop().§2!G§ = null;
               if(_loc2_ || param1)
               {
                  if(!(_loc2_ || _loc2_))
                  {
                     break;
                  }
                  continue;
               }
               addr24:
               return;
               addr87:
            }
            §§pop().§[5§();
            §§goto(addr87);
         }
         §§goto(addr86);
         §§push(this.§+!j§);
      }
      
      public function §^!e§(param1:Boolean) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         if(!_loc3_)
         {
            §§push(this.§,!;§.§4!a§());
            while(true)
            {
               if(§§pop() != § L§.§@8§)
               {
                  §§push(this.§63§().GetMass());
                  loop1:
                  for(; !_loc3_; while(_loc4_ || _loc2_)
                  {
                     §§goto(addr161);
                     §§push(Number(§§pop()));
                     §§goto(addr48);
                  })
                  {
                     §§push(this.§]""§.§1!v§());
                     loop2:
                     while(true)
                     {
                        if(!(_loc3_ && this))
                        {
                           §§push(§§pop() / §§pop());
                           loop3:
                           while(true)
                           {
                              if(_loc4_ || _loc2_)
                              {
                                 §§push(Number(§§pop()));
                                 loop4:
                                 while(true)
                                 {
                                    if(!_loc3_)
                                    {
                                       _loc2_ = §§pop();
                                       loop23:
                                       while(true)
                                       {
                                          if(param1)
                                          {
                                             if(_loc4_)
                                             {
                                                if(_loc4_)
                                                {
                                                   addr126:
                                                   §§push(_loc2_);
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         if(_loc3_ && _loc3_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(this.§<!@§());
                                                         continue loop2;
                                                      }
                                                      continue loop3;
                                                      §§goto(addr126);
                                                   }
                                                   loop19:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr224:
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                         while(true)
                                                         {
                                                            loop10:
                                                            do
                                                            {
                                                               §§push(_loc2_);
                                                               if(!(_loc3_ && param1))
                                                               {
                                                                  if(!(_loc3_ && _loc3_))
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                     §§goto(addr127);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        addr162:
                                                                        loop15:
                                                                        while(true)
                                                                        {
                                                                           addr44:
                                                                           addr217:
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              if(_loc3_ && _loc2_)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              if(_loc4_ || this)
                                                                              {
                                                                                 §§push(this.§?z§);
                                                                                 if(!(_loc3_ && _loc3_))
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    §§push(this.§?z§);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr78:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!(_loc3_ && _loc3_))
                                                                                       {
                                                                                          §§push(§§pop() / §§pop());
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          addr96:
                                                                                          addr96:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc2_ = §§pop();
                                                                                             if(_loc4_ || _loc3_)
                                                                                             {
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                continue loop23;
                                                                                             }
                                                                                             continue loop15;
                                                                                          }
                                                                                          continue loop10;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          break loop16;
                                                                                       }
                                                                                       addr216:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       addr222:
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop19;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr78);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                 }
                                                                                 addr213:
                                                                              }
                                                                              §§goto(addr216);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§5G§.§6+§);
                                                                              addr219:
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr221);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr161:
                                                                  }
                                                               }
                                                               §§goto(addr96);
                                                            }
                                                            while(_loc4_);
                                                            
                                                         }
                                                         continue loop19;
                                                      }
                                                   }
                                                   addr127:
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                   }
                                                   addr210:
                                                }
                                                §§goto(addr213);
                                             }
                                             §§goto(addr162);
                                          }
                                          §§goto(addr44);
                                       }
                                       addr203:
                                    }
                                    §§goto(addr217);
                                 }
                              }
                              §§goto(addr224);
                           }
                        }
                        §§goto(addr222);
                     }
                  }
                  continue;
               }
               §§goto(addr210);
            }
         }
         §§goto(addr203);
      }
      
      public function §<!@§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = Number(1);
         if(!(_loc3_ && this))
         {
            §§push(_loc1_);
            if(!(_loc3_ && _loc1_))
            {
               §§push(_loc1_);
               if(_loc2_ || this)
               {
                  §§push(2);
                  if(!(_loc3_ && _loc1_))
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc2_ || _loc2_)
                     {
                        §§push(§§pop() * Math.min(10,this.§+!j§.§-!+§ - 1));
                        if(!(_loc3_ && _loc1_))
                        {
                           addr94:
                           §§push(§§pop() / 10);
                        }
                     }
                     §§push(§§pop() - §§pop());
                     if(!_loc3_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc3_)
                        {
                           _loc1_ = §§pop();
                        }
                     }
                     §§goto(addr103);
                  }
               }
               §§goto(addr94);
            }
            §§goto(addr103);
         }
         addr103:
         return _loc1_;
      }
      
      public function § !H§(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(this.§63§().GetLinearVelocity().x);
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§63§().GetLinearVelocity().y);
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         §§push(1);
         §§push(param1);
         if(_loc6_)
         {
            §§push(§§pop() / _loc4_);
         }
         §§push(§§pop() + §§pop());
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc6_ || _loc2_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(_loc5_);
               loop1:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     loop3:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        addr153:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(_loc6_ || _loc2_)
                           {
                              §§push(_loc5_);
                              if(_loc7_)
                              {
                                 continue loop1;
                              }
                              §§push(§§pop() * §§pop());
                              if(_loc7_ && param1)
                              {
                                 continue loop0;
                              }
                           }
                           if(_loc6_ || this)
                           {
                              if(_loc6_)
                              {
                                 §§push(Number(§§pop()));
                                 continue loop0;
                              }
                              continue loop2;
                           }
                           continue loop3;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr91);
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§ 4§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§=!%§) : void
      {
      }
      
      public function addDamageParticles(param1:§=!%§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §=!7§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2Vec2 = this.§63§().GetPosition();
         §§push(_loc4_);
         §§push(_loc4_.x);
         if(_loc5_)
         {
            §§push(param2.x * param1);
            if(!_loc6_)
            {
               §§push(§§pop() * param3);
            }
            §§push(§§pop() + §§pop());
         }
         §§pop().x = §§pop();
         if(!_loc6_)
         {
            §§push(_loc4_);
            §§push(_loc4_.y);
            if(_loc5_ || param2)
            {
               §§push(param2.y * param1);
               if(!_loc6_)
               {
                  §§push(§§pop() * param3);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
         }
         do
         {
            this.§63§().§22§(_loc4_);
         }
         while(_loc6_);
         
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(!_loc7_)
         {
            if(param2)
            {
               loop0:
               while(true)
               {
                  §§push(this.§3C§());
                  if(_loc6_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc6_)
                     {
                        §§push(§§pop());
                        loop1:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           loop21:
                           while(true)
                           {
                              if(!(_loc6_ || this))
                              {
                                 continue loop1;
                              }
                              if(§§pop() >= §§pop())
                              {
                                 §§push(_loc4_);
                                 if(!(_loc7_ && this))
                                 {
                                    if(_loc6_)
                                    {
                                       §§push(param1);
                                       if(!(_loc7_ && param1))
                                       {
                                          if(_loc6_ || this)
                                          {
                                             §§goto(addr61);
                                          }
                                          else
                                          {
                                             §§goto(addr167);
                                          }
                                       }
                                       §§goto(addr283);
                                    }
                                    §§goto(addr236);
                                 }
                                 break;
                              }
                              if(_loc6_ || param2)
                              {
                                 if(_loc6_)
                                 {
                                    §§push(_loc4_);
                                    if(!_loc7_)
                                    {
                                       addr167:
                                       §§push(§§pop() - _loc5_);
                                       if(!(_loc7_ && param1))
                                       {
                                          §§push(Number(§§pop()));
                                          if(!(_loc7_ && this))
                                          {
                                             if(!_loc7_)
                                             {
                                                if(_loc6_)
                                                {
                                                   _loc4_ = §§pop();
                                                   addr188:
                                                   if(!(_loc7_ && param2))
                                                   {
                                                      addr23:
                                                      this.§4I§(_loc4_);
                                                      addr33:
                                                      if(_loc6_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr33);
                                                            }
                                                            addr278:
                                                            §§push(this.§3C§());
                                                            if(!_loc7_)
                                                            {
                                                               break loop0;
                                                            }
                                                            addr286:
                                                            §§push(Number(§§pop()));
                                                            break;
                                                         }
                                                         loop12:
                                                         while(!_loc7_)
                                                         {
                                                            §§push(param1);
                                                            loop13:
                                                            while(_loc6_)
                                                            {
                                                               §§push(0);
                                                               if(!_loc7_)
                                                               {
                                                                  if(§§pop() != §§pop())
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        loop14:
                                                                        for(; _loc6_ || param1; if(!(_loc7_ && param1))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(!(_loc7_ && param1))
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 if(_loc6_ || this)
                                                                                 {
                                                                                    _loc4_ = §§pop();
                                                                                    addr128:
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§goto(addr23);
                                                                                    }
                                                                                    §§goto(addr188);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(360);
                                                                                       if(_loc6_ || param1)
                                                                                       {
                                                                                          §§goto(addr273);
                                                                                          §§push(§§pop() + §§pop());
                                                                                       }
                                                                                       §§goto(addr274);
                                                                                    }
                                                                                    addr264:
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc4_ = §§pop();
                                                                                 addr277:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Math.round(_loc4_ / 22.5) * 22.5);
                                                                                    break loop14;
                                                                                 }
                                                                              }
                                                                              addr276:
                                                                           }
                                                                           break loop0;
                                                                        })
                                                                        {
                                                                           §§push(param1);
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() % §§pop());
                                                                              addr216:
                                                                              addr273:
                                                                              while(!(_loc7_ && this))
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 while(!(_loc7_ && param2))
                                                                                 {
                                                                                    _loc5_ = §§pop();
                                                                                    loop23:
                                                                                    while(true)
                                                                                    {
                                                                                       addr131:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          addr133:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param1);
                                                                                             addr134:
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop21;
                                                                                             }
                                                                                          }
                                                                                          continue loop23;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    _loc4_ = §§pop();
                                                                                    break loop12;
                                                                                 }
                                                                              }
                                                                              addr61:
                                                                              while(true)
                                                                              {
                                                                                 §§push(360);
                                                                                 addr274:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() % §§pop());
                                                                                    break loop13;
                                                                                 }
                                                                                 §§goto(addr216);
                                                                              }
                                                                              if(!(_loc6_ || this))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§push(§§pop() - _loc5_);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr283:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§goto(addr286);
                                                                                 }
                                                                                 break loop21;
                                                                              }
                                                                              if(_loc7_ && this)
                                                                              {
                                                                                 continue loop21;
                                                                              }
                                                                              if(!(_loc7_ && param1))
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    break loop21;
                                                                                 }
                                                                                 if(_loc6_ || param2)
                                                                                 {
                                                                                    if(_loc6_ || _loc3_)
                                                                                    {
                                                                                       continue loop14;
                                                                                    }
                                                                                    §§goto(addr216);
                                                                                 }
                                                                                 §§goto(addr133);
                                                                              }
                                                                              §§goto(addr134);
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr249);
                                                                           §§goto(addr207);
                                                                        }
                                                                        addr207:
                                                                     }
                                                                     §§goto(addr232);
                                                                  }
                                                                  §§goto(addr131);
                                                               }
                                                               §§goto(addr274);
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr276);
                                                            }
                                                         }
                                                         while(!_loc7_)
                                                         {
                                                            §§push(Number(0));
                                                            while(true)
                                                            {
                                                               _loc5_ = §§pop();
                                                               §§goto(addr237);
                                                            }
                                                         }
                                                         addr237:
                                                         continue loop0;
                                                      }
                                                      §§goto(addr128);
                                                   }
                                                   §§goto(addr232);
                                                }
                                                §§goto(addr198);
                                             }
                                             §§goto(addr224);
                                          }
                                       }
                                       §§goto(addr286);
                                    }
                                    break;
                                 }
                                 §§goto(addr277);
                              }
                              §§goto(addr188);
                              §§goto(addr236);
                           }
                           var _loc3_:* = §§pop();
                           if(_loc6_ || this)
                           {
                              §§push(Math.round(_loc3_ / 22.5) * 22.5);
                              if(_loc6_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              _loc3_ = §§pop();
                              do
                              {
                                 this.§4I§(_loc3_);
                              }
                              while(!(_loc6_ || _loc3_));
                              
                           }
                           return;
                        }
                     }
                     §§goto(addr264);
                  }
                  break;
               }
               §§goto(addr283);
               §§push(param1);
            }
            §§goto(addr278);
         }
         §§goto(addr232);
      }
      
      public function §@!v§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§=!P§(this.§63§().GetAngle()));
         if(_loc4_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && this))
         {
            §§push(_loc2_);
            if(!(_loc3_ && this))
            {
               §§push(param1);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(360);
                  if(!_loc3_)
                  {
                     addr130:
                     §§push(§§pop() * §§pop());
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(1000);
                     }
                     §§push(§§pop() - §§pop());
                     loop0:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        while(true)
                        {
                           _loc2_ = §§pop();
                           while(true)
                           {
                              §§push(§[!R§(_loc2_));
                              if(_loc4_ || _loc3_)
                              {
                                 if(_loc3_ && _loc3_)
                                 {
                                    break;
                                 }
                                 §§push(Number(§§pop()));
                              }
                              if(!_loc3_)
                              {
                                 _loc2_ = §§pop();
                                 loop3:
                                 while(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       this.§63§().§?!=§(_loc2_);
                                       if(_loc4_ || _loc3_)
                                       {
                                          break;
                                       }
                                       continue loop3;
                                    }
                                    return;
                                 }
                                 continue;
                              }
                              continue loop0;
                           }
                        }
                     }
                     addr131:
                  }
                  §§push(§§pop() / §§pop());
               }
               §§goto(addr130);
            }
            §§goto(addr131);
         }
         §§goto(addr90);
      }
      
      public function §42§(param1:Number, param2:Point) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_ || _loc3_)
         {
            this.rotate(param1);
         }
         var _loc3_:b2Vec2 = this.§63§().GetPosition().Copy();
         §§push(_loc3_.x);
         if(_loc15_)
         {
            §§push(§§pop() - param2.x);
            if(_loc15_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_.y);
         if(!_loc14_)
         {
            §§push(§§pop() - param2.y);
            if(!_loc14_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(!(_loc14_ && param2))
         {
            §§push(_loc4_);
            if(!_loc14_)
            {
               §§push(0);
               if(!_loc14_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc14_ && this))
                  {
                     if(§§pop())
                     {
                        if(!_loc14_)
                        {
                           §§pop();
                           if(!(_loc14_ && param2))
                           {
                              addr88:
                              §§push(_loc5_);
                              if(_loc15_ || param2)
                              {
                                 addr98:
                                 addr97:
                                 if(§§pop() == 0)
                                 {
                                    if(!_loc14_)
                                    {
                                       §§goto(addr101);
                                    }
                                 }
                                 addr112:
                                 var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                                 §§push(_loc4_);
                                 if(_loc15_ || param1)
                                 {
                                    §§push(§§pop() / _loc5_);
                                    if(_loc15_ || param2)
                                    {
                                       addr130:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc7_:* = §§pop();
                                    §§push(Math.atan(_loc7_) * 180);
                                    if(!(_loc14_ && param1))
                                    {
                                       §§push(§§pop() / Math.PI);
                                       if(_loc15_)
                                       {
                                          addr159:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc8_:* = §§pop();
                                       if(!_loc14_)
                                       {
                                          §§push(_loc5_);
                                          if(!_loc14_)
                                          {
                                             §§push(0);
                                             if(_loc15_ || param1)
                                             {
                                                if(§§pop() < §§pop())
                                                {
                                                   if(_loc15_)
                                                   {
                                                      §§goto(addr212);
                                                   }
                                                }
                                                §§goto(addr193);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc15_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc15_ || this)
                                                {
                                                   addr192:
                                                   _loc8_ = §§pop();
                                                   addr193:
                                                   §§push(_loc8_);
                                                   if(!(_loc14_ && param1))
                                                   {
                                                      §§push(param1);
                                                      if(!_loc14_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc14_ && this)
                                                         {
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr212);
                                             }
                                             §§goto(addr192);
                                          }
                                          addr212:
                                          §§push(_loc8_);
                                          if(_loc15_)
                                          {
                                             §§push(180);
                                          }
                                          var _loc9_:Number;
                                          §§push(_loc9_ = §§pop());
                                          if(_loc15_ || param2)
                                          {
                                             §§push(§§pop() * Math.PI);
                                             if(_loc15_ || param2)
                                             {
                                                §§push(§§pop() / 180);
                                                if(_loc14_ && this)
                                                {
                                                }
                                                §§goto(addr242);
                                             }
                                             §§push(Number(§§pop()));
                                          }
                                          addr242:
                                          var _loc10_:* = §§pop();
                                          §§push(Math.sin(_loc10_) * _loc6_);
                                          if(!_loc14_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc11_:* = §§pop();
                                          §§push(Math.cos(_loc10_) * _loc6_);
                                          if(!(_loc14_ && param1))
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc12_:* = §§pop();
                                          var _loc13_:b2Vec2 = new b2Vec2(param2.x + _loc11_,param2.y + _loc12_);
                                          if(_loc15_)
                                          {
                                             this.§63§().§22§(_loc13_);
                                          }
                                          return;
                                       }
                                       §§goto(addr193);
                                    }
                                    §§goto(addr159);
                                 }
                                 §§goto(addr130);
                              }
                              §§goto(addr112);
                           }
                           addr101:
                           return;
                        }
                     }
                  }
                  §§goto(addr98);
               }
               §§goto(addr97);
            }
            §§goto(addr98);
         }
         §§goto(addr88);
      }
   }
}
