package §7P§
{
   import §!!U§.§#"t§;
   import §!!U§.Sprite;
   import §+#$§.b2Body;
   import §+#$§.b2BodyDef;
   import §+#$§.b2FixtureDef;
   import §+#$§.b2World;
   import §1!2§.b2Joint;
   import §1!2§.b2WeldJointDef;
   import §2"Y§.§?#Q§;
   import §2"Y§.§?#^§;
   import §7!F§.§8!W§;
   import §<"B§.§94§;
   import §="2§.§?!r§;
   import §[R§.b2Vec2;
   import §^#>§.§#_§;
   import §^#>§.§15§;
   import com.angrybirds.§,!q§;
   
   public class §3C§ extends §#m§
   {
      
      private static const §'!d§:Number = 2000;
      
      private static const §9#1§:Number = 600;
      
      private static const §<"T§:Number = 1300;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §'!d§ = 2000;
            while(true)
            {
               §9#1§ = 600;
               §§goto(addr61);
            }
         }
         addr61:
         while(true)
         {
            §<"T§ = 1300;
            if(_loc1_ || _loc2_)
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private var §=7§:Sprite;
      
      private var §2#D§:§?"N§;
      
      private var §^[§:b2Joint;
      
      private var § !M§:Boolean = true;
      
      private var §3g§:Number = 2000;
      
      private var §,!5§:§#"t§;
      
      private var §[!I§:Vector.<§#"t§>;
      
      private var §;;§:Sprite;
      
      private var §%!,§:Boolean = false;
      
      private var §^]§:Number;
      
      private var §&"5§:§?#Q§;
      
      private var §6!$§:Sprite;
      
      public function §3C§(param1:Sprite, param2:b2World, param3:§?"N§)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§2#D§ = param3;
         }
         var _loc4_:§94§;
         (_loc4_ = new §94§()).x = this.§2#D§.x;
         if(_loc5_ || param3)
         {
            _loc4_.y = this.§2#D§.y;
            while(true)
            {
               this.§&"5§ = new §?#Q§(§15§.§&!r§);
               §§goto(addr97);
            }
         }
         addr97:
         while(true)
         {
            super(param1,param2,null,_loc4_);
            do
            {
               this.init();
            }
            while(!(_loc5_ || this));
            
            if(_loc5_ || param3)
            {
               if(_loc5_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      public function get §?#'§() : §?"N§
      {
         return this.§2#D§;
      }
      
      private function init() : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         §§push(§15§.§]!4§);
         if(!(_loc12_ && _loc3_))
         {
            §§push(§§pop() * (Math.PI / 180));
            if(_loc13_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(this.§2#D§.levelItem.getItemWidth() * this.§2#D§.levelItem.scale);
         if(_loc13_)
         {
            §§push(§§pop() / §#_§.§8]§);
            if(!(_loc12_ && this))
            {
               addr56:
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(Math.cos(_loc1_) * (_loc2_ + §15§.§]&§));
            if(_loc13_ || this)
            {
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(Math.sin(_loc1_) * (_loc2_ + §15§.§]&§));
            if(_loc13_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:b2BodyDef;
            (_loc5_ = new b2BodyDef()).type = b2Body.b2_dynamicBody;
            if(!(_loc12_ && _loc3_))
            {
               _loc5_.§%#2§ = true;
               loop0:
               while(true)
               {
                  _loc5_.position = new b2Vec2(this.§2#D§.§'"8§() + _loc3_ * §#_§.§8]§,this.§2#D§.§;">§() + _loc4_ * §#_§.§8]§);
                  while(true)
                  {
                     loop2:
                     while(true)
                     {
                        §04§ = mWorld.CreateBody(_loc5_);
                        do
                        {
                           §04§.SetUserData(this);
                        }
                        while(!_loc13_);
                        
                        if(_loc12_)
                        {
                           break;
                        }
                        if(_loc12_)
                        {
                           continue loop0;
                        }
                        while(false)
                        {
                           continue loop2;
                        }
                        var _loc6_:b2FixtureDef;
                        (_loc6_ = new b2FixtureDef()).shape = new §?#Q§(§15§.§&!r§).getB2Shape();
                        if(_loc13_)
                        {
                           _loc6_.density = 1e-8;
                           loop5:
                           while(true)
                           {
                              _loc6_.friction = §15§.§`#1§;
                              while(true)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    _loc6_.restitution = §15§.§`#B§;
                                    do
                                    {
                                       §^!L§ = §04§.CreateFixture(_loc6_);
                                    }
                                    while(_loc12_);
                                    
                                    if(!(_loc13_ || _loc2_))
                                    {
                                       break;
                                    }
                                    if(_loc12_)
                                    {
                                       continue loop5;
                                    }
                                    while(false)
                                    {
                                       continue loop7;
                                    }
                                    var _loc7_:§8!W§ = §,!q§.§9!,§.textureManager.getTexture("THERMAL_DETONATOR_01");
                                    var _loc8_:§#"t§;
                                    (_loc8_ = new §#"t§(_loc7_.texture)).x = -_loc7_.pivotX;
                                    if(!(_loc12_ && _loc1_))
                                    {
                                       _loc8_.y = -_loc7_.pivotY;
                                    }
                                    var _loc9_:§8!W§ = §,!q§.§9!,§.textureManager.getTexture("THERMAL_DETONATOR_02");
                                    if(!_loc12_)
                                    {
                                       this.§,!5§ = new §#"t§(_loc9_.texture,true);
                                       loop10:
                                       while(true)
                                       {
                                          §§push(this.§,!5§);
                                          loop11:
                                          while(true)
                                          {
                                             §§push(_loc9_.pivotX);
                                             addr314:
                                             while(true)
                                             {
                                                §§push(-§§pop());
                                                addr315:
                                                addr344:
                                                while(true)
                                                {
                                                   §§pop().x = §§pop();
                                                   if(!(_loc13_ || _loc1_))
                                                   {
                                                      break;
                                                   }
                                                   continue loop11;
                                                }
                                                var _loc10_:b2WeldJointDef;
                                                (_loc10_ = new b2WeldJointDef()).§9"P§ = §04§;
                                                if(_loc13_)
                                                {
                                                   _loc10_.§continue§ = this.§2#D§.§3!t§();
                                                   if(_loc13_ || _loc3_)
                                                   {
                                                      _loc10_.collideConnected = false;
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §§push(_loc10_);
                                                         §§push(§§findproperty(b2Vec2));
                                                         §§push(_loc3_);
                                                         if(!_loc12_)
                                                         {
                                                            §§push(-§§pop());
                                                            if(!_loc12_)
                                                            {
                                                               addr393:
                                                               §§push(§#_§.§8]§);
                                                               if(_loc13_)
                                                               {
                                                                  addr398:
                                                                  §§push(§§pop() * §§pop());
                                                                  §§push(_loc4_);
                                                                  if(_loc13_)
                                                                  {
                                                                     §§push(-§§pop());
                                                                     if(!(_loc12_ && _loc3_))
                                                                     {
                                                                        addr409:
                                                                        §§push(§§pop() * §#_§.§8]§);
                                                                     }
                                                                     §§pop().§!"4§ = new §§pop().b2Vec2(§§pop(),§§pop());
                                                                     if(!(_loc12_ && _loc1_))
                                                                     {
                                                                        addr495:
                                                                        while(true)
                                                                        {
                                                                           this.§^[§ = mWorld.CreateJoint(_loc10_);
                                                                           if(_loc12_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop18;
                                                                        }
                                                                        loop20:
                                                                        while(true)
                                                                        {
                                                                           sprite.addChild(this.§=7§);
                                                                           addr489:
                                                                           while(true)
                                                                           {
                                                                              this.§"r§(0,0,0);
                                                                              if(_loc13_)
                                                                              {
                                                                                 if(_loc13_ || _loc1_)
                                                                                 {
                                                                                    break loop18;
                                                                                 }
                                                                                 continue loop20;
                                                                              }
                                                                           }
                                                                        }
                                                                        addr368:
                                                                        addr495:
                                                                     }
                                                                     break;
                                                                  }
                                                               }
                                                               §§goto(addr409);
                                                            }
                                                            §§goto(addr398);
                                                         }
                                                         §§goto(addr393);
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr495);
                                                }
                                                §§goto(addr489);
                                             }
                                          }
                                          addr277:
                                          addr284:
                                          while(!(_loc13_ || this))
                                          {
                                             continue loop10;
                                          }
                                          while(true)
                                          {
                                             §§push(this.§=7§);
                                             if(_loc13_)
                                             {
                                                §§pop().addChild(_loc8_);
                                                if(_loc13_)
                                                {
                                                   if(_loc12_ && _loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc13_)
                                                   {
                                                      if(true)
                                                      {
                                                         §§push(this.§=7§);
                                                         break;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr308);
                                                   }
                                                   §§goto(addr272);
                                                }
                                                §§goto(addr344);
                                             }
                                             break;
                                          }
                                          §§pop().scaleX = this.§=7§.scaleY = §15§.§1E§;
                                          §§goto(addr344);
                                       }
                                    }
                                    §§goto(addr284);
                                 }
                              }
                           }
                        }
                        §§goto(addr184);
                     }
                  }
               }
            }
            §§goto(addr118);
         }
         §§goto(addr56);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super.render(param1,param2,param3);
            do
            {
               this.§"r§(param1,param2,param3);
            }
            while(!(_loc4_ || param2));
            
         }
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§,#Z§ = null;
         if(!(_loc4_ && param2))
         {
            super.update(param1,param2);
            while(true)
            {
               §§push(this.§ !M§);
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  while(true)
                  {
                     §§push(§§pop());
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              while(true)
                              {
                                 §§push(this.§2#D§.health == this.§2#D§.healthMax);
                                 if(!_loc4_)
                                 {
                                    §§push(!§§pop());
                                    while(true)
                                    {
                                    }
                                    addr184:
                                 }
                                 loop6:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       addr186:
                                       while(true)
                                       {
                                          this.§2#]§();
                                          addr188:
                                          while(true)
                                          {
                                          }
                                       }
                                       addr186:
                                    }
                                    while(true)
                                    {
                                       §§push(this.§ !M§);
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr184);
                     }
                  }
               }
               if(!(_loc5_ || param1))
               {
                  continue;
               }
               §§push(this);
               §§push(this.§3g§);
               if(_loc5_ || param2)
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§3g§ = §§pop();
               §§goto(addr165);
            }
         }
         §§goto(addr186);
      }
      
      private function §1#,§(param1:§;$§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:Number = §3!t§().GetPosition().x;
         var _loc3_:Number = §3!t§().GetPosition().y;
         if(!(_loc5_ && _loc3_))
         {
            param1.§]#^§("thermalBuff",_loc2_,_loc3_,0,§;=§.§""3§,5,5,1,true);
            while(true)
            {
               param1.removeObject(this,false);
               while(true)
               {
                  param1.§6#4§(§'"8§(),§;">§(),§15§.§6"3§,§15§.§3!G§,§15§.§="X§,§15§.§!"U§);
                  §§goto(addr81);
               }
            }
         }
         addr81:
         while(true)
         {
            §?!r§.§"#_§("thermal_detonator_blast");
            if(!(_loc5_ && _loc3_))
            {
               if(!_loc5_)
               {
                  if(_loc4_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      private function §"r§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc15_:Boolean = true;
         var _loc16_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:§8!W§ = null;
         var _loc7_:§#"t§ = null;
         var _loc8_:* = NaN;
         var _loc9_:int = 0;
         var _loc10_:* = NaN;
         var _loc11_:* = 0;
         var _loc12_:§8!W§ = null;
         var _loc13_:§#"t§ = null;
         if(!(_loc16_ && param1))
         {
            §§push(this.§;;§);
            if(!_loc16_)
            {
               §§push(this.§=7§);
               if(!(_loc16_ && param1))
               {
                  §§push(§'"8§() / §#_§.§8]§);
                  if(!(_loc16_ && param2))
                  {
                     §§push(§§pop());
                     if(!_loc16_)
                     {
                        var _loc14_:* = §§pop();
                        if(!_loc16_)
                        {
                           §§pop().x = §§pop();
                           if(_loc15_)
                           {
                              §§push(_loc14_);
                              if(_loc15_)
                              {
                                 if(_loc15_)
                                 {
                                    §§pop().x = §§pop();
                                    if(!_loc16_)
                                    {
                                       §§push(this.§;;§);
                                       if(!_loc16_)
                                       {
                                          addr103:
                                          this.§=7§.y = _loc14_ = §;">§() / §#_§.§8]§;
                                          addr106:
                                          §§pop().y = _loc14_;
                                          if(_loc15_)
                                          {
                                             this.§=7§.rotation = §3!t§().GetAngle();
                                             if(_loc15_)
                                             {
                                                if(!this.§ !M§)
                                                {
                                                   if(_loc15_)
                                                   {
                                                      §§push(1);
                                                      if(_loc15_ || param1)
                                                      {
                                                         §§push(this.§3g§);
                                                         if(_loc15_)
                                                         {
                                                            §§push(§'!d§);
                                                            if(_loc15_)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               if(!_loc16_)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  if(_loc15_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        if(_loc15_ || this)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              addr191:
                                                                              addr386:
                                                                              while(true)
                                                                              {
                                                                                 this.§,!5§.alpha = Math.pow(_loc4_,2);
                                                                                 if(_loc16_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(this.§3g§);
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    §§push(§9#1§);
                                                                                    if(!(_loc16_ && param1))
                                                                                    {
                                                                                       §§push(§§pop() + §<"T§);
                                                                                       if(_loc15_)
                                                                                       {
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             if(!(_loc16_ && param3))
                                                                                             {
                                                                                                §§push(1);
                                                                                                if(_loc15_)
                                                                                                {
                                                                                                   §§push(this.§3g§);
                                                                                                   if(!_loc16_)
                                                                                                   {
                                                                                                      §§push(param3);
                                                                                                      if(_loc15_)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(!_loc16_)
                                                                                                         {
                                                                                                            §§push(§9#1§);
                                                                                                            if(!(_loc16_ && param3))
                                                                                                            {
                                                                                                               §§push(§§pop() + §<"T§);
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  addr160:
                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                  if(_loc15_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     if(!(_loc16_ && this))
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(_loc15_ || param3)
                                                                                                                        {
                                                                                                                           continue loop19;
                                                                                                                        }
                                                                                                                        loop41:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc10_ = §§pop();
                                                                                                                           loop3:
                                                                                                                           while(_loc15_ || param2)
                                                                                                                           {
                                                                                                                              if(_loc15_)
                                                                                                                              {
                                                                                                                                 addr501:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!this.§[!I§)
                                                                                                                                    {
                                                                                                                                       while(!_loc16_)
                                                                                                                                       {
                                                                                                                                          if(!(_loc16_ && param3))
                                                                                                                                          {
                                                                                                                                             break loop19;
                                                                                                                                          }
                                                                                                                                          addr525:
                                                                                                                                          addr525:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(1);
                                                                                                                                             addr526:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(this.§3g§);
                                                                                                                                                if(_loc15_ || param3)
                                                                                                                                                {
                                                                                                                                                   addr542:
                                                                                                                                                   §§push(param3);
                                                                                                                                                   if(!_loc16_)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(!_loc15_)
                                                                                                                                                         {
                                                                                                                                                         }
                                                                                                                                                         addr543:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            if(!(_loc16_ && param2))
                                                                                                                                                            {
                                                                                                                                                               addr552:
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  _loc8_ = §§pop();
                                                                                                                                                                  addr553:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§;;§);
                                                                                                                                                                     addr505:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().rotation = this.§;;§.rotation + param1 / 1000;
                                                                                                                                                                        break loop3;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr552:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr552);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr538:
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr543);
                                                                                                                                                   }
                                                                                                                                                   addr542:
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr542);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop3;
                                                                                                                                       addr447:
                                                                                                                                    }
                                                                                                                                    addr423:
                                                                                                                                    addr475:
                                                                                                                                    loop7:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       if(!(_loc16_ && param1))
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             _loc11_ = §§pop();
                                                                                                                                             if(!(_loc16_ && param1))
                                                                                                                                             {
                                                                                                                                                if(!_loc16_)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc11_ >= _loc9_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc16_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr661);
                                                                                                                                                            }
                                                                                                                                                            loop17:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc16_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc16_)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  addr705:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     this.§;;§.removeChild(this.§[!I§[_loc11_]);
                                                                                                                                                                     addr712:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        this.§[!I§[_loc11_].dispose();
                                                                                                                                                                        addr688:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           this.§[!I§[_loc11_] = null;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc15_)
                                                                                                                                                                  {
                                                                                                                                                                     addr681:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        addr664:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc11_++;
                                                                                                                                                                           continue loop17;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr681:
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr712);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr688);
                                                                                                                                                            }
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc10_);
                                                                                                                                                         if(_loc15_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc11_);
                                                                                                                                                            if(!(_loc16_ && param3))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() >= §§pop());
                                                                                                                                                               if(_loc15_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc16_ && param3))
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        if(_loc15_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           if(false)
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           addr559:
                                                                                                                                                                           if(_loc10_ <= _loc11_ + 2)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc15_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!this.§[!I§[_loc11_])
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc16_)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc12_ = §,!q§.§9!,§.textureManager.getTexture("THERMAL_EXPLOSION_0" + (_loc11_ + 1));
                                                                                                                                                                                       (_loc13_ = new §#"t§(_loc12_.texture,true)).x = -_loc12_.pivotX;
                                                                                                                                                                                       if(!_loc16_)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc13_.y = -_loc12_.pivotY;
                                                                                                                                                                                       }
                                                                                                                                                                                       loop13:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr615:
                                                                                                                                                                                          addr634:
                                                                                                                                                                                          addr653:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§;;§.addChild(_loc13_);
                                                                                                                                                                                             continue loop13;
                                                                                                                                                                                          }
                                                                                                                                                                                          this.§[!I§[_loc11_].alpha = Math.min(1,_loc10_ - _loc11_) * _loc8_;
                                                                                                                                                                                          if(_loc15_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr664);
                                                                                                                                                                                             addr654:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr681);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr688);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr634);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr681);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              if(this.§[!I§[_loc11_])
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr705);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr664);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr654);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr559);
                                                                                                                                                         §§goto(addr664);
                                                                                                                                                      }
                                                                                                                                                      continue loop7;
                                                                                                                                                   }
                                                                                                                                                   addr442:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr447);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr463:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                continue loop7;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr432:
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    while(_loc15_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc8_);
                                                                                                                                       if(!_loc16_)
                                                                                                                                       {
                                                                                                                                          addr480:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(!(_loc16_ && param3))
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                             if(!_loc16_)
                                                                                                                                             {
                                                                                                                                                continue loop41;
                                                                                                                                             }
                                                                                                                                             §§goto(addr552);
                                                                                                                                          }
                                                                                                                                          addr480:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr543);
                                                                                                                                       }
                                                                                                                                       §§goto(addr552);
                                                                                                                                       §§goto(addr423);
                                                                                                                                    }
                                                                                                                                    §§goto(addr526);
                                                                                                                                 }
                                                                                                                                 addr501:
                                                                                                                              }
                                                                                                                              §§goto(addr553);
                                                                                                                           }
                                                                                                                           addr513:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(6);
                                                                                                                              if(_loc15_ || param3)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 addr473:
                                                                                                                              }
                                                                                                                              §§goto(addr475);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr491:
                                                                                                                     }
                                                                                                                     §§goto(addr552);
                                                                                                                  }
                                                                                                                  §§goto(addr480);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr538);
                                                                                                         }
                                                                                                         §§goto(addr543);
                                                                                                      }
                                                                                                      §§goto(addr160);
                                                                                                   }
                                                                                                   §§goto(addr543);
                                                                                                }
                                                                                                §§goto(addr473);
                                                                                             }
                                                                                             break loop19;
                                                                                          }
                                                                                          addr514:
                                                                                          §§push(this.§3g§);
                                                                                          if(_loc15_ || param3)
                                                                                          {
                                                                                             §§goto(addr524);
                                                                                          }
                                                                                          §§goto(addr552);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr524);
                                                                                 }
                                                                                 §§goto(addr491);
                                                                              }
                                                                              §§goto(addr514);
                                                                           }
                                                                           addr238:
                                                                        }
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§[!I§ = new Vector.<§#"t§>(_loc9_);
                                                                        §§goto(addr463);
                                                                     }
                                                                  }
                                                                  addr524:
                                                                  if(§§pop() < §9#1§)
                                                                  {
                                                                     §§goto(addr525);
                                                                  }
                                                                  §§goto(addr661);
                                                               }
                                                               §§goto(addr480);
                                                            }
                                                            §§goto(addr542);
                                                         }
                                                         §§goto(addr543);
                                                      }
                                                      §§goto(addr432);
                                                   }
                                                   §§goto(addr501);
                                                }
                                                addr661:
                                                return;
                                             }
                                             §§goto(addr442);
                                          }
                                          §§goto(addr553);
                                          addr102:
                                          addr101:
                                          addr96:
                                          addr94:
                                       }
                                       §§goto(addr505);
                                    }
                                    §§goto(addr501);
                                 }
                              }
                           }
                           §§goto(addr106);
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr101);
               }
               §§goto(addr96);
            }
            §§goto(addr94);
         }
         §§goto(addr238);
      }
      
      public function §2#]§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §^!L§.SetDensity(§15§.§[!6§);
            while(true)
            {
               §04§.ResetMassData();
               addr58:
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               this.§=7§.addChild(this.§,!5§);
               addr65:
               if(!_loc1_)
               {
                  addr32:
                  if(!_loc1_)
                  {
                     addr34:
                     if(!_loc2_)
                     {
                        while(true)
                        {
                           mWorld.DestroyJoint(this.§^[§);
                           addr86:
                           while(true)
                           {
                              this.§^[§ = null;
                              while(true)
                              {
                                 this.§ !M§ = false;
                                 addr51:
                                 while(_loc2_ || _loc1_)
                                 {
                                    §§goto(addr58);
                                    §§goto(addr65);
                                 }
                              }
                              §§goto(addr32);
                           }
                           §§goto(addr34);
                        }
                        addr90:
                     }
                     return;
                  }
                  §§goto(addr86);
               }
               §§goto(addr51);
            }
         }
         §§goto(addr90);
      }
      
      public function get native() : Boolean
      {
         return this.§ !M§;
      }
      
      public function get §#P§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§^[§ == null);
         if(!(_loc1_ && _loc1_))
         {
            return !§§pop();
         }
      }
      
      public function § "D§(param1:§7B§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:b2WeldJointDef = new b2WeldJointDef();
         if(_loc3_ || _loc3_)
         {
            _loc2_.§8#5§(param1.§3!t§(),§04§,param1.§3!t§().§;#&§());
            while(true)
            {
               _loc2_.collideConnected = false;
               while(!_loc4_)
               {
                  this.§^[§ = mWorld.CreateJoint(_loc2_);
                  if(_loc3_)
                  {
                     return;
                     addr50:
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      override public function attachedJointRemoved(param1:§7B§ = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§^[§ = null;
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(Boolean(sprite));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop3:
                  while(§§pop())
                  {
                     if(_loc2_)
                     {
                        while(true)
                        {
                           sprite.parent.removeChild(sprite,true);
                        }
                        addr51:
                     }
                     while(true)
                     {
                        if(!(_loc1_ && this))
                        {
                           break loop3;
                        }
                        addr78:
                        while(true)
                        {
                           §§push(Boolean(sprite.parent));
                           if(_loc1_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        while(true)
                        {
                           §§pop();
                           §§goto(addr79);
                        }
                        addr79:
                     }
                  }
                  return;
                  addr47:
               }
               §§goto(addr78);
            }
         }
         §§goto(addr51);
      }
      
      override public function collidedWith(param1:§7B§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §§push(this.§2#D§ is §@!8§);
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
                        addr167:
                        while(true)
                        {
                           §§push(param1 is §@!8§);
                        }
                     }
                     addr166:
                  }
                  while(true)
                  {
                     loop5:
                     while(!§§pop())
                     {
                        loop6:
                        while(true)
                        {
                           §§push(param1 is §&#=§);
                           loop7:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    if(!_loc2_)
                                    {
                                       return;
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    addr114:
                                    if(_loc3_ || param1)
                                    {
                                       if(_loc3_)
                                       {
                                          if(_loc3_)
                                          {
                                             §§goto(addr25);
                                          }
                                          break loop5;
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§push(this.native);
                                 loop10:
                                 while(!_loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc3_ || param1)
                                       {
                                          this.§2#]§();
                                       }
                                       §§goto(addr114);
                                    }
                                    else
                                    {
                                       §§push(this.§#P§);
                                       loop11:
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                          loop12:
                                          while(true)
                                          {
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                §§push(§§pop());
                                                if(_loc2_ && param1)
                                                {
                                                   continue loop1;
                                                }
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      §§goto(addr96);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         if(_loc3_ || param1)
                                                         {
                                                            this.§ "D§(param1);
                                                            break loop12;
                                                         }
                                                         addr96:
                                                         while(true)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(param1 is §?"N§);
                                                                  if(!_loc2_)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     §§push(!§§pop());
                                                                  }
                                                                  if(_loc2_)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  if(_loc2_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  if(_loc2_)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                               }
                                                               addr98:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr114);
                                                            }
                                                         }
                                                         §§goto(addr25);
                                                      }
                                                      break loop12;
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr166);
                                             }
                                          }
                                       }
                                    }
                                    addr25:
                                    return;
                                 }
                                 continue loop5;
                              }
                           }
                           §§goto(addr167);
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr98);
      }
      
      override public function applyGravity() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§ !M§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(false);
                  }
                  else
                  {
                     §§goto(addr52);
                  }
               }
               §§goto(addr52);
            }
            return §§pop();
         }
         addr52:
         return super.applyGravity();
      }
      
      override public function get shape() : §?#^§
      {
         return this.§&"5§;
      }
   }
}
