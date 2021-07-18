package §7P§
{
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§["$§;
   import §3"5§.b2Collision;
   import §3"5§.b2Manifold;
   import §4!$§.b2CircleShape;
   import §4!$§.b2PolygonShape;
   import §4!$§.b2Shape;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §[R§.b2Transform;
   import §[R§.b2Vec2;
   import §^#>§.§#_§;
   import flash.utils.Dictionary;
   
   public class §@!W§ extends §1#E§
   {
      
      public static const §+"§:String = "BLOCK_SENSOR_SWORD";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §+"§ = "BLOCK_SENSOR_SWORD";
         }
      }
      
      private var § $§:§&#=§;
      
      private var §3#1§:Sprite;
      
      private var §2"K§:Number;
      
      private var §!!9§:Number;
      
      private var §!+§:Number;
      
      private var §-"0§:Number;
      
      private var §2#7§:Number;
      
      private var §75§:Number;
      
      private var §`Y§:Dictionary;
      
      protected var §1#%§:Number = 1.0;
      
      protected var §8"P§:DisplayObject;
      
      protected var §3"S§:DisplayObject;
      
      protected var §-T§:String;
      
      protected var § #a§:Number;
      
      protected var §7#?§:Number;
      
      protected var §'Z§:Number;
      
      protected var §0#0§:Number;
      
      public function §@!W§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§["$§, param5:§94§)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param2))
         {
            super(param1,param3,param4,param4.shape,param5);
            loop0:
            while(true)
            {
               §3!t§().SetAngle(param5.angle);
               while(true)
               {
                  this.§`Y§ = new Dictionary();
                  addr106:
                  if(_loc6_ && param3)
                  {
                     continue;
                  }
                  §§push(this);
                  §§push(this.§2#7§);
                  if(!_loc6_)
                  {
                     §§push(Math.abs(this.§2"K§ / 2 - this.§!!9§) / (this.§2"K§ / 2));
                     if(!_loc6_)
                     {
                        §§push(this.§2#7§);
                        if(_loc7_)
                        {
                           §§push(§§pop() - this.§-"0§);
                        }
                        §§push(§§pop() * §§pop());
                     }
                     §§push(§§pop() - §§pop());
                  }
                  §§pop().§0#0§ = §§pop();
                  addr113:
                  if(_loc7_)
                  {
                     addr63:
                     if(!(_loc7_ || this))
                     {
                        addr119:
                        loop12:
                        while(true)
                        {
                           if(_loc7_ || this)
                           {
                              this.§'Z§ = param5.angle;
                              addr85:
                              loop13:
                              while(true)
                              {
                                 if(!(_loc7_ || param1))
                                 {
                                    continue loop0;
                                 }
                                 addr92:
                                 if(!(_loc6_ && param1))
                                 {
                                    addr99:
                                    if(!(_loc7_ || param1))
                                    {
                                       break;
                                    }
                                    §§goto(addr106);
                                 }
                                 while(true)
                                 {
                                    this.§!!9§ = this.§2"K§;
                                    addr155:
                                    while(true)
                                    {
                                       if(_loc7_ || param1)
                                       {
                                          if(!_loc6_)
                                          {
                                             this.§ #a§ = param5.x;
                                             continue loop0;
                                          }
                                          addr234:
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(this.§,#-§.getNumberProperty("swordAngleSpeed"));
                                             if(!(_loc6_ && param3))
                                             {
                                                §§push(§§pop() / 1000);
                                             }
                                             §§pop().§!+§ = §§pop();
                                             addr222:
                                             while(true)
                                             {
                                                this.§-"0§ = this.§,#-§.getNumberProperty("swordMinScale");
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          this.§2#7§ = this.§,#-§.getNumberProperty("swordMaxScale");
                                          break loop13;
                                       }
                                    }
                                    continue loop0;
                                    §§goto(addr92);
                                 }
                                 §§goto(addr113);
                              }
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    this.§75§ = this.§,#-§.getNumberProperty("damage");
                                    while(!(_loc6_ && this))
                                    {
                                       this.§-T§ = this.§,#-§.getProperty("particlesTrail");
                                       §§goto(addr172);
                                       if(!(_loc6_ && param2))
                                       {
                                          return;
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§3!§(param2);
                                       break loop12;
                                       §§goto(addr180);
                                    }
                                    addr180:
                                    addr245:
                                 }
                                 break;
                                 §§goto(addr99);
                              }
                              §§goto(addr222);
                              addr85:
                           }
                           break;
                           §§goto(addr63);
                        }
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§,#-§.getNumberProperty("swordDuration"));
                           if(_loc7_)
                           {
                              §§push(§§pop() * 1000);
                           }
                           §§pop().§2"K§ = §§pop();
                           §§goto(addr234);
                           §§goto(addr119);
                        }
                        addr119:
                     }
                     if(_loc7_)
                     {
                        §§goto(addr72);
                     }
                     §§goto(addr155);
                  }
                  §§goto(addr85);
               }
            }
         }
         §§goto(addr245);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!§!"?§)
            {
               do
               {
                  super.dispose();
                  do
                  {
                     this.§`Y§ = null;
                     do
                     {
                        §!"?§ = true;
                     }
                     while(_loc1_ && this);
                     
                  }
                  while(!_loc2_);
                  
               }
               while(!_loc2_);
               
               addr49:
            }
            return;
         }
         §§goto(addr49);
      }
      
      private function get §,#-§() : §["$§
      {
         return §["$§(§;B§);
      }
      
      public function init(param1:§&#=§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§ $§ = param1;
         }
      }
      
      private function §3!§(param1:§>"G§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§3#1§ = new Sprite();
         }
         loop0:
         while(true)
         {
            this.§3"S§ = param1.getFrame(0,this.§3"S§);
            while(true)
            {
               this.§3#1§.addChild(this.§3"S§);
               while(!(_loc2_ && param1))
               {
                  continue loop0;
                  sprite.addChild(this.§3#1§);
                  if(_loc3_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(this.§!!9§);
            if(!_loc4_)
            {
               if(§§pop() > 0)
               {
                  loop0:
                  while(true)
                  {
                     this.§"1§(param2);
                     addr36:
                     loop6:
                     while(true)
                     {
                        this.§##P§(param2);
                        if(!_loc5_)
                        {
                           continue;
                        }
                        if(_loc4_)
                        {
                           if(!(_loc5_ || param1))
                           {
                              break;
                           }
                           continue loop0;
                        }
                        if(_loc5_)
                        {
                           if(false)
                           {
                              continue loop0;
                           }
                           §§push(param1);
                           if(_loc5_ || _loc3_)
                           {
                              addr85:
                              var _loc3_:* = Number(§§pop());
                              if(_loc5_)
                              {
                                 if(param2)
                                 {
                                    while(true)
                                    {
                                       this.§1#%§ = param2.timeSpeedMultiplier;
                                       addr162:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          if(!(_loc4_ && param2))
                                          {
                                             §§push(§§pop() / this.§1#%§);
                                             if(!(_loc4_ && param1))
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          _loc3_ = §§pop();
                                          addr155:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr116:
                                       if(_loc4_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       return;
                                       addr123:
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(this.§!!9§);
                                    if(_loc5_ || _loc3_)
                                    {
                                       §§push(§§pop() - _loc3_);
                                    }
                                    §§pop().§!!9§ = §§pop();
                                    if(!(_loc5_ || this))
                                    {
                                       continue;
                                    }
                                    if(!_loc4_)
                                    {
                                       §§goto(addr116);
                                    }
                                    §§goto(addr162);
                                 }
                                 §§goto(addr123);
                              }
                              §§goto(addr155);
                           }
                           §§goto(addr85);
                        }
                        else
                        {
                           while(true)
                           {
                              if(!_loc5_)
                              {
                                 while(true)
                                 {
                                    param2.removeObject(this);
                                    break loop6;
                                 }
                                 addr62:
                              }
                              return;
                           }
                           addr53:
                        }
                     }
                     while(true)
                     {
                        §-!F§(this.§ $§).§]l§();
                        §§goto(addr53);
                     }
                  }
               }
               §§goto(addr62);
            }
            §§goto(addr85);
         }
         §§goto(addr36);
      }
      
      public function §?2§(param1:§;$§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:§&#=§ = null;
         var _loc4_:b2Shape = null;
         var _loc5_:b2Shape = null;
         var _loc6_:b2Transform = null;
         var _loc7_:b2Transform = null;
         var _loc8_:b2Manifold = null;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < param1.objectCount)
         {
            _loc3_ = param1.getObject(_loc2_) as §&#=§;
            if(_loc10_)
            {
               §§push(Boolean(_loc3_));
               if(!(_loc9_ && _loc2_))
               {
                  if(§§pop())
                  {
                     if(!(_loc9_ && _loc2_))
                     {
                        §§pop();
                        if(!_loc10_)
                        {
                           continue;
                        }
                        addr69:
                        §§push(_loc3_.levelItem.getItemDensity() == 0);
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc9_ && _loc2_)
                  {
                     continue;
                  }
                  _loc4_ = _loc3_.§3!t§().GetFixtureList().GetShape();
                  _loc5_ = §3!t§().GetFixtureList().GetShape();
                  _loc6_ = _loc3_.§3!t§().GetTransform();
                  _loc7_ = §3!t§().GetTransform();
                  _loc8_ = new b2Manifold();
                  if(_loc10_ || _loc2_)
                  {
                     §§push(_loc5_ is b2PolygonShape);
                     loop1:
                     while(true)
                     {
                        §§push(§§pop());
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 §§pop();
                                 loop4:
                                 while(true)
                                 {
                                    §§push(_loc4_ is b2CircleShape);
                                    while(_loc10_)
                                    {
                                       loop13:
                                       while(!(_loc9_ && param1))
                                       {
                                          if(!_loc10_)
                                          {
                                             continue loop3;
                                          }
                                          §§pop();
                                          loop15:
                                          while(true)
                                          {
                                             addr144:
                                             addr155:
                                             while(true)
                                             {
                                                §§push(_loc4_ is b2PolygonShape);
                                                if(!(_loc9_ && param1))
                                                {
                                                   break;
                                                }
                                                continue loop13;
                                             }
                                             loop7:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         b2Collision.§?e§(_loc8_,b2PolygonShape(_loc5_),_loc7_,b2PolygonShape(_loc4_),_loc6_);
                                                         loop9:
                                                         while(true)
                                                         {
                                                            if(!(_loc9_ && this))
                                                            {
                                                               if(!(_loc9_ && _loc3_))
                                                               {
                                                                  loop11:
                                                                  while(_loc8_.§6#;§ > 0)
                                                                  {
                                                                     if(_loc10_)
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        if(_loc10_)
                                                                        {
                                                                           §,"k§.push(_loc3_);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              continue loop11;
                                                                           }
                                                                           addr237:
                                                                        }
                                                                     }
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(true)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop7;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  addr255:
                                                                  _loc2_++;
                                                                  continue loop0;
                                                                  addr116:
                                                               }
                                                               continue loop4;
                                                            }
                                                            continue loop15;
                                                         }
                                                         continue loop15;
                                                      }
                                                      addr226:
                                                      while(true)
                                                      {
                                                         b2Collision.§7"S§(_loc8_,b2PolygonShape(_loc5_),_loc7_,b2CircleShape(_loc4_),_loc6_);
                                                      }
                                                      §§goto(addr237);
                                                   }
                                                }
                                                §§goto(addr116);
                                             }
                                          }
                                       }
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 §§push(_loc5_ is b2PolygonShape);
                                 if(!(_loc9_ && this))
                                 {
                                    §§push(§§pop());
                                    if(!(_loc10_ || _loc2_))
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       §§goto(addr207);
                                    }
                                    §§goto(addr155);
                                 }
                                 §§goto(addr207);
                              }
                              §§goto(addr226);
                           }
                        }
                     }
                  }
                  §§goto(addr217);
               }
               §§goto(addr255);
            }
            §§goto(addr69);
         }
      }
      
      private function §##P§(param1:§;$§) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:Number = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc2_:Number = §3!t§().GetPosition().x;
         var _loc3_:Number = §3!t§().GetPosition().y;
         var _loc4_:Number = §3!t§().GetAngle();
         §§push(this.§2#7§);
         if(!_loc12_)
         {
            §§push(Math.abs(this.§2"K§ / 2 - this.§!!9§) / (this.§2"K§ / 2));
            if(!_loc12_)
            {
               §§push(this.§2#7§);
               if(!(_loc12_ && param1))
               {
                  §§push(§§pop() - this.§-"0§);
               }
               §§push(§§pop() * §§pop());
            }
            §§push(§§pop() - §§pop());
            if(_loc13_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(!(_loc12_ && this))
         {
            if(_loc4_ != this.§'Z§)
            {
               loop0:
               do
               {
                  §§push(4);
                  while(true)
                  {
                     _loc6_ = §§pop();
                     while(true)
                     {
                        §§push(1);
                        if(!(_loc13_ || _loc2_))
                        {
                           break;
                        }
                        _loc7_ = §§pop();
                        if(!_loc12_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(!(_loc13_ || this));
               
               loop3:
               while(true)
               {
                  if(_loc7_ > _loc6_)
                  {
                     if(!_loc12_)
                     {
                        if(!_loc12_)
                        {
                           this.§ #a§ = _loc2_;
                        }
                        param1.addObject(this.§-T§,_loc8_,_loc9_,_loc10_,§;=§.§""3§,false,false,false,_loc11_);
                        _loc7_++;
                        addr284:
                        continue;
                        addr284:
                        addr181:
                     }
                     loop4:
                     while(_loc13_ || _loc2_)
                     {
                        this.§7#?§ = _loc3_;
                        loop5:
                        while(!(_loc12_ && _loc3_))
                        {
                           this.§'Z§ = _loc4_;
                           while(_loc13_)
                           {
                              this.§0#0§ = _loc5_;
                              if(!(_loc12_ && param1))
                              {
                                 if(_loc12_ && this)
                                 {
                                    continue loop5;
                                 }
                                 if(_loc13_ || this)
                                 {
                                    if(_loc13_)
                                    {
                                       if(_loc13_)
                                       {
                                          break loop3;
                                       }
                                       loop7:
                                       while(true)
                                       {
                                          §§push(this.§7#?§);
                                          loop8:
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             loop9:
                                             while(_loc13_)
                                             {
                                                §§push(this.§7#?§);
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(_loc6_);
                                                      if(_loc13_)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         while(true)
                                                         {
                                                            §§push(_loc7_);
                                                         }
                                                         addr370:
                                                      }
                                                      loop13:
                                                      while(_loc13_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         loop14:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            loop15:
                                                            while(_loc13_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               while(true)
                                                               {
                                                                  _loc9_ = §§pop();
                                                                  addr379:
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§'Z§);
                                                                     loop18:
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc12_ && this))
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(!(_loc12_ && _loc2_))
                                                                           {
                                                                              §§push(this.§'Z§);
                                                                              continue loop10;
                                                                           }
                                                                           loop25:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              loop21:
                                                                              while(_loc13_ || _loc3_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 loop22:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    loop23:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       loop24:
                                                                                       while(_loc13_)
                                                                                       {
                                                                                          if(_loc12_ && this)
                                                                                          {
                                                                                             continue loop15;
                                                                                          }
                                                                                          if(!(_loc12_ && param1))
                                                                                          {
                                                                                             _loc10_ = §§pop();
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§0#0§);
                                                                                                if(!_loc12_)
                                                                                                {
                                                                                                   §§push(_loc5_);
                                                                                                   if(_loc13_)
                                                                                                   {
                                                                                                      if(!_loc13_)
                                                                                                      {
                                                                                                         while(!_loc12_)
                                                                                                         {
                                                                                                            if(_loc13_)
                                                                                                            {
                                                                                                               §§push(_loc6_);
                                                                                                               if(!_loc12_)
                                                                                                               {
                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                  continue loop25;
                                                                                                               }
                                                                                                               continue loop21;
                                                                                                            }
                                                                                                            §§goto(addr370);
                                                                                                         }
                                                                                                         continue loop14;
                                                                                                         addr320:
                                                                                                      }
                                                                                                      §§push(this.§0#0§);
                                                                                                      if(!(_loc13_ || param1))
                                                                                                      {
                                                                                                         continue loop10;
                                                                                                      }
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(_loc13_ || param1)
                                                                                                      {
                                                                                                         if(_loc12_)
                                                                                                         {
                                                                                                            continue loop22;
                                                                                                         }
                                                                                                         if(_loc12_ && _loc3_)
                                                                                                         {
                                                                                                            continue loop25;
                                                                                                         }
                                                                                                         if(!(_loc13_ || param1))
                                                                                                         {
                                                                                                            continue loop11;
                                                                                                         }
                                                                                                         if(_loc12_)
                                                                                                         {
                                                                                                            break loop18;
                                                                                                         }
                                                                                                         §§push(_loc6_);
                                                                                                         if(_loc13_)
                                                                                                         {
                                                                                                            §§push(§§pop() / §§pop());
                                                                                                            if(!_loc12_)
                                                                                                            {
                                                                                                               addr244:
                                                                                                               §§push(_loc7_);
                                                                                                               if(!(_loc13_ || this))
                                                                                                               {
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                            }
                                                                                                            if(_loc12_)
                                                                                                            {
                                                                                                               continue loop9;
                                                                                                            }
                                                                                                            if(_loc13_)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(!_loc12_)
                                                                                                               {
                                                                                                                  addr259:
                                                                                                                  if(_loc12_ && this)
                                                                                                                  {
                                                                                                                     continue loop24;
                                                                                                                  }
                                                                                                                  if(_loc12_ && param1)
                                                                                                                  {
                                                                                                                     continue loop23;
                                                                                                                  }
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               if(!_loc12_)
                                                                                                               {
                                                                                                                  continue loop8;
                                                                                                               }
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                            addr402:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               addr403:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  break loop15;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr244);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr244);
                                                                                                }
                                                                                                §§goto(addr259);
                                                                                             }
                                                                                             addr283:
                                                                                             _loc11_ = §§pop();
                                                                                             §§goto(addr284);
                                                                                             addr356:
                                                                                          }
                                                                                          §§goto(addr403);
                                                                                       }
                                                                                       continue loop17;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop13;
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc2_);
                                                                              break loop18;
                                                                           }
                                                                           addr385:
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§ #a§);
                                                                        addr388:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           if(!_loc12_)
                                                                           {
                                                                              §§push(_loc6_);
                                                                              if(!(_loc12_ && _loc2_))
                                                                              {
                                                                                 §§push(§§pop() / §§pop());
                                                                                 break loop9;
                                                                              }
                                                                              break loop13;
                                                                           }
                                                                           break loop9;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop7;
                                                         }
                                                      }
                                                      addr401:
                                                      while(true)
                                                      {
                                                         §§goto(addr402);
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr401);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr379);
                                 }
                                 §§goto(addr356);
                                 continue loop5;
                              }
                           }
                           continue loop4;
                        }
                        §§goto(addr181);
                     }
                     continue;
                  }
                  §§goto(addr385);
                  §§push(this.§ #a§);
                  §§goto(addr284);
               }
               addr440:
            }
            return;
         }
         §§goto(addr440);
      }
      
      private function §"1§(param1:§;$§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§&#=§ = null;
         var _loc4_:* = NaN;
         var _loc2_:int = 0;
         loop0:
         while(_loc2_ < §,"k§.length)
         {
            _loc3_ = §,"k§[_loc2_] as §&#=§;
            if(!(_loc6_ && _loc3_))
            {
               §§push(_loc3_ == null);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
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
                                 §§push(_loc3_ == this.§ $§);
                                 if(!_loc6_)
                                 {
                                    §§push(!§§pop());
                                    while(true)
                                    {
                                       loop16:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop17:
                                             while(true)
                                             {
                                                §§push(_loc3_.health);
                                                loop18:
                                                while(true)
                                                {
                                                   §§push(§§pop() > 0);
                                                   addr194:
                                                   loop6:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         loop13:
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(this.§,#-§.getDamageMultiplier(_loc3_.§+"J§())));
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop18;
                                                                     }
                                                                     _loc4_ = §§pop();
                                                                  }
                                                                  addr170:
                                                               }
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_);
                                                                  §§push(this.§75§);
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop() * _loc4_);
                                                                  }
                                                                  §§pop().applyDamage(§§pop(),param1,this.§ $§,true);
                                                                  loop10:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     §§push(this.§75§);
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        §§push(§§pop() * _loc4_);
                                                                     }
                                                                     §§pop().applyDamage(§§pop(),param1,this.§ $§,true);
                                                                     loop11:
                                                                     while(_loc5_)
                                                                     {
                                                                        _loc3_.§3!t§().SetAwake(true);
                                                                        while(!_loc5_)
                                                                        {
                                                                           continue loop14;
                                                                        }
                                                                        addr81:
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr69:
                                                                           this.§`Y§[_loc3_] = true;
                                                                           while(true)
                                                                           {
                                                                              _loc2_++;
                                                                              if(!(_loc5_ || _loc3_))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!(_loc6_ && param1))
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 if(_loc6_ && _loc3_)
                                                                                 {
                                                                                    continue loop10;
                                                                                 }
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                                 if(true)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr81);
                                                                              }
                                                                              §§goto(addr69);
                                                                           }
                                                                           continue loop0;
                                                                           addr40:
                                                                        }
                                                                        continue loop5;
                                                                     }
                                                                     addr213:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§`Y§[_loc3_] == undefined);
                                                                        if(!(_loc6_ && _loc3_))
                                                                        {
                                                                           if(!(_loc5_ || this))
                                                                           {
                                                                              break;
                                                                           }
                                                                           if(_loc5_ || this)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                              continue loop2;
                                                                           }
                                                                           continue loop16;
                                                                        }
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr40);
                                                         }
                                                      }
                                                      while(_loc5_ || param1)
                                                      {
                                                         continue loop1;
                                                         §§goto(addr213);
                                                      }
                                                      continue loop4;
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                          }
                                          §§goto(addr69);
                                       }
                                    }
                                    addr188:
                                 }
                                 §§goto(addr194);
                              }
                           }
                        }
                        §§goto(addr188);
                     }
                  }
               }
            }
            §§goto(addr170);
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            §3!t§().SetPositionAndAngle(new b2Vec2(this.§ $§.§'"8§(),this.§ $§.§;">§()),§3!t§().GetAngle() + this.§!+§ * param1 / this.§1#%§);
            while(true)
            {
               §§push(this.§3"S§);
               loop1:
               while(true)
               {
                  §§push(this.§2#7§);
                  if(!_loc4_)
                  {
                     §§push(Math.abs(this.§2"K§ / 2 - this.§!!9§) / (this.§2"K§ / 2));
                     if(!(_loc4_ && param3))
                     {
                        §§push(this.§2#7§);
                        if(_loc5_ || param1)
                        {
                           §§push(§§pop() - this.§-"0§);
                        }
                        §§push(§§pop() * §§pop());
                     }
                     §§push(§§pop() - §§pop());
                  }
                  addr147:
                  while(true)
                  {
                     §§pop().scaleX = §§pop();
                     continue loop1;
                  }
               }
            }
            addr181:
         }
         loop4:
         while(true)
         {
            sprite.x = §3!t§().GetPosition().x / §#_§.§8]§;
            while(true)
            {
               if(!(_loc4_ && param1))
               {
                  if(!_loc5_)
                  {
                     break;
                  }
                  sprite.y = §3!t§().GetPosition().y / §#_§.§8]§;
                  continue;
               }
               continue loop4;
            }
            §§goto(addr148);
         }
      }
   }
}
