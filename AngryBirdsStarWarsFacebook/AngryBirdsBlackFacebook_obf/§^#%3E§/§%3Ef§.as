package §^#>§
{
   import §!!U§.§#"t§;
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §&v§.Texture;
   import §+!c§.PowerupFlash;
   import §+!c§.SuperSlingshotRubber;
   import §2"Y§.§"t§;
   import §2"Y§.§=+§;
   import §7P§.§=1§;
   import §="2§.§?!r§;
   import §?m§.§8!B§;
   import flash.geom.Point;
   
   public class §>f§ extends § !Y§
   {
      
      protected static const §1#S§:uint = 4.294049791E9;
      
      protected static var §""U§:Texture;
      
      private static const §]""§:Number = 2;
      
      private static const §^!<§:Number = -90;
      
      private static const §;"§:Number = 6;
      
      private static const §try §:Number = 4.5;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §1#S§ = 4294049791;
            while(true)
            {
               §]""§ = 2;
               loop1:
               while(_loc2_ || _loc1_)
               {
                  while(true)
                  {
                     §^!<§ = -90;
                     while(true)
                     {
                        §;"§ = 6;
                        while(!_loc1_)
                        {
                           if(!_loc1_)
                           {
                              §try § = 4.5;
                              if(!(_loc1_ && _loc1_))
                              {
                                 return;
                              }
                              continue;
                              continue;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr86);
      }
      
      protected var §-"k§:§#"t§;
      
      protected var §!"n§:§#"t§;
      
      protected var § #2§:SuperSlingshotRubber;
      
      protected var §]#H§:Boolean = false;
      
      protected var §'8§:§`"]§;
      
      private var §=!9§:Boolean = false;
      
      private var §'!2§:Boolean = false;
      
      private var §catch§:PowerupFlash;
      
      private var §6"9§:Number;
      
      private var §?=§:Number;
      
      public function §>f§(param1:§#_§, param2:§8!B§, param3:Sprite)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super(param1,param2,param3);
         }
      }
      
      public function get §=#`§() : Boolean
      {
         return this.§=!9§;
      }
      
      public function get isLocked() : Boolean
      {
         return this.§'!2§;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§'!2§ = param1;
         }
      }
      
      override public function canStartDragging(param1:Point) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§'!2§);
            if(_loc2_ || param1)
            {
               if(§§pop())
               {
                  if(_loc2_)
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
         return super.canStartDragging(param1);
      }
      
      override public function shootCurrentBird(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            this.§=!9§ = false;
         }
         var _loc3_:§`"]§ = null;
         if(!(_loc5_ && param2))
         {
            if(§,!?§.length > §72§)
            {
               if(_loc4_ || this)
               {
                  _loc3_ = §,!?§[§72§];
                  §§goto(addr62);
               }
               else
               {
                  addr69:
               }
               §§goto(addr82);
            }
            addr62:
            if(!_loc3_)
            {
               if(_loc4_)
               {
                  return;
               }
               addr108:
               while(true)
               {
               }
               addr108:
            }
            else
            {
               addr82:
               if(_loc3_.levelItem.itemName != §=1§.§+"§)
               {
                  if(_loc4_ || this)
                  {
                     this.§'8§ = _loc3_;
                  }
                  §§goto(addr108);
               }
            }
            while(true)
            {
               super.shootCurrentBird(param1,param2);
               if(!_loc5_)
               {
                  break;
               }
               §§goto(addr108);
            }
            return;
         }
         §§goto(addr69);
      }
      
      override public function useMightyEagle() : §`"]§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§`"]§ = null;
         if(!_loc3_)
         {
            if(§,!?§.length > 0)
            {
               addr26:
               _loc2_ = §,!?§[§72§];
               if(!(_loc3_ && this))
               {
                  if(_loc2_.levelItem.itemName != §=1§.§+"§)
                  {
                     if(_loc4_ || this)
                     {
                     }
                     addr64:
                     var _loc1_:§'"3§ = §'"3§(super.useMightyEagle());
                     if(!(_loc3_ && _loc3_))
                     {
                        if(this.§]#H§)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              _loc1_.§&"D§ = §0"x§.§!"'§;
                           }
                           loop0:
                           while(true)
                           {
                              _loc1_.§<z§ = §0"x§.§6`§;
                              addr96:
                              while(true)
                              {
                                 _loc1_.§#">§();
                                 if(!_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    continue loop0;
                                 }
                              }
                              §§goto(addr78);
                           }
                        }
                        addr78:
                        return _loc1_;
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr64);
               }
               this.§'8§ = _loc2_;
            }
            §§goto(addr64);
         }
         §§goto(addr26);
      }
      
      public function §;"O§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§=!9§ = true;
         }
      }
      
      public function §+#2§(param1:String, param2:Number, param3:Number, param4:int = -1) : §`"]§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            this.§=!9§ = true;
         }
         var _loc5_:§'"3§ = §'"3§(§4§(param1,param2,param3,param4));
         if(_loc7_)
         {
            if(this.§]#H§)
            {
               loop0:
               while(true)
               {
                  _loc5_.§&"D§ = §0"x§.§!"'§;
                  loop1:
                  while(true)
                  {
                     _loc5_.§<z§ = §0"x§.§6`§;
                     while(true)
                     {
                        _loc5_.§#">§();
                        addr80:
                        while(true)
                        {
                        }
                        addr60:
                        if(!(_loc6_ && param2))
                        {
                           if(_loc7_)
                           {
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
            while(true)
            {
               _loc5_.§3i§();
               if(!(_loc7_ || param3))
               {
                  continue;
               }
               §§goto(addr60);
            }
            §§goto(addr76);
         }
         §§goto(addr80);
      }
      
      public function get §6!8§() : §`"]§
      {
         return this.§'8§;
      }
      
      public function get §0"%§() : §`"]§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(§,!?§.length > 0)
            {
               if(_loc2_)
               {
                  return §,!?§[§72§];
               }
            }
         }
         return this.§6!8§;
      }
      
      public function §#W§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(§,!?§.length != 0)
            {
               loop0:
               while(true)
               {
                  §'"3§(§,!?§[§72§]).§#W§();
                  addr90:
                  loop1:
                  do
                  {
                     §§push(this);
                     §§push(§8!+§ / §#_§.§8]§);
                     if(_loc2_)
                     {
                        §§push(§§pop() + 30);
                     }
                     §§push(§=!Z§ / §#_§.§8]§);
                     if(_loc2_)
                     {
                        §§push(§§pop() + 30);
                     }
                     §§pop().§@!9§(§§pop(),§§pop(),0.7);
                     while(_loc2_)
                     {
                        §?!r§.§"#_§("thermal_detonator_activate");
                        if(!(_loc1_ && _loc2_))
                        {
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
                  while(!_loc2_);
                  
                  if(_loc2_)
                  {
                     return;
                  }
               }
            }
            return;
         }
         §§goto(addr90);
      }
      
      public function §@#Y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(§,!?§.length != 0)
            {
               while(true)
               {
                  §'"3§(§,!?§[§72§]).§@#Y§();
                  §§goto(addr106);
               }
            }
            §§goto(addr111);
         }
         addr106:
         loop1:
         while(true)
         {
            §§push(this);
            §§push(§8!+§ / §#_§.§8]§);
            if(_loc1_ || this)
            {
               §§push(§§pop() + 10);
            }
            §§push(§=!Z§ / §#_§.§8]§);
            if(_loc1_)
            {
               §§push(90);
               if(_loc1_)
               {
                  addr79:
                  §§push(§§pop() - §§pop());
                  §§push(1);
               }
               §§pop().§@!9§(§§pop(),§§pop(),§§pop());
               while(_loc1_ || _loc2_)
               {
                  §?!r§.§"#_§("laser_droid_activate");
                  if(!_loc2_)
                  {
                     continue loop1;
                  }
               }
               addr111:
               return;
            }
            §§goto(addr79);
         }
      }
      
      override protected function initializeSlingshotObject(param1:§"t§, param2:Number, param3:Number, param4:Number, param5:Sprite, param6:int) : §`"]§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param2)
         {
            if(param1 is §=+§)
            {
               if(_loc7_ || param3)
               {
                  return new §'"3§(this,param5,param1.itemName,param1,param2,param3,param4,param6);
               }
            }
         }
         return super.initializeSlingshotObject(param1,param2,param3,param4,param5,param6);
      }
      
      public function §?"q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§2"6§(false);
         }
      }
      
      public function §%"f§() : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§'"3§ = null;
         if(_loc6_ || _loc2_)
         {
            §§push(Boolean(this.§-"k§));
            if(_loc6_)
            {
               if(!§§pop())
               {
                  loop13:
                  while(true)
                  {
                     §§pop();
                     addr69:
                     while(true)
                     {
                        §§push(Boolean(this.§!"n§));
                        if(!_loc7_)
                        {
                           break;
                        }
                        continue loop13;
                     }
                  }
                  addr68:
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §?!r§.§"#_§("light_slingshot");
                        if(_loc6_)
                        {
                           if(!_loc6_)
                           {
                              break;
                           }
                           if(false)
                           {
                              §§goto(addr37);
                           }
                           var _loc1_:Texture = §2#G§.textureManager.getTexture("SABERSLING_BACK").texture;
                           var _loc2_:Texture = §2#G§.textureManager.getTexture("SABERSLING_FRONT").texture;
                           if(_loc6_)
                           {
                              this.§-"k§ = new §#"t§(_loc1_);
                              loop3:
                              while(true)
                              {
                                 this.§!"n§ = new §#"t§(_loc2_);
                                 while(true)
                                 {
                                    §§push(this.§-"k§);
                                    while(true)
                                    {
                                       §§pop().pivotX = §"#S§.pivotX - 5;
                                       while(true)
                                       {
                                          §§push(this.§-"k§);
                                          if(_loc7_ && this)
                                          {
                                             break;
                                             addr162:
                                          }
                                          §§pop().pivotY = §"#S§.pivotY;
                                          while(_loc6_ || _loc3_)
                                          {
                                             continue loop3;
                                          }
                                       }
                                    }
                                    addr111:
                                    if(!(_loc6_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    this.§2"6§(true);
                                    if(_loc6_)
                                    {
                                       if(!_loc7_)
                                       {
                                          if(!(_loc7_ && this))
                                          {
                                             if(false)
                                             {
                                                while(true)
                                                {
                                                   this.§ #2§ = new SuperSlingshotRubber();
                                                   addr109:
                                                   while(_loc6_)
                                                   {
                                                      §§goto(addr111);
                                                   }
                                                   §§goto(addr162);
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr104);
                                                }
                                                addr104:
                                                addr139:
                                             }
                                             var _loc4_:int = 0;
                                             var _loc5_:* = §,!?§;
                                             addr244:
                                             for each(_loc3_ in _loc5_)
                                             {
                                                if(!(_loc7_ && this))
                                                {
                                                   _loc3_.§&"D§ = §0"x§.§!"'§;
                                                   addr226:
                                                   _loc3_.§<z§ = §0"x§.§6`§;
                                                   if(!(_loc7_ && _loc3_))
                                                   {
                                                      _loc3_.§#">§();
                                                      if(!_loc7_)
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr226);
                                                         }
                                                         §§goto(addr244);
                                                      }
                                                      §§goto(addr226);
                                                      addr238:
                                                   }
                                                   addr243:
                                                   §§goto(addr243);
                                                }
                                                §§goto(addr238);
                                             }
                                             if(!_loc7_)
                                             {
                                                §§push(this);
                                                §§push(§8!+§ / §#_§.§8]§);
                                                §§push(§=!Z§ / §#_§.§8]§);
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop() + 20);
                                                }
                                                §§pop().§@!9§(§§pop(),§§pop(),1.5);
                                             }
                                             return;
                                          }
                                          loop9:
                                          while(true)
                                          {
                                             §§push(this.§!"n§);
                                             if(_loc6_)
                                             {
                                                §§pop().pivotY = §-4§.pivotY + 1;
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§pop().pivotX = §-4§.pivotX - 3;
                                                   continue loop9;
                                                }
                                                addr143:
                                             }
                                          }
                                          addr148:
                                       }
                                       §§goto(addr139);
                                    }
                                    §§goto(addr109);
                                 }
                              }
                           }
                           §§goto(addr148);
                        }
                        else if(!(_loc7_ && _loc2_))
                        {
                           continue;
                        }
                     }
                     addr58:
                     if(_loc6_)
                     {
                        break;
                     }
                     continue;
                  }
                  this.§2"6§(true);
                  §§goto(addr58);
               }
               §§goto(addr60);
            }
            §§goto(addr68);
         }
         addr60:
         addr37:
      }
      
      private function §@!9§(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            this.§catch§ = new PowerupFlash();
            loop0:
            while(true)
            {
               §%G§.addChild(this.§catch§);
               if(!(_loc5_ && param3))
               {
                  if(_loc5_)
                  {
                     continue;
                  }
                  loop1:
                  while(true)
                  {
                     §§push(this.§catch§);
                     while(true)
                     {
                        §§push(param1);
                        if(!(_loc5_ && this))
                        {
                           §§pop().x = §§pop();
                           if(_loc6_ || this)
                           {
                              §§push(this.§catch§);
                              if(_loc5_)
                              {
                                 §§push(this.§catch§.scaleY = param3);
                              }
                              if(_loc6_ || param1)
                              {
                                 §§push(param2);
                                 if(_loc6_)
                                 {
                                    §§pop().y = §§pop();
                                    if(_loc6_)
                                    {
                                       while(true)
                                       {
                                          if(true)
                                          {
                                             §§push(this.§catch§);
                                          }
                                          continue loop1;
                                       }
                                       addr43:
                                    }
                                    break loop0;
                                 }
                                 break;
                              }
                              continue;
                              break;
                           }
                           break loop0;
                        }
                        break;
                     }
                     §§pop().scaleX = §§pop();
                     break loop0;
                  }
               }
               break;
            }
            return;
         }
         §§goto(addr43);
      }
      
      protected function §2"6§(param1:Boolean = false) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§]#H§);
            while(true)
            {
               if(§§pop() == param1)
               {
                  if(!_loc3_)
                  {
                     break;
                  }
                  while(true)
                  {
                     addr173:
                     if(_loc3_ && param1)
                     {
                        continue;
                     }
                     this.§]#H§ = param1;
                     addr180:
                     if(_loc3_ && this)
                     {
                        while(_loc2_ || _loc2_)
                        {
                           §§goto(addr173);
                           §§goto(addr180);
                        }
                        loop3:
                        while(true)
                        {
                           if(!(_loc3_ && _loc2_))
                           {
                              if(!(_loc3_ && _loc3_))
                              {
                                 while(true)
                                 {
                                 }
                                 addr200:
                              }
                              else
                              {
                                 loop4:
                                 while(true)
                                 {
                                    §]<§.removeChild(§;Y§);
                                    loop5:
                                    while(!_loc3_)
                                    {
                                       §]<§.addChild(this.§ #2§);
                                       while(!(_loc2_ || param1))
                                       {
                                          continue loop5;
                                       }
                                       while(true)
                                       {
                                          §§push(§§findproperty(§"!S§));
                                          if(_loc2_)
                                          {
                                             if(param1)
                                             {
                                                addr152:
                                                §§push(§0"x§.§!"2§);
                                                if(!_loc3_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!_loc2_)
                                                   {
                                                      addr164:
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(§0"x§.§,b§);
                                                if(!_loc3_)
                                                {
                                                   §§goto(addr164);
                                                }
                                             }
                                             §§pop().§"!S§ = §§pop();
                                             continue loop3;
                                          }
                                          §§goto(addr152);
                                       }
                                    }
                                    addr226:
                                    while(true)
                                    {
                                       this.§,"F§();
                                       continue loop4;
                                    }
                                 }
                              }
                              §§goto(addr146);
                           }
                           §§goto(addr206);
                        }
                        addr166:
                        addr186:
                     }
                     addr105:
                     if(§%G§.numChildren <= 0)
                     {
                        addr110:
                        if(!_loc3_)
                        {
                           §0!4§ = new Sprite();
                           addr126:
                           §§push(§0!4§);
                           if(param1)
                           {
                              addr103:
                              §§pop().addChild(this.§-"k§);
                              §0!4§.addChild(§@s§);
                              addr104:
                              if(!(_loc3_ && _loc3_))
                              {
                                 §9"h§ = new Sprite();
                                 addr78:
                                 if(_loc2_)
                                 {
                                    §9"h§.addChild(§]<§);
                                    addr70:
                                    if(_loc2_)
                                    {
                                       §9"h§.addChild(§4I§);
                                       addr56:
                                       if(!_loc3_)
                                       {
                                          if(_loc2_ || param1)
                                          {
                                             §§push(§9"h§);
                                             if(param1)
                                             {
                                                addr50:
                                                §§pop().addChild(this.§!"n§);
                                                §%!Q§();
                                                addr37:
                                                if(!_loc3_)
                                                {
                                                   §["]§ = true;
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc2_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            §§goto(addr78);
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr56);
                                                   }
                                                   §§goto(addr37);
                                                }
                                                addr51:
                                                §§goto(addr51);
                                             }
                                             §§goto(addr50);
                                             §§push(§-4§);
                                          }
                                          §§goto(addr104);
                                       }
                                       §§goto(addr70);
                                    }
                                    §§goto(addr126);
                                 }
                                 §§goto(addr104);
                              }
                              §§goto(addr110);
                           }
                           §§goto(addr103);
                           §§push(§"#S§);
                        }
                        §§goto(addr105);
                     }
                     §%G§.removeChildAt(0);
                     §§goto(addr110);
                  }
               }
               while(true)
               {
                  §§push(param1);
                  if(!_loc2_)
                  {
                     break;
                  }
                  if(!§§pop())
                  {
                     §@P§();
                     §§goto(addr186);
                  }
                  §§goto(addr226);
               }
            }
            return;
         }
         §§goto(addr200);
      }
      
      override public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.update(param1,param2);
            loop0:
            while(true)
            {
               §§push(this.§catch§);
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§catch§);
                        addr155:
                        while(true)
                        {
                           §§pop().update(param1);
                           loop11:
                           while(true)
                           {
                              §§push(this.§catch§);
                              if(!_loc4_)
                              {
                                 continue;
                              }
                              if(!§§pop().§<"M§)
                              {
                                 addr131:
                                 while(true)
                                 {
                                    §%G§.removeChild(this.§catch§,true);
                                    addr136:
                                    while(true)
                                    {
                                    }
                                 }
                                 addr131:
                              }
                              while(true)
                              {
                                 §§push(this.§]#H§);
                                 if(_loc4_ || _loc3_)
                                 {
                                    §§push(Boolean(§§pop()));
                                    loop3:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             loop5:
                                             while(§§pop())
                                             {
                                                if(!(_loc3_ && this))
                                                {
                                                   continue loop1;
                                                }
                                                loop7:
                                                while(true)
                                                {
                                                   if(_loc4_ || param2)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         if(_loc4_ || param2)
                                                         {
                                                            continue loop0;
                                                         }
                                                         continue loop11;
                                                      }
                                                      §§goto(addr131);
                                                   }
                                                   else
                                                   {
                                                      loop8:
                                                      for(; !_loc3_; while(true)
                                                      {
                                                         §§pop();
                                                         continue loop8;
                                                      })
                                                      {
                                                         addr123:
                                                         §§push(this.§ #2§);
                                                         if(!(_loc3_ && param1))
                                                         {
                                                            §§push(§§pop() == null);
                                                            if(!_loc3_)
                                                            {
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               continue;
                                                            }
                                                            continue loop5;
                                                         }
                                                         addr71:
                                                         while(true)
                                                         {
                                                            §§pop().update(param1);
                                                            continue loop7;
                                                            §§goto(addr123);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr136);
                                                }
                                             }
                                             addr20:
                                             return;
                                          }
                                          addr53:
                                       }
                                    }
                                 }
                                 §§goto(addr120);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr107);
               }
               §§goto(addr155);
            }
         }
         §§goto(addr131);
      }
      
      override protected function playBirdShotSound() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(!this.§]#H§)
            {
               super.playBirdShotSound();
               if(_loc1_ || _loc2_)
               {
                  if(_loc2_ && _loc2_)
                  {
                     addr71:
                     §?!r§.§"#_§("light_slingshot_fire");
                     addr74:
                  }
                  return;
               }
               §§goto(addr74);
            }
         }
         §§goto(addr71);
      }
      
      override public function getLaunchSpeed() : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = Number(0);
         var _loc2_:§`"]§ = §,!?§[§72§];
         var _loc3_:Number = §,!8§();
         if(!_loc5_)
         {
            if(_loc2_)
            {
               loop8:
               while(true)
               {
                  §§push(_loc2_.§^"+§);
                  loop7:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     loop1:
                     while(true)
                     {
                        _loc1_ = §§pop();
                        loop2:
                        while(true)
                        {
                           §§push(Boolean(_loc2_));
                           if(!_loc5_)
                           {
                              if(§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§pop();
                                    addr128:
                                    while(true)
                                    {
                                       §§push(_loc2_.§&"D§);
                                       addr78:
                                       while(true)
                                       {
                                          §§push(§§pop() > 0);
                                          if(!_loc4_)
                                          {
                                             continue loop5;
                                          }
                                       }
                                       continue loop5;
                                    }
                                 }
                                 addr127:
                              }
                              while(§§pop())
                              {
                                 if(_loc5_ && this)
                                 {
                                    break;
                                 }
                                 if(_loc4_)
                                 {
                                    if(!_loc5_)
                                    {
                                       if(_loc4_)
                                       {
                                          §§goto(addr108);
                                       }
                                       continue loop8;
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr128);
                              }
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(_loc4_)
                                 {
                                    if(_loc4_)
                                    {
                                       if(!(_loc4_ || _loc3_))
                                       {
                                          continue loop1;
                                       }
                                       §§push(_loc3_);
                                       if(!_loc5_)
                                       {
                                          addr48:
                                          §§push(§§pop() * §§pop());
                                          if(_loc5_ && _loc1_)
                                          {
                                             break;
                                          }
                                          if(_loc4_ || _loc1_)
                                          {
                                             return §§pop();
                                          }
                                          continue loop7;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr78);
                                    }
                                    §§goto(addr107);
                                 }
                                 §§goto(addr48);
                              }
                              addr108:
                              §§push(_loc2_.§&"D§);
                              if(!(_loc5_ && _loc2_))
                              {
                                 addr107:
                                 §§push(§§pop() * _loc3_);
                              }
                              return §§pop();
                              addr31:
                           }
                           §§goto(addr127);
                        }
                     }
                  }
               }
               addr131:
            }
            §§goto(addr31);
         }
         §§goto(addr131);
      }
      
      override public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc5_:§`"]§ = null;
         var _loc6_:Point = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         if(_loc15_ || param3)
         {
            §§push(this.§6"9§);
            if(_loc15_ || param1)
            {
               §§push(param1);
               if(!_loc14_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc15_ || param1)
                  {
                     if(§§pop())
                     {
                        if(!(_loc14_ && param1))
                        {
                           §§pop();
                           if(!(_loc14_ && param3))
                           {
                              addr81:
                              §§push(this.§?=§);
                              if(!_loc14_)
                              {
                                 addr86:
                                 §§push(§§pop() == param2);
                                 if(_loc15_ || param1)
                                 {
                                    addr94:
                                    if(§§pop())
                                    {
                                       if(!_loc14_)
                                       {
                                          §§goto(addr98);
                                       }
                                       else
                                       {
                                          addr107:
                                          _loc5_ = §,!?§[§72§];
                                          (_loc6_ = new Point(param1 - §9"C§,param2 - §-#;§)).normalize(_loc5_.radius);
                                          if(!(_loc14_ && param2))
                                          {
                                             §§push(param1);
                                             if(!_loc14_)
                                             {
                                                §§push(Number(§§pop() + _loc6_.x));
                                                if(_loc15_ || param2)
                                                {
                                                   param1 = §§pop();
                                                   addr177:
                                                   if(_loc15_)
                                                   {
                                                      §§push(param2);
                                                      if(_loc15_)
                                                      {
                                                         §§push(Number(§§pop() + _loc6_.y));
                                                      }
                                                   }
                                                   §&##§ = Math.sqrt((param2 - §-#;§) * (param2 - §-#;§) + (param1 - §9"C§) * (param1 - §9"C§));
                                                   var _loc4_:Number = §&##§;
                                                   if(!_loc14_)
                                                   {
                                                      if(§>"o§ > §"!S§)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(param3);
                                                            while(!§§pop())
                                                            {
                                                               loop2:
                                                               while(true)
                                                               {
                                                                  §&##§ = §"!S§ / §!#R§;
                                                                  loop3:
                                                                  while(true)
                                                                  {
                                                                     addr911:
                                                                     while(true)
                                                                     {
                                                                        this.§6"9§ = param1;
                                                                        while(true)
                                                                        {
                                                                           this.§?=§ = param2;
                                                                           while(true)
                                                                           {
                                                                              §7"1§ = Math.atan2(-(this.§?=§ - §-#;§),this.§6"9§ - §9"C§);
                                                                              loop7:
                                                                              while(true)
                                                                              {
                                                                                 §7"1§ *= 180 / Math.PI;
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(!mDragging);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                         if(_loc14_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         this.§?=§ = §-#;§ + (_loc5_.radius > §]""§ ? §]""§ : _loc5_.radius);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §7"1§ = §^!<§;
                                                                                                            while(true)
                                                                                                            {
                                                                                                               loop22:
                                                                                                               while(_loc15_ || this)
                                                                                                               {
                                                                                                                  §§push(5);
                                                                                                                  loop23:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     addr812:
                                                                                                                     addr946:
                                                                                                                     while(_loc15_ || param1)
                                                                                                                     {
                                                                                                                        _loc10_ = §§pop();
                                                                                                                        continue loop23;
                                                                                                                     }
                                                                                                                     addr946:
                                                                                                                     addr947:
                                                                                                                     addr925:
                                                                                                                     _loc8_ = §§pop();
                                                                                                                     §&##§ = Math.sqrt(_loc7_ * _loc7_ + _loc8_ * _loc8_);
                                                                                                                     return false;
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc14_ && this)
                                                                                                                     {
                                                                                                                        continue loop22;
                                                                                                                     }
                                                                                                                     §§goto(addr741);
                                                                                                                     §§push(§7"1§ > -90 - _loc9_ + _loc10_);
                                                                                                                     §§goto(addr761);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§?t§)
                                                                                                      {
                                                                                                         §§goto(addr824);
                                                                                                      }
                                                                                                      §§goto(addr354);
                                                                                                   }
                                                                                                   if(_loc14_ && param2)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§pop();
                                                                                                   §§goto(addr634);
                                                                                                }
                                                                                             }
                                                                                             addr845:
                                                                                          }
                                                                                          §§goto(addr872);
                                                                                       }
                                                                                       if(!(_loc15_ || param2))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §§goto(addr281);
                                                                                    }
                                                                                    if(_loc14_ && param3)
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    §§goto(addr354);
                                                                                 }
                                                                              }
                                                                              while(_loc15_ || param1)
                                                                              {
                                                                                 §§goto(addr845);
                                                                                 §§push(Boolean(_loc5_));
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr965);
                                                            §§push(this.§6"9§);
                                                            if(!(_loc15_ || param3))
                                                            {
                                                               continue;
                                                            }
                                                            §&##§ = _loc13_;
                                                            §§goto(addr402);
                                                         }
                                                      }
                                                      §§goto(addr911);
                                                   }
                                                   §§goto(addr820);
                                                }
                                             }
                                             param2 = §§pop();
                                          }
                                       }
                                    }
                                    else
                                    {
                                       addr101:
                                       if(§,!?§.length > 0)
                                       {
                                          if(!_loc14_)
                                          {
                                             §§goto(addr107);
                                          }
                                          §§goto(addr177);
                                       }
                                    }
                                    §§goto(addr177);
                                 }
                                 §§goto(addr98);
                              }
                              §§goto(addr177);
                           }
                           §§goto(addr101);
                        }
                     }
                     §§goto(addr94);
                  }
                  addr98:
                  return true;
               }
            }
            §§goto(addr86);
         }
         §§goto(addr81);
      }
      
      public function §`#5§(param1:Number) : §`"]§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§`"]§ = null;
         _loc2_ = §,!?§[§72§];
         if(_loc3_ || _loc3_)
         {
            if(_loc2_.§<z§ < 1)
            {
               while(true)
               {
                  _loc2_.§<z§ = 1;
                  addr110:
                  while(true)
                  {
                  }
               }
               addr107:
            }
            while(true)
            {
               _loc2_.scale = param1;
               addr90:
               while(true)
               {
                  if(_loc4_)
                  {
                     §§goto(addr107);
                  }
               }
               §§goto(addr110);
            }
         }
         while(true)
         {
            §§push(_loc2_.sprite);
            loop5:
            while(true)
            {
               §§push(_loc2_.scale);
               addr84:
               while(true)
               {
                  §§pop().scaleX = §§pop();
                  continue loop5;
               }
            }
         }
      }
      
      protected function §,"F§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §@P§(§1#S§,§1#S§,true);
         }
      }
      
      override public function addNewBirdToEndOfList(param1:String, param2:Number, param3:Number, param4:Number) : §`"]§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§`"]§ = this.addSlingshotObject(param1,param2,param3,param4,this.§<!D§());
         if(_loc7_)
         {
            this.sortBirds();
         }
         return _loc5_;
      }
      
      override public function sortBirds() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:§`"]§ = null;
         if(_loc3_)
         {
            §,!?§.sort(this.§ !6§);
         }
         while(§<v§.numChildren > 0)
         {
            §<v§.removeChildAt(0);
            if(_loc4_)
            {
               break;
            }
         }
         var _loc2_:int = 0;
         if(_loc3_ || this)
         {
            while(_loc2_ < §,!?§.length)
            {
               _loc1_ = §,!?§[_loc2_];
               if(_loc3_ || _loc3_)
               {
                  §<v§.addChildAt(_loc1_.sprite,0);
                  if(_loc4_ && _loc2_)
                  {
                     continue;
                  }
               }
               _loc2_++;
            }
         }
      }
      
      private function § !6§(param1:§`"]§, param2:§`"]§) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            §§push(param1.§""J§);
            loop0:
            do
            {
               §§push(param2.§""J§);
               loop1:
               while(§§pop() >= §§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(param1.§""J§);
                     if(!_loc4_)
                     {
                        break;
                     }
                     §§push(param2.§""J§);
                     if(!_loc3_)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(!_loc3_)
                           {
                              if(!(_loc3_ && param1))
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 break loop1;
                              }
                              addr97:
                              while(true)
                              {
                                 continue loop2;
                              }
                           }
                        }
                        §§push(0);
                        if(!(_loc3_ && param1))
                        {
                           if(_loc4_ || param2)
                           {
                              return §§pop();
                           }
                           §§goto(addr96);
                        }
                        break;
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
               addr96:
               return §§pop();
            }
            while(_loc3_);
            
            return §§pop();
         }
         §§goto(addr97);
      }
      
      override protected function addSlingshotObject(param1:String, param2:Number, param3:Number, param4:Number, param5:int = -1) : §`"]§
      {
         return super.addSlingshotObject(param1,param2,param3,param4,param5);
      }
      
      private function §<!D§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§`"]§ = null;
         var _loc1_:* = 0;
         var _loc3_:int = 0;
         for each(_loc2_ in §,!?§)
         {
            if(_loc6_)
            {
               §§push(_loc2_.§""J§);
               if(!(_loc5_ && _loc1_))
               {
                  if(§§pop() <= _loc1_)
                  {
                     continue;
                  }
                  if(!(_loc6_ || _loc3_))
                  {
                     continue;
                  }
                  addr64:
                  §§push(_loc2_.§""J§);
                  if(_loc6_)
                  {
                     §§push(int(§§pop()));
                  }
               }
               _loc1_ = §§pop();
               continue;
            }
            §§goto(addr64);
         }
         return _loc1_;
      }
      
      public function get §2!z§() : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = false;
         var _loc2_:§`"]§ = §,!?§[§72§];
         if(!_loc3_)
         {
            §§push(_loc2_ is §'"3§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(§'"3§(_loc2_).§[g§);
                     addr106:
                     while(true)
                     {
                        §§push(!§§pop());
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop7:
                              while(true)
                              {
                                 §§pop();
                                 addr110:
                                 while(true)
                                 {
                                    §§push(§'"3§(_loc2_).§!#?§);
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    addr80:
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                          continue loop7;
                                       }
                                       _loc1_ = §§pop();
                                       while(_loc3_)
                                       {
                                          continue loop0;
                                       }
                                       while(true)
                                       {
                                          §§goto(addr27);
                                       }
                                    }
                                    continue loop7;
                                 }
                                 §§goto(addr64);
                              }
                           }
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       §§goto(addr80);
                                       §§push(true);
                                    }
                                    §§goto(addr110);
                                 }
                                 §§goto(addr83);
                              }
                           }
                        }
                     }
                  }
               }
               addr27:
               while(true)
               {
                  §§push(_loc1_);
                  if(_loc3_ && this)
                  {
                     continue loop8;
                  }
                  if(_loc4_ || _loc1_)
                  {
                     break;
                  }
                  addr64:
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        if(!(_loc4_ || _loc3_))
                        {
                           continue loop9;
                        }
                     }
                     continue loop6;
                  }
               }
               return §§pop();
            }
            §§goto(addr106);
         }
         §§goto(addr85);
      }
   }
}
