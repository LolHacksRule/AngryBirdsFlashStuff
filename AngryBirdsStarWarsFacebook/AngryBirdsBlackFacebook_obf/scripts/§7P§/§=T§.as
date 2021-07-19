package §7P§
{
   import §!!U§.§#"t§;
   import §!!U§.Sprite;
   import §+#$§.b2Body;
   import §+#$§.b2BodyDef;
   import §+#$§.b2FixtureDef;
   import §+#$§.b2World;
   import §1!2§.b2RevoluteJoint;
   import §1!2§.b2RevoluteJointDef;
   import §1!2§.b2WeldJoint;
   import §1!2§.b2WeldJointDef;
   import §2"Y§.§?#Q§;
   import §2"Y§.§?#^§;
   import §4!$§.b2MassData;
   import §7!F§.§8!W§;
   import §<"B§.§94§;
   import §[R§.b2Vec2;
   import §^#>§.§#_§;
   import §^#>§.§15§;
   import com.angrybirds.§,!q§;
   
   public class §=T§ extends §#m§
   {
      
      private static const §7"u§:Number = 100;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §=T§)
         {
            §7"u§ = 100;
         }
      }
      
      private var §2#D§:§?"N§;
      
      private var §=7§:Sprite;
      
      private var §"!!§:Number;
      
      private var §&#'§:b2Vec2;
      
      private var §@"B§:Boolean = false;
      
      private var §^[§:b2WeldJoint;
      
      private var §0R§:Number;
      
      private var §#!Z§:b2Body;
      
      private var §6!_§:b2RevoluteJoint;
      
      private var §'G§:§#"t§;
      
      private var § #]§:§#"t§;
      
      private var §%U§:Number = 0;
      
      private var § !M§:Boolean = true;
      
      private var §+2§:int;
      
      private var §&"5§:§?#Q§;
      
      public function §=T§(param1:Sprite, param2:b2World, param3:§?"N§, param4:Number)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            this.§2#D§ = param3;
            if(_loc7_ || param1)
            {
               addr28:
               this.§0R§ = §<#W§ = param4;
            }
            var _loc5_:§94§;
            (_loc5_ = new §94§()).x = param3.§'"8§();
            if(!(_loc8_ && param3))
            {
               _loc5_.y = param3.§;">§();
               loop0:
               do
               {
                  _loc5_.angle = param4;
                  while(true)
                  {
                     this.§&"5§ = new §?#Q§(§15§.§>!#§);
                     while(!_loc8_)
                     {
                        super(param1,param2,null,_loc5_);
                        do
                        {
                           this.init();
                        }
                        while(!_loc7_);
                        
                        if(!_loc8_)
                        {
                           continue loop0;
                        }
                     }
                  }
               }
               while(!(_loc7_ || this));
               
            }
            return;
         }
         §§goto(addr28);
      }
      
      private function init() : void
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc1_:§8!W§ = §,!q§.§9!,§.textureManager.getTexture("LASERDROID_01");
         if(!(_loc11_ && _loc1_))
         {
            this.§'G§ = new §#"t§(_loc1_.texture);
            loop0:
            while(true)
            {
               addr65:
               while(true)
               {
                  §§push(this.§'G§);
                  loop2:
                  while(true)
                  {
                     §§push(_loc1_.pivotX);
                     loop3:
                     while(true)
                     {
                        §§push(-§§pop());
                        loop4:
                        while(true)
                        {
                           §§pop().x = §§pop();
                           while(true)
                           {
                              §§push(this.§'G§);
                              if(_loc11_)
                              {
                                 break;
                              }
                              §§push(_loc1_.pivotY);
                              if(_loc10_ || _loc1_)
                              {
                                 §§push(-§§pop());
                                 if(_loc10_)
                                 {
                                    §§pop().y = §§pop();
                                    if(_loc10_ || this)
                                    {
                                       continue loop0;
                                    }
                                    continue;
                                 }
                                 continue loop4;
                              }
                              continue loop3;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr65);
         }
         var _loc2_:§8!W§ = §,!q§.§9!,§.textureManager.getTexture("LASERDROID_02");
         if(_loc10_)
         {
            this.§ #]§ = new §#"t§(_loc2_.texture);
            if(!(_loc11_ && this))
            {
               §§push(this.§ #]§);
               loop7:
               while(true)
               {
                  §§push(_loc2_.pivotX);
                  addr156:
                  while(true)
                  {
                     §§push(-§§pop());
                     addr157:
                     addr204:
                     while(true)
                     {
                        §§pop().x = §§pop();
                        if(!_loc10_)
                        {
                           break;
                        }
                        continue loop7;
                     }
                     addr204:
                     if(false)
                     {
                        addr206:
                        §§push(this);
                        §§push(§15§.§,"2§);
                        if(_loc10_ || _loc1_)
                        {
                           §§push(§§pop() / 2);
                        }
                        §§pop().§"!!§ = §§pop();
                        while(true)
                        {
                           this.§&#'§ = new b2Vec2();
                           if(_loc11_ && _loc3_)
                           {
                              continue;
                           }
                           if(!_loc11_)
                           {
                              §§goto(addr204);
                           }
                           else
                           {
                              addr225:
                           }
                           §§goto(addr206);
                        }
                        addr220:
                     }
                     var _loc3_:b2BodyDef = new b2BodyDef();
                     if(!_loc11_)
                     {
                        _loc3_.type = b2Body.b2_dynamicBody;
                        loop11:
                        while(true)
                        {
                           addr250:
                           while(true)
                           {
                              _loc3_.position.SetV(this.§2#D§.§3!t§().GetPosition());
                              continue loop11;
                           }
                        }
                        addr273:
                     }
                     while(true)
                     {
                        this.§#!Z§ = mWorld.CreateBody(_loc3_);
                        if(_loc11_)
                        {
                           continue;
                        }
                        if(_loc10_ || _loc3_)
                        {
                           if(true)
                           {
                              break;
                           }
                        }
                        else
                        {
                           §§goto(addr273);
                        }
                        §§goto(addr250);
                     }
                     var _loc4_:b2MassData;
                     (_loc4_ = new b2MassData()).§5"Z§ = 1e-7;
                     if(_loc10_ || _loc1_)
                     {
                        this.§#!Z§.§@!R§(_loc4_);
                     }
                     var _loc5_:b2RevoluteJointDef;
                     (_loc5_ = new b2RevoluteJointDef()).§9"P§ = this.§2#D§.§3!t§();
                     if(_loc10_)
                     {
                        _loc5_.§continue§ = this.§#!Z§;
                     }
                     while(true)
                     {
                        _loc5_.collideConnected = false;
                        loop15:
                        while(true)
                        {
                           _loc5_.§!"4§.Set(0,0);
                           loop16:
                           while(true)
                           {
                              addr323:
                              while(true)
                              {
                                 _loc5_.§#"B§.Set(0,0);
                                 continue loop16;
                              }
                              continue loop15;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr220);
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:§,#Z§ = null;
         if(_loc8_)
         {
            §§push(this);
            §§push(this.§"!!§);
            if(_loc8_ || param2)
            {
               §§push(§§pop() - param1);
            }
            §§pop().§"!!§ = §§pop();
            loop0:
            while(true)
            {
               §§push(this.§ !M§);
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  loop2:
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
                              addr271:
                              while(true)
                              {
                                 §§push(this.§+2§);
                                 addr253:
                                 while(true)
                                 {
                                    §§push(§§pop() <= 0);
                                    addr255:
                                    while(!_loc9_)
                                    {
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           addr270:
                        }
                        while(true)
                        {
                           §§push(§§pop());
                           if(_loc9_)
                           {
                              break;
                           }
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr263:
                                 while(true)
                                 {
                                    §§push(this.§"!!§);
                                    addr240:
                                    while(true)
                                    {
                                       §§push(0);
                                       addr241:
                                       while(true)
                                       {
                                          §§push(§§pop() <= §§pop());
                                       }
                                    }
                                 }
                                 addr36:
                                 if(_loc9_ && this)
                                 {
                                    continue;
                                 }
                                 if(§§pop())
                                 {
                                    if(!(_loc9_ && param1))
                                    {
                                       if(_loc8_)
                                       {
                                          §§push(§15§.§?!y§);
                                          if(!_loc9_)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc8_)
                                             {
                                                addr60:
                                                if(_loc8_ || this)
                                                {
                                                   if(_loc8_ || this)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         addr95:
                                                         §§push(Number(§§pop()));
                                                         if(_loc8_ || param1)
                                                         {
                                                            addr103:
                                                            if(!_loc9_)
                                                            {
                                                               _loc4_ = §§pop();
                                                               if(!_loc9_)
                                                               {
                                                                  addr108:
                                                                  if(_loc8_)
                                                                  {
                                                                     if(!_loc9_)
                                                                     {
                                                                        addr112:
                                                                        if(false)
                                                                        {
                                                                           loop25:
                                                                           while(true)
                                                                           {
                                                                              loop26:
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§ !M§);
                                                                                 if(!(_loc9_ && param2))
                                                                                 {
                                                                                    §§goto(addr36);
                                                                                 }
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          if(!(_loc9_ && this))
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                continue loop1;
                                                                                             }
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                loop19:
                                                                                                while(true)
                                                                                                {
                                                                                                   super.update(param1,param2);
                                                                                                   addr203:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         §§push(this.§"!!§);
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            if(_loc8_ || param2)
                                                                                                            {
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               if(§§pop() <= §§pop())
                                                                                                               {
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        continue loop0;
                                                                                                                     }
                                                                                                                     if(this.§#!Z§)
                                                                                                                     {
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           §§push(§15§.§#v§);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§#!Z§.GetAngle());
                                                                                                                              if(_loc8_ || this)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(!(_loc9_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    §§push(Math.PI / 2);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr461:
                                                                                                                                    if(§§pop() <= 0)
                                                                                                                                    {
                                                                                                                                       if(!(_loc9_ && param1))
                                                                                                                                       {
                                                                                                                                          addr470:
                                                                                                                                          §§push(this.§=7§);
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             §§pop().removeChild(this.§ #]§);
                                                                                                                                             addr484:
                                                                                                                                             if(!_loc9_)
                                                                                                                                             {
                                                                                                                                                addr479:
                                                                                                                                                §§push(this.§=7§);
                                                                                                                                             }
                                                                                                                                             §§push(this.§ !M§);
                                                                                                                                             if(_loc8_)
                                                                                                                                             {
                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                if(!(_loc9_ && param2))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   if(_loc8_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc9_ && this))
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            if(_loc8_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr520:
                                                                                                                                                               §§push(this.§2#D§);
                                                                                                                                                               loop28:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().health == this.§2#D§.healthMax);
                                                                                                                                                                  if(_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(!§§pop());
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        addr581:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           addr582:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 addr583:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop();
                                                                                                                                                                                    continue loop28;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr583:
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr546);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr545:
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr581:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr583);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr581);
                                                                                                                                                               }
                                                                                                                                                               addr561:
                                                                                                                                                               addr520:
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§2#D§);
                                                                                                                                                               if(!(_loc9_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().§3!t§() == null);
                                                                                                                                                                  if(_loc9_ && this)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr583);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr561);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr545);
                                                                                                                                                            }
                                                                                                                                                            addr584:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr581);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr546);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr582);
                                                                                                                                                }
                                                                                                                                                §§goto(addr583);
                                                                                                                                             }
                                                                                                                                             §§goto(addr581);
                                                                                                                                          }
                                                                                                                                          §§pop().addChild(this.§'G§);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr484);
                                                                                                                                 }
                                                                                                                                 §§goto(addr484);
                                                                                                                              }
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              addr184:
                                                                                                                              addr88:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 addr185:
                                                                                                                                 do
                                                                                                                                 {
                                                                                                                                    _loc3_ = §§pop();
                                                                                                                                 }
                                                                                                                                 while(!_loc9_);
                                                                                                                                 
                                                                                                                                 §§goto(addr479);
                                                                                                                              }
                                                                                                                              if(_loc9_ && this)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              §§goto(addr95);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(!_loc9_)
                                                                                                                        {
                                                                                                                           if(_loc9_ && this)
                                                                                                                           {
                                                                                                                              this.§>!V§(param2);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              addr233:
                                                                                                                           }
                                                                                                                           continue loop25;
                                                                                                                        }
                                                                                                                        return;
                                                                                                                     }
                                                                                                                     §§push(§15§.§#v§);
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        addr130:
                                                                                                                        §§push(Number(§§pop() + §04§.GetAngle() + Math.PI / 2));
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc3_ = §§pop();
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              continue loop26;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr130:
                                                                                                                     }
                                                                                                                     §§goto(addr130);
                                                                                                                     §§goto(addr479);
                                                                                                                  }
                                                                                                                  §§goto(addr470);
                                                                                                               }
                                                                                                               else if(this.§ #]§.parent == this.§=7§)
                                                                                                               {
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     §§push(this);
                                                                                                                     §§push(this.§%U§);
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - param1);
                                                                                                                     }
                                                                                                                     §§pop().§%U§ = §§pop();
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        addr459:
                                                                                                                        §§goto(addr461);
                                                                                                                        §§push(this.§%U§);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr484);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr461);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr208:
                                                                                                         if(_loc8_ || _loc3_)
                                                                                                         {
                                                                                                            continue loop19;
                                                                                                         }
                                                                                                         addr249:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr216:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                            §§goto(addr208);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr241);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr233);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr270);
                                                                                          }
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    addr243:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          while(_loc8_)
                                                                                          {
                                                                                             this.§@"B§ = true;
                                                                                             §§goto(addr249);
                                                                                          }
                                                                                          §§goto(addr263);
                                                                                          addr244:
                                                                                       }
                                                                                       §§goto(addr216);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr255);
                                                                              }
                                                                              §§goto(addr253);
                                                                           }
                                                                        }
                                                                        if(_loc5_ = param2 as §,#Z§)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              _loc5_.§#!#§("BLOCK_LAZER_SHOT_RED",§'"8§() + Math.cos(_loc3_) * _loc4_,§;">§() + Math.sin(_loc3_) * _loc4_,_loc3_ * (180 / Math.PI),§15§.§4u§,true);
                                                                              if(!(_loc9_ && this))
                                                                              {
                                                                                 addr379:
                                                                                 §§push(this);
                                                                                 §§push(this.§"!!§);
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    §§push(§§pop() + §15§.§,"2§);
                                                                                 }
                                                                                 §§pop().§"!!§ = §§pop();
                                                                                 if(_loc8_ || param1)
                                                                                 {
                                                                                    addr375:
                                                                                    this.§=7§.removeChild(this.§'G§);
                                                                                    addr356:
                                                                                    addr378:
                                                                                    §§push(this.§=7§);
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       §§pop().addChild(this.§ #]§);
                                                                                       if(!(_loc9_ && _loc3_))
                                                                                       {
                                                                                          this.§%U§ = §7"u§;
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             if(_loc8_ || _loc3_)
                                                                                             {
                                                                                                if(false)
                                                                                                {
                                                                                                   §§goto(addr356);
                                                                                                }
                                                                                                §§push(this.§ !M§);
                                                                                                if(!(_loc9_ && param1))
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         var _loc6_:*;
                                                                                                         §§push((_loc6_ = this).§+2§);
                                                                                                         if(!(_loc9_ && this))
                                                                                                         {
                                                                                                            §§push(§§pop() - 1);
                                                                                                         }
                                                                                                         var _loc7_:* = §§pop();
                                                                                                         if(!(_loc9_ && this))
                                                                                                         {
                                                                                                            _loc6_.§+2§ = _loc7_;
                                                                                                         }
                                                                                                         if(!(_loc9_ && this))
                                                                                                         {
                                                                                                            addr440:
                                                                                                            §§goto(addr484);
                                                                                                         }
                                                                                                         §§goto(addr584);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr440);
                                                                                                }
                                                                                                addr546:
                                                                                                while(§§pop())
                                                                                                {
                                                                                                   if(_loc8_ || _loc3_)
                                                                                                   {
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         continue loop28;
                                                                                                      }
                                                                                                      this.§!K§();
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                return;
                                                                                             }
                                                                                             §§goto(addr378);
                                                                                          }
                                                                                          §§goto(addr558);
                                                                                          addr371:
                                                                                       }
                                                                                       §§goto(addr520);
                                                                                    }
                                                                                    §§goto(addr375);
                                                                                 }
                                                                                 §§goto(addr520);
                                                                              }
                                                                              §§goto(addr371);
                                                                           }
                                                                           §§goto(addr556);
                                                                        }
                                                                        §§goto(addr379);
                                                                     }
                                                                     §§goto(addr244);
                                                                  }
                                                                  §§goto(addr203);
                                                               }
                                                               §§goto(addr470);
                                                            }
                                                            §§goto(addr240);
                                                         }
                                                         §§goto(addr461);
                                                      }
                                                      §§goto(addr184);
                                                   }
                                                   §§goto(addr185);
                                                }
                                                §§goto(addr130);
                                             }
                                             §§goto(addr103);
                                          }
                                          §§goto(addr60);
                                       }
                                       §§goto(addr271);
                                    }
                                    §§goto(addr108);
                                 }
                                 §§push(1);
                                 if(!_loc9_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(!(_loc9_ && param2))
                                    {
                                       §§goto(addr88);
                                    }
                                    §§goto(addr461);
                                 }
                                 §§goto(addr253);
                              }
                           }
                           while(true)
                           {
                              §§goto(addr243);
                              §§goto(addr241);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr459);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param3)
         {
            §§push(this.§ !M§);
            while(true)
            {
               §§push(Boolean(§§pop()));
               if(!(_loc4_ && param1))
               {
                  if(!§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              this.§!K§();
                              addr92:
                              while(true)
                              {
                              }
                           }
                           addr90:
                        }
                        while(true)
                        {
                           super.render(param1,param2,param3);
                           do
                           {
                              this.§"r§();
                           }
                           while(!(_loc5_ || this));
                           
                           if(!(_loc4_ && param3))
                           {
                              if(_loc5_ || param3)
                              {
                                 break;
                              }
                              §§goto(addr90);
                           }
                           §§goto(addr92);
                        }
                        if(_loc5_)
                        {
                           break;
                        }
                        addr116:
                        loop7:
                        while(true)
                        {
                           §§push(this.§2#D§.§3!t§() == null);
                           if(_loc5_)
                           {
                              continue loop1;
                           }
                           addr115:
                           while(true)
                           {
                              §§pop();
                              continue loop7;
                           }
                        }
                     }
                     return;
                     addr88:
                  }
               }
               §§goto(addr115);
               if(!(_loc5_ || param3))
               {
                  continue;
               }
               §§goto(addr88);
            }
         }
         §§goto(addr116);
      }
      
      private function §"r§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§ !M§)
            {
               while(true)
               {
                  this.§#!Z§.SetAngle(this.§2#D§.§"#,§() - Math.PI / 2);
                  addr125:
                  while(true)
                  {
                  }
               }
               addr104:
            }
            loop0:
            while(true)
            {
               §§push(this.§=7§);
               loop1:
               while(true)
               {
                  §§push(§'"8§() / §#_§.§8]§);
                  loop2:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(this.§=7§);
                        while(!(_loc2_ && _loc2_))
                        {
                           §§push(§;">§() / §#_§.§8]§);
                           if(_loc1_)
                           {
                              §§pop().y = §§pop();
                              while(true)
                              {
                                 §§push(this.§=7§);
                                 if(_loc2_ && _loc1_)
                                 {
                                    break;
                                 }
                                 §§pop().rotation = Math.PI + §3!t§().GetAngle() + §15§.§#v§;
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       break loop3;
                                    }
                                    continue loop3;
                                 }
                              }
                              continue;
                           }
                           continue loop2;
                        }
                        continue loop1;
                     }
                     if(!_loc1_)
                     {
                        continue loop0;
                     }
                     if(!_loc2_)
                     {
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr104);
      }
      
      override public function collidedWith(param1:§7B§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(param1 != this.§2#D§)
            {
               loop0:
               while(true)
               {
                  §§push(this.§2#D§ is §@!8§);
                  loop1:
                  while(true)
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
                              §§push(param1 is §@!8§);
                              while(_loc2_)
                              {
                                 loop7:
                                 while(_loc2_ || _loc3_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc2_ || _loc2_)
                                       {
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             if(_loc2_)
                                             {
                                                return;
                                             }
                                             addr98:
                                             if(!_loc3_)
                                             {
                                                §§goto(addr100);
                                             }
                                             continue loop3;
                                          }
                                          addr50:
                                          addr103:
                                          while(true)
                                          {
                                             continue loop7;
                                             §§goto(addr103);
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                          }
                                          addr89:
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(this.§ !M§);
                                       if(!(_loc3_ && param1))
                                       {
                                          if(!_loc3_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!_loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc3_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   this.§!K§();
                                                }
                                                break;
                                             }
                                             break;
                                          }
                                          continue loop2;
                                       }
                                       continue loop7;
                                    }
                                    return;
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
                           §§goto(addr50);
                        }
                        §§goto(addr98);
                     }
                     addr100:
                     if(_loc2_)
                     {
                        return;
                     }
                     addr127:
                     return;
                  }
               }
            }
            §§goto(addr127);
         }
         §§goto(addr128);
      }
      
      private function §!K§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§ !M§ = false;
            while(true)
            {
               mWorld.DestroyJoint(this.§^[§);
               while(true)
               {
                  mWorld.DestroyJoint(this.§6!_§);
                  loop2:
                  while(true)
                  {
                     mWorld.DestroyBody(this.§#!Z§);
                     while(true)
                     {
                        this.§^[§ = null;
                        loop4:
                        while(!(_loc1_ && _loc2_))
                        {
                           this.§#!Z§ = null;
                           loop5:
                           while(true)
                           {
                              this.§6!_§ = null;
                              while(true)
                              {
                                 §^!L§.SetDensity(1);
                                 continue loop2;
                                 addr41:
                                 if(_loc2_ || this)
                                 {
                                    if(!_loc1_)
                                    {
                                       if(_loc1_ && _loc2_)
                                       {
                                          continue loop4;
                                       }
                                       §§goto(addr57);
                                       continue loop4;
                                    }
                                    continue loop5;
                                 }
                              }
                           }
                           return;
                        }
                     }
                  }
               }
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               §04§.SetAwake(true);
               §§goto(addr62);
            }
         }
         §§goto(addr116);
      }
      
      private function §>!V§(param1:§;$§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || this)
         {
            param1.§6#4§(§'"8§(),§;">§(),§15§.§8"G§,§15§.§!N§,§15§.§=!H§,§15§.§?!`§);
         }
         var _loc2_:Number = §3!t§().GetPosition().x;
         var _loc3_:Number = §3!t§().GetPosition().y;
         if(_loc4_)
         {
            param1.addObject("explosionBuff",_loc2_,_loc3_,0,§;=§.§""3§,false,false,false,1,true);
         }
         while(true)
         {
            param1.§]#^§("droidBuff",_loc2_,_loc3_,0,§;=§.§""3§,3,3,1,true);
            while(_loc4_)
            {
               param1.removeObject(this,false);
               if(_loc4_ || this)
               {
                  return;
               }
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(this.§ !M§)
            {
               if(_loc2_ || _loc2_)
               {
                  addr65:
                  this.§!K§();
               }
               while(true)
               {
               }
               addr67:
            }
            while(true)
            {
               super.dispose();
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr67);
            }
            return;
         }
         §§goto(addr65);
      }
      
      override public function get shape() : §?#^§
      {
         return this.§&"5§;
      }
      
      override public function applyGravity() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§ !M§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§goto(addr56);
                  }
               }
               return super.applyGravity();
            }
            §§goto(addr56);
         }
         addr56:
         return false;
      }
   }
}
