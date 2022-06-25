package §3Y§
{
   import §'_§.Texture;
   import §1!&§.§&p§;
   import §1!&§.Sprite;
   import §8!?§.§?!B§;
   import §8!?§.Animation;
   import §8!?§.AnimationManager;
   import §?!&§.b2Vec2;
   import §?A§.§!!d§;
   import §?A§.LevelMain;
   import §^L§.LevelItemShape;
   import flash.filters.GlowFilter;
   
   public class LevelObjectRenderer
   {
      
      public static const §6!H§:Number = 1000;
      
      public static const §&3§:Number = 500;
      
      private static var §+Z§:Array = null;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §6!H§ = 1000;
         }
         while(true)
         {
            §&3§ = 500;
            while(!_loc1_)
            {
               §+Z§ = null;
               if(_loc2_ || _loc2_)
               {
                  return;
               }
            }
         }
      }
      
      private var §-P§:LevelObject;
      
      public var §9![§:int;
      
      public var mW:Number;
      
      public var mH:Number;
      
      public var §<!8§:Number;
      
      public var §"p§:Number;
      
      public var §+!@§:int = -1;
      
      private var §=%§:String;
      
      private var §9!d§:Animation;
      
      private var §2C§:Animation;
      
      private var §=@§:§&p§;
      
      private var §@!>§:Number = 0;
      
      private var §,!_§:Number = 0;
      
      public var § !!§:int = -1;
      
      private var §2!8§:int = -1;
      
      private var §!!"§:int = 0;
      
      public var mTryToSpecial:Boolean = false;
      
      public var mIsSpecial:Boolean = false;
      
      public var §>x§:String = "special";
      
      public var mTryToFly:Boolean = false;
      
      public var mIsFlying:Boolean = false;
      
      public var §#[§:Boolean = false;
      
      public var mTryToScream:Number = 0;
      
      public var §[!M§:String = "yell";
      
      public var mIsScreaming:Boolean = false;
      
      public var mTryToBlink:Number = 0;
      
      public var §;_§:String = "blink";
      
      public var mIsBlinking:Boolean = false;
      
      public var §,e§:String = "fly";
      
      public var §7Z§:String = "fly_yell";
      
      public var §@!]§:GlowFilter;
      
      private var §?!0§:Vector.<§!!d§>;
      
      private var §4J§:Animation;
      
      private var §1!J§:Sprite = null;
      
      private var §6f§:LevelMain;
      
      public function LevelObjectRenderer(param1:LevelObject, param2:Sprite, param3:LevelMain)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            super();
            loop0:
            while(true)
            {
               this.§6f§ = param3;
               while(true)
               {
                  this.§-P§ = param1;
                  loop2:
                  for(; !_loc5_; if(_loc4_)
                  {
                     continue loop0;
                  })
                  {
                     this.§=%§ = this.§-P§.§4!W§;
                     while(true)
                     {
                        this.§?!0§ = new Vector.<§!!d§>();
                        loop4:
                        while(!(_loc5_ && param1))
                        {
                           continue loop2;
                           while(true)
                           {
                              this.§1!J§ = param2;
                              if(_loc4_ || param1)
                              {
                                 break;
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
               }
               if(!(_loc4_ || param1))
               {
                  continue;
               }
               §§goto(addr85);
            }
         }
         §§goto(addr85);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§!!d§ = null;
         if(!_loc3_)
         {
            this.§76§();
            if(_loc2_ || _loc2_)
            {
               if(this.§?!0§)
               {
                  addr55:
                  while(this.§?!0§.length > 0)
                  {
                     _loc1_ = this.§?!0§.pop();
                     if(_loc2_ || _loc3_)
                     {
                        _loc1_.dispose();
                     }
                  }
                  if(!_loc3_)
                  {
                     this.§?!0§ = null;
                  }
               }
               return;
            }
         }
         §§goto(addr55);
      }
      
      public function §]M§(param1:int, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            this.mW = param3;
            while(true)
            {
               this.mH = param4;
               addr81:
               while(true)
               {
                  this.§+!@§ = param1;
                  addr55:
                  if(!(_loc5_ && param1))
                  {
                     return;
                     addr62:
                  }
               }
            }
            addr85:
         }
         loop2:
         while(true)
         {
            this.§"p§ = param2;
            while(true)
            {
               if(_loc5_)
               {
                  continue loop2;
               }
               if(!_loc5_)
               {
                  continue;
               }
               §§goto(addr85);
            }
            §§goto(addr81);
         }
         §§goto(addr62);
      }
      
      public function §9!]§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(!param1)
            {
               loop0:
               while(true)
               {
                  §§push(this);
                  §§push(this.mW);
                  if(!(_loc3_ && param1))
                  {
                     §§push(§§pop() / this.mH);
                  }
                  §§pop().§<!8§ = §§pop();
                  while(true)
                  {
                     if(this.§<!8§ < 1)
                     {
                        while(!_loc3_)
                        {
                           if(_loc3_ && _loc3_)
                           {
                              return;
                              addr116:
                           }
                           this.§<!8§ = 1 / this.§<!8§;
                           while(true)
                           {
                           }
                           if(!(_loc2_ || _loc3_))
                           {
                              continue;
                           }
                           if(_loc2_ || param1)
                           {
                              return;
                           }
                           if(_loc2_)
                           {
                              continue loop0;
                           }
                           addr113:
                           this.§<!8§ = 1;
                           §§goto(addr116);
                        }
                        continue;
                     }
                     while(true)
                     {
                        this.§<!8§ = Math.min(11,this.§<!8§);
                        if(_loc3_)
                        {
                           continue;
                        }
                        §§goto(addr34);
                     }
                  }
               }
            }
            §§goto(addr113);
         }
         §§goto(addr110);
      }
      
      public function §-!§(param1:AnimationManager) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§?!B§ = null;
         var _loc3_:Texture = null;
         if(_loc5_ || param1)
         {
            §§push(this.§-P§.isGround());
            if(!(_loc6_ && param1))
            {
               if(§§pop())
               {
                  if(!_loc6_)
                  {
                     §§goto(addr82);
                  }
                  else
                  {
                     while(true)
                     {
                        addr44:
                        if(_loc6_ && this)
                        {
                           continue;
                        }
                        if(false)
                        {
                           while(true)
                           {
                              this.§9!d§ = param1.getAnimation(this.§=%§);
                              do
                              {
                                 this.§2C§ = this.§9!d§;
                              }
                              while(_loc6_);
                              
                              if(_loc6_ && _loc3_)
                              {
                                 break;
                              }
                              §§goto(addr44);
                           }
                           while(true)
                           {
                              §§goto(addr53);
                           }
                           addr53:
                           addr67:
                        }
                        var _loc4_:* = Number(1);
                        if(_loc5_)
                        {
                           §§push(this.§2C§);
                           if(_loc5_ || param1)
                           {
                              if(§§pop())
                              {
                                 addr102:
                                 _loc2_ = this.§2C§.getFrame(0);
                                 addr100:
                                 if(_loc5_)
                                 {
                                    §§push(_loc2_.scale);
                                    if(!(_loc6_ && _loc2_))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    _loc4_ = §§pop();
                                 }
                                 _loc3_ = _loc2_.texture;
                                 if(!_loc6_)
                                 {
                                    addr132:
                                    this.§=@§ = new §&p§(_loc3_);
                                    if(_loc5_ || _loc3_)
                                    {
                                       addr362:
                                       if(_loc2_)
                                       {
                                          addr368:
                                          this.§=@§.x = -_loc2_.pivotX;
                                          addr369:
                                          addr365:
                                          addr363:
                                          §§push(this.§=@§);
                                          §§push(_loc2_.pivotY);
                                          if(!(_loc6_ && param1))
                                          {
                                             addr356:
                                             §§push(-§§pop());
                                             if(!_loc6_)
                                             {
                                                §§pop().y = §§pop();
                                                addr243:
                                                addr359:
                                                §§push(this.§=@§);
                                                if(_loc5_ || _loc3_)
                                                {
                                                   addr254:
                                                   §§pop().scaleX = _loc4_;
                                                   addr255:
                                                   §§push(this.§=@§);
                                                   if(_loc5_ || _loc3_)
                                                   {
                                                      if(!(_loc6_ && _loc2_))
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            §§push(_loc4_);
                                                            if(_loc5_)
                                                            {
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     §§pop().scaleY = §§pop();
                                                                     this.mW = this.§=@§.width / 2;
                                                                     addr242:
                                                                     if(_loc5_)
                                                                     {
                                                                        this.mH = this.§=@§.height / 2;
                                                                        addr191:
                                                                        if(_loc5_)
                                                                        {
                                                                           this.§1!J§.addChild(this.§=@§);
                                                                           if(_loc5_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 if(_loc5_ || param1)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§push(true);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§goto(addr362);
                                                                                       }
                                                                                       return §§pop();
                                                                                    }
                                                                                    §§goto(addr369);
                                                                                 }
                                                                                 §§goto(addr255);
                                                                              }
                                                                              §§goto(addr242);
                                                                           }
                                                                           §§goto(addr191);
                                                                        }
                                                                        §§goto(addr242);
                                                                        addr204:
                                                                     }
                                                                     addr296:
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        §§goto(addr243);
                                                                     }
                                                                     if(_loc5_ || param1)
                                                                     {
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           addr259:
                                                                           §§push(this.§=@§);
                                                                           if(!(_loc6_ && _loc2_))
                                                                           {
                                                                              §§push(this.§=@§);
                                                                              if(!_loc6_)
                                                                              {
                                                                                 addr272:
                                                                                 §§push(-§§pop().height);
                                                                                 §§push(2);
                                                                                 if(!(_loc6_ && this))
                                                                                 {
                                                                                    addr281:
                                                                                    §§push(§§pop() / §§pop());
                                                                                    if(!(_loc6_ && param1))
                                                                                    {
                                                                                       if(!(_loc6_ && param1))
                                                                                       {
                                                                                          §§pop().y = §§pop();
                                                                                          §§goto(addr296);
                                                                                       }
                                                                                       addr313:
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          addr317:
                                                                                          §§pop().x = §§pop() / 2;
                                                                                          §§goto(addr296);
                                                                                       }
                                                                                       §§goto(addr356);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr317);
                                                                              }
                                                                              addr311:
                                                                              §§goto(addr313);
                                                                              §§push(-§§pop().width);
                                                                           }
                                                                           §§goto(addr365);
                                                                        }
                                                                        §§goto(addr363);
                                                                     }
                                                                     §§goto(addr359);
                                                                  }
                                                                  §§goto(addr272);
                                                               }
                                                               §§goto(addr281);
                                                            }
                                                            §§goto(addr254);
                                                         }
                                                         addr309:
                                                         §§goto(addr311);
                                                         §§push(this.§=@§);
                                                      }
                                                      §§goto(addr259);
                                                   }
                                                   §§goto(addr243);
                                                }
                                                §§goto(addr369);
                                             }
                                             §§goto(addr368);
                                          }
                                          addr367:
                                          §§goto(addr367);
                                       }
                                       §§goto(addr309);
                                       §§push(this.§=@§);
                                       addr144:
                                    }
                                    §§goto(addr204);
                                 }
                                 §§goto(addr144);
                              }
                              else
                              {
                                 _loc3_ = this.§6f§.textureManager.§0G§();
                              }
                              §§goto(addr132);
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr100);
                     }
                     addr83:
                  }
               }
               while(true)
               {
                  this.§4J§ = param1.getAnimation("SPARKLES");
                  §§goto(addr67);
                  §§goto(addr83);
               }
            }
            §§goto(addr82);
         }
         addr82:
         return false;
      }
      
      public function §]!&§(param1:LevelItemShape) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Array = null;
         var _loc3_:b2Vec2 = null;
         §§push(param1.§>!V§);
         if(_loc6_)
         {
            var _loc4_:* = §§pop();
            if(!(_loc5_ && _loc3_))
            {
               §§push(LevelItemShape.§"c§);
               if(_loc6_ || this)
               {
                  §§push(_loc4_);
                  if(_loc6_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc5_ && _loc2_))
                        {
                           §§push(0);
                           if(!(_loc6_ || param1))
                           {
                              addr164:
                           }
                           addr173:
                           switch(§§pop())
                           {
                              case 0:
                                 _loc2_ = param1.§?[§();
                                 _loc3_ = _loc2_[0];
                                 if(_loc6_ || param1)
                                 {
                                    §§push(this);
                                    §§push(_loc3_.x);
                                    if(!_loc5_)
                                    {
                                       §§push(§§pop() / LevelMain.§!5§);
                                    }
                                    §§pop().§@!>§ = §§pop();
                                    if(!(_loc5_ && _loc2_))
                                    {
                                       §§push(this);
                                       §§push(_loc3_.y);
                                       if(!(_loc5_ && param1))
                                       {
                                          §§push(§§pop() / LevelMain.§!5§);
                                       }
                                       §§pop().§,!_§ = §§pop();
                                       if(_loc6_ || _loc3_)
                                       {
                                       }
                                       break;
                                    }
                                 }
                                 addr174:
                                 this.§#I§();
                                 break;
                              case 1:
                                 §§goto(addr174);
                              default:
                                 §§goto(addr174);
                           }
                           return;
                           addr172:
                        }
                        else
                        {
                           addr161:
                           §§push(1);
                           if(!_loc5_)
                           {
                              §§goto(addr164);
                           }
                           else
                           {
                              addr170:
                           }
                           §§goto(addr172);
                        }
                     }
                     else
                     {
                        §§push(LevelItemShape.§0!+§);
                        if(!_loc5_)
                        {
                           addr153:
                           if(§§pop() === _loc4_)
                           {
                              if(!(_loc5_ && this))
                              {
                                 §§goto(addr161);
                              }
                              else
                              {
                                 addr167:
                                 §§push(2);
                                 if(_loc6_)
                                 {
                                    §§goto(addr170);
                                 }
                              }
                           }
                           else if(false)
                           {
                              §§goto(addr167);
                           }
                           else
                           {
                              §§push(2);
                           }
                           §§goto(addr172);
                        }
                     }
                     §§goto(addr164);
                  }
               }
               §§goto(addr153);
            }
            §§goto(addr167);
         }
         §§goto(addr173);
      }
      
      public function §+!3§() : Array
      {
         return LevelObjectMovieClipHelper.§+!3§(null,this.§-P§.§in§());
      }
      
      public function §@"§() : Array
      {
         return LevelObjectMovieClipHelper.§@"§(null,this.§-P§.§in§());
      }
      
      public function §^!Q§() : Array
      {
         return LevelObjectMovieClipHelper.§^!Q§(null);
      }
      
      public function §=j§() : void
      {
      }
      
      public function §6v§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§1!J§.scaleX = this.§1!J§.scaleY = param1;
         }
      }
      
      public function §#I§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§?!B§ = null;
         if(!_loc4_)
         {
            §§push(this.§9!d§);
            if(!_loc4_)
            {
               §§push(!§§pop());
               if(!(_loc4_ && this))
               {
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        return;
                     }
                     loop85:
                     while(true)
                     {
                        this.§2C§ = this.§9!d§.getSubAnimation(this.§[!M§);
                        if(!(_loc4_ && _loc1_))
                        {
                           loop86:
                           while(true)
                           {
                              if(_loc5_ || _loc2_)
                              {
                                 this.mIsScreaming = true;
                                 addr613:
                                 if(!(_loc5_ || _loc3_))
                                 {
                                    addr819:
                                    this.§2C§ = this.§9!d§.getSubAnimation(this.§>x§);
                                    this.mIsSpecial = true;
                                    addr826:
                                    addr809:
                                 }
                                 §§push(this.§2C§);
                                 if(_loc5_)
                                 {
                                    addr841:
                                    if(§§pop())
                                    {
                                       addr844:
                                       _loc1_ = this.§2C§.getFrame(this.§!!"§);
                                       if(_loc5_)
                                       {
                                          §§push(this.§=@§);
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             loop12:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc5_ || _loc1_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      while(true)
                                                      {
                                                         §§push(Boolean(_loc1_));
                                                         if(!_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         if(!(_loc4_ && _loc1_))
                                                         {
                                                            while(§§pop())
                                                            {
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(this.§=@§);
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     §§pop().texture = _loc1_.texture;
                                                                     addr994:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§=@§);
                                                                        addr941:
                                                                        while(_loc5_)
                                                                        {
                                                                           §§push(_loc1_.pivotX);
                                                                           while(true)
                                                                           {
                                                                              §§push(-§§pop());
                                                                              addr946:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§@!>§);
                                                                                 addr948:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    addr949:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                       continue loop16;
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop17;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr1010:
                                                            return;
                                                            addr987:
                                                         }
                                                         continue loop12;
                                                      }
                                                   }
                                                }
                                                §§goto(addr987);
                                             }
                                          }
                                       }
                                       §§goto(addr937);
                                    }
                                    §§goto(addr1010);
                                 }
                                 §§goto(addr844);
                              }
                              else
                              {
                                 addr804:
                                 loop55:
                                 while(true)
                                 {
                                    §§push(this.mTryToFly);
                                    loop56:
                                    while(true)
                                    {
                                       §§push(§§pop() > 0);
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop58:
                                          while(_loc5_ || _loc3_)
                                          {
                                             loop59:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop60:
                                                while(_loc5_ || _loc2_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop61:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         addr782:
                                                         loop87:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            loop88:
                                                            while(_loc5_)
                                                            {
                                                               §§push(this.§9!d§);
                                                               loop79:
                                                               while(true)
                                                               {
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     §§push(this.§7Z§);
                                                                     loop80:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().getSubAnimation(§§pop()));
                                                                        addr745:
                                                                        loop64:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           addr746:
                                                                           while(true)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    addr698:
                                                                                    §§push(this.mTryToScream);
                                                                                    loop84:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(0);
                                                                                       addr699:
                                                                                       loop82:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() > §§pop());
                                                                                          loop68:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc5_ || _loc1_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                   loop1:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      addr709:
                                                                                                      loop2:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Boolean(§§pop()));
                                                                                                         loop3:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  loop4:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     loop5:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§9!d§);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§[!M§);
                                                                                                                           addr626:
                                                                                                                           loop43:
                                                                                                                           for(; !(_loc4_ && _loc3_); while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§9!d§);
                                                                                                                              if(!(_loc5_ || _loc3_))
                                                                                                                              {
                                                                                                                                 continue loop43;
                                                                                                                              }
                                                                                                                              if(_loc4_)
                                                                                                                              {
                                                                                                                                 continue loop79;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§,e§);
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    if(_loc5_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr330);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr626);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr485);
                                                                                                                                 }
                                                                                                                                 §§goto(addr815);
                                                                                                                              }
                                                                                                                           })
                                                                                                                           {
                                                                                                                              §§push(this.§;_§);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc5_ || _loc1_))
                                                                                                                                 {
                                                                                                                                    continue loop80;
                                                                                                                                 }
                                                                                                                                 if(_loc5_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                          loop46:
                                                                                                                                          while(!(_loc4_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             if(_loc5_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc4_ && this))
                                                                                                                                                {
                                                                                                                                                   loop47:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         §§push(this.mTryToFly);
                                                                                                                                                         if(!_loc4_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc4_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop1;
                                                                                                                                                               }
                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                               if(!(_loc4_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc5_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc4_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop());
                                                                                                                                                                        if(_loc5_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc4_ && _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop2;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc4_ && _loc1_))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc4_ && _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop60;
                                                                                                                                                                           }
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc5_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr439:
                                                                                                                                                                                 if(!_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop46;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!(_loc5_ || this))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop4;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop();
                                                                                                                                                                                 if(_loc5_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc5_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc4_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop43;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop88;
                                                                                                                                                                                    }
                                                                                                                                                                                    loop51:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc4_ && this))
                                                                                                                                                                                       {
                                                                                                                                                                                          break loop47;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr550:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc4_ && _loc1_))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop51;
                                                                                                                                                                                          }
                                                                                                                                                                                          addr608:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop43;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr841);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§2C§ = this.§9!d§;
                                                                                                                                                                                    if(_loc5_ || _loc1_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc5_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc5_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(false)
                                                                                                                                                                                             {
                                                                                                                                                                                                loop48:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   this.mIsFlying = true;
                                                                                                                                                                                                   addr302:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc5_ || _loc2_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc5_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr311:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc5_ || _loc2_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc5_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop48;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr748:
                                                                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.§2C§ = this.§9!d§.getSubAnimation(this.§7Z§);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§9!d§);
                                                                                                                                                                                                                        addr813:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§>x§);
                                                                                                                                                                                                                           addr815:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr816);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr835:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               this.mIsScreaming = true;
                                                                                                                                                                                                               this.mIsFlying = true;
                                                                                                                                                                                                               if(_loc4_ && _loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr844);
                                                                                                                                                                                                               addr731:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr534:
                                                                                                                                                                                                               if(_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(_loc4_ && _loc1_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop5;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               this.§2C§ = this.§9!d§.getSubAnimation(this.§;_§);
                                                                                                                                                                                                               §§goto(addr550);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr613);
                                                                                                                                                                                                         addr361:
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr826);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr613);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             addr354:
                                                                                                                                                                                             this.§2C§ = this.§9!d§.getSubAnimation(this.§,e§);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr361);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr302);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr844);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr354);
                                                                                                                                                                              }
                                                                                                                                                                              addr352:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr844);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           while(_loc5_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc4_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop47;
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          §§goto(addr608);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr606:
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    loop36:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          addr834:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             §§goto(addr835);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr834:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr817);
                                                                                                                                                                                       addr832:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop36;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr833:
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                    break loop60;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr832);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop3;
                                                                                                                                                                           addr590:
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr817);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                                                                           addr584:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop87;
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop87;
                                                                                                                                                                        }
                                                                                                                                                                        addr583:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr590);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr584);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr841);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr607);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr439);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr534);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr613);
                                                                                                                                                   addr472:
                                                                                                                                                }
                                                                                                                                                §§goto(addr834);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                if(!_loc4_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr799);
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                         addr831:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr830:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr832);
                                                                                                                                                }
                                                                                                                                                §§goto(addr841);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr803:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             continue loop55;
                                                                                                                                          }
                                                                                                                                          addr330:
                                                                                                                                          §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                                          if(_loc4_ && _loc1_)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          if(_loc5_)
                                                                                                                                          {
                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                             if(!(_loc4_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   continue loop68;
                                                                                                                                                }
                                                                                                                                                if(!_loc5_)
                                                                                                                                                {
                                                                                                                                                   continue loop56;
                                                                                                                                                }
                                                                                                                                                §§goto(addr352);
                                                                                                                                             }
                                                                                                                                             §§goto(addr841);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr627);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr509:
                                                                                                                                 }
                                                                                                                                 §§goto(addr815);
                                                                                                                              }
                                                                                                                              continue loop80;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().getSubAnimation(§§pop()));
                                                                                                                              addr627:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc4_ && _loc1_)
                                                                                                                                 {
                                                                                                                                    continue loop64;
                                                                                                                                 }
                                                                                                                                 if(_loc5_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                    continue loop4;
                                                                                                                                 }
                                                                                                                                 addr816:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Boolean(§§pop()));
                                                                                                                                    addr817:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       break loop58;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop64;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr666:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc5_)
                                                                                                                        {
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           continue loop85;
                                                                                                                        }
                                                                                                                        continue loop86;
                                                                                                                     }
                                                                                                                     §§push(this.mTryToBlink);
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        continue loop84;
                                                                                                                     }
                                                                                                                     if(_loc5_)
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        if(!(_loc5_ || _loc2_))
                                                                                                                        {
                                                                                                                           continue loop82;
                                                                                                                        }
                                                                                                                        if(_loc5_ || this)
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr583);
                                                                                                                           }
                                                                                                                           addr582:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§goto(addr793);
                                                                                                                        }
                                                                                                                        addr792:
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr792);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr731);
                                                                                                               }
                                                                                                               continue loop84;
                                                                                                            }
                                                                                                            continue loop61;
                                                                                                         }
                                                                                                         continue loop61;
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop68;
                                                                                                }
                                                                                                addr707:
                                                                                             }
                                                                                             §§goto(addr831);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr698:
                                                                                 }
                                                                                 §§goto(addr748);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr813);
                                                               }
                                                            }
                                                            §§goto(addr809);
                                                         }
                                                         addr782:
                                                      }
                                                      §§goto(addr746);
                                                   }
                                                }
                                                addr802:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      continue loop59;
                                                   }
                                                   §§goto(addr803);
                                                }
                                             }
                                          }
                                          addr818:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§goto(addr791);
                                                §§push(this.mTryToScream);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr804:
                              }
                              §§goto(addr819);
                           }
                        }
                        §§goto(addr844);
                     }
                  }
                  else
                  {
                     §§push(this.§#[§);
                     if(!(_loc4_ && this))
                     {
                        if(§§pop())
                        {
                           if(!(_loc4_ && this))
                           {
                              this.§!!"§ = 1;
                              if(_loc5_ || _loc3_)
                              {
                                 §§goto(addr613);
                              }
                              else
                              {
                                 §§goto(addr557);
                              }
                           }
                           else
                           {
                              addr277:
                           }
                           §§goto(addr613);
                        }
                        else
                        {
                           §§push(this.§-P§);
                           if(!_loc4_)
                           {
                              §§push(§§pop().getSpecialAnimationProgress());
                              if(_loc5_ || this)
                              {
                                 §§push(0);
                                 if(_loc5_ || _loc2_)
                                 {
                                    §§push(§§pop() >= §§pop());
                                    if(_loc5_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc5_)
                                       {
                                          §§push(§§pop());
                                          if(!_loc4_)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(_loc5_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc5_)
                                                   {
                                                      addr166:
                                                      §§pop();
                                                      if(_loc5_ || _loc3_)
                                                      {
                                                         §§push(this.§9!d§);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(this.§>x§);
                                                            if(!_loc4_)
                                                            {
                                                               §§push(§§pop().getSubAnimation(§§pop()));
                                                               if(_loc5_ || this)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(_loc5_)
                                                                  {
                                                                     addr109:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           addr118:
                                                                           this.§2C§ = this.§9!d§.getSubAnimation(this.§>x§);
                                                                           if(!_loc4_)
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§!!"§ = this.§2C§.getFrameCount() * this.§-P§.getSpecialAnimationProgress();
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(this.§!!"§ == this.§2C§.getFrameCount() - 1);
                                                                                    if(!(_loc4_ && _loc2_))
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       if(_loc5_ || _loc3_)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(!(_loc4_ && this))
                                                                                          {
                                                                                             §§push(Boolean(§§pop()));
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(_loc5_ || this)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      if(_loc5_ || _loc1_)
                                                                                                      {
                                                                                                         if(false)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         addr225:
                                                                                                         §§push(this.§-P§.getSpecialAnimationTimeLeft());
                                                                                                         if(!(_loc4_ && this))
                                                                                                         {
                                                                                                            §§push(100);
                                                                                                            if(_loc5_)
                                                                                                            {
                                                                                                               §§push(§§pop() > §§pop());
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     addr242:
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc5_ || _loc1_)
                                                                                                                        {
                                                                                                                           var _loc2_:*;
                                                                                                                           §§push((_loc2_ = this).§!!"§);
                                                                                                                           if(_loc5_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() - 1);
                                                                                                                           }
                                                                                                                           var _loc3_:* = §§pop();
                                                                                                                           if(_loc5_ || _loc2_)
                                                                                                                           {
                                                                                                                              _loc2_.§!!"§ = _loc3_;
                                                                                                                           }
                                                                                                                           if(!(_loc4_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§goto(addr277);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr460);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr804);
                                                                                                                     }
                                                                                                                     §§goto(addr277);
                                                                                                                  }
                                                                                                                  §§goto(addr831);
                                                                                                               }
                                                                                                               §§goto(addr666);
                                                                                                            }
                                                                                                            §§goto(addr699);
                                                                                                         }
                                                                                                         §§goto(addr698);
                                                                                                      }
                                                                                                      §§goto(addr372);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr242);
                                                                                             }
                                                                                             §§goto(addr833);
                                                                                          }
                                                                                          §§goto(addr709);
                                                                                       }
                                                                                       §§goto(addr803);
                                                                                    }
                                                                                    §§goto(addr782);
                                                                                 }
                                                                                 §§goto(addr844);
                                                                              }
                                                                           }
                                                                           §§goto(addr804);
                                                                        }
                                                                        §§goto(addr311);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(this.mTryToSpecial);
                                                                     }
                                                                     §§goto(addr830);
                                                                  }
                                                                  §§goto(addr834);
                                                               }
                                                               §§goto(addr745);
                                                            }
                                                            §§goto(addr509);
                                                         }
                                                         §§goto(addr324);
                                                      }
                                                      §§goto(addr472);
                                                   }
                                                   §§goto(addr707);
                                                }
                                                §§goto(addr109);
                                             }
                                             §§goto(addr606);
                                          }
                                          §§goto(addr802);
                                       }
                                       §§goto(addr166);
                                    }
                                    §§goto(addr586);
                                 }
                                 §§goto(addr582);
                              }
                              §§goto(addr791);
                           }
                           §§goto(addr225);
                        }
                     }
                  }
                  §§goto(addr782);
               }
               §§goto(addr818);
            }
            §§goto(addr813);
         }
         §§goto(addr118);
      }
      
      public function §#!<§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§1!J§.visible = false;
         }
      }
      
      public function setDamagedFrame() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§ !!§);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop() < 0)
               {
                  if(!(_loc3_ && _loc1_))
                  {
                     this.§8U§();
                     addr44:
                     §§push(0);
                     if(!(_loc3_ && _loc1_))
                     {
                        addr52:
                        §§push(int(§§pop()));
                     }
                     var _loc1_:* = §§pop();
                     if(!_loc3_)
                     {
                        §§push(1);
                        if(_loc2_ || _loc3_)
                        {
                           §§push(this.§-P§.§19§);
                           if(_loc2_)
                           {
                              §§push(§§pop() / this.§-P§.§^V§);
                           }
                           §§push(§§pop() - §§pop());
                           if(_loc2_ || _loc1_)
                           {
                              §§push(§§pop() * this.§ !!§);
                           }
                           §§push(int(§§pop()));
                        }
                        loop0:
                        while(true)
                        {
                           _loc1_ = §§pop();
                           while(true)
                           {
                              §§push(_loc1_);
                              if(!_loc3_)
                              {
                                 if(§§pop() == this.§2!8§)
                                 {
                                    break;
                                 }
                                 if(!_loc3_)
                                 {
                                    this.§2!8§ = _loc1_;
                                 }
                                 do
                                 {
                                    this.§!!"§ = this.§2!8§;
                                    do
                                    {
                                       this.§#I§();
                                    }
                                    while(!_loc2_);
                                    
                                 }
                                 while(_loc3_);
                                 
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    addr86:
                                    break;
                                 }
                                 continue;
                              }
                              continue loop0;
                           }
                           return;
                        }
                     }
                     §§goto(addr86);
                  }
               }
               §§goto(addr44);
            }
            §§goto(addr52);
         }
         §§goto(addr44);
      }
      
      public function §8U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§9!d§)
            {
               if(!_loc2_)
               {
                  this.§ !!§ = this.§9!d§.getFrameCount();
               }
            }
         }
      }
      
      public function §8!Q§(param1:uint = 16777215, param2:int = 4, param3:int = 4) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§@!]§ = new GlowFilter();
            loop0:
            while(true)
            {
               this.§@!]§.blurX = param2;
               while(true)
               {
                  this.§@!]§.blurY = param3;
                  loop2:
                  while(!_loc5_)
                  {
                     while(true)
                     {
                        this.§@!]§.color = param1;
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      public function §76§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§@!]§ = null;
         }
      }
      
      public function §]s§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = Math.min(8,Math.max(this.§-P§.§2!2§(false),1));
         §§push(0);
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               if(!(_loc4_ && this))
               {
                  if(§§pop() >= _loc1_)
                  {
                     if(!(_loc3_ || _loc3_))
                     {
                        continue;
                     }
                     if(_loc3_ || _loc3_)
                     {
                        break;
                     }
                  }
                  else
                  {
                     this.§%P§(_loc2_);
                  }
                  addr97:
                  §§push(_loc2_);
                  if(_loc3_ || _loc1_)
                  {
                     §§push(§§pop() + 1);
                  }
                  _loc2_ = §§pop();
                  continue;
               }
               §§push(int(§§pop()));
            }
            §§goto(addr97);
         }
      }
      
      public function §5!T§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = int(this.§?!0§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() < 0)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  loop3:
                  while(!(_loc3_ || param1))
                  {
                     while(true)
                     {
                        continue loop3;
                     }
                  }
                  continue;
                  addr64:
               }
               else
               {
                  this.§?!0§[_loc2_].updateLifeTime(param1);
                  for(; this.§?!0§[_loc2_].lifeTime < 0; if(_loc4_ && param1)
                  {
                     continue;
                  },this.§%P§(_loc2_),§§goto(addr103))
                  {
                     if(!_loc4_)
                     {
                        continue;
                     }
                     §§goto(addr103);
                  }
               }
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc3_ || this)
                  {
                     §§push(§§pop() - 1);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(int(§§pop()));
                     }
                  }
               }
            }
            while(true)
            {
               _loc2_ = §§pop();
               §§goto(addr64);
            }
         }
      }
      
      private function §%P§(param1:int) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_ || this)
         {
            if(!this.§4J§)
            {
               if(_loc7_ || _loc3_)
               {
                  §§goto(addr35);
               }
            }
            §§push(0);
            if(_loc7_ || this)
            {
               §§push(int(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(!_loc6_)
            {
               if(Math.random() < 0.5)
               {
                  if(!_loc6_)
                  {
                     addr55:
                     §§push(1);
                     if(_loc7_ || _loc3_)
                     {
                        §§push(int(§§pop()));
                     }
                     _loc2_ = §§pop();
                  }
               }
               var _loc3_:§?!B§ = this.§4J§.getFrame(_loc2_);
               §§push(100 + Math.random() * 100);
               if(_loc7_ || _loc3_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               var _loc5_:§!!d§ = null;
               if(_loc7_)
               {
                  if(param1 < this.§?!0§.length)
                  {
                     addr97:
                     _loc5_ = this.§?!0§[param1];
                     if(_loc7_)
                     {
                        _loc5_.§+!"§(_loc4_);
                        if(_loc7_)
                        {
                           _loc5_.§>!E§(_loc3_.texture);
                           if(_loc7_ || param1)
                           {
                              addr156:
                              §§push(_loc5_.image);
                              if(_loc7_ || _loc2_)
                              {
                                 §§push(_loc3_.pivotX);
                                 if(!(_loc6_ && this))
                                 {
                                    §§push(-§§pop());
                                    if(_loc7_ || param1)
                                    {
                                       §§push(this.§=@§);
                                       if(_loc7_)
                                       {
                                          §§push(§§pop().width / 2);
                                          if(!_loc6_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!(_loc6_ && param1))
                                             {
                                                §§push(Math.random() * this.§=@§.width);
                                                if(_loc7_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc6_)
                                                   {
                                                      §§pop().x = §§pop();
                                                      if(!_loc6_)
                                                      {
                                                         addr218:
                                                         §§push(_loc5_.image);
                                                         §§push(-_loc3_.pivotY);
                                                         if(!(_loc6_ && _loc2_))
                                                         {
                                                            addr238:
                                                            §§push(this.§=@§.height / 2);
                                                            if(_loc7_)
                                                            {
                                                               addr243:
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc7_ || _loc2_)
                                                               {
                                                                  addr258:
                                                                  §§push(§§pop() + Math.random() * this.§=@§.height);
                                                               }
                                                               §§pop().y = §§pop();
                                                               §§goto(addr260);
                                                            }
                                                         }
                                                         §§goto(addr258);
                                                      }
                                                      addr260:
                                                      return;
                                                   }
                                                   §§goto(addr258);
                                                }
                                             }
                                             §§goto(addr258);
                                          }
                                          §§goto(addr243);
                                       }
                                       §§goto(addr238);
                                    }
                                    §§goto(addr258);
                                 }
                              }
                           }
                           §§goto(addr218);
                        }
                     }
                     §§goto(addr243);
                  }
                  else
                  {
                     _loc5_ = new §!!d§(_loc3_.texture,_loc4_);
                     if(!_loc6_)
                     {
                        this.§?!0§.push(_loc5_);
                        if(!_loc7_)
                        {
                        }
                        §§goto(addr156);
                     }
                     this.§1!J§.addChild(_loc5_.image);
                  }
                  §§goto(addr156);
               }
               §§goto(addr97);
            }
            §§goto(addr55);
         }
         addr35:
      }
      
      public function §!,§() : §&p§
      {
         return this.§=@§;
      }
   }
}
