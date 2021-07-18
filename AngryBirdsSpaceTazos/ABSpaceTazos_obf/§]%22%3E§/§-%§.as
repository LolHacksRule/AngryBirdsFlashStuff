package §]">§
{
   import §"!&§.§"!Y§;
   import §"!&§.§8X§;
   import §"!&§.§<s§;
   import §"!&§.§="A§;
   import §"!&§.§=C§;
   import §"!&§.§>!0§;
   import §"!&§.set;
   import §'4§.§!!t§;
   import §'4§.§86§;
   import §'4§.§^g§;
   import §1"H§.§+>§;
   import §1"H§.§0"@§;
   import §1"H§.§2!V§;
   import §3"#§.§<!O§;
   import §4&§.§#r§;
   import §4&§.§'!"§;
   import §7!8§.§&!D§;
   import §7!8§.Sprite;
   import §7!8§.§`y§;
   import §75§.§4!-§;
   import §75§.§>!6§;
   import §9t§.b2Vec2;
   import §@w§.§#q§;
   import §@w§.§1o§;
   import §@w§.§?!Y§;
   import §@w§.§`a§;
   import §`!#§.Texture;
   import §`!j§.§#b§;
   import §`X§.b2PrismaticJoint;
   import §`X§.b2RevoluteJoint;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §-%§ implements §;U§
   {
      
      private static const §8!l§:Boolean = false;
      
      private static const §9b§:int = 1000000000;
      
      public static const §^H§:int = -1;
      
      public static const §;!J§:int = -2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §8!l§ = false;
            while(true)
            {
               §9b§ = 1000000000;
               while(!_loc2_)
               {
                  §^H§ = -1;
                  loop2:
                  while(!_loc2_)
                  {
                     while(true)
                     {
                        §;!J§ = -2;
                        if(!_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      protected var §-`§:Vector.<§<!=§>;
      
      protected var §0!<§:Vector.<§3=§>;
      
      protected var §3R§:Vector.<§+>§>;
      
      private var §each §:int = 1000000000;
      
      public var §?>§:§^g§;
      
      protected var §7[§:Vector.<§5&§>;
      
      protected var §+"?§:§7!8§.Sprite;
      
      protected var § x§:§7!8§.Sprite;
      
      protected var §6#§:§7!8§.Sprite;
      
      protected var §-"0§:§7!8§.Sprite;
      
      protected var §?!a§:Vector.<Texture>;
      
      protected var § !B§:Vector.<§#q§>;
      
      protected var §;""§:int = 1;
      
      protected var §4e§:Vector.<§?!Y§>;
      
      protected var §!C§:int = 0;
      
      private var §6V§:int = 0;
      
      private var §+&§:int = 0;
      
      private var §?w§:§`a§;
      
      private var §0"8§:§ 6§;
      
      private var §'!4§:Boolean = true;
      
      private var §7g§:Boolean = true;
      
      public function §-%§(param1:§^g§, param2:§#b§, param3:§7!8§.Sprite, param4:String)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         if(!_loc8_)
         {
            this.§-`§ = new Vector.<§<!=§>();
            while(true)
            {
               this.§0!<§ = new Vector.<§3=§>();
               loop1:
               while(!(_loc8_ && param3))
               {
                  this.§3R§ = new Vector.<§+>§>();
                  loop2:
                  while(true)
                  {
                     this.§7[§ = new Vector.<§5&§>();
                     loop3:
                     while(true)
                     {
                        this.§?!a§ = new Vector.<Texture>();
                        while(true)
                        {
                           this.§4e§ = new Vector.<§?!Y§>();
                           loop5:
                           while(true)
                           {
                              this.§?w§ = new §`a§();
                              while(true)
                              {
                                 super();
                                 loop7:
                                 while(true)
                                 {
                                    this.§?>§ = param1;
                                    loop8:
                                    while(true)
                                    {
                                       this.§+"?§ = param3;
                                       loop9:
                                       while(true)
                                       {
                                          §§push(this.§+"?§);
                                          addr257:
                                          while(true)
                                          {
                                             §§pop().§]!D§ = false;
                                             while(!_loc8_)
                                             {
                                                this.§7g§ = true;
                                                while(_loc7_)
                                                {
                                                   if(_loc7_)
                                                   {
                                                      this.§'!4§ = true;
                                                      continue loop2;
                                                   }
                                                   continue loop8;
                                                   loop24:
                                                   while(!(_loc8_ && param2))
                                                   {
                                                      §§push(0 + §86§.§+[§);
                                                      if(_loc7_ || this)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      if(_loc7_)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            _loc6_ = §§pop();
                                                            continue loop3;
                                                         }
                                                         addr135:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         _loc5_ = §§pop();
                                                         continue loop24;
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop5;
                                             addr155:
                                             if(_loc7_ || param1)
                                             {
                                                §§pop().addChild(this.§6#§);
                                                addr175:
                                                while(true)
                                                {
                                                   if(_loc7_ || param1)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop9;
                                                addr175:
                                             }
                                          }
                                       }
                                    }
                                 }
                                 addr223:
                                 while(_loc7_ || param1)
                                 {
                                    if(_loc8_)
                                    {
                                       continue loop1;
                                    }
                                    this.§6#§ = new §7!8§.Sprite();
                                    §§goto(addr217);
                                    §§goto(addr198);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr191);
      }
      
      public function get overlaySprite() : §7!8§.Sprite
      {
         return this.§-"0§;
      }
      
      public function get §-"%§() : §7!8§.Sprite
      {
         return this.§+"?§;
      }
      
      public function get activeObject() : §1!0§
      {
         return this.§0"8§;
      }
      
      public function get objectCount() : int
      {
         return this.§-`§.length;
      }
      
      public function activateSpecialPower(param1:Number, param2:Number) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = false;
         if(!_loc4_)
         {
            §§push(this.§0"8§);
            if(!(_loc4_ && this))
            {
               if(!§§pop())
               {
               }
               §§goto(addr70);
            }
            §§push(§§pop().activateSpecialPower(this,param1,param2));
            if(_loc5_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc4_)
               {
                  addr69:
                  _loc3_ = §§pop();
               }
               §§goto(addr70);
            }
            §§goto(addr69);
         }
         addr70:
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§0"8§);
         }
         return _loc3_;
      }
      
      protected function addLevelObjects(param1:§#b§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:§`a§ = null;
         var _loc4_:* = NaN;
         var _loc5_:§8X§ = null;
         var _loc6_:§1o§ = null;
         var _loc2_:* = 0;
         if(!_loc7_)
         {
            _loc2_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc8_)
            {
               §§push(param1.objectCount);
               if(_loc8_ || _loc2_)
               {
                  if(§§pop() >= §§pop())
                  {
                     if(!_loc7_)
                     {
                        this.§!!;§();
                        if(_loc8_)
                        {
                           this.§9K§(true);
                        }
                        while(true)
                        {
                           addr139:
                           §§goto(addr197);
                        }
                     }
                     §§goto(addr153);
                  }
                  else
                  {
                     _loc3_ = param1.getObject(_loc2_);
                     if(_loc8_ || _loc3_)
                     {
                        _loc4_ = Number(1);
                     }
                     if(_loc5_ = this.§?>§.levelItemManager.getItem(_loc3_.type))
                     {
                        if(!_loc7_)
                        {
                           §§push(_loc5_.scale);
                           if(!(_loc7_ && _loc3_))
                           {
                              §§push(Number(§§pop()));
                           }
                           _loc4_ = §§pop();
                           if(_loc8_ || _loc3_)
                           {
                              this.§%"F§(_loc3_,_loc3_.id,false,false,false,_loc4_);
                              addr81:
                              if(_loc7_)
                              {
                                 continue;
                              }
                           }
                           _loc2_++;
                        }
                        continue;
                     }
                     §§goto(addr81);
                  }
               }
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     addr197:
                     loop2:
                     while(true)
                     {
                        this.§ !B§ = new Vector.<§#q§>();
                        if(_loc8_ || param1)
                        {
                           while(true)
                           {
                              §§push(0);
                              if(_loc7_)
                              {
                                 break loop0;
                              }
                              _loc2_ = §§pop();
                              if(_loc7_)
                              {
                                 break loop2;
                              }
                              continue loop1;
                           }
                           addr153:
                        }
                        break;
                     }
                     return;
                  }
                  _loc6_ = param1.§2x§(_loc2_);
                  if(_loc8_ || param1)
                  {
                     this.§@!<§(_loc6_);
                     if(_loc8_ || _loc2_)
                     {
                        addr192:
                        _loc2_++;
                     }
                     §§goto(addr193);
                  }
                  §§goto(addr192);
               }
               addr196:
            }
            break;
         }
         while(true)
         {
            §§goto(addr196);
            §§goto(addr193);
         }
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Texture = null;
         loop0:
         while(true)
         {
            if(this.§-`§.length > 0)
            {
               this.§-"C§(0);
               continue;
            }
            if(_loc2_ || _loc3_)
            {
               loop1:
               while(true)
               {
                  if(this.§3R§.length <= 0)
                  {
                     loop2:
                     while(!_loc3_)
                     {
                        this.§-`§ = null;
                        loop3:
                        while(true)
                        {
                           this.§0!<§ = null;
                           loop4:
                           while(true)
                           {
                              this.§3R§ = null;
                              loop5:
                              while(true)
                              {
                                 this.§4e§ = null;
                                 loop6:
                                 while(true)
                                 {
                                    §§push(this.§+"?§);
                                    if(!_loc3_)
                                    {
                                       if(!§§pop())
                                       {
                                          do
                                          {
                                             this.§ x§ = null;
                                             §§goto(addr109);
                                          }
                                          while(!_loc3_);
                                          
                                          continue loop2;
                                       }
                                       while(true)
                                       {
                                          §§push(this.§+"?§);
                                          addr38:
                                          if(!(_loc2_ || this))
                                          {
                                             continue;
                                          }
                                          if(false)
                                          {
                                             while(true)
                                             {
                                                §§push(this.§-"0§);
                                                if(_loc2_ || _loc1_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      addr210:
                                                      if(this.§?!a§.length > 0)
                                                      {
                                                         _loc1_ = this.§?!a§.pop();
                                                         if(_loc2_)
                                                         {
                                                            this.§?>§.textureManager.unregisterBitmapDataTexture(_loc1_);
                                                         }
                                                         §§goto(addr210);
                                                      }
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc2_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   if(!_loc3_)
                                                   {
                                                      addr66:
                                                      this.§-"0§.dispose();
                                                      if(!_loc3_)
                                                      {
                                                         addr69:
                                                         if(_loc3_ && _loc1_)
                                                         {
                                                            continue loop3;
                                                         }
                                                         if(_loc2_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  this.§-"0§ = null;
                                                                  if(_loc2_ || _loc1_)
                                                                  {
                                                                     addr31:
                                                                     if(_loc2_ || _loc3_)
                                                                     {
                                                                        §§goto(addr38);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           this.§6#§ = null;
                                                                           continue loop3;
                                                                           §§goto(addr31);
                                                                        }
                                                                        addr109:
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               continue loop1;
                                                            }
                                                            continue loop5;
                                                         }
                                                         addr133:
                                                         while(true)
                                                         {
                                                            this.§+"?§ = null;
                                                            continue loop6;
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   continue loop4;
                                                   break;
                                                   addr186:
                                                }
                                                §§goto(addr66);
                                             }
                                             return;
                                             addr47:
                                          }
                                          §§goto(addr186);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§pop().dispose();
                                       §§goto(addr133);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     continue loop0;
                  }
                  this.§]"#§(0);
               }
               addr149:
            }
            while(true)
            {
               §§goto(addr149);
            }
         }
      }
      
      private function §9K§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ x§.visible = param1;
         }
      }
      
      private function §!!;§() : void
      {
         var _loc24_:Boolean = false;
         var _loc25_:Boolean = true;
         var _loc3_:§<!=§ = null;
         var _loc4_:Rectangle = null;
         var _loc5_:§1!0§ = null;
         var _loc6_:set = null;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:* = 0;
         var _loc16_:int = 0;
         var _loc17_:BitmapData = null;
         var _loc18_:* = NaN;
         var _loc19_:BitmapData = null;
         var _loc20_:Texture = null;
         var _loc21_:§`y§ = null;
         var _loc1_:Rectangle = null;
         var _loc2_:Vector.<§1!0§> = new Vector.<§1!0§>();
         for each(_loc3_ in this.§-`§)
         {
            §§push(Boolean(_loc5_ = _loc3_ as §1!0§));
            if(!(_loc24_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!_loc24_)
                  {
                     §§pop();
                     if(!_loc24_)
                     {
                        §§push(_loc5_.§6L§());
                        if(!_loc24_)
                        {
                           addr111:
                           if(!§§pop())
                           {
                              continue;
                           }
                           if(_loc25_)
                           {
                              _loc2_.push(_loc5_);
                           }
                        }
                        §§goto(addr111);
                     }
                     _loc6_ = _loc5_.levelItem.shape;
                     if(_loc25_)
                     {
                        §§push(Math.max(_loc6_.getWidth(),_loc6_.getHeight()) / §^g§.§5!-§);
                        if(!_loc24_)
                        {
                           §§push(§§pop() * Math.sqrt(2));
                           if(_loc25_ || _loc2_)
                           {
                              addr146:
                              §§push(Number(§§pop()));
                           }
                           _loc7_ = §§pop();
                           addr148:
                           _loc4_ = new Rectangle(_loc3_.sprite.x - _loc7_ / 2,_loc3_.sprite.y - _loc7_ / 2,_loc7_,_loc7_);
                           if(_loc25_ || this)
                           {
                              if(_loc1_ != null)
                              {
                                 _loc1_ = _loc1_.union(_loc4_);
                                 continue;
                              }
                           }
                           _loc1_ = new Rectangle(_loc4_.x,_loc4_.y,_loc4_.width,_loc4_.height);
                           continue;
                        }
                        §§goto(addr146);
                     }
                     §§goto(addr148);
                  }
               }
            }
            §§goto(addr111);
         }
         if(!_loc24_)
         {
            if(_loc1_)
            {
               loop1:
               while(true)
               {
                  §§push(this.§?>§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().camera);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop().§[f§);
                        loop4:
                        while(true)
                        {
                           §§push(§^g§.§5!-§);
                           loop5:
                           while(true)
                           {
                              §§push(§§pop() / §§pop());
                              loop6:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 loop7:
                                 while(true)
                                 {
                                    _loc8_ = §§pop();
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.§?>§);
                                       if(!(_loc25_ || this))
                                       {
                                          break;
                                       }
                                       §§push(§§pop().camera);
                                       if(!(_loc25_ || this))
                                       {
                                          continue loop3;
                                       }
                                       §§push(§§pop().§<m§);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§^g§.§5!-§);
                                          loop10:
                                          while(_loc25_)
                                          {
                                             §§push(§§pop() / §§pop());
                                             loop11:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                loop12:
                                                while(true)
                                                {
                                                   _loc9_ = §§pop();
                                                   while(true)
                                                   {
                                                      §§push(_loc8_);
                                                      loop14:
                                                      for(; _loc25_ || _loc3_; if(_loc24_ && _loc1_)
                                                      {
                                                         continue;
                                                      },§§goto(addr380),§§push(Number(§§pop())))
                                                      {
                                                         §§push(_loc9_);
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(2);
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() / §§pop());
                                                                  loop18:
                                                                  while(_loc25_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        _loc10_ = §§pop();
                                                                        loop20:
                                                                        while(_loc25_)
                                                                        {
                                                                           §§push(_loc9_);
                                                                           if(_loc25_ || _loc2_)
                                                                           {
                                                                              if(_loc24_ && _loc2_)
                                                                              {
                                                                                 continue loop18;
                                                                              }
                                                                              if(!(_loc25_ || this))
                                                                              {
                                                                                 continue loop16;
                                                                              }
                                                                              if(!_loc25_)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              §§push(_loc8_);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 addr582:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(2);
                                                                                    addr583:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() / §§pop());
                                                                                       addr584:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr581:
                                                                           }
                                                                           while(_loc25_)
                                                                           {
                                                                              _loc11_ = §§pop();
                                                                              loop26:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc10_);
                                                                                 loop27:
                                                                                 while(_loc25_ || _loc3_)
                                                                                 {
                                                                                    §§push(_loc11_);
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc24_)
                                                                                       {
                                                                                          if(!_loc24_)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc24_ && this))
                                                                                                {
                                                                                                   if(_loc24_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§push(Number(§§pop()));
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc8_ = §§pop();
                                                                                                      addr554:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc10_);
                                                                                                         continue loop19;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr584);
                                                                                                }
                                                                                             }
                                                                                             continue loop6;
                                                                                             addr543:
                                                                                          }
                                                                                          continue loop15;
                                                                                       }
                                                                                       §§goto(addr581);
                                                                                       addr510:
                                                                                       §§push(_loc11_);
                                                                                       if(!(_loc25_ || this))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(!_loc25_)
                                                                                       {
                                                                                          continue loop10;
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr522:
                                                                                          while(_loc25_)
                                                                                          {
                                                                                             if(_loc24_)
                                                                                             {
                                                                                                continue loop12;
                                                                                             }
                                                                                             _loc9_ = §§pop();
                                                                                             loop35:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc1_.left = Math.max(_loc1_.left,_loc8_);
                                                                                                loop36:
                                                                                                for(; _loc25_ || _loc2_; if(!(_loc25_ || this))
                                                                                                {
                                                                                                   continue;
                                                                                                },§§goto(addr407))
                                                                                                {
                                                                                                   _loc1_.right = Math.min(_loc1_.right,_loc9_);
                                                                                                   loop37:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(1);
                                                                                                      loop38:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr470:
                                                                                                         while(_loc25_)
                                                                                                         {
                                                                                                            if(_loc25_)
                                                                                                            {
                                                                                                               _loc12_ = §§pop();
                                                                                                               loop40:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc1_.width > 2048);
                                                                                                                     loop42:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           loop43:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              addr324:
                                                                                                                              do
                                                                                                                              {
                                                                                                                                 if(!(_loc25_ || _loc2_))
                                                                                                                                 {
                                                                                                                                    continue loop1;
                                                                                                                                 }
                                                                                                                                 §§push(_loc1_.height > 2048);
                                                                                                                                 if(_loc24_ && _loc3_)
                                                                                                                                 {
                                                                                                                                    continue loop43;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(!(_loc24_ && _loc1_));
                                                                                                                              
                                                                                                                              continue loop42;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        loop45:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              _loc1_.left /= 2;
                                                                                                                           }
                                                                                                                           while(!_loc24_)
                                                                                                                           {
                                                                                                                              §§push(int(_loc1_.width));
                                                                                                                              loop47:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 _loc13_ = §§pop();
                                                                                                                                 loop48:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc25_ || _loc1_)
                                                                                                                                    {
                                                                                                                                       if(_loc24_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§push(int(_loc1_.height));
                                                                                                                                       while(_loc25_)
                                                                                                                                       {
                                                                                                                                          _loc14_ = §§pop();
                                                                                                                                          loop50:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc24_ && _loc1_)
                                                                                                                                             {
                                                                                                                                                continue loop48;
                                                                                                                                             }
                                                                                                                                             if(_loc24_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             do
                                                                                                                                             {
                                                                                                                                                §§push(int(_loc1_.left));
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc15_ = §§pop();
                                                                                                                                                   continue loop50;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(false);
                                                                                                                                             
                                                                                                                                             _loc17_ = new BitmapData(_loc13_,_loc14_,true,0);
                                                                                                                                             if(!(_loc24_ && _loc1_))
                                                                                                                                             {
                                                                                                                                                §§push(this.getLevelTextureScale());
                                                                                                                                                if(_loc25_ || _loc1_)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                                _loc18_ = §§pop();
                                                                                                                                                if(!_loc24_)
                                                                                                                                                {
                                                                                                                                                   this.§'!a§(_loc17_.rect,_loc17_,_loc12_ * _loc18_);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             _loc19_ = this.§?'§(_loc2_,_loc13_,_loc14_,_loc15_,_loc16_,_loc12_);
                                                                                                                                             if(_loc25_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                _loc17_.copyChannel(_loc19_,_loc19_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
                                                                                                                                             }
                                                                                                                                             _loc20_ = this.§?>§.textureManager.getTextureFromBitmapData(_loc17_);
                                                                                                                                             if(!(_loc24_ && _loc3_))
                                                                                                                                             {
                                                                                                                                                this.§?!a§.push(_loc20_);
                                                                                                                                             }
                                                                                                                                             (_loc21_ = new §`y§(_loc20_)).x = _loc15_ / _loc12_;
                                                                                                                                             if(!_loc24_)
                                                                                                                                             {
                                                                                                                                                _loc21_.y = _loc16_ / _loc12_;
                                                                                                                                                _loc21_.scaleX = 1 / _loc12_;
                                                                                                                                                addr780:
                                                                                                                                                if(_loc25_)
                                                                                                                                                {
                                                                                                                                                   _loc21_.scaleY = 1 / _loc12_;
                                                                                                                                                   addr771:
                                                                                                                                                   if(!_loc24_)
                                                                                                                                                   {
                                                                                                                                                      addr757:
                                                                                                                                                      this.§ x§.addChild(_loc21_);
                                                                                                                                                      if(!_loc24_)
                                                                                                                                                      {
                                                                                                                                                         _loc19_.dispose();
                                                                                                                                                         if(!(_loc24_ && _loc1_))
                                                                                                                                                         {
                                                                                                                                                            if(false)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr757);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr799);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr757);
                                                                                                                                                         addr764:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr771);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr780);
                                                                                                                                                }
                                                                                                                                                addr798:
                                                                                                                                                §§goto(addr798);
                                                                                                                                             }
                                                                                                                                             §§goto(addr764);
                                                                                                                                          }
                                                                                                                                          §§goto(addr554);
                                                                                                                                          if(!(_loc24_ && _loc1_))
                                                                                                                                          {
                                                                                                                                             continue loop38;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop47;
                                                                                                                                    }
                                                                                                                                    addr398:
                                                                                                                                    while(_loc25_)
                                                                                                                                    {
                                                                                                                                       continue loop36;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc24_)
                                                                                                                                       {
                                                                                                                                          break loop45;
                                                                                                                                       }
                                                                                                                                       continue loop26;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop35;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop40;
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc25_)
                                                                                                                           {
                                                                                                                              _loc1_.top /= 2;
                                                                                                                              continue loop1;
                                                                                                                           }
                                                                                                                           continue loop37;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr407:
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr553);
                                                                                                            }
                                                                                                            §§goto(addr554);
                                                                                                         }
                                                                                                         continue loop19;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop20;
                                                                                             }
                                                                                          }
                                                                                          continue loop27;
                                                                                          addr365:
                                                                                          if(!(_loc24_ && _loc3_))
                                                                                          {
                                                                                             continue loop14;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr583);
                                                                                 }
                                                                                 §§goto(addr582);
                                                                              }
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                  }
                                                                  continue loop7;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                             }
                                          }
                                          continue loop5;
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            addr799:
            return;
         }
         §§goto(addr454);
      }
      
      private function §?'§(param1:Vector.<§1!0§>, param2:int, param3:int, param4:int, param5:int, param6:Number) : BitmapData
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc7_:§1!0§ = null;
         var _loc11_:* = NaN;
         var _loc12_:set = null;
         var _loc8_:BitmapData = new BitmapData(param2,param3,true,0);
         var _loc9_:BitmapData = new BitmapData(1,1,true,4294967295);
         var _loc10_:Matrix = new Matrix();
         for each(_loc7_ in param1)
         {
            if(!_loc15_)
            {
               _loc10_.identity();
               if(!(_loc15_ && param3))
               {
                  §§push(param6);
                  if(_loc16_)
                  {
                     §§push(Number(§§pop()));
                  }
                  _loc11_ = §§pop();
               }
            }
            §§push((_loc12_ = _loc7_.levelItem.shape) is §>!0§);
            if(_loc16_ || this)
            {
               if(§§pop())
               {
                  if(_loc16_)
                  {
                     this.§5R§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§+!c§(),param6,_loc11_,param4,param5);
                     if(_loc15_)
                     {
                        addr224:
                        this.§5R§(_loc12_,_loc8_,_loc9_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§+!c§(),param6,_loc11_,param4,param5);
                        continue;
                        addr242:
                        addr173:
                     }
                  }
                  continue;
               }
               §§push(_loc12_ is §"!Y§);
               while(true)
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  if(_loc16_ || param3)
                  {
                     if((_loc12_ as §"!Y§).vertices.length != 4)
                     {
                        if((_loc12_ as §"!Y§).vertices.length == 3)
                        {
                           addr183:
                           if(_loc16_)
                           {
                              this.§#!7§(_loc12_ as §"!Y§,_loc8_,_loc10_,_loc7_.sprite.x,_loc7_.sprite.y,_loc7_.§+!c§(),param6,_loc11_,param4,param5);
                              addr204:
                           }
                           else
                           {
                              §§goto(addr242);
                           }
                        }
                     }
                     §§goto(addr224);
                  }
               }
               §§goto(addr173);
               addr209:
               §§goto(addr224);
            }
            §§goto(addr209);
         }
         if(!(_loc15_ && param3))
         {
            _loc9_.dispose();
         }
         return _loc8_;
      }
      
      protected function §5R§(param1:set, param2:BitmapData, param3:BitmapData, param4:Matrix, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number, param11:Number) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         §§push(param1.getWidth());
         if(_loc14_ || param2)
         {
            §§push(§^g§.§5!-§);
            if(_loc14_)
            {
               §§push(§§pop() / §§pop());
               if(_loc14_ || param2)
               {
                  addr38:
                  §§push(§§pop() * param9);
                  if(!_loc15_)
                  {
                     addr41:
                     §§push(Number(§§pop()));
                  }
                  var _loc12_:* = §§pop();
                  §§push(param1.getHeight());
                  if(!(_loc15_ && param2))
                  {
                     §§push(§^g§.§5!-§);
                     if(_loc14_ || this)
                     {
                        §§push(§§pop() / §§pop());
                        if(!_loc15_)
                        {
                           addr65:
                           §§push(§§pop() * param9);
                           if(!(_loc15_ && param3))
                           {
                              addr83:
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc13_:* = §§pop();
                        if(_loc14_)
                        {
                           param4.scale(_loc12_,_loc13_);
                           while(true)
                           {
                              param4.translate(-_loc12_ / 2,-_loc13_ / 2);
                           }
                           addr166:
                        }
                        loop1:
                        while(true)
                        {
                           param4.rotate(param7);
                           while(true)
                           {
                              param4.translate(param5 * param8 - param10,param6 * param8 - param11);
                              while(_loc14_ || param3)
                              {
                                 param2.draw(param3,param4);
                                 if(_loc14_ || param2)
                                 {
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        return;
                     }
                     §§goto(addr65);
                  }
                  §§goto(addr83);
               }
               §§goto(addr41);
            }
         }
         §§goto(addr38);
      }
      
      protected function §#!7§(param1:§"!Y§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number, param10:Number) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc14_:b2Vec2 = null;
         var _loc11_:flash.display.Sprite;
         (_loc11_ = new flash.display.Sprite()).graphics.beginFill(16777215);
         var _loc12_:Vector.<Number> = new Vector.<Number>();
         var _loc13_:int = 0;
         while(_loc13_ < param1.vertices.length)
         {
            _loc14_ = param1.vertices[_loc13_];
            if(!(_loc16_ && param2))
            {
               _loc12_.push(_loc14_.x / §^g§.§5!-§ * param8,_loc14_.y / §^g§.§5!-§ * param8);
               if(!_loc16_)
               {
                  _loc13_++;
               }
            }
         }
         if(_loc15_)
         {
            _loc11_.graphics.drawTriangles(_loc12_);
            if(_loc15_ || param3)
            {
               _loc11_.graphics.endFill();
            }
         }
         loop1:
         while(true)
         {
            param3.rotate(param6);
            while(true)
            {
               param3.translate(param4 * param7 - param9,param5 * param7 - param10);
               while(_loc15_)
               {
                  if(!_loc16_)
                  {
                     while(true)
                     {
                        param2.draw(_loc11_,param3);
                        do
                        {
                           _loc11_.graphics.clear();
                        }
                        while(!(_loc15_ || this));
                        
                        if(_loc15_)
                        {
                           if(true)
                           {
                              _loc11_ = null;
                           }
                           continue;
                           return;
                        }
                        break;
                     }
                     continue;
                  }
                  continue loop1;
               }
            }
         }
      }
      
      protected function §6"$§(param1:§="A§, param2:BitmapData, param3:Matrix, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number, param9:Number) : void
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         §§push(param1.radius);
         if(_loc13_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:*;
         §§push(_loc10_ = §§pop());
         if(_loc13_ || param3)
         {
            §§push(§^g§.§5!-§);
            if(!_loc14_)
            {
               §§push(§§pop() / §§pop());
               if(_loc13_ || param2)
               {
                  addr48:
                  §§push(§§pop() * param7);
                  if(_loc13_ || param1)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               var _loc11_:* = §§pop();
               var _loc12_:flash.display.Sprite;
               (_loc12_ = new flash.display.Sprite()).graphics.beginFill(16777215);
               if(!_loc14_)
               {
                  _loc12_.graphics.drawCircle(_loc11_,_loc11_,_loc11_);
                  while(true)
                  {
                     _loc12_.graphics.endFill();
                     while(!(_loc14_ && param2))
                     {
                        loop3:
                        while(true)
                        {
                           param2.draw(_loc12_,param3);
                           while(_loc13_)
                           {
                              _loc12_.graphics.clear();
                              if(_loc13_ || this)
                              {
                                 continue loop3;
                              }
                           }
                           addr131:
                           while(true)
                           {
                              param3.translate(param4 * param6 - param8 - _loc11_,param5 * param6 - param9 - _loc11_);
                              break loop3;
                           }
                        }
                     }
                  }
               }
               §§goto(addr131);
            }
         }
         §§goto(addr48);
      }
      
      protected function getLevelTextureName() : String
      {
         return this.§?>§.background.§#!<§();
      }
      
      protected function getLevelTextureScale() : Number
      {
         return 1;
      }
      
      private function §'!a§(param1:Rectangle, param2:BitmapData, param3:Number) : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc6_:BitmapData = null;
         var _loc7_:Matrix = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:* = 0;
         §§push(this.getLevelTextureName());
         if(_loc16_)
         {
            §§push(§§pop());
         }
         var _loc4_:* = §§pop();
         var _loc5_:§'!"§;
         if(_loc5_ = this.§?>§.backgroundTextureManager.getTexture(_loc4_))
         {
            _loc6_ = new BitmapData(_loc5_.bitmapData.width * param3,_loc5_.bitmapData.height * param3);
            (_loc7_ = new Matrix()).scale(param3,param3);
            if(_loc16_ || param2)
            {
               _loc6_.draw(_loc5_.bitmapData,_loc7_);
               loop0:
               while(true)
               {
                  §§push(_loc6_.width - 2);
                  loop1:
                  while(true)
                  {
                     §§push(int(§§pop()));
                     loop2:
                     while(true)
                     {
                        _loc8_ = §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(_loc6_.height - 2);
                           loop4:
                           while(true)
                           {
                              §§push(int(§§pop()));
                              loop5:
                              while(true)
                              {
                                 _loc9_ = §§pop();
                                 loop6:
                                 while(true)
                                 {
                                    §§push(param1.top / _loc9_);
                                    loop7:
                                    while(!_loc17_)
                                    {
                                       §§push(int(§§pop()));
                                       loop8:
                                       while(true)
                                       {
                                          _loc10_ = §§pop();
                                          loop9:
                                          while(true)
                                          {
                                             if(param1.top < 0)
                                             {
                                                loop10:
                                                while(!(_loc17_ && param1))
                                                {
                                                   §§push(_loc10_);
                                                   loop11:
                                                   for(; !_loc17_; if(_loc17_ && this)
                                                   {
                                                      continue;
                                                   },§§goto(addr173),§§push(int(§§pop())))
                                                   {
                                                      if(!(_loc16_ || this))
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§push(§§pop() - 1);
                                                      while(true)
                                                      {
                                                         _loc10_ = §§pop();
                                                         addr378:
                                                         while(true)
                                                         {
                                                         }
                                                         loop24:
                                                         while(_loc16_ || param3)
                                                         {
                                                            §§push(§§pop() + 1);
                                                            loop25:
                                                            while(true)
                                                            {
                                                               _loc13_ = §§pop();
                                                               while(true)
                                                               {
                                                                  if(_loc16_ || param1)
                                                                  {
                                                                     §§push(_loc12_);
                                                                     if(!_loc17_)
                                                                     {
                                                                        if(!(_loc17_ && param1))
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        loop29:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc17_ && this))
                                                                           {
                                                                              §§push(§§pop() - 1);
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc17_ && param2))
                                                                                 {
                                                                                    _loc12_ = §§pop();
                                                                                    addr284:
                                                                                    loop23:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc17_ && this)
                                                                                       {
                                                                                          continue loop9;
                                                                                       }
                                                                                       if(!(_loc16_ || param2))
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                       loop27:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param1.right / _loc8_);
                                                                                          if(!(_loc17_ && param3))
                                                                                          {
                                                                                             §§push(int(§§pop()));
                                                                                             if(!(_loc17_ && this))
                                                                                             {
                                                                                                if(!(_loc17_ && param3))
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      _loc13_ = §§pop();
                                                                                                      continue loop24;
                                                                                                   }
                                                                                                   addr350:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc11_ = §§pop();
                                                                                                      break loop23;
                                                                                                   }
                                                                                                }
                                                                                                break loop23;
                                                                                             }
                                                                                             continue loop24;
                                                                                          }
                                                                                          addr304:
                                                                                          addr332:
                                                                                          while(_loc16_)
                                                                                          {
                                                                                             §§push(int(§§pop()));
                                                                                             continue loop27;
                                                                                          }
                                                                                          while(!_loc17_)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          continue loop7;
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() + 1);
                                                                                       addr352:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc11_ = §§pop();
                                                                                          addr353:
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr304);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    addr284:
                                                                                    addr351:
                                                                                 }
                                                                                 while(_loc16_)
                                                                                 {
                                                                                    _loc12_ = §§pop();
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc17_)
                                                                                       {
                                                                                          if(!(_loc17_ && param1))
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          continue loop10;
                                                                                          continue loop10;
                                                                                       }
                                                                                       §§goto(addr353);
                                                                                       addr260:
                                                                                       if(_loc17_ && param1)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          continue loop29;
                                                                                       }
                                                                                    }
                                                                                    continue loop11;
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                              addr276:
                                                                           }
                                                                           §§goto(addr352);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr173:
                                                                        if(!_loc16_)
                                                                        {
                                                                           continue loop25;
                                                                        }
                                                                        if(_loc17_)
                                                                        {
                                                                           continue loop24;
                                                                        }
                                                                        if(!_loc17_)
                                                                        {
                                                                           _loc14_ = §§pop();
                                                                           if(!(_loc16_ || param1))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(_loc17_ && param2)
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr83:
                                                                           §§push(_loc14_);
                                                                           if(_loc16_)
                                                                           {
                                                                              if(!_loc17_)
                                                                              {
                                                                                 §§push(_loc13_);
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    if(§§pop() >= §§pop())
                                                                                    {
                                                                                       if(_loc16_ || this)
                                                                                       {
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                _loc6_.dispose();
                                                                                                addr106:
                                                                                                if(_loc16_)
                                                                                                {
                                                                                                   if(false)
                                                                                                   {
                                                                                                      addr110:
                                                                                                      §§push(_loc15_);
                                                                                                      if(!_loc17_)
                                                                                                      {
                                                                                                         addr115:
                                                                                                         if(§§pop() >= _loc11_)
                                                                                                         {
                                                                                                            addr116:
                                                                                                            _loc14_++;
                                                                                                            addr117:
                                                                                                            if(!(_loc17_ && this))
                                                                                                            {
                                                                                                               if(!_loc17_)
                                                                                                               {
                                                                                                                  §§goto(addr83);
                                                                                                               }
                                                                                                               §§goto(addr110);
                                                                                                               addr153:
                                                                                                            }
                                                                                                            _loc15_++;
                                                                                                            §§goto(addr110);
                                                                                                            addr146:
                                                                                                         }
                                                                                                         param2.copyPixels(_loc6_,_loc6_.rect,new Point(_loc14_ * _loc8_,_loc15_ * _loc9_));
                                                                                                         §§goto(addr146);
                                                                                                      }
                                                                                                      addr152:
                                                                                                      _loc15_ = §§pop();
                                                                                                      §§goto(addr153);
                                                                                                   }
                                                                                                   §§goto(addr421);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr116);
                                                                                          }
                                                                                          §§goto(addr117);
                                                                                       }
                                                                                       §§goto(addr106);
                                                                                    }
                                                                                    addr151:
                                                                                    §§goto(addr152);
                                                                                    §§push(int(_loc10_));
                                                                                 }
                                                                                 §§goto(addr115);
                                                                              }
                                                                              §§goto(addr151);
                                                                           }
                                                                           §§goto(addr110);
                                                                        }
                                                                     }
                                                                     §§goto(addr276);
                                                                  }
                                                                  §§goto(addr284);
                                                               }
                                                               §§goto(addr378);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop3;
                                             }
                                             while(true)
                                             {
                                                §§goto(addr332);
                                                §§goto(addr378);
                                             }
                                          }
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr267);
         }
         addr421:
      }
      
      protected function addObjectBird(param1:§`a§, param2:§7!8§.Sprite, param3:§#r§, param4:§8X§, param5:Number = 1.0, param6:Boolean = true) : § 6§
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         var _loc11_:§ 6§ = null;
         §§push(param1.type);
         if(!_loc14_)
         {
            §§push(§§pop());
         }
         var _loc7_:* = §§pop();
         §§push(param1.x);
         if(_loc13_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc8_:* = §§pop();
         §§push(param1.y);
         if(!(_loc14_ && param3))
         {
            §§push(Number(§§pop()));
         }
         var _loc9_:* = §§pop();
         §§push(param1.angle);
         if(_loc13_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc10_:* = §§pop();
         var _loc12_:* = _loc7_;
         if(!_loc14_)
         {
            if("BIRD_BLACK" === _loc12_)
            {
               if(_loc13_)
               {
                  §§push(0);
                  if(!(_loc13_ || param2))
                  {
                     addr360:
                  }
               }
               else
               {
                  addr334:
                  §§push(5);
                  if(_loc13_)
                  {
                     addr337:
                  }
                  else
                  {
                     addr351:
                  }
               }
            }
            else
            {
               if("BIRD_BLUE" === _loc12_)
               {
                  if(_loc13_ || param3)
                  {
                     §§push(1);
                     if(_loc13_ || param3)
                     {
                        §§goto(addr387);
                     }
                     else
                     {
                        §§goto(addr360);
                     }
                  }
               }
               else if("BIRD_GREEN" === _loc12_)
               {
                  if(_loc13_)
                  {
                     §§push(2);
                     if(!(_loc14_ && param1))
                     {
                        §§goto(addr387);
                     }
                     else
                     {
                        §§goto(addr337);
                     }
                  }
                  else
                  {
                     addr357:
                     §§push(7);
                     if(!_loc14_)
                     {
                        §§goto(addr360);
                     }
                     else
                     {
                        addr382:
                        §§goto(addr387);
                     }
                  }
               }
               else if("BIRD_WHITE" === _loc12_)
               {
                  if(!_loc14_)
                  {
                     §§push(3);
                     if(!(_loc14_ && param3))
                     {
                        §§goto(addr387);
                     }
                     else
                     {
                        §§goto(addr360);
                     }
                  }
               }
               else if("BIRD_YELLOW" === _loc12_)
               {
                  if(_loc13_)
                  {
                     §§push(4);
                     if(_loc13_ || this)
                     {
                     }
                  }
                  else
                  {
                     addr343:
                     §§push(6);
                     if(_loc13_ || this)
                     {
                        §§goto(addr351);
                     }
                  }
               }
               else if("BIRD_RED" === _loc12_)
               {
                  if(!_loc14_)
                  {
                     §§goto(addr334);
                  }
                  else
                  {
                     §§goto(addr343);
                  }
               }
               else
               {
                  if("BIRD_REDBIG" === _loc12_)
                  {
                     if(!_loc14_)
                     {
                        §§goto(addr343);
                     }
                     else
                     {
                        §§goto(addr357);
                     }
                  }
                  else
                  {
                     if("BIRD_SARDINE" === _loc12_)
                     {
                        if(_loc13_)
                        {
                           §§goto(addr357);
                        }
                     }
                     else if("BIRD_MIGHTY_EAGLE" !== _loc12_)
                     {
                        addr387:
                        switch(§§pop())
                        {
                           case 0:
                              _loc11_ = new §!"<§(param2,param3,this.§?>§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
                              break;
                           case 1:
                              _loc11_ = new §3L§(param2,param3,this.§?>§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
                              break;
                           case 2:
                              _loc11_ = new §29§(param2,param3,this.§?>§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
                              break;
                           case 3:
                              _loc11_ = new §+7§(param2,param3,this.§?>§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
                              break;
                           case 4:
                              _loc11_ = new §+x§(param2,param3,this.§?>§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
                              break;
                           case 5:
                              _loc11_ = new §8"#§(param2,param3,this.§?>§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
                              break;
                           case 6:
                              _loc11_ = new §16§(param2,param3,this.§?>§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
                              break;
                           case 7:
                              _loc11_ = new §<Y§(param2,param3,this.§?>§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
                              break;
                           case 8:
                              _loc11_ = new §5"$§(param2,param3,this.§?>§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
                              break;
                           default:
                              _loc11_ = new § 6§(param2,param3,this.§?>§.mLevelEngine.mWorld,param4,_loc8_,_loc9_,_loc10_,param5,param6);
                        }
                        return _loc11_;
                        §§push(9);
                     }
                     §§goto(addr387);
                  }
                  §§goto(addr387);
               }
               §§goto(addr387);
               if(_loc13_ || this)
               {
                  §§goto(addr382);
               }
            }
            §§goto(addr387);
         }
         §§goto(addr334);
      }
      
      public function hasBirds() : Boolean
      {
         return this.§!C§ > 0;
      }
      
      protected function addObjectPig(param1:§`a§, param2:§7!8§.Sprite, param3:§#r§, param4:§8X§, param5:Number = 1.0) : §50§
      {
         return new §50§(param2,param3,this.§?>§.mLevelEngine.mWorld,param4,param1.x,param1.y,param1.angle,param5);
      }
      
      public function addObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean = false, param7:Boolean = false, param8:Boolean = true, param9:Number = 1.0, param10:Boolean = false) : §<!=§
      {
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         if(_loc11_)
         {
            §§push(this.§?w§);
            while(true)
            {
               §§pop().type = param1;
               addr145:
               while(true)
               {
                  §§push(this.§?w§);
                  addr138:
                  while(true)
                  {
                     §§push(param2);
                     addr139:
                     while(true)
                     {
                        §§pop().x = §§pop();
                        addr140:
                        while(true)
                        {
                           §§push(this.§?w§);
                           addr122:
                           while(true)
                           {
                              §§push(param3);
                              addr123:
                              while(true)
                              {
                                 §§pop().y = §§pop();
                              }
                           }
                        }
                     }
                  }
               }
            }
            addr143:
         }
         loop7:
         while(true)
         {
            §§push(this.§?w§);
            loop8:
            for(; _loc11_; while(_loc11_ || param2)
            {
               §§goto(addr91);
               §§push(0);
               §§goto(addr92);
            })
            {
               §§push(param4);
               while(true)
               {
                  if(_loc11_ || param1)
                  {
                     if(_loc11_ || param2)
                     {
                        §§pop().angle = §§pop();
                        while(true)
                        {
                           if(_loc11_)
                           {
                              if(_loc12_)
                              {
                                 break;
                              }
                              §§push(this.§?w§);
                              continue loop8;
                           }
                           continue loop7;
                        }
                        §§goto(addr145);
                        addr114:
                     }
                     §§goto(addr139);
                  }
                  break;
                  addr50:
                  if(_loc12_ && param2)
                  {
                     continue;
                  }
                  §§pop().§0!Z§ = §§pop();
                  if(!_loc11_)
                  {
                     loop13:
                     while(true)
                     {
                        §§push(this.§?w§);
                        if(_loc11_)
                        {
                           if(_loc11_)
                           {
                              if(!_loc12_)
                              {
                                 addr42:
                                 §§push(0);
                                 if(!(_loc12_ && this))
                                 {
                                    §§goto(addr50);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§pop().§2]§ = §§pop();
                                       continue loop13;
                                       §§goto(addr42);
                                    }
                                    addr91:
                                 }
                              }
                              else
                              {
                                 §§goto(addr143);
                              }
                              §§goto(addr145);
                           }
                           break;
                        }
                        continue loop8;
                     }
                     §§goto(addr138);
                     addr92:
                  }
                  if(!_loc12_)
                  {
                     if(_loc11_ || this)
                     {
                        return this.§%"F§(this.§?w§,param5,param6,param7,param8,param9,param10);
                     }
                  }
                  else
                  {
                     §§goto(addr114);
                  }
                  §§goto(addr140);
               }
               §§goto(addr123);
            }
            §§goto(addr122);
         }
      }
      
      public function §]`§(param1:String, param2:Number, param3:Number, param4:Number, param5:int, param6:Number = 0.0, param7:Number = 0.0, param8:Number = 1.0, param9:Boolean = false) : §<!=§
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!(_loc10_ && param1))
         {
            §§push(this.§?w§);
            loop0:
            while(true)
            {
               §§pop().type = param1;
               addr151:
               while(true)
               {
                  §§push(this.§?w§);
                  addr144:
                  while(true)
                  {
                     §§push(param2);
                     addr145:
                     while(true)
                     {
                        §§pop().x = §§pop();
                        addr146:
                        while(true)
                        {
                           §§push(this.§?w§);
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr102);
      }
      
      protected function §%"F§(param1:§`a§, param2:int, param3:Boolean = false, param4:Boolean = false, param5:Boolean = true, param6:Number = 1.0, param7:Boolean = false) : §<!=§
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc8_:§7!8§.Sprite = new §7!8§.Sprite();
         var _loc9_:§<!=§;
         if((_loc9_ = this.§'!r§(param1,param2,_loc8_,param5,param6)) == null)
         {
            if(_loc12_)
            {
               return null;
            }
            loop11:
            while(true)
            {
               loop5:
               while(true)
               {
                  §§push(param4);
                  if(_loc12_)
                  {
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        addr249:
                        loop6:
                        while(true)
                        {
                           §§push(§§pop());
                           addr250:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop19:
                                 while(true)
                                 {
                                    §§pop();
                                    addr252:
                                    while(true)
                                    {
                                       §§push(_loc9_ is § 6§);
                                       if(!(_loc12_ || param3))
                                       {
                                          continue loop19;
                                       }
                                       if(!_loc12_)
                                       {
                                          continue loop6;
                                       }
                                       if(_loc12_ || param2)
                                       {
                                          break;
                                       }
                                       loop3:
                                       while(true)
                                       {
                                          if(!_loc13_)
                                          {
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   continue loop5;
                                                }
                                                while(!_loc13_)
                                                {
                                                   while(true)
                                                   {
                                                      this.§?>§.§^!#§(_loc9_);
                                                      continue loop11;
                                                   }
                                                   if(!(_loc13_ && param1))
                                                   {
                                                      §§goto(addr184);
                                                   }
                                                }
                                             }
                                             addr257:
                                          }
                                          else
                                          {
                                             addr284:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   break loop3;
                                                }
                                                this.§-"0§.§ k§(_loc8_);
                                             }
                                             addr284:
                                          }
                                          addr282:
                                          while(true)
                                          {
                                             addr253:
                                             while(true)
                                             {
                                                continue loop3;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          this.§6#§.§ k§(_loc8_);
                                          addr289:
                                          while(true)
                                          {
                                             §§goto(addr253);
                                          }
                                       }
                                       continue loop19;
                                    }
                                 }
                                 addr251:
                              }
                              while(true)
                              {
                                 §§goto(addr210);
                              }
                           }
                        }
                     }
                     addr248:
                  }
               }
            }
         }
         else
         {
            §§push(_loc9_ is §1!0§);
            if(_loc12_)
            {
               §§push(§§pop());
               if(!(_loc13_ && param2))
               {
                  if(§§pop())
                  {
                     if(!(_loc13_ && param3))
                     {
                        §§pop();
                        if(!(_loc13_ && this))
                        {
                           loop0:
                           while(true)
                           {
                              §§push((_loc9_ as §1!0§).§6L§());
                              if(_loc12_)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(!(_loc13_ && this))
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc12_ || this)
                                          {
                                             §§push(_loc8_);
                                             §§push(this.§'!4§);
                                             if(!_loc13_)
                                             {
                                                §§push(!§§pop());
                                             }
                                             §§pop().visible = §§pop();
                                             if(_loc12_)
                                             {
                                                addr44:
                                                §§push(_loc9_ is § 6§);
                                                if(!(_loc13_ && this))
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc13_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!_loc13_)
                                                         {
                                                            §§pop();
                                                            if(_loc12_ || this)
                                                            {
                                                               if(false)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               §§push(_loc9_ is §5"$§);
                                                               if(_loc12_)
                                                               {
                                                                  §§push(!§§pop());
                                                                  if(_loc12_)
                                                                  {
                                                                     addr153:
                                                                     if(§§pop())
                                                                     {
                                                                        if(!_loc13_)
                                                                        {
                                                                           addr156:
                                                                           var _loc10_:*;
                                                                           §§push((_loc10_ = this).§!C§);
                                                                           if(_loc12_ || param3)
                                                                           {
                                                                              §§push(§§pop() + 1);
                                                                           }
                                                                           var _loc11_:* = §§pop();
                                                                           if(_loc12_ || param3)
                                                                           {
                                                                              _loc10_.§!C§ = _loc11_;
                                                                           }
                                                                           if(!_loc12_)
                                                                           {
                                                                           }
                                                                           §§goto(addr260);
                                                                        }
                                                                        §§goto(addr289);
                                                                     }
                                                                     §§goto(addr284);
                                                                     §§push(param7);
                                                                  }
                                                                  §§goto(addr257);
                                                               }
                                                               §§goto(addr248);
                                                            }
                                                            §§goto(addr289);
                                                         }
                                                         §§goto(addr210);
                                                      }
                                                      §§goto(addr153);
                                                   }
                                                   §§goto(addr250);
                                                }
                                                §§goto(addr284);
                                             }
                                             §§goto(addr282);
                                          }
                                          §§goto(addr156);
                                       }
                                       §§goto(addr44);
                                    }
                                    addr86:
                                 }
                                 §§goto(addr153);
                              }
                              break;
                           }
                           §§goto(addr249);
                        }
                        §§goto(addr260);
                     }
                     addr210:
                     while(§§pop())
                     {
                        if(!(_loc13_ && this))
                        {
                           if(_loc12_)
                           {
                              if(!(_loc13_ && param2))
                              {
                                 this.§0"8§ = § 6§(_loc9_);
                                 addr232:
                                 if(_loc12_)
                                 {
                                    if(_loc13_)
                                    {
                                       continue loop11;
                                    }
                                    §§goto(addr236);
                                 }
                                 else
                                 {
                                    §§goto(addr252);
                                 }
                              }
                              §§goto(addr285);
                           }
                           §§goto(addr289);
                        }
                        §§goto(addr232);
                     }
                     addr184:
                     return _loc9_;
                  }
                  §§goto(addr86);
               }
               §§goto(addr250);
            }
         }
         §§goto(addr251);
      }
      
      private function §'!r§(param1:§`a§, param2:int, param3:§7!8§.Sprite, param4:Boolean = true, param5:Number = 1.0) : §<!=§
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc7_:§1!0§ = null;
         if(!(_loc10_ && param1))
         {
            §§push(param2);
            if(!(_loc10_ && param2))
            {
               §§push(§;!J§);
               if(!(_loc10_ && param2))
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc11_ || param2)
                     {
                        §§push(this.§each §);
                        if(!_loc10_)
                        {
                           §§push(int(§§pop()));
                           if(_loc11_ || this)
                           {
                              addr63:
                              param2 = §§pop();
                              if(!_loc10_)
                              {
                                 var _loc8_:*;
                                 §§push((_loc8_ = this).§each §);
                                 if(!(_loc10_ && param3))
                                 {
                                    §§push(§§pop() + 1);
                                 }
                                 var _loc9_:* = §§pop();
                                 if(_loc11_ || this)
                                 {
                                    _loc8_.§each § = _loc9_;
                                 }
                                 if(!_loc10_)
                                 {
                                    addr145:
                                    var _loc6_:§<!=§;
                                    if((_loc6_ = this.createObjectInstance(param1,param3,param4,param5)) is § 6§)
                                    {
                                       if(!(_loc10_ && this))
                                       {
                                          §§push((_loc8_ = this).§+&§);
                                          if(_loc11_)
                                          {
                                             §§push(§§pop() + 1);
                                          }
                                          _loc9_ = §§pop();
                                          if(_loc11_ || param3)
                                          {
                                             _loc8_.§+&§ = _loc9_;
                                          }
                                          if(_loc11_)
                                          {
                                             addr186:
                                             if(_loc6_)
                                             {
                                                addr188:
                                                _loc7_ = _loc6_ as §1!0§;
                                                if(_loc11_)
                                                {
                                                   §§push(_loc6_ is §+>§);
                                                   loop0:
                                                   for(; !§§pop(); while(true)
                                                   {
                                                      §§push(_loc6_ is §3=§);
                                                      if(_loc11_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc10_ && param2))
                                                            {
                                                               if(_loc11_)
                                                               {
                                                                  this.§0!<§.push(_loc6_);
                                                                  addr216:
                                                                  if(_loc10_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§goto(addr218);
                                                               }
                                                               §§goto(addr269);
                                                            }
                                                            §§goto(addr216);
                                                         }
                                                         break;
                                                      }
                                                      continue loop0;
                                                   },§§goto(addr270))
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         if(_loc11_ || param2)
                                                         {
                                                            _loc7_.§2!6§(param2);
                                                         }
                                                         while(true)
                                                         {
                                                            if(!_loc11_)
                                                            {
                                                               break loop0;
                                                            }
                                                            addr218:
                                                            if(_loc10_ && param2)
                                                            {
                                                               continue;
                                                            }
                                                            while(true)
                                                            {
                                                               if(true)
                                                               {
                                                                  §§goto(addr270);
                                                               }
                                                               while(true)
                                                               {
                                                                  this.§-`§.push(_loc6_);
                                                                  continue loop0;
                                                               }
                                                            }
                                                         }
                                                         addr269:
                                                         addr270:
                                                         return _loc6_;
                                                         addr269:
                                                      }
                                                      §§goto(addr227);
                                                   }
                                                   this.§3R§.push(_loc6_);
                                                   §§goto(addr269);
                                                }
                                                §§goto(addr225);
                                             }
                                             §§goto(addr270);
                                          }
                                       }
                                       §§goto(addr188);
                                    }
                                    §§goto(addr186);
                                 }
                              }
                              §§goto(addr145);
                           }
                           else
                           {
                              addr95:
                              if(§§pop() >= §9b§)
                              {
                                 if(!_loc10_)
                                 {
                                    throw new Error("Invalid object id: " + param2 + ". Has to be less than " + §9b§);
                                 }
                              }
                           }
                           if(this.§with§(param2))
                           {
                              if(_loc11_ || param3)
                              {
                                 throw new Error("Object with id: " + param2 + " already added!");
                              }
                              §§goto(addr145);
                           }
                           §§goto(addr145);
                        }
                     }
                     §§goto(addr145);
                  }
                  else
                  {
                     §§push(param2);
                  }
               }
               §§goto(addr95);
            }
            §§goto(addr63);
         }
         §§goto(addr145);
      }
      
      protected function getCommonTextureName() : String
      {
         return "INGAME_TEXTURE_SAND_1";
      }
      
      protected function createBombBlockInstance(param1:§`a§, param2:§7!8§.Sprite, param3:§#r§, param4:§8X§, param5:int, param6:Number = 1.0) : §<!=§
      {
         return new §&!h§(param2,param3,this.§?>§.mLevelEngine.mWorld,param4,param1.x,param1.y,param1.angle,param6,param5);
      }
      
      protected function createObjectInstance(param1:§`a§, param2:§7!8§.Sprite, param3:Boolean = true, param4:Number = 1.0) : §<!=§
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:§8X§;
         if(!(_loc5_ = this.§?>§.levelItemManager.getItem(param1.type)))
         {
            if(_loc9_)
            {
               return null;
            }
         }
         §§push(_loc5_.itemName);
         if(_loc9_ || param2)
         {
            §§push(§§pop());
         }
         var _loc6_:*;
         §§push(_loc6_ = §§pop());
         if(!_loc10_)
         {
            if(§§pop().substr(0,13) == "BLOCK_STATIC_")
            {
               if(!(_loc10_ && this))
               {
                  §§push(this.getCommonTextureName());
                  if(!_loc10_)
                  {
                     addr61:
                     _loc6_ = §§pop();
                  }
                  §§goto(addr61);
               }
            }
            var _loc7_:§#r§ = this.§?>§.animationManager.getAnimation(_loc6_);
            var _loc8_:§<!=§ = null;
            if(!(_loc10_ && param3))
            {
               §§push(param1.type);
               if(!_loc10_)
               {
                  if(§§pop().indexOf("BIRD") == 0)
                  {
                     if(!_loc10_)
                     {
                        _loc8_ = this.addObjectBird(param1,param2,_loc7_,_loc5_,param4,param3);
                     }
                     else
                     {
                        addr164:
                        if(_loc5_.itemType == §8X§.§@+§)
                        {
                           if(_loc9_)
                           {
                              addr172:
                              §§push(_loc5_.itemName);
                              if(_loc9_)
                              {
                                 if(§§pop().indexOf("TNT") >= 0)
                                 {
                                    if(_loc9_)
                                    {
                                       addr182:
                                       §§push(this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§5&§.§"N§,param4));
                                       if(!(_loc10_ && param3))
                                       {
                                          _loc8_ = §§pop();
                                       }
                                       else
                                       {
                                          addr215:
                                          _loc8_ = §§pop();
                                       }
                                       addr265:
                                       return _loc8_;
                                       addr236:
                                    }
                                    else
                                    {
                                       addr206:
                                       §§push(this.createBombBlockInstance(param1,param2,_loc7_,_loc5_,§5&§.§=R§,param4));
                                    }
                                    §§goto(addr215);
                                 }
                                 else
                                 {
                                    addr203:
                                    if(_loc5_.itemName == §+7§.§<>§)
                                    {
                                       §§goto(addr206);
                                    }
                                    else
                                    {
                                       _loc8_ = new §@"D§(param2,_loc7_,this.§?>§.mLevelEngine.mWorld,_loc5_,param1.x,param1.y,param1.angle,param4);
                                    }
                                    §§goto(addr236);
                                 }
                              }
                              §§goto(addr203);
                           }
                           §§goto(addr206);
                        }
                        else
                        {
                           _loc8_ = new §1!0§(param2,_loc7_,this.§?>§.mLevelEngine.mWorld,_loc5_,param1.x,param1.y,param1.angle,param4);
                        }
                     }
                     §§goto(addr265);
                  }
                  else
                  {
                     §§push(_loc5_.itemType);
                     if(!_loc10_)
                     {
                        §§push(§8X§.§<g§);
                        if(!_loc10_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(_loc9_)
                              {
                                 _loc8_ = this.addObjectPig(param1,param2,_loc7_,_loc5_,param4);
                              }
                              else
                              {
                                 §§goto(addr164);
                              }
                              §§goto(addr265);
                           }
                           else
                           {
                              §§push(_loc5_.itemType);
                              if(_loc9_ || param1)
                              {
                                 addr140:
                                 §§push(§8X§.§5x§);
                                 if(!_loc10_)
                                 {
                                    addr144:
                                    §§push(§§pop() == §§pop());
                                    if(!_loc10_)
                                    {
                                       if(!§§pop())
                                       {
                                          if(!(_loc10_ && param2))
                                          {
                                             §§pop();
                                             if(_loc9_ || param2)
                                             {
                                                §§goto(addr164);
                                             }
                                             §§goto(addr172);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr164);
                              }
                           }
                           §§goto(addr164);
                        }
                        §§goto(addr144);
                     }
                     §§goto(addr140);
                  }
               }
               §§goto(addr203);
            }
            §§goto(addr182);
         }
         §§goto(addr61);
      }
      
      public function addScore(param1:int, param2:String, param3:Boolean, param4:Number, param5:Number, param6:int) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            this.§?>§.addScore(param1,§!!t§.§#!L§,param3,param4,param5,param6);
         }
      }
      
      public function §%!y§(param1:String, param2:int, param3:int, param4:Number, param5:Number, param6:Number, param7:String, param8:int, param9:Number = 0, param10:Number = 0, param11:Number = 0, param12:Number = 0, param13:Number = 1, param14:int = -1, param15:Boolean = false) : void
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         if(_loc17_ || param2)
         {
            this.§?>§.particles.§%!y§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15);
         }
      }
      
      protected function §`"'§(param1:§1!0§) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:§#q§ = null;
         var _loc5_:§#q§ = null;
         var _loc6_:§<!=§ = null;
         var _loc7_:§<!=§ = null;
         §§push(param1.id);
         if(_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:* = int(this.§ !B§.length - 1);
         while(_loc3_ >= 0)
         {
            _loc4_ = this.§ !B§[_loc3_];
            if(_loc8_)
            {
               continue;
            }
            §§push(this.§ !B§[_loc3_].id1 == _loc2_);
            if(_loc9_)
            {
               if(!§§pop())
               {
                  if(!(_loc8_ && this))
                  {
                     §§pop();
                     if(_loc8_)
                     {
                        continue;
                     }
                     §§push(this.§ !B§[_loc3_].id2 == _loc2_);
                  }
               }
            }
            if(§§pop())
            {
               if(_loc9_)
               {
                  §§push(_loc4_.§&_§);
                  if(_loc9_)
                  {
                     if(§§pop())
                     {
                        if(!_loc9_)
                        {
                           continue;
                        }
                        addr101:
                        _loc6_ = _loc4_.§&_§.§#n§().GetUserData() as §<!=§;
                        _loc7_ = _loc4_.§&_§.§1x§().GetUserData() as §<!=§;
                        if(!_loc8_)
                        {
                           if(_loc6_)
                           {
                              if(_loc9_)
                              {
                                 _loc6_.attachedJointRemoved(_loc7_);
                                 if(!_loc8_)
                                 {
                                    addr126:
                                    if(_loc7_)
                                    {
                                       if(!_loc9_)
                                       {
                                       }
                                       addr133:
                                       _loc5_ = this.§ !B§.pop();
                                       if(_loc9_)
                                       {
                                          if(_loc3_ < this.§ !B§.length)
                                          {
                                             if(!(_loc8_ && _loc3_))
                                             {
                                                this.§ !B§[_loc3_] = _loc5_;
                                                if(_loc8_ && _loc3_)
                                                {
                                                }
                                                addr167:
                                                §§push(_loc3_);
                                                if(_loc9_ || _loc2_)
                                                {
                                                   §§push(§§pop() - 1);
                                                }
                                                _loc3_ = §§pop();
                                                continue;
                                             }
                                          }
                                          this.§@c§(_loc4_);
                                       }
                                       §§goto(addr167);
                                    }
                                 }
                                 §§goto(addr133);
                              }
                              _loc7_.attachedJointRemoved(_loc6_);
                              §§goto(addr133);
                           }
                           §§goto(addr126);
                        }
                     }
                     §§goto(addr133);
                  }
               }
               §§goto(addr101);
            }
            §§goto(addr167);
         }
      }
      
      protected function §@!<§(param1:§1o§) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(param1.id1);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(param1.id2);
         if(!_loc7_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:§#q§ = §#q§.§@!<§(param1);
         if(!(_loc7_ && _loc2_))
         {
            this.§ !B§.push(_loc4_);
         }
         var _loc5_:§<!=§ = this.§with§(_loc2_);
         var _loc6_:§<!=§ = this.§with§(_loc3_);
         if(!_loc7_)
         {
            §§push(Boolean(_loc5_));
            if(!(_loc7_ && _loc3_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(Boolean(_loc6_));
                        if(_loc8_ || _loc2_)
                        {
                           loop0:
                           while(§§pop())
                           {
                              while(true)
                              {
                                 if(_loc4_.type != §1o§.§`!T§)
                                 {
                                    if(_loc8_)
                                    {
                                       _loc4_.§&_§ = this.§?>§.mLevelEngine.mWorld.§9"A§(_loc4_.§;"<§(_loc5_,_loc6_));
                                    }
                                    loop4:
                                    while(true)
                                    {
                                       if(_loc8_)
                                       {
                                          while(true)
                                          {
                                             _loc5_.attachedJointCreated(_loc6_);
                                             do
                                             {
                                                _loc6_.attachedJointCreated(_loc5_);
                                             }
                                             while(_loc7_);
                                             
                                             if(!(_loc7_ && _loc2_))
                                             {
                                                break;
                                             }
                                             continue loop4;
                                             addr114:
                                          }
                                          break loop0;
                                          addr88:
                                       }
                                       continue loop2;
                                    }
                                    addr145:
                                 }
                                 else
                                 {
                                    this.§4e§.push(new §?!Y§(_loc2_,_loc3_,_loc4_.§%?§));
                                 }
                                 while(true)
                                 {
                                    if(_loc8_ || param1)
                                    {
                                       if(_loc7_)
                                       {
                                          break;
                                       }
                                       §§goto(addr114);
                                    }
                                    else
                                    {
                                       §§goto(addr145);
                                    }
                                 }
                              }
                              continue loop2;
                           }
                           return;
                           addr125:
                        }
                        break;
                     }
                  }
                  addr169:
               }
               §§goto(addr125);
            }
            §§goto(addr169);
         }
         §§goto(addr127);
      }
      
      protected function §@c§(param1:§#q§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1.§&_§)
            {
               addr85:
               while(true)
               {
                  this.§?>§.mLevelEngine.mWorld.§'$§(param1.§&_§);
                  addr92:
                  while(true)
                  {
                  }
               }
               addr85:
            }
            for(; param1.§<!a§; §§goto(addr92))
            {
               if(!_loc3_)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     §§push(this.§6#§);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(param1.§<!a§);
                        if(_loc2_)
                        {
                           if(§§pop().contains(§§pop()))
                           {
                              if(!_loc3_)
                              {
                                 if(!_loc2_)
                                 {
                                    continue;
                                 }
                                 addr67:
                                 §§push(this.§6#§);
                                 §§push(param1.§<!a§);
                              }
                              addr71:
                              break;
                           }
                           break;
                        }
                        §§pop().removeChild(§§pop(),true);
                        §§goto(addr71);
                     }
                     §§goto(addr67);
                  }
                  else
                  {
                     §§goto(addr85);
                  }
               }
               §§goto(addr71);
            }
            return;
         }
         §§goto(addr85);
      }
      
      public function §>"'§(param1:int, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§7[§.push(§5&§.§6w§(param1,param2,param3));
         }
         do
         {
            §<!O§.playSound("TntExplosions","ChannelExplosions");
         }
         while(!_loc4_);
         
      }
      
      public function §6!N§(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && this))
         {
            this.§7[§.push(§5&§.§2!"§(param1,param2,param3,param4,param5,param6));
         }
         do
         {
            §<!O§.playSound("TntExplosions","ChannelExplosions");
         }
         while(!_loc7_);
         
      }
      
      public function getForceAtPoint(param1:Number, param2:Number, param3:Number, param4:b2Vec2) : b2Vec2
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            if(!param4)
            {
               if(!_loc5_)
               {
                  param4 = new b2Vec2();
               }
               §§goto(addr54);
            }
            param4.SetV(this.§?>§.mLevelEngine.mWorld.GetGravity());
         }
         addr54:
         return param4;
      }
      
      public function get §+"1§() : Number
      {
         return this.§?>§.§+"1§;
      }
      
      public function §+!F§(param1:Number, param2:Number) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§1!0§ = null;
         var _loc3_:int = this.§-`§.length - 1;
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc5_ && param2))
            {
               if(§§pop() < 0)
               {
                  break;
               }
               §§push(Boolean(_loc4_ = this.§-`§[_loc3_] as §1!0§));
               if(!(_loc5_ && this))
               {
                  if(§§pop())
                  {
                     if(!(_loc5_ && param2))
                     {
                        §§pop();
                        if(_loc6_)
                        {
                           addr72:
                           if(_loc4_.isInCoordinates(param1,param2))
                           {
                              if(_loc6_)
                              {
                                 §§push(_loc3_);
                                 if(!_loc5_)
                                 {
                                    return §§pop();
                                 }
                              }
                              else
                              {
                                 addr81:
                                 §§push(_loc3_);
                                 if(!(_loc6_ || param1))
                                 {
                                    continue;
                                 }
                              }
                              §§push(§§pop() - 1);
                              continue;
                           }
                        }
                        §§goto(addr81);
                     }
                  }
               }
               §§goto(addr72);
            }
            break;
         }
         return §§pop();
      }
      
      public function § !0§(param1:Number, param2:Number) : §1!0§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§1!0§ = null;
         var _loc3_:* = int(this.§-`§.length - 1);
         while(_loc3_ >= 0)
         {
            if(_loc4_ = this.§-`§[_loc3_] as §1!0§)
            {
               if(!_loc6_)
               {
                  if(_loc4_.isInCoordinates(param1,param2))
                  {
                     if(_loc5_ || _loc3_)
                     {
                        return _loc4_;
                     }
                     continue;
                  }
               }
            }
            §§push(_loc3_);
            if(_loc5_)
            {
               §§push(§§pop() - 1);
            }
            _loc3_ = §§pop();
         }
         return null;
      }
      
      public function getObject(param1:int) : §<!=§
      {
         return this.§-`§[param1];
      }
      
      public function §with§(param1:int) : §1!0§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§<!=§ = null;
         var _loc3_:§1!0§ = null;
         var _loc4_:int = 0;
         var _loc5_:* = this.§-`§;
         while(true)
         {
            for each(_loc2_ in _loc5_)
            {
               _loc3_ = _loc2_ as §1!0§;
               if(_loc6_)
               {
                  break;
               }
               §§push(Boolean(_loc3_));
               if(!_loc6_)
               {
                  if(§§pop())
                  {
                     if(!(_loc6_ && this))
                     {
                        §§pop();
                        if(!_loc7_)
                        {
                           continue;
                        }
                        §§push(_loc3_.id == param1);
                     }
                  }
               }
               if(§§pop())
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc3_;
      }
      
      public function renderObjects(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = int(this.§-`§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc4_);
            loop1:
            while(true)
            {
               §§push(0);
               loop2:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     loop3:
                     while(true)
                     {
                        this.§@!v§(param1);
                        loop4:
                        while(!_loc6_)
                        {
                           if(_loc5_)
                           {
                              §§push(int(this.§3R§.length - 1));
                              loop5:
                              while(_loc5_)
                              {
                                 _loc4_ = §§pop();
                                 loop6:
                                 while(_loc5_ || param3)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       if(_loc5_ || param2)
                                       {
                                          §§push(0);
                                          if(_loc6_)
                                          {
                                             break;
                                          }
                                          if(§§pop() < §§pop())
                                          {
                                             if(_loc6_ && param1)
                                             {
                                                continue;
                                             }
                                             if(_loc5_)
                                             {
                                                if(_loc5_)
                                                {
                                                   if(!(_loc6_ && this))
                                                   {
                                                      break loop3;
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop6;
                                             }
                                          }
                                          else
                                          {
                                             this.§3R§[_loc4_].render(param1,param2,param3);
                                          }
                                          §§push(_loc4_);
                                          if(!(_loc6_ && param1))
                                          {
                                             if(!_loc5_)
                                             {
                                                continue loop5;
                                             }
                                             §§push(§§pop() - 1);
                                          }
                                       }
                                       if(!(_loc6_ && param1))
                                       {
                                          _loc4_ = §§pop();
                                          continue;
                                       }
                                       continue loop1;
                                    }
                                    continue loop2;
                                 }
                                 continue loop4;
                              }
                              addr134:
                              _loc4_ = §§pop();
                              break;
                           }
                           break loop2;
                        }
                        continue loop0;
                     }
                     return;
                  }
                  this.§-`§[_loc4_].render(param1,param2,param3);
                  break;
               }
               §§push(_loc4_);
               if(_loc5_)
               {
                  §§push(§§pop() - 1);
               }
               §§goto(addr134);
            }
         }
      }
      
      protected function §&P§(param1:Number, param2:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(1);
         §§push(param1);
         if(!_loc4_)
         {
            §§push(§§pop() / param2);
         }
         return §§pop() - §§pop();
      }
      
      protected function §<!D§(param1:Number, param2:Number, param3:§1!0§) : §>!6§
      {
         var _loc4_:Number = param3.§^!z§().GetPosition().x;
         var _loc5_:Number = param3.§^!z§().GetPosition().y;
         var _loc6_:Number = param3.levelItem.shape.getWidth();
         var _loc7_:Number = param3.levelItem.shape.getHeight();
         var _loc8_:Number = param3.§^!z§().GetAngle();
         return §4!-§.§6f§(_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,param1,param2);
      }
      
      protected function §'!W§(param1:§1!0§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            if(param2 > param1.defence)
            {
               if(_loc4_)
               {
                  §§push(param1);
                  §§push(param2);
                  if(_loc4_ || param1)
                  {
                     §§push(§§pop() + param1.defence);
                  }
                  §§pop().applyDamage(§§pop(),this,null,false);
               }
            }
         }
      }
      
      protected function §7q§() : void
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc1_:§5&§ = null;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:§<!=§ = null;
         var _loc7_:§1!0§ = null;
         var _loc8_:§>!6§ = null;
         var _loc9_:* = NaN;
         var _loc10_:Point = null;
         var _loc11_:Number = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         if(_loc16_)
         {
            if(!this.§7g§)
            {
               if(!(_loc17_ && _loc2_))
               {
                  §§goto(addr59);
               }
            }
            loop0:
            while(this.§7[§.length > 0)
            {
               _loc1_ = this.§7[§.shift();
               if(_loc16_ || _loc2_)
               {
                  §§push(_loc1_.§2L§);
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     addr160:
                     do
                     {
                        _loc2_ = §§pop();
                     }
                     while(!_loc17_);
                     
                     continue loop0;
                  }
                  addr159:
               }
               while(true)
               {
                  §§push(_loc1_.x);
                  if(!(_loc17_ && this))
                  {
                     §§push(Number(§§pop()));
                  }
                  loop4:
                  while(true)
                  {
                     _loc3_ = §§pop();
                     loop5:
                     while(true)
                     {
                        §§push(_loc1_.y);
                        while(!_loc17_)
                        {
                           if(_loc16_ || this)
                           {
                              §§push(Number(§§pop()));
                              loop7:
                              while(true)
                              {
                                 _loc4_ = §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc1_.damage);
                                       if(!(_loc17_ && _loc3_))
                                       {
                                          continue loop7;
                                       }
                                       addr111:
                                       _loc5_ = §§pop();
                                       if(_loc17_ && _loc2_)
                                       {
                                          break;
                                       }
                                       if(!(_loc17_ && _loc1_))
                                       {
                                          if(_loc16_)
                                          {
                                             this.shakeCameraOnExplosion(_loc1_.push);
                                             if(!_loc17_)
                                             {
                                                if(false)
                                                {
                                                   continue;
                                                }
                                                var _loc14_:int = 0;
                                                if(_loc16_ || _loc3_)
                                                {
                                                   var _loc15_:* = this.§-`§;
                                                   addr411:
                                                   for each(_loc6_ in _loc15_)
                                                   {
                                                      if(!(_loc6_ is §1!0§))
                                                      {
                                                         §§goto(addr411);
                                                      }
                                                      if(_loc7_ = §1!0§(_loc6_))
                                                      {
                                                         §§push((_loc8_ = this.§<!D§(_loc3_,_loc4_,_loc7_)).§]1§);
                                                         if(_loc16_)
                                                         {
                                                            §§push(_loc1_.§2L§);
                                                            if(!(_loc17_ && _loc1_))
                                                            {
                                                               if(§§pop() <= §§pop())
                                                               {
                                                                  if(_loc16_)
                                                                  {
                                                                     §§push(_loc1_.push);
                                                                     if(!_loc17_)
                                                                     {
                                                                        §§push(this.§&P§(_loc8_.§]1§,_loc1_.§2L§));
                                                                        if(!(_loc17_ && _loc2_))
                                                                        {
                                                                           addr246:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc17_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              if(_loc16_ || _loc3_)
                                                                              {
                                                                                 _loc9_ = §§pop();
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    §§push(_loc8_.§]1§);
                                                                                    if(_loc16_ || _loc2_)
                                                                                    {
                                                                                    }
                                                                                    addr364:
                                                                                    §§push(_loc1_.§@P§);
                                                                                    if(_loc16_ || _loc2_)
                                                                                    {
                                                                                       if(§§pop() <= §§pop())
                                                                                       {
                                                                                          if(_loc16_ || this)
                                                                                          {
                                                                                             §§push(_loc5_);
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                addr390:
                                                                                                §§push(§§pop() * this.§&P§(_loc8_.§]1§,_loc1_.§@P§));
                                                                                                if(_loc16_ || _loc1_)
                                                                                                {
                                                                                                   addr398:
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                _loc13_ = §§pop();
                                                                                                if(_loc16_ || this)
                                                                                                {
                                                                                                }
                                                                                                §§goto(addr411);
                                                                                             }
                                                                                             §§goto(addr398);
                                                                                          }
                                                                                          addr407:
                                                                                          this.§'!W§(_loc7_,_loc13_);
                                                                                       }
                                                                                       §§goto(addr411);
                                                                                    }
                                                                                    §§goto(addr390);
                                                                                 }
                                                                                 §§goto(addr411);
                                                                              }
                                                                              if(§§pop() > 0)
                                                                              {
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    (_loc10_ = new Point(_loc8_.§%!b§.x - _loc3_,_loc8_.§%!b§.y - _loc4_)).normalize(1);
                                                                                    if(_loc16_ || _loc1_)
                                                                                    {
                                                                                       addr353:
                                                                                       _loc11_ = _loc9_ * _loc10_.x;
                                                                                       addr320:
                                                                                       addr354:
                                                                                       addr352:
                                                                                       addr349:
                                                                                       §§push(_loc9_);
                                                                                       if(!_loc17_)
                                                                                       {
                                                                                          if(!(_loc17_ && _loc2_))
                                                                                          {
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                §§push(§§pop() * _loc10_.y);
                                                                                                if(!_loc17_)
                                                                                                {
                                                                                                   addr339:
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(_loc16_ || _loc1_)
                                                                                                   {
                                                                                                      _loc12_ = §§pop();
                                                                                                      _loc7_.§^!z§().ApplyImpulse(new b2Vec2(_loc11_,_loc12_),new b2Vec2(_loc8_.§%!b§.x,_loc8_.§%!b§.y));
                                                                                                      addr347:
                                                                                                      if(!_loc17_)
                                                                                                      {
                                                                                                         if(_loc16_)
                                                                                                         {
                                                                                                            if(false)
                                                                                                            {
                                                                                                               §§goto(addr320);
                                                                                                            }
                                                                                                            addr355:
                                                                                                            §§push(_loc8_.§]1§);
                                                                                                            if(!(_loc17_ && this))
                                                                                                            {
                                                                                                               §§goto(addr364);
                                                                                                            }
                                                                                                            §§goto(addr390);
                                                                                                         }
                                                                                                         §§goto(addr354);
                                                                                                      }
                                                                                                      addr347:
                                                                                                      §§goto(addr347);
                                                                                                   }
                                                                                                   §§goto(addr352);
                                                                                                }
                                                                                                §§goto(addr339);
                                                                                             }
                                                                                             §§goto(addr349);
                                                                                          }
                                                                                          §§goto(addr353);
                                                                                       }
                                                                                       §§goto(addr339);
                                                                                    }
                                                                                    §§goto(addr347);
                                                                                 }
                                                                                 §§goto(addr407);
                                                                              }
                                                                              §§goto(addr355);
                                                                           }
                                                                           §§goto(addr364);
                                                                        }
                                                                        §§goto(addr390);
                                                                     }
                                                                     §§goto(addr364);
                                                                  }
                                                                  §§goto(addr411);
                                                               }
                                                               §§goto(addr355);
                                                            }
                                                            §§goto(addr246);
                                                         }
                                                         §§goto(addr398);
                                                      }
                                                      §§goto(addr411);
                                                   }
                                                }
                                                if(_loc16_ || _loc3_)
                                                {
                                                   break;
                                                }
                                             }
                                             continue loop0;
                                          }
                                          continue loop5;
                                       }
                                       continue loop8;
                                    }
                                    this.updateExplosionEffects(_loc1_,_loc3_,_loc4_,_loc2_);
                                    continue loop0;
                                 }
                              }
                           }
                           else
                           {
                              §§goto(addr160);
                           }
                           if(_loc17_ && _loc3_)
                           {
                              continue;
                           }
                           if(_loc16_)
                           {
                              §§goto(addr111);
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr159);
                        }
                        continue loop4;
                     }
                  }
               }
            }
            return;
         }
         addr59:
      }
      
      protected function updateExplosionEffects(param1:§5&§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         if(!(_loc10_ && this))
         {
            this.§?>§.particles.§%!y§(this.§^[§(param1.type),§0"@§.§3!W§,§2!V§.§?v§,param2,param3,600,"",§2!V§.§["8§,0,0,0,0,1,20,true);
         }
         var _loc5_:int = 30;
         while(true)
         {
            §§push(_loc5_);
            if(!_loc10_)
            {
               if(!(_loc10_ && param1))
               {
                  §§push(150);
                  if(_loc9_)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(!_loc10_)
                        {
                           break;
                        }
                        loop1:
                        while(true)
                        {
                           if(_loc9_)
                           {
                              if(!_loc10_)
                              {
                                 break;
                              }
                              loop2:
                              while(true)
                              {
                                 §§push(1250);
                                 loop3:
                                 while(true)
                                 {
                                    §§push(Math.random() * 750);
                                    loop4:
                                    while(true)
                                    {
                                       §§push(§§pop() + §§pop());
                                       loop5:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          loop6:
                                          while(_loc9_)
                                          {
                                             _loc7_ = §§pop();
                                             loop7:
                                             while(true)
                                             {
                                                §§push(_loc5_);
                                                addr164:
                                                while(true)
                                                {
                                                   if(!_loc9_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   §§push(180);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() / Math.PI);
                                                      if(!_loc9_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      §§push(§§pop() / §§pop());
                                                      while(true)
                                                      {
                                                         if(!_loc9_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         if(!(_loc10_ && param2))
                                                         {
                                                            §§push(Number(§§pop()));
                                                            while(true)
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               if(!(_loc9_ || param1))
                                                               {
                                                                  continue loop2;
                                                               }
                                                               if(!_loc10_)
                                                               {
                                                                  _loc8_ = §§pop();
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§?>§.particles);
                                                                     §§push(§2!V§.§?![§);
                                                                     §§push(§0"@§.§3!W§);
                                                                     §§push(§2!V§.§#!N§);
                                                                     §§push(param2);
                                                                     §§push(param3);
                                                                     §§push(_loc7_);
                                                                     §§push("");
                                                                     §§push(§2!V§.§["8§);
                                                                     §§push(_loc6_);
                                                                     if(_loc9_)
                                                                     {
                                                                        §§push(§§pop() * Math.cos(_loc8_));
                                                                     }
                                                                     §§push(_loc6_);
                                                                     if(_loc9_ || this)
                                                                     {
                                                                        §§push(-§§pop());
                                                                        if(!_loc10_)
                                                                        {
                                                                           addr145:
                                                                           §§push(§§pop() * Math.sin(_loc8_));
                                                                        }
                                                                        §§pop().§%!y§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),20,0);
                                                                        while(true)
                                                                        {
                                                                           if(_loc9_)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                        continue loop1;
                                                                        addr152:
                                                                     }
                                                                     §§goto(addr145);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(Math.random() * param4);
                                                                  }
                                                                  addr230:
                                                               }
                                                            }
                                                            addr183:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(param4);
                                                               if(!(_loc10_ && param2))
                                                               {
                                                                  §§goto(addr230);
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                            }
                                                            addr211:
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            break loop6;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             continue loop2;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr152);
                        }
                        continue;
                     }
                     §§push(0.75);
                     §§goto(addr211);
                  }
                  §§goto(addr82);
               }
               §§goto(addr164);
            }
            §§goto(addr95);
         }
      }
      
      protected function §^[§(param1:int) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_ || this)
         {
         }
         switch(§§pop())
         {
         }
         return §2!V§.§3Z§;
      }
      
      public function updateObjects(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§1!0§ = null;
         var _loc2_:§<!=§ = null;
         var _loc3_:* = int(this.§-`§.length - 1);
         loop0:
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§-`§[_loc3_];
            if(!_loc6_)
            {
               continue;
            }
            if(_loc2_.removeOnNextUpdate)
            {
               if(_loc5_ && this)
               {
                  continue;
               }
               this.§-"C§(_loc3_,true);
               if(!(_loc6_ || _loc3_))
               {
                  addr67:
                  _loc4_ = _loc2_ as §1!0§;
                  if(!_loc5_)
                  {
                     §§push(this.§"=§(_loc2_));
                     while(true)
                     {
                        if(!§§pop())
                        {
                           §§push(Boolean(_loc4_));
                           loop2:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc6_)
                                          {
                                             if(!_loc5_)
                                             {
                                                _loc4_.§'!p§(§=C§.§;!G§);
                                                while(_loc6_ || param1)
                                                {
                                                   if(!_loc5_)
                                                   {
                                                      this.§-"C§(_loc3_,false);
                                                      if(_loc5_ && _loc3_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!_loc5_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(false)
                                                            {
                                                               loop5:
                                                               while(true)
                                                               {
                                                                  §§push(_loc4_.isReadyToBeRemoved(param1));
                                                                  if(_loc5_ && _loc2_)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  addr151:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr152:
                                                                     while(true)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr172);
                                                         }
                                                         addr89:
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr158);
                                                      }
                                                      §§goto(addr172);
                                                      continue;
                                                   }
                                                   addr172:
                                                   addr165:
                                                   addr172:
                                                   addr158:
                                                   addr153:
                                                   if(_loc4_)
                                                   {
                                                      addr167:
                                                      _loc4_.§'!p§(§=C§.§;!G§);
                                                      break;
                                                   }
                                                   this.§-"C§(_loc3_,false);
                                                   if(_loc5_)
                                                   {
                                                      §§goto(addr167);
                                                   }
                                                   §§push(_loc3_);
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      §§push(§§pop() - 1);
                                                   }
                                                   _loc3_ = §§pop();
                                                   continue loop0;
                                                }
                                                §§goto(addr153);
                                                addr134:
                                             }
                                             §§goto(addr152);
                                          }
                                          §§goto(addr134);
                                       }
                                       §§goto(addr172);
                                    }
                                 }
                                 addr124:
                              }
                              §§goto(addr151);
                           }
                        }
                        §§goto(addr165);
                     }
                  }
                  §§goto(addr89);
               }
               §§goto(addr172);
            }
            else
            {
               _loc2_.update(param1,this);
               if(_loc5_)
               {
                  continue;
               }
            }
            §§goto(addr67);
         }
         if(!(_loc5_ && this))
         {
            this.§7o§(param1);
            if(!_loc5_)
            {
               this.§7q§();
            }
         }
      }
      
      protected function §@!v§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§+>§ = null;
         var _loc3_:int = this.§3R§.length - 1;
         while(_loc3_ >= 0)
         {
            _loc2_ = this.§3R§[_loc3_];
            if(_loc5_ || param1)
            {
               if(!_loc2_.removeOnNextUpdate)
               {
                  _loc2_.update(param1,this);
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        continue;
                     }
                  }
               }
               while(true)
               {
                  this.§]"#§(_loc3_);
                  §§goto(addr95);
               }
            }
            §§goto(addr67);
         }
      }
      
      protected function §7o§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§7v§(param1);
            do
            {
               this.§#!;§();
            }
            while(_loc3_);
            
         }
      }
      
      protected function §7v§(param1:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§?!Y§ = null;
         var _loc4_:§<!=§ = null;
         var _loc2_:* = int(this.§4e§.length - 1);
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§4e§[_loc2_];
            if(!(_loc6_ || _loc2_))
            {
               continue;
            }
            §§push(_loc3_.§=""§);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     addr69:
                     if(!_loc3_.update(param1))
                     {
                        if(!_loc6_)
                        {
                           continue;
                        }
                     }
                     addr113:
                     §§push(_loc2_);
                     if(!_loc5_)
                     {
                        §§push(§§pop() - 1);
                     }
                     _loc2_ = §§pop();
                     continue;
                  }
                  _loc4_ = this.§with§(_loc3_.objectId1);
                  if(_loc6_)
                  {
                     this.§!!m§(_loc4_,true);
                  }
                  _loc4_ = this.§with§(_loc3_.objectId2);
                  if(_loc6_)
                  {
                     this.§!!m§(_loc4_,true);
                     if(_loc6_)
                     {
                        this.§4e§.splice(_loc2_,1);
                     }
                  }
               }
               §§goto(addr113);
            }
            §§goto(addr69);
         }
      }
      
      private function §extends§(param1:§#q§) : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc2_:§1!0§ = param1.debug_object_1;
         var _loc3_:§1!0§ = param1.debug_object_2;
         if(!_loc11_)
         {
            if(!_loc2_)
            {
               if(!(_loc11_ && _loc2_))
               {
                  §§push(this.§with§(param1.id1));
                  if(!_loc11_)
                  {
                     _loc2_ = §§pop();
                     if(!_loc11_)
                     {
                        param1.debug_object_1 = _loc2_;
                        addr48:
                        if(!_loc3_)
                        {
                           addr54:
                           _loc3_ = this.§with§(param1.id2);
                           if(!_loc11_)
                           {
                              param1.debug_object_2 = _loc3_;
                           }
                        }
                        var _loc4_:Number = _loc2_.sprite.x;
                        var _loc5_:Number = _loc2_.sprite.y;
                        var _loc6_:Number = _loc3_.sprite.x;
                        var _loc7_:Number = _loc3_.sprite.y;
                        var _loc8_:Number = Math.sqrt((_loc6_ - _loc4_) * (_loc6_ - _loc4_) + (_loc7_ - _loc5_) * (_loc7_ - _loc5_));
                        var _loc9_:Number = Math.atan2(_loc7_ - _loc5_,_loc6_ - _loc4_);
                        if(_loc10_)
                        {
                           §§push(param1.§<!a§);
                           while(true)
                           {
                              if(§§pop() == null)
                              {
                                 if(!_loc11_)
                                 {
                                    param1.§<!a§ = new §&!D§(4,4,4294901760);
                                 }
                                 while(true)
                                 {
                                    this.§6#§.addChild(param1.§<!a§);
                                    addr211:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr235:
                              }
                              while(true)
                              {
                                 §§push(param1.§<!a§);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(_loc4_);
                                    addr199:
                                    while(true)
                                    {
                                       §§pop().x = §§pop();
                                       addr200:
                                       while(_loc10_)
                                       {
                                          if(!_loc11_)
                                          {
                                             §§push(param1.§<!a§);
                                             continue loop4;
                                          }
                                          §§goto(addr235);
                                       }
                                       §§goto(addr211);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr179);
                     }
                     §§goto(addr48);
                  }
               }
               §§goto(addr54);
            }
            §§goto(addr48);
         }
         §§goto(addr54);
      }
      
      protected function §'1§(param1:Number, param2:Number, param3:Number) : Number
      {
         return 0.01;
      }
      
      private function §#!;§() : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc1_:§#q§ = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         for each(_loc1_ in this.§ !B§)
         {
            if(!_loc11_)
            {
               §§push(§8!l§);
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        this.§extends§(_loc1_);
                        addr597:
                        while(true)
                        {
                        }
                     }
                     addr594:
                  }
                  while(true)
                  {
                     §§push(Boolean(_loc1_.§'=§));
                     if(_loc10_)
                     {
                        §§push(§§pop());
                        loop5:
                        while(true)
                        {
                           if(§§pop())
                           {
                              addr578:
                              while(true)
                              {
                                 §§pop();
                                 addr579:
                                 while(true)
                                 {
                                    if(_loc10_)
                                    {
                                       §§push(Boolean(_loc1_.§8D§));
                                    }
                                    else
                                    {
                                       §§goto(addr597);
                                    }
                                 }
                              }
                              addr578:
                           }
                           while(true)
                           {
                              addr559:
                              while(true)
                              {
                                 §§push(§§pop());
                                 continue loop5;
                              }
                           }
                        }
                     }
                     §§goto(addr578);
                  }
                  if(_loc11_ && _loc2_)
                  {
                     continue;
                  }
                  §§goto(addr327);
                  §§push(§§pop());
               }
            }
            §§goto(addr360);
         }
      }
      
      public function §0!T§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§#q§ = null;
         while(this.§ !B§.length > 0)
         {
            _loc1_ = this.§ !B§.pop();
            if(!(_loc2_ && this))
            {
               this.§@c§(_loc1_);
            }
         }
      }
      
      public function §"=§(param1:§<!=§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.checkCameraBoundaries(param1);
            loop0:
            while(true)
            {
               §§push(param1);
               if(param1)
               {
                  §§pop();
                  loop1:
                  while(true)
                  {
                     §§push(param1.levelItem);
                     loop2:
                     while(true)
                     {
                        §§push(!§§pop());
                        loop3:
                        while(true)
                        {
                           §§push(§§pop());
                           loop4:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop8:
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       addr159:
                                       loop10:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop11:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             while(!_loc3_)
                                             {
                                                if(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc3_)
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            if(_loc3_ && param1)
                                                            {
                                                               break;
                                                            }
                                                            §§push(this.§;!W§(param1.§^!z§().GetPosition().x,param1.§^!z§().GetPosition().y));
                                                            while(_loc2_ || this)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                               while(true)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!_loc3_)
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           continue loop1;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(param1 is §1!0§);
                                                                           addr105:
                                                                           loop22:
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc2_ || _loc3_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §1!0§(param1).updateOutOfBounds(this);
                                                                                    }
                                                                                    addr113:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(true);
                                                                                 continue loop22;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr113);
                                                                  }
                                                                  while(_loc2_ || _loc2_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                                  §§goto(addr105);
                                                               }
                                                               if(!(_loc2_ || _loc2_))
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc3_)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               addr34:
                                                               if(_loc2_ || param1)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                     addr176:
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        continue loop2;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        continue loop8;
                                                                     }
                                                                     addr156:
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     break loop17;
                                                                     §§goto(addr34);
                                                                  }
                                                                  addr166:
                                                               }
                                                            }
                                                         }
                                                         while(!_loc3_)
                                                         {
                                                            §§push(Boolean(param1.§^!z§()));
                                                            continue loop11;
                                                         }
                                                         continue loop2;
                                                      }
                                                      §§goto(addr86);
                                                   }
                                                   continue;
                                                   addr133:
                                                }
                                                §§goto(addr166);
                                             }
                                             continue loop4;
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr176);
                           }
                        }
                     }
                  }
               }
               §§goto(addr159);
            }
         }
         §§goto(addr102);
      }
      
      protected function checkCameraBoundaries(param1:§<!=§) : void
      {
      }
      
      public function §#"$§(param1:Number, param2:Number) : Boolean
      {
         return this.§?>§.camera.isOutOfCamera(param1,param2);
      }
      
      public function §;!W§(param1:Number, param2:Number) : Boolean
      {
         return this.§?>§.§&+§.§!'§(param1,param2);
      }
      
      public function §]"#§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(param1 < 0)
            {
               if(!(_loc3_ && _loc3_))
               {
                  §§goto(addr29);
               }
            }
            var _loc2_:§+>§ = this.§3R§[param1];
            if(!_loc3_)
            {
               this.§0l§(_loc2_.sprite);
            }
            while(true)
            {
               this.§3R§[param1] = null;
               loop1:
               while(!_loc3_)
               {
                  do
                  {
                     this.§3R§.splice(param1,1);
                     while(_loc4_ || _loc2_)
                     {
                        _loc2_.dispose();
                        if(_loc3_)
                        {
                           continue;
                        }
                        §§goto(addr54);
                     }
                     continue loop1;
                  }
                  while(false);
                  
                  _loc2_ = null;
                  return;
               }
            }
         }
         addr29:
      }
      
      protected function shouldShowScoreText(param1:§1!0§) : Boolean
      {
         return true;
      }
      
      protected function getScoreTextPosition(param1:§1!0§) : Point
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Number = param1.§^!z§().GetPosition().x;
         §§push(param1.§^!z§().GetPosition().y - 3);
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         return new Point(_loc2_,_loc3_);
      }
      
      public function §-"C§(param1:int, param2:Boolean = false) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc4_:§1!0§ = null;
         var _loc5_:§?!Y§ = null;
         var _loc6_:Point = null;
         var _loc7_:* = 0;
         var _loc8_:* = false;
         var _loc9_:int = 0;
         if(_loc13_ || this)
         {
            if(param1 < 0)
            {
               if(_loc13_)
               {
                  return;
               }
            }
         }
         var _loc3_:§<!=§ = this.§-`§[param1];
         if(!_loc12_)
         {
            §§push(_loc3_ is §50§);
            if(_loc13_)
            {
               if(§§pop())
               {
                  if(!(_loc12_ && this))
                  {
                     var _loc10_:*;
                     §§push((_loc10_ = this).§6V§);
                     if(!_loc12_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc11_:* = §§pop();
                     if(!(_loc12_ && param1))
                     {
                        _loc10_.§6V§ = _loc11_;
                     }
                     if(!_loc12_)
                     {
                        addr129:
                        if(_loc3_ == this.§0"8§)
                        {
                           if(_loc13_)
                           {
                              addr135:
                              this.§0"8§ = null;
                              if(_loc13_ || _loc3_)
                              {
                                 addr145:
                                 if(_loc3_ is §1!0§)
                                 {
                                    addr149:
                                    _loc4_ = _loc3_ as §1!0§;
                                    if(!(_loc12_ && param1))
                                    {
                                       if(param2)
                                       {
                                          if(_loc13_ || param2)
                                          {
                                             _loc6_ = this.getScoreTextPosition(_loc4_);
                                             if(_loc13_ || param2)
                                             {
                                                §§push(§2!V§.§-"§(_loc4_.itemName));
                                                if(_loc13_)
                                                {
                                                   §§push(int(§§pop()));
                                                }
                                                _loc7_ = §§pop();
                                                loop0:
                                                while(true)
                                                {
                                                   addr214:
                                                   while(true)
                                                   {
                                                      §§push(this.shouldShowScoreText(_loc4_));
                                                      if(!_loc12_)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                      }
                                                      _loc8_ = §§pop();
                                                      continue loop0;
                                                   }
                                                }
                                                addr231:
                                             }
                                             while(true)
                                             {
                                                this.§?>§.addScore(_loc4_.levelItem.score,§!!t§.§1!@§,_loc8_,_loc6_.x,_loc6_.y,_loc7_);
                                                if(_loc12_)
                                                {
                                                   continue;
                                                }
                                                if(!_loc12_)
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr231);
                                                }
                                                §§goto(addr214);
                                             }
                                             addr232:
                                             _loc4_.updateBeforeRemoving(this);
                                             if(_loc12_)
                                             {
                                             }
                                             addr240:
                                             for each(_loc5_ in this.§4e§)
                                             {
                                                §§push(_loc5_.objectId1);
                                                if(!(_loc12_ && param2))
                                                {
                                                   §§push(_loc4_.id);
                                                   if(!_loc12_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(_loc13_)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(_loc13_ || param2)
                                                            {
                                                               addr278:
                                                               §§pop();
                                                               if(!(_loc13_ || param1))
                                                               {
                                                                  continue;
                                                               }
                                                               addr290:
                                                               §§push(_loc5_.objectId2 == _loc4_.id);
                                                            }
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(!(_loc12_ && this))
                                                            {
                                                               _loc5_.§=""§ = true;
                                                            }
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr278);
                                                   }
                                                }
                                                §§goto(addr290);
                                             }
                                             this.§0l§(_loc3_.sprite);
                                             if(_loc13_ || this)
                                             {
                                                this.§-`§[param1] = null;
                                             }
                                             loop4:
                                             while(true)
                                             {
                                                this.§-`§.splice(param1,1);
                                                loop5:
                                                while(true)
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc3_ is §3=§)
                                                      {
                                                         if(_loc13_)
                                                         {
                                                            continue loop5;
                                                         }
                                                         addr371:
                                                         while(true)
                                                         {
                                                         }
                                                         addr371:
                                                      }
                                                      addr318:
                                                      while(true)
                                                      {
                                                         _loc3_.dispose();
                                                         if(_loc13_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr371);
                                                      }
                                                      if(_loc13_)
                                                      {
                                                         if(true)
                                                         {
                                                            _loc3_ = null;
                                                         }
                                                         continue;
                                                         return;
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                             }
                                          }
                                          this.§`"'§(_loc4_);
                                          §§goto(addr240);
                                       }
                                    }
                                 }
                                 §§goto(addr232);
                              }
                           }
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr135);
               }
               else
               {
                  §§push(_loc3_ is § 6§);
                  if(!_loc12_)
                  {
                     addr94:
                     if(§§pop())
                     {
                        if(_loc13_ || param1)
                        {
                           §§push((_loc10_ = this).§!C§);
                           if(!(_loc12_ && param2))
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc11_ = §§pop();
                           if(!(_loc12_ && this))
                           {
                              _loc10_.§!C§ = _loc11_;
                           }
                           if(_loc13_)
                           {
                              §§goto(addr129);
                           }
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr129);
                  }
               }
               §§goto(addr145);
            }
            §§goto(addr94);
         }
         §§goto(addr145);
      }
      
      private function §0l§(param1:§7!8§.Sprite) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(Boolean(param1));
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr83:
                     while(true)
                     {
                        §§push(Boolean(param1.parent));
                        if(!(_loc2_ && _loc2_))
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr82:
               }
               while(§§pop())
               {
                  if(!_loc2_)
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr83);
                        continue;
                     }
                     param1.parent.removeChild(param1);
                  }
                  break;
               }
               return;
            }
            §§goto(addr82);
         }
         §§goto(addr56);
      }
      
      public function §!!m§(param1:§<!=§, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            if(param1)
            {
               if(_loc4_ || param1)
               {
                  this.§-"C§(this.§-`§.indexOf(param1),param2);
               }
            }
         }
      }
      
      public function §!N§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(param1)
            {
               if(!(_loc3_ && param1))
               {
                  addr52:
                  this.§?>§.§&9§();
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function §&c§(param1:Boolean, param2:Number = 0, param3:Number = 0, param4:Number = 0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            this.§?>§.§&c§(param1,param2,param3,param4);
         }
      }
      
      public function §2[§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            §§push(this.§+"?§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr119:
               while(true)
               {
                  §§push(-§§pop());
                  addr120:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      public function isPigsAlive() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§<!=§ = null;
         var _loc1_:int = 0;
         loop0:
         while(_loc1_ < this.§-`§.length)
         {
            _loc2_ = this.§-`§[_loc1_];
            if(_loc4_ || _loc2_)
            {
               §§push(Boolean(_loc2_));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr143:
                           while(true)
                           {
                              §§push(_loc2_ is §50§);
                              if(!_loc3_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              continue loop3;
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc3_ && _loc2_)
                        {
                           continue loop2;
                        }
                        if(!§§pop())
                        {
                           loop8:
                           for(; !§§pop(); continue loop1)
                           {
                              do
                              {
                                 _loc1_++;
                              }
                              while(_loc3_);
                              
                              if(_loc3_)
                              {
                                 break;
                              }
                              if(_loc4_)
                              {
                                 if(false)
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       §§push((_loc2_ as §50§).health > 0);
                                       if(_loc3_ && this)
                                       {
                                          break;
                                       }
                                       addr62:
                                       if(!(_loc3_ && this))
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop8;
                                          }
                                          §§goto(addr108);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             addr126:
                                             while(true)
                                             {
                                                continue loop10;
                                             }
                                             §§goto(addr62);
                                          }
                                          addr125:
                                       }
                                    }
                                    §§goto(addr98);
                                 }
                                 continue loop0;
                              }
                              §§goto(addr126);
                           }
                           if(!(_loc3_ && _loc3_))
                           {
                              break;
                           }
                           §§goto(addr143);
                           addr88:
                        }
                        §§goto(addr125);
                     }
                     addr98:
                     return §§pop();
                  }
                  if(_loc3_ && _loc2_)
                  {
                     continue;
                  }
                  §§goto(addr88);
               }
            }
            §§goto(addr126);
         }
         return false;
      }
      
      public function §-"8§(param1:Boolean = false) : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:§50§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = int(this.§-`§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc3_);
            if(_loc6_)
            {
               if(§§pop() < 0)
               {
                  §§push(_loc2_);
                  break;
               }
               §§push(Boolean(_loc4_ = this.§-`§[_loc3_] as §50§));
               if(_loc6_ || this)
               {
                  §§push(§§pop());
                  if(_loc6_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           §§pop();
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(_loc4_.health > 0);
                              if(!_loc5_)
                              {
                                 addr162:
                                 if(§§pop())
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       §§push(param1);
                                       if(!_loc5_)
                                       {
                                          while(true)
                                          {
                                             §§push(!§§pop());
                                             addr167:
                                             loop11:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                addr168:
                                                loop13:
                                                while(true)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(!_loc4_.§`u§);
                                                            if(!(_loc5_ && this))
                                                            {
                                                               if(!(_loc6_ || _loc3_))
                                                               {
                                                                  continue;
                                                               }
                                                               if(!(_loc6_ || _loc3_))
                                                               {
                                                                  continue loop11;
                                                               }
                                                               §§push(§§pop());
                                                               if(!(_loc6_ || this))
                                                               {
                                                                  continue loop13;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  addr154:
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     loop8:
                                                                     while(true)
                                                                     {
                                                                        addr106:
                                                                        addr67:
                                                                        while(true)
                                                                        {
                                                                           §§push(!_loc4_.§">§);
                                                                           if(_loc5_)
                                                                           {
                                                                              continue loop14;
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                        loop4:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           if(_loc6_ || _loc2_)
                                                                           {
                                                                              §§push(§§pop() - 1);
                                                                           }
                                                                           _loc3_ = §§pop();
                                                                           if(_loc6_ || _loc2_)
                                                                           {
                                                                              if(!(_loc5_ && _loc2_))
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 if(true)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§goto(addr106);
                                                                              }
                                                                              while(!_loc6_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc2_++;
                                                                              }
                                                                              addr114:
                                                                              addr116:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                                  addr154:
                                                               }
                                                            }
                                                            §§goto(addr154);
                                                         }
                                                      }
                                                      addr179:
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§goto(addr114);
                                                      }
                                                      §§goto(addr67);
                                                   }
                                                }
                                             }
                                          }
                                          addr166:
                                       }
                                       §§goto(addr179);
                                    }
                                 }
                                 §§goto(addr67);
                              }
                              §§goto(addr166);
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr167);
                     }
                     §§goto(addr162);
                  }
                  §§goto(addr168);
               }
               §§goto(addr154);
            }
            break;
         }
         return §§pop();
      }
      
      public function §`!l§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§1!0§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§-`§)
         {
            if(_loc6_)
            {
               if(!(_loc2_ is §@"D§))
               {
                  continue;
               }
               if(!_loc6_)
               {
                  continue;
               }
            }
            _loc1_++;
         }
         return _loc1_;
      }
      
      public function §0">§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§1!0§ = null;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§-`§)
         {
            if(!_loc5_)
            {
               §§push(Boolean(_loc2_));
               if(_loc6_ || this)
               {
                  if(§§pop())
                  {
                     if(_loc6_)
                     {
                        §§pop();
                        if(_loc6_ || _loc3_)
                        {
                           §§push(_loc2_.§6L§());
                           if(!_loc6_)
                           {
                           }
                           addr73:
                           if(§§pop())
                           {
                              if(_loc6_)
                              {
                                 addr86:
                                 _loc1_++;
                              }
                           }
                        }
                        continue;
                     }
                     §§push(Boolean(§§pop()));
                  }
               }
               §§goto(addr73);
            }
            §§goto(addr86);
         }
         return _loc1_;
      }
      
      public function makePigsSmile(param1:Number = 1) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§50§ = null;
         var _loc2_:* = int(this.§-`§.length - 1);
         loop0:
         while(_loc2_ >= 0)
         {
            _loc3_ = this.§-`§[_loc2_] as §50§;
            if(!_loc5_)
            {
               §§push(Boolean(_loc3_));
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr111:
                        while(true)
                        {
                           addr70:
                           while(true)
                           {
                              §§push(_loc3_.health > 0);
                              if(_loc5_ && param1)
                              {
                                 break;
                              }
                              if(_loc5_)
                              {
                                 continue loop1;
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop6:
                        for(; !(_loc5_ && _loc2_); if(_loc4_ || _loc2_)
                        {
                           while(false)
                           {
                              §§goto(addr70);
                           }
                           continue loop0;
                           addr68:
                        })
                        {
                           _loc3_.scream();
                           loop7:
                           while(true)
                           {
                              addr38:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(_loc4_ || this)
                                 {
                                    §§push(§§pop() - 1);
                                 }
                                 _loc2_ = §§pop();
                                 if(!_loc5_)
                                 {
                                    continue loop6;
                                 }
                                 continue loop7;
                              }
                           }
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr38);
                  }
               }
            }
            §§goto(addr68);
         }
      }
      
      public function §7d§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§ 6§ = null;
         var _loc1_:* = int(this.§-`§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§-`§[_loc1_] as § 6§;
            if(!_loc3_)
            {
               §§push(Boolean(_loc2_));
               do
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(_loc2_.health > 0);
                              if(!(_loc4_ || _loc1_))
                              {
                                 break;
                                 addr83:
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(true);
                                       break loop4;
                                    }
                                    addr93:
                                    while(true)
                                    {
                                    }
                                    addr93:
                                 }
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    if(_loc4_ || _loc1_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc1_ = §§pop();
                                    if(_loc4_ || _loc2_)
                                    {
                                       break;
                                    }
                                    §§goto(addr93);
                                 }
                                 if(!_loc3_)
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 continue loop3;
                              }
                              continue loop0;
                           }
                           while(true)
                           {
                              if(_loc4_)
                              {
                                 break loop2;
                              }
                              continue loop2;
                           }
                        }
                     }
                     continue;
                  }
                  §§goto(addr83);
               }
               while(_loc3_);
               
               return §§pop();
            }
            §§goto(addr93);
         }
         return false;
      }
      
      public function isWorldAtSleep() : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§1!0§ = null;
         var _loc1_:* = int(this.§-`§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§-`§[_loc1_] as §1!0§;
            if(_loc3_ || _loc1_)
            {
               §§push(_loc2_ == null);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(!§§pop());
                  loop1:
                  while(true)
                  {
                     §§push(§§pop());
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           addr295:
                           while(true)
                           {
                              §§pop();
                              addr296:
                              while(true)
                              {
                                 §§push(_loc2_.health);
                                 addr265:
                                 while(true)
                                 {
                                    §§push(§§pop() > 0);
                                 }
                              }
                           }
                           addr295:
                        }
                        while(true)
                        {
                           loop4:
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
                                       addr271:
                                       loop31:
                                       while(true)
                                       {
                                          §§push(_loc2_.§&-§());
                                          if(!(_loc4_ && this))
                                          {
                                             if(_loc4_ && _loc2_)
                                             {
                                                continue;
                                             }
                                             §§push(!§§pop());
                                             while(true)
                                             {
                                                loop8:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!(_loc4_ && _loc1_))
                                                      {
                                                         §§push(_loc2_.isDamageAwardingScore());
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            while(true)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(§§pop());
                                                                  loop11:
                                                                  for(; !(_loc4_ && this); §§push(§§pop()),if(!(_loc3_ || this))
                                                                  {
                                                                     continue;
                                                                  },if(_loc4_ && _loc2_)
                                                                  {
                                                                     continue loop5;
                                                                  },if(§§pop())
                                                                  {
                                                                     §§goto(addr176);
                                                                  },§§goto(addr109))
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc3_ || this)
                                                                              {
                                                                                 §§push(false);
                                                                                 break;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§goto(addr296);
                                                                                 }
                                                                              }
                                                                              §§goto(addr265);
                                                                              addr207:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_ is § 6§);
                                                                              while(_loc3_ || this)
                                                                              {
                                                                                 continue loop11;
                                                                                 addr100:
                                                                                 if(!(_loc3_ || _loc1_))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc1_);
                                                                                             if(_loc3_ || _loc3_)
                                                                                             {
                                                                                                §§push(§§pop() - 1);
                                                                                             }
                                                                                             _loc1_ = §§pop();
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             if(!(_loc4_ && this))
                                                                                             {
                                                                                                if(!(_loc4_ && _loc1_))
                                                                                                {
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      continue loop31;
                                                                                                   }
                                                                                                   if(true)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc2_.health);
                                                                                                      if(!(_loc4_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(§§pop() > 0);
                                                                                                         if(_loc4_ && this)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         addr93:
                                                                                                         if(_loc3_ || this)
                                                                                                         {
                                                                                                            §§goto(addr100);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop();
                                                                                                               §§goto(addr93);
                                                                                                            }
                                                                                                            addr176:
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr265);
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc3_ || _loc2_))
                                                                                                      {
                                                                                                         break loop13;
                                                                                                      }
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                   if(!(_loc4_ && _loc3_))
                                                                                                   {
                                                                                                      return §§pop();
                                                                                                   }
                                                                                                   continue loop8;
                                                                                                   addr121:
                                                                                                   addr74:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr261:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc2_.§%!8§());
                                                                                                      addr181:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(!§§pop());
                                                                                                         continue loop13;
                                                                                                      }
                                                                                                   }
                                                                                                   addr261:
                                                                                                }
                                                                                                §§goto(addr181);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc3_ || this)
                                                                                                   {
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         §§goto(addr121);
                                                                                                         §§push(false);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr207);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§goto(addr74);
                                                                                                      }
                                                                                                      addr177:
                                                                                                   }
                                                                                                   §§goto(addr265);
                                                                                                }
                                                                                                addr111:
                                                                                             }
                                                                                             §§goto(addr177);
                                                                                          }
                                                                                          continue loop0;
                                                                                          addr43:
                                                                                       }
                                                                                       §§goto(addr111);
                                                                                    }
                                                                                    addr109:
                                                                                 }
                                                                                 §§goto(addr181);
                                                                              }
                                                                              addr251:
                                                                              while(_loc3_)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     §§goto(addr251);
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               §§goto(addr295);
                                                               §§goto(addr296);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr261);
                                                   }
                                                   §§goto(addr43);
                                                }
                                             }
                                          }
                                          §§goto(addr251);
                                       }
                                    }
                                 }
                                 §§goto(addr228);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr295);
            }
            §§goto(addr271);
         }
         return true;
      }
      
      public function §&6§(param1:Boolean = false) : §50§
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:§50§ = null;
         var _loc2_:int = this.§-`§.length;
         §§push(this.§-"8§(param1));
         if(_loc9_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         if(_loc9_)
         {
            §§push(_loc3_);
            if(!_loc8_)
            {
               if(§§pop() == 0)
               {
                  if(_loc9_ || param1)
                  {
                     return null;
                  }
                  addr48:
                  §§push(int(Math.random() * _loc3_));
               }
               §§goto(addr48);
            }
            var _loc4_:* = §§pop();
            var _loc5_:int = 0;
            var _loc6_:int = 0;
            loop0:
            while(_loc6_ < _loc2_)
            {
               §§push(Boolean(_loc7_ = this.§-`§[_loc6_] as §50§));
               if(!(_loc8_ && this))
               {
                  §§push(§§pop());
                  if(_loc9_)
                  {
                     if(§§pop())
                     {
                        if(_loc9_)
                        {
                           addr83:
                           §§pop();
                           if(!_loc8_)
                           {
                              §§push(_loc7_.health > 0);
                              if(!_loc8_)
                              {
                                 addr186:
                                 if(§§pop())
                                 {
                                    loop12:
                                    while(true)
                                    {
                                       §§push(param1);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                          addr199:
                                          loop10:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             addr200:
                                             loop13:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop1:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      loop2:
                                                      while(true)
                                                      {
                                                         §§push(!_loc7_.§`u§);
                                                         if(!_loc8_)
                                                         {
                                                            if(_loc9_ || param1)
                                                            {
                                                               §§push(§§pop());
                                                               if(!(_loc8_ && _loc3_))
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                  }
                                                                  loop3:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop4:
                                                                        while(_loc5_ < _loc4_)
                                                                        {
                                                                           loop5:
                                                                           do
                                                                           {
                                                                              _loc5_++;
                                                                              loop6:
                                                                              while(_loc9_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    addr87:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc6_++;
                                                                                       if(!(_loc8_ && this))
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             break loop4;
                                                                                          }
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             if(true)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop5;
                                                                                          }
                                                                                          continue loop4;
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                    continue loop0;
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(_loc9_);
                                                                           
                                                                           continue loop2;
                                                                        }
                                                                        if(!(_loc8_ && this))
                                                                        {
                                                                           break;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc8_ && param1)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           §§push(!_loc7_.§">§);
                                                                           if(_loc9_)
                                                                           {
                                                                              continue loop3;
                                                                           }
                                                                           addr164:
                                                                           if(_loc9_ || this)
                                                                           {
                                                                              §§pop();
                                                                              continue;
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        continue loop10;
                                                                     }
                                                                     §§goto(addr87);
                                                                  }
                                                                  return _loc7_;
                                                                  addr123:
                                                               }
                                                               continue loop13;
                                                            }
                                                            continue loop9;
                                                         }
                                                         while(!_loc8_)
                                                         {
                                                            §§goto(addr164);
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                   addr201:
                                                }
                                                §§goto(addr123);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr87);
                              }
                              §§goto(addr199);
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr201);
                     }
                     §§goto(addr186);
                  }
                  §§goto(addr200);
               }
               §§goto(addr83);
            }
            return null;
         }
         §§goto(addr48);
      }
      
      public function §@![§() : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§1!0§ = null;
         var _loc1_:* = 0;
         var _loc2_:* = int(this.§-`§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               §§push(0);
               if(_loc5_ || _loc3_)
               {
                  if(§§pop() < §§pop())
                  {
                     if(!(_loc4_ && this))
                     {
                        §§push(_loc1_);
                        if(!(_loc4_ && _loc1_))
                        {
                           break;
                        }
                        §§goto(addr194);
                     }
                     addr193:
                     addr194:
                     return §§pop();
                     §§push(_loc1_);
                  }
                  else
                  {
                     _loc3_ = this.§-`§[_loc2_] as §1!0§;
                     if(_loc5_ || _loc1_)
                     {
                        if(_loc3_)
                        {
                           §§push(_loc1_);
                           loop1:
                           while(true)
                           {
                              §§push(int(§§pop() + _loc3_.levelItem.score));
                              loop2:
                              while(true)
                              {
                                 _loc1_ = §§pop();
                                 loop3:
                                 while(true)
                                 {
                                    loop4:
                                    while(true)
                                    {
                                       if(!_loc3_.isDamageAwardingScore())
                                       {
                                          loop6:
                                          while(true)
                                          {
                                             §§push(_loc2_);
                                             if(_loc5_ || _loc2_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue loop1;
                                                }
                                                if(!(_loc5_ || _loc1_))
                                                {
                                                   break;
                                                }
                                                §§push(§§pop() - 1);
                                             }
                                             if(!_loc4_)
                                             {
                                                _loc2_ = §§pop();
                                                if(_loc5_ || this)
                                                {
                                                   if(_loc4_ && _loc2_)
                                                   {
                                                      while(!(_loc4_ && this))
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc1_);
                                                            continue loop1;
                                                         }
                                                      }
                                                      continue loop3;
                                                      addr105:
                                                   }
                                                   if(_loc5_ || _loc1_)
                                                   {
                                                      if(true)
                                                      {
                                                         break loop4;
                                                      }
                                                      continue loop4;
                                                   }
                                                   addr133:
                                                   while(true)
                                                   {
                                                      continue loop6;
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   _loc1_ = §§pop();
                                                }
                                                addr129:
                                             }
                                             while(true)
                                             {
                                                continue loop6;
                                             }
                                          }
                                          continue loop2;
                                       }
                                       §§goto(addr105);
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                        }
                        §§goto(addr133);
                     }
                     §§goto(addr112);
                  }
               }
               addr173:
               §§push(int(§§pop() + §§pop()));
               if(!(_loc4_ && this))
               {
                  _loc1_ = §§pop();
                  §§goto(addr193);
               }
               §§goto(addr194);
            }
            break;
         }
         §§goto(addr173);
         §§push(this.§?>§.slingshot.§@![§());
      }
      
      protected function hasMinimumCollisionSpeed(param1:§<!=§, param2:§<!=§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1 is §1!0§);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr158:
                        loop13:
                        while(true)
                        {
                           §§push(param2 is §1!0§);
                           if(_loc3_)
                           {
                              if(_loc4_ && _loc3_)
                              {
                                 continue;
                              }
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop4:
                                 while(_loc3_ || param2)
                                 {
                                    if(§§pop())
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          §§pop();
                                          loop6:
                                          while(true)
                                          {
                                             §§push((param1 as §1!0§).§6!b§());
                                             loop7:
                                             while(true)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop0;
                                                }
                                                §§push(!§§pop());
                                                if(!_loc4_)
                                                {
                                                   if(!(_loc3_ || param2))
                                                   {
                                                      break;
                                                      addr105:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc3_ || param1))
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            loop9:
                                                            while(true)
                                                            {
                                                               §§push((param2 as §1!0§).§6!b§());
                                                               if(_loc3_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(!§§pop());
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        if(!(_loc4_ && param2))
                                                                        {
                                                                           §§push(false);
                                                                           break;
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                     if(_loc4_ && _loc3_)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     if(_loc4_)
                                                                     {
                                                                        continue loop13;
                                                                     }
                                                                  }
                                                                  §§push(true);
                                                                  if(_loc4_ && param2)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc3_ || this)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                               }
                                                               return §§pop();
                                                            }
                                                         }
                                                         addr115:
                                                      }
                                                      §§goto(addr55);
                                                   }
                                                   continue loop4;
                                                }
                                                §§goto(addr115);
                                             }
                                             continue loop5;
                                          }
                                       }
                                       addr150:
                                    }
                                    §§goto(addr105);
                                 }
                                 continue loop1;
                              }
                           }
                           §§goto(addr150);
                        }
                     }
                  }
                  §§goto(addr130);
               }
            }
         }
         §§goto(addr158);
      }
      
      public function §19§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§!C§ = 0;
         }
      }
      
      protected function shakeCameraOnCollision(param1:Number, param2:Number, param3:Number) : void
      {
      }
      
      protected function shakeCameraOnExplosion(param1:Number) : void
      {
      }
      
      public function §2U§(param1:§<!=§, param2:§<!=§) : Boolean
      {
         var _loc23_:Boolean = true;
         var _loc24_:Boolean = false;
         if(!_loc24_)
         {
            §§push(this.§7g§);
            if(!_loc24_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     param1.§4!`§(param2);
                     do
                     {
                        param2.§4!`§(param1);
                     }
                     while(!_loc23_);
                     
                     if(!_loc23_)
                     {
                        continue;
                     }
                     if(_loc24_)
                     {
                        break;
                     }
                     if(false)
                     {
                        continue;
                     }
                     var _loc3_:§1!0§ = param1 as §1!0§;
                     var _loc4_:§1!0§ = param2 as §1!0§;
                     if(_loc23_)
                     {
                        §§push(!_loc3_);
                        loop2:
                        while(true)
                        {
                           §§push(§§pop());
                           loop3:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr327:
                                    while(true)
                                    {
                                       §§push(!_loc4_);
                                    }
                                 }
                                 addr326:
                              }
                              while(true)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§push(_loc3_.destroysCollidingObjects);
                                          loop9:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             loop10:
                                             while(!_loc24_)
                                             {
                                                §§push(§§pop());
                                                loop11:
                                                while(!(_loc24_ && param2))
                                                {
                                                   if(!§§pop())
                                                   {
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr313:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_.§,M§);
                                                            addr282:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(§§pop()));
                                                            }
                                                         }
                                                         loop19:
                                                         while(true)
                                                         {
                                                            if(_loc23_ || _loc3_)
                                                            {
                                                               §§push(§§pop());
                                                               loop20:
                                                               while(!_loc24_)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     loop21:
                                                                     while(!(_loc24_ && this))
                                                                     {
                                                                        §§pop();
                                                                        loop22:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_.§,M§);
                                                                           loop23:
                                                                           while(true)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              loop24:
                                                                              while(!_loc24_)
                                                                              {
                                                                                 loop25:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       loop26:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this.hasMinimumCollisionSpeed(_loc3_,_loc4_));
                                                                                          loop27:
                                                                                          while(!(_loc24_ && param2))
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                loop28:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc3_ is § 6§);
                                                                                                   loop29:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(!_loc23_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(!§§pop())
                                                                                                      {
                                                                                                         loop32:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(!(_loc24_ && _loc3_))
                                                                                                               {
                                                                                                                  if(_loc23_)
                                                                                                                  {
                                                                                                                     if(_loc24_)
                                                                                                                     {
                                                                                                                        continue loop28;
                                                                                                                     }
                                                                                                                     §§push(true);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc24_)
                                                                                                                        {
                                                                                                                           break loop32;
                                                                                                                        }
                                                                                                                        if(!_loc24_)
                                                                                                                        {
                                                                                                                           if(!_loc24_)
                                                                                                                           {
                                                                                                                              if(!(_loc24_ && param2))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              continue loop9;
                                                                                                                           }
                                                                                                                           continue loop10;
                                                                                                                        }
                                                                                                                        addr244:
                                                                                                                        while(!_loc24_)
                                                                                                                        {
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           continue loop19;
                                                                                                                        }
                                                                                                                        §§goto(addr282);
                                                                                                                     }
                                                                                                                     return §§pop();
                                                                                                                     addr100:
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     loop31:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc24_ && param1))
                                                                                                                        {
                                                                                                                           if(_loc24_)
                                                                                                                           {
                                                                                                                              continue loop22;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc4_ is § 6§);
                                                                                                                              if(_loc23_ || this)
                                                                                                                              {
                                                                                                                                 addr68:
                                                                                                                                 if(_loc23_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    if(_loc23_)
                                                                                                                                    {
                                                                                                                                       if(_loc23_)
                                                                                                                                       {
                                                                                                                                          continue loop19;
                                                                                                                                       }
                                                                                                                                       continue loop23;
                                                                                                                                    }
                                                                                                                                    continue loop29;
                                                                                                                                 }
                                                                                                                                 addr124:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc23_)
                                                                                                                                    {
                                                                                                                                       continue loop27;
                                                                                                                                    }
                                                                                                                                    if(_loc24_)
                                                                                                                                    {
                                                                                                                                       addr179:
                                                                                                                                       if(!_loc24_)
                                                                                                                                       {
                                                                                                                                          continue loop7;
                                                                                                                                       }
                                                                                                                                       continue loop24;
                                                                                                                                    }
                                                                                                                                    if(!_loc24_)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       continue loop31;
                                                                                                                                    }
                                                                                                                                    §§goto(addr326);
                                                                                                                                    §§goto(addr68);
                                                                                                                                 }
                                                                                                                                 §§goto(addr327);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr100);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr154:
                                                                                                                           if(!(_loc24_ && this))
                                                                                                                           {
                                                                                                                              if(!(_loc24_ && this))
                                                                                                                              {
                                                                                                                                 if(!_loc24_)
                                                                                                                                 {
                                                                                                                                    addr285:
                                                                                                                                    if(_loc23_)
                                                                                                                                    {
                                                                                                                                       §§push(false);
                                                                                                                                       break loop32;
                                                                                                                                    }
                                                                                                                                    §§push(_loc4_);
                                                                                                                                    §§push(_loc4_.healthMax);
                                                                                                                                    if(!_loc24_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * 2);
                                                                                                                                    }
                                                                                                                                    §§pop().applyDamage(§§pop(),this,_loc3_,true);
                                                                                                                                    _loc3_.causedDamageToObjects();
                                                                                                                                    addr296:
                                                                                                                                    if(_loc24_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr296);
                                                                                                                                    }
                                                                                                                                    §§push(true);
                                                                                                                                    break loop21;
                                                                                                                                 }
                                                                                                                                 addr220:
                                                                                                                                 if(_loc24_)
                                                                                                                                 {
                                                                                                                                    continue loop8;
                                                                                                                                 }
                                                                                                                                 if(!(_loc23_ || this))
                                                                                                                                 {
                                                                                                                                    addr319:
                                                                                                                                    §§push(true);
                                                                                                                                    break loop27;
                                                                                                                                 }
                                                                                                                                 §§push(_loc3_);
                                                                                                                                 §§push(_loc3_.healthMax);
                                                                                                                                 if(!_loc24_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * 2);
                                                                                                                                 }
                                                                                                                                 §§pop().applyDamage(§§pop(),this,_loc4_,true);
                                                                                                                                 §§goto(addr296);
                                                                                                                              }
                                                                                                                              _loc4_.causedDamageToObjects();
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              if(_loc23_ || param2)
                                                                                                                              {
                                                                                                                                 if(!(_loc24_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    continue loop26;
                                                                                                                                 }
                                                                                                                                 if(!_loc24_)
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr244);
                                                                                                                                    }
                                                                                                                                    addr241:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr327);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr296);
                                                                                                                           }
                                                                                                                           if(!_loc24_)
                                                                                                                           {
                                                                                                                              if(!_loc23_)
                                                                                                                              {
                                                                                                                                 break loop25;
                                                                                                                              }
                                                                                                                              §§goto(addr179);
                                                                                                                              §§push(true);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr296);
                                                                                                               }
                                                                                                               else if(false)
                                                                                                               {
                                                                                                                  continue loop28;
                                                                                                               }
                                                                                                            }
                                                                                                            var _loc5_:Number = 10;
                                                                                                            §§push(_loc3_.§^^§(_loc4_.§^I§()));
                                                                                                            if(!(_loc24_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            var _loc6_:* = §§pop();
                                                                                                            §§push(_loc4_.§^^§(_loc3_.§^I§()));
                                                                                                            if(_loc23_ || param1)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            var _loc7_:* = §§pop();
                                                                                                            var _loc8_:Number = 1;
                                                                                                            var _loc9_:* = Number(1);
                                                                                                            if(_loc23_ || param2)
                                                                                                            {
                                                                                                               addr472:
                                                                                                               if(!(_loc3_ is § 6§))
                                                                                                               {
                                                                                                                  §§push(_loc4_ is § 6§);
                                                                                                                  if(_loc24_ && _loc3_)
                                                                                                                  {
                                                                                                                     §§goto(addr472);
                                                                                                                  }
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(!(_loc24_ && _loc3_))
                                                                                                                     {
                                                                                                                        §§push(_loc7_);
                                                                                                                        if(_loc23_)
                                                                                                                        {
                                                                                                                           if(_loc23_ || param1)
                                                                                                                           {
                                                                                                                              if(_loc23_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr445:
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(!(_loc24_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    _loc9_ = §§pop();
                                                                                                                                    addr463:
                                                                                                                                    §§push(1);
                                                                                                                                    if(!(_loc24_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       if(_loc23_)
                                                                                                                                       {
                                                                                                                                          if(_loc23_)
                                                                                                                                          {
                                                                                                                                             _loc7_ = §§pop();
                                                                                                                                             if(!_loc23_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr463);
                                                                                                                                             }
                                                                                                                                             if(_loc23_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                if(_loc23_ || param2)
                                                                                                                                                {
                                                                                                                                                   if(!_loc24_)
                                                                                                                                                   {
                                                                                                                                                      if(false)
                                                                                                                                                      {
                                                                                                                                                      }
                                                                                                                                                      addr477:
                                                                                                                                                      §§push(_loc3_.§%!O§(_loc4_.§^I§()));
                                                                                                                                                      if(!(_loc24_ && param2))
                                                                                                                                                      {
                                                                                                                                                         addr488:
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                      }
                                                                                                                                                      var _loc10_:* = §§pop();
                                                                                                                                                      §§push(_loc4_.§%!O§(_loc3_.§^I§()));
                                                                                                                                                      if(_loc23_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                      }
                                                                                                                                                      var _loc11_:* = §§pop();
                                                                                                                                                      var _loc12_:Number = _loc3_.§^!z§().GetMass();
                                                                                                                                                      var _loc13_:Number = _loc4_.§^!z§().GetMass();
                                                                                                                                                      var _loc14_:b2Vec2 = _loc3_.§#?§();
                                                                                                                                                      var _loc15_:b2Vec2 = _loc4_.§#?§();
                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                      if(_loc23_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc12_);
                                                                                                                                                         if(_loc23_)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc23_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc14_.x);
                                                                                                                                                               if(!_loc24_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc9_);
                                                                                                                                                                     if(_loc23_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc13_);
                                                                                                                                                                        if(_loc23_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           addr569:
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(!(_loc24_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              addr566:
                                                                                                                                                                              §§push(_loc15_.x);
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                           if(_loc23_)
                                                                                                                                                                           {
                                                                                                                                                                              addr573:
                                                                                                                                                                              var _loc16_:Number = §§pop();
                                                                                                                                                                              §§push(_loc8_);
                                                                                                                                                                              if(_loc23_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc12_);
                                                                                                                                                                                 if(!(_loc24_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(_loc23_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc14_.y);
                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(_loc23_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr605:
                                                                                                                                                                                             §§push(_loc9_);
                                                                                                                                                                                             if(!_loc24_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr608:
                                                                                                                                                                                                §§push(_loc13_);
                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(_loc23_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr621:
                                                                                                                                                                                                      §§push(§§pop() * _loc15_.y);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                   if(_loc23_ || param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr631:
                                                                                                                                                                                                      var _loc17_:Number = §§pop();
                                                                                                                                                                                                      §§push(Math.sqrt(_loc16_ * _loc16_ + _loc17_ * _loc17_) / _loc5_);
                                                                                                                                                                                                      if(_loc23_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                      }
                                                                                                                                                                                                      var _loc18_:* = §§pop();
                                                                                                                                                                                                      var _loc19_:Number = Math.max(0,_loc3_.health);
                                                                                                                                                                                                      var _loc20_:Number = Math.max(0,_loc4_.health);
                                                                                                                                                                                                      if(!(_loc24_ && this))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.shakeCameraOnCollision(_loc18_,_loc19_,_loc20_);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(_loc3_);
                                                                                                                                                                                                      §§push(_loc18_);
                                                                                                                                                                                                      if(_loc23_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * _loc7_);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop().applyDamage(§§pop(),this,_loc4_,true));
                                                                                                                                                                                                      if(_loc23_ || param2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                      }
                                                                                                                                                                                                      var _loc21_:* = §§pop();
                                                                                                                                                                                                      §§push(_loc4_);
                                                                                                                                                                                                      §§push(_loc18_);
                                                                                                                                                                                                      if(!(_loc24_ && param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * _loc6_);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop().applyDamage(§§pop(),this,_loc3_,true));
                                                                                                                                                                                                      if(_loc23_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                      }
                                                                                                                                                                                                      var _loc22_:* = §§pop();
                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr892:
                                                                                                                                                                                                         addr893:
                                                                                                                                                                                                         if(_loc21_ < _loc19_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc23_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc4_.causedDamageToObjects();
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr898:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr872:
                                                                                                                                                                                                         §§push(_loc22_);
                                                                                                                                                                                                         §§push(_loc20_);
                                                                                                                                                                                                         if(_loc23_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop() < §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr876:
                                                                                                                                                                                                               if(!_loc24_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc3_.causedDamageToObjects();
                                                                                                                                                                                                                  addr846:
                                                                                                                                                                                                                  addr890:
                                                                                                                                                                                                                  if(_loc3_ is § 6§)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr847:
                                                                                                                                                                                                                     if(!_loc24_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr853:
                                                                                                                                                                                                                           if(_loc22_ > 0)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr806:
                                                                                                                                                                                                                              if(_loc4_ is § 6§)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc24_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc23_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr816:
                                                                                                                                                                                                                                       §§push(_loc21_);
                                                                                                                                                                                                                                       if(_loc23_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr819:
                                                                                                                                                                                                                                          if(§§pop() <= 0)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr820:
                                                                                                                                                                                                                                             if(!(_loc24_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                this.§5!R§(_loc4_ as § 6§,_loc18_,_loc19_,_loc11_);
                                                                                                                                                                                                                                                addr835:
                                                                                                                                                                                                                                                if(_loc23_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr795);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr806);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr840:
                                                                                                                                                                                                                                             return true;
                                                                                                                                                                                                                                             addr869:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(_loc21_);
                                                                                                                                                                                                                                          if(_loc23_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc23_ || this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr768:
                                                                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                                                                if(!_loc24_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                   if(!(_loc24_ && this))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc24_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr782:
                                                                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                                                                            if(!(_loc24_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc23_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc22_);
                                                                                                                                                                                                                                                                  if(_loc23_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc23_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(0);
                                                                                                                                                                                                                                                                        if(!_loc24_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc24_ && this))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                                              if(_loc23_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc24_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr806);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(_loc23_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr752);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr840);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr782);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr819);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr768);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr872);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr819);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr820);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(!_loc24_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr819);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr835);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr752:
                                                                                                                                                                                                                                                         return §§pop();
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr795:
                                                                                                                                                                                                                                                      §§push(true);
                                                                                                                                                                                                                                                      if(!(_loc23_ || _loc3_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr846);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      return §§pop();
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr782);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr853);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr816);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr892);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr847);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr835);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr819);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!(_loc24_ && param2))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              this.§5!R§(_loc3_ as § 6§,_loc18_,_loc20_,_loc10_);
                                                                                                                                                                                                                              §§goto(addr869);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr820);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr876);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr890);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr806);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr898);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr846);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr893);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr820);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr631);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr621);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr631);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr608);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr605);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr621);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr605);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr573);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr569);
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr569);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr573);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr569);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr573);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr566);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr573);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr475:
                                                                                                                                                      _loc8_ = _loc6_;
                                                                                                                                                      addr467:
                                                                                                                                                      _loc6_ = Number(1);
                                                                                                                                                      addr476:
                                                                                                                                                      addr466:
                                                                                                                                                      addr474:
                                                                                                                                                      addr473:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr477);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr476);
                                                                                                                                          }
                                                                                                                                          §§goto(addr445);
                                                                                                                                       }
                                                                                                                                       §§goto(addr488);
                                                                                                                                    }
                                                                                                                                    §§goto(addr466);
                                                                                                                                 }
                                                                                                                                 §§goto(addr475);
                                                                                                                              }
                                                                                                                              §§goto(addr474);
                                                                                                                           }
                                                                                                                           §§goto(addr467);
                                                                                                                        }
                                                                                                                        §§goto(addr445);
                                                                                                                     }
                                                                                                                     §§goto(addr463);
                                                                                                                  }
                                                                                                                  §§goto(addr477);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr473);
                                                                                                         }
                                                                                                         while(!_loc23_)
                                                                                                         {
                                                                                                            while(!§§pop())
                                                                                                            {
                                                                                                               §§goto(addr241);
                                                                                                            }
                                                                                                            §§goto(addr285);
                                                                                                         }
                                                                                                         return §§pop();
                                                                                                         addr86:
                                                                                                      }
                                                                                                      §§goto(addr124);
                                                                                                   }
                                                                                                   continue loop20;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr154);
                                                                                          }
                                                                                          return §§pop();
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr220);
                                                                                 }
                                                                                 §§goto(addr313);
                                                                              }
                                                                              continue loop21;
                                                                           }
                                                                        }
                                                                     }
                                                                     return §§pop();
                                                                  }
                                                                  §§goto(addr218);
                                                               }
                                                               continue loop11;
                                                            }
                                                            continue loop12;
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr284);
                                                      §§goto(addr282);
                                                   }
                                                }
                                                continue loop3;
                                             }
                                             continue loop2;
                                          }
                                       }
                                    }
                                    §§goto(addr319);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr140);
                  }
                  addr41:
                  §§push(false);
               }
               §§goto(addr41);
            }
            return §§pop();
         }
         §§goto(addr41);
      }
      
      protected function §5!R§(param1:§ 6§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         §§push(param2);
         if(_loc7_)
         {
            §§push(param3);
            if(_loc7_ || param3)
            {
               §§push(§§pop() - §§pop());
               if(!_loc8_)
               {
                  §§push(param2);
                  if(_loc7_ || param1)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc8_ && param3)
                     {
                     }
                  }
                  §§goto(addr48);
               }
               addr48:
               var _loc5_:*;
               §§push(_loc5_ = §§pop());
               if(_loc7_)
               {
                  §§push(param4);
                  if(_loc7_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc7_ || param3)
                     {
                        §§push(Number(§§pop()));
                        if(_loc8_)
                        {
                        }
                        §§goto(addr79);
                     }
                     §§push(§§pop());
                  }
                  _loc5_ = §§pop();
                  if(!_loc8_)
                  {
                     §§goto(addr79);
                  }
                  §§goto(addr90);
               }
               addr79:
               if(§§pop() > 1)
               {
                  if(!(_loc8_ && this))
                  {
                     addr90:
                     _loc5_ = Number(1);
                  }
               }
               var _loc6_:b2Vec2 = param1.§#?§();
               if(_loc7_ || param3)
               {
                  §§push(param1);
                  §§push(§§findproperty(b2Vec2));
                  §§push(_loc6_.x);
                  if(!_loc8_)
                  {
                     §§push(_loc5_);
                     if(!(_loc8_ && param3))
                     {
                        addr127:
                        §§push(§§pop() * §§pop());
                        §§push(_loc6_.y);
                        if(!_loc8_)
                        {
                           §§push(§§pop() * _loc5_);
                        }
                     }
                     §§pop().§%!>§(new §§pop().b2Vec2(§§pop(),§§pop()));
                     §§goto(addr135);
                  }
                  §§goto(addr127);
               }
               addr135:
               return;
               §§push(Number(§§pop()));
            }
         }
         §§goto(addr48);
      }
      
      public function §[Q§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§1!0§ = null;
         var _loc1_:* = int(this.§-`§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§-`§[_loc1_] as §1!0§;
            if(!_loc3_)
            {
               §§push(_loc2_ == null);
               if(!_loc3_)
               {
                  §§push(!§§pop());
                  if(!_loc3_)
                  {
                     addr99:
                     if(§§pop())
                     {
                        loop1:
                        while(true)
                        {
                           §§pop();
                           addr102:
                           while(true)
                           {
                              addr66:
                              while(true)
                              {
                                 §§push(_loc2_ is §50§);
                                 if(_loc3_)
                                 {
                                    continue loop1;
                                 }
                              }
                              continue loop0;
                           }
                        }
                        addr101:
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(_loc4_)
                           {
                              this.§-"C§(_loc1_,true);
                              loop7:
                              while(true)
                              {
                                 addr39:
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    if(!_loc3_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc1_ = §§pop();
                                    if(_loc4_ || _loc1_)
                                    {
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       continue loop4;
                                    }
                                    continue loop7;
                                 }
                                 if(true)
                                 {
                                    continue loop0;
                                 }
                                 §§goto(addr66);
                              }
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr39);
                     }
                  }
                  §§goto(addr101);
               }
               §§goto(addr99);
            }
            §§goto(addr80);
         }
      }
      
      public function §'e§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§1!0§ = null;
         var _loc1_:* = int(this.§-`§.length - 1);
         loop0:
         while(_loc1_ >= 0)
         {
            _loc2_ = this.§-`§[_loc1_] as §1!0§;
            if(_loc3_)
            {
               §§push(_loc2_ == null);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  if(!_loc4_)
                  {
                     if(§§pop())
                     {
                        loop7:
                        while(true)
                        {
                           §§pop();
                           addr113:
                           loop4:
                           while(true)
                           {
                              addr65:
                              while(true)
                              {
                                 §§push(_loc2_.§<!0§());
                                 if(_loc3_ || _loc2_)
                                 {
                                    if(_loc4_)
                                    {
                                       break loop4;
                                    }
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(!_loc3_)
                                 {
                                    continue loop7;
                                 }
                                 continue loop4;
                              }
                           }
                           continue loop1;
                        }
                        addr112:
                     }
                     loop2:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(_loc3_ || this)
                           {
                              this.§-"C§(_loc1_,true);
                              loop8:
                              while(true)
                              {
                                 addr38:
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    if(_loc3_)
                                    {
                                       §§push(§§pop() - 1);
                                    }
                                    _loc1_ = §§pop();
                                    if(_loc4_ && this)
                                    {
                                       continue loop8;
                                    }
                                    if(_loc4_)
                                    {
                                       continue loop3;
                                    }
                                    if(true)
                                    {
                                       break loop2;
                                    }
                                    §§goto(addr65);
                                 }
                              }
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr38);
                     }
                     continue loop0;
                  }
                  §§goto(addr112);
               }
            }
            §§goto(addr93);
         }
      }
      
      public function §`!o§() : int
      {
         return this.§-`§.length;
      }
      
      public function writeObjectInformation(param1:§#b§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:§1!0§ = null;
         var _loc5_:§`a§ = null;
         var _loc6_:§1o§ = null;
         var _loc7_:§#q§ = null;
         var _loc2_:* = Number(0);
         while(true)
         {
            §§push(_loc2_);
            if(_loc8_ || _loc3_)
            {
               if(§§pop() >= this.§-`§.length)
               {
                  §§push(Number(0));
                  break;
               }
               if(!(_loc4_ = this.§-`§[_loc2_] as §1!0§))
               {
                  if(_loc9_)
                  {
                     addr53:
                  }
               }
               else
               {
                  §§push(_loc4_.§44§);
                  if(_loc8_)
                  {
                     if(!§§pop())
                     {
                        if(!_loc8_)
                        {
                           continue;
                        }
                        §§goto(addr53);
                     }
                     else
                     {
                        §§push(_loc4_.§&-§());
                     }
                     addr131:
                     §§push(_loc2_);
                     if(_loc8_)
                     {
                        §§push(§§pop() + 1);
                        if(_loc8_)
                        {
                           addr137:
                           §§push(Number(§§pop()));
                        }
                        _loc2_ = §§pop();
                        continue;
                     }
                     §§goto(addr137);
                  }
                  if(§§pop())
                  {
                     if(!(_loc8_ || param1))
                     {
                        continue;
                     }
                  }
                  else
                  {
                     §§push(_loc5_ = new §`a§());
                     §§push(_loc4_.§+!c§());
                     if(_loc8_)
                     {
                        §§push(§§pop() / (Math.PI / 180));
                     }
                     §§pop().angle = §§pop();
                     if(_loc8_ || _loc2_)
                     {
                        _loc5_.type = _loc4_.itemName;
                        loop1:
                        while(true)
                        {
                           _loc5_.x = _loc4_.§^!z§().GetPosition().x;
                           loop2:
                           while(true)
                           {
                              addr96:
                              while(true)
                              {
                                 _loc5_.y = _loc4_.§^!z§().GetPosition().y;
                                 while(true)
                                 {
                                    if(_loc8_)
                                    {
                                       if(!_loc9_)
                                       {
                                          param1.addObject(_loc5_);
                                          if(!_loc9_)
                                          {
                                             break;
                                          }
                                          continue;
                                       }
                                       continue loop1;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                     while(false)
                     {
                        §§goto(addr96);
                     }
                  }
               }
               §§goto(addr131);
            }
            break;
         }
         var _loc3_:* = §§pop();
         if(!_loc9_)
         {
            while(_loc3_ < this.§ !B§.length)
            {
               _loc7_ = this.§ !B§[_loc3_];
               _loc6_ = new §1o§(_loc7_.type,_loc7_.id1,_loc7_.id2,_loc7_.point1,_loc7_.point2,_loc7_.§=4§,_loc7_.§8D§,_loc7_.lowerLimit,_loc7_.upperLimit,_loc7_.§2"+§,_loc7_.motorSpeed,_loc7_.§'=§,_loc7_.maxTorque);
               if(_loc8_)
               {
                  param1.§ !R§(_loc6_);
                  if(!(_loc8_ || param1))
                  {
                     continue;
                  }
               }
               §§push(_loc3_);
               if(!_loc9_)
               {
                  §§push(§§pop() + 1);
                  if(!(_loc9_ && _loc2_))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc3_ = §§pop();
            }
         }
      }
      
      public function §#&§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         while(true)
         {
            §§push(_loc4_);
            if(_loc6_)
            {
               if(§§pop() >= this.§-`§.length)
               {
                  if(!(_loc5_ && param1))
                  {
                     break;
                  }
                  loop2:
                  while(_loc5_ && param2)
                  {
                     while(true)
                     {
                        continue loop2;
                     }
                  }
                  continue;
                  addr73:
               }
               else if(this.§-`§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
               {
                  if(!_loc5_)
                  {
                     _loc3_.push(this.§-`§[_loc4_]);
                  }
                  §§goto(addr115);
               }
               while(true)
               {
                  §§push(_loc4_);
                  if(_loc6_ || _loc3_)
                  {
                     §§push(§§pop() + 1);
                     if(_loc5_ && param1)
                     {
                     }
                     while(true)
                     {
                        _loc4_ = §§pop();
                        §§goto(addr73);
                     }
                     addr72:
                  }
               }
            }
            §§goto(addr72);
         }
         return _loc3_;
      }
      
      public function setGroundTextureEnabled(param1:Boolean) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§1!0§ = null;
         if(!(_loc5_ && _loc3_))
         {
            this.§'!4§ = param1;
            if(_loc4_ || _loc2_)
            {
               addr36:
               this.§9K§(param1);
            }
            var _loc2_:* = Number(0);
            loop0:
            while(_loc2_ < this.§-`§.length)
            {
               _loc3_ = this.§-`§[_loc2_] as §1!0§;
               if(_loc4_)
               {
                  §§push(Boolean(_loc3_));
                  loop1:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           loop7:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc5_)
                                 {
                                    _loc3_.sprite.visible = !this.§'!4§;
                                    addr110:
                                    while(true)
                                    {
                                    }
                                    addr110:
                                 }
                                 §§goto(addr110);
                              }
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() + 1);
                                    if(_loc4_)
                                    {
                                       addr72:
                                       §§push(Number(§§pop()));
                                    }
                                    _loc2_ = §§pop();
                                    if(_loc4_)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 §§goto(addr72);
                              }
                              if(!_loc5_)
                              {
                                 if(false)
                                 {
                                    while(true)
                                    {
                                       §§push(_loc3_.§6L§());
                                       if(!_loc4_)
                                       {
                                          continue loop7;
                                       }
                                       addr85:
                                       if(!(_loc5_ && param1))
                                       {
                                          continue loop1;
                                       }
                                       addr125:
                                       while(true)
                                       {
                                          §§pop();
                                          §§goto(addr85);
                                       }
                                    }
                                    addr80:
                                 }
                                 continue loop0;
                              }
                              while(true)
                              {
                                 §§goto(addr80);
                              }
                           }
                        }
                        addr100:
                     }
                     §§goto(addr125);
                  }
               }
               §§goto(addr110);
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function setCollisionsEnabled(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§7g§ = param1;
         }
      }
      
      public function §6C§() : int
      {
         return this.§+&§;
      }
      
      public function §%!l§() : int
      {
         return this.§6V§;
      }
      
      public function get damageScoreMultiplier() : int
      {
         return this.§?>§.damageScoreMultiplier;
      }
   }
}
