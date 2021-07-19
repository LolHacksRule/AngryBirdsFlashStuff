package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§%#@§;
   import §2"Y§.§2o§;
   import §2"Y§.§["$§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §]D§ extends §<!2§ implements §;!i§
   {
      
      public static const §^!k§:Number = 0.15;
      
      public static const §7"9§:String = "BLOCK_SENSOR_PIG_A";
      
      public static const §+"c§:String = "BLOCK_SENSOR_PIG_B";
      
      private static const §[#0§:Number = 2000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §^!k§ = 0.15;
            loop0:
            while(true)
            {
               §7"9§ = "BLOCK_SENSOR_PIG_A";
               do
               {
                  §+"c§ = "BLOCK_SENSOR_PIG_B";
                  continue loop0;
               }
               while(_loc2_ && _loc2_);
               
            }
         }
      }
      
      protected var §8"M§:§ "=§;
      
      protected var §8+§:§ "=§;
      
      protected var §]"@§:§0"z§;
      
      protected var §!T§:Number;
      
      protected var §7!'§:int = 0;
      
      protected var §"!C§:int = 0;
      
      protected var §@!x§:String = "lightBuff";
      
      protected var §8"b§:String = "iceExplosion";
      
      protected var §'!P§:§2o§;
      
      protected var §7[§:§!p§;
      
      protected var §0""§:Boolean;
      
      public function §]D§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number = 1.0)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && this))
         {
            this.§'!P§ = param4 as §2o§;
            while(true)
            {
               this.§]"@§ = new §0"z§(this,§%#@§(param4));
               loop1:
               for(; !(_loc8_ && param1); if(!(_loc7_ || param3))
               {
                  continue;
               },this.§7!'§ = 1,§§goto(addr56))
               {
                  this.initializeObjectBehaviorLogic();
                  loop2:
                  while(true)
                  {
                     super(param1,param2,param3,param4,param5,param6);
                     do
                     {
                        if(_loc7_)
                        {
                           if(param3.GetGravity().Length() <= 0)
                           {
                              break;
                           }
                           if(!_loc8_)
                           {
                              continue loop1;
                           }
                           continue;
                        }
                        continue loop2;
                     }
                     while(_loc8_ && param2);
                     
                     return;
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      protected function get §9,§() : String
      {
         return §7"9§;
      }
      
      protected function get §<G§() : String
      {
         return §+"c§;
      }
      
      public function get §3!$§() : Boolean
      {
         return this.§0""§;
      }
      
      public function set §3!$§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§0""§ = param1;
         }
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            super.createPhysicsBody(param1,param2);
         }
         do
         {
            §3!t§().SetLinearDamping(§^!k§);
         }
         while(_loc3_ && _loc3_);
         
      }
      
      protected function initializeObjectBehaviorLogic() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§7[§ = new §!p§(this.§'!P§);
         }
      }
      
      override protected function initObjectRenderer() : §,D§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§`#§ = new §`#§(animation,sprite);
         if(!_loc2_)
         {
            _loc1_.§""E§ = this.§]"@§;
         }
         return _loc1_;
      }
      
      protected function §!c§(param1:§7B§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§["$§ = null;
         if(_loc4_)
         {
            §§push(Boolean(param1));
            if(_loc4_ || param1)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr35:
                     §§pop();
                     if(_loc4_ || _loc2_)
                     {
                        §§push(param1.levelItem);
                        if(_loc4_)
                        {
                           §§push(§§pop() is §["$§);
                           if(!(_loc3_ && param1))
                           {
                              addr66:
                              if(§§pop())
                              {
                                 addr69:
                                 _loc2_ = param1.levelItem as §["$§;
                                 if(!_loc3_)
                                 {
                                    §§push(_loc2_.§@"8§("isBubble"));
                                    if(_loc4_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc4_)
                                          {
                                             §§push(true);
                                          }
                                          else
                                          {
                                             addr96:
                                             return false;
                                             addr95:
                                          }
                                       }
                                       §§goto(addr95);
                                    }
                                    return §§pop();
                                 }
                              }
                              §§goto(addr95);
                           }
                           §§goto(addr96);
                        }
                     }
                     §§goto(addr69);
                  }
               }
               §§goto(addr66);
            }
            §§goto(addr35);
         }
         §§goto(addr69);
      }
      
      override public function attachedJointRemoved(param1:§7B§ = null) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && _loc3_))
         {
            super.attachedJointRemoved(param1);
            if(_loc4_)
            {
               if(this.§!c§(param1))
               {
                  if(_loc4_ || this)
                  {
                     addr49:
                     var _loc2_:*;
                     §§push((_loc2_ = this).§"!C§);
                     if(_loc4_ || _loc2_)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!_loc5_)
                     {
                        _loc2_.§"!C§ = _loc3_;
                     }
                     if(_loc4_ || _loc2_)
                     {
                     }
                  }
                  §§goto(addr89);
               }
               this.setFrozen(true);
            }
            addr89:
            return;
         }
         §§goto(addr49);
      }
      
      override public function attachedJointCreated(param1:§7B§ = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super.attachedJointCreated(param1);
            if(!(_loc4_ && param1))
            {
               addr29:
               if(this.§!c§(param1))
               {
                  if(_loc5_)
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§"!C§);
                     if(_loc5_ || this)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(_loc5_ || param1)
                     {
                        _loc2_.§"!C§ = _loc3_;
                     }
                     if(_loc4_)
                     {
                     }
                     §§goto(addr85);
                  }
               }
               this.setFrozen(false);
            }
            addr85:
            return;
         }
         §§goto(addr29);
      }
      
      public function §7`§(param1:§7B§, param2:§ "=§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(param2 != this.§8"M§)
            {
               if(param2 == this.§8+§)
               {
                  if(!_loc3_)
                  {
                     if(_loc4_ || param2)
                     {
                        §§push(this.§]"@§);
                        if(_loc4_ || param1)
                        {
                           §§pop().§7!S§(param1);
                           addr61:
                           if(!(_loc3_ && param1))
                           {
                              addr20:
                              return;
                              addr68:
                           }
                           else
                           {
                              addr83:
                              §§push(this.§]"@§);
                           }
                           §§goto(addr20);
                        }
                        §§pop().§3"U§(param1);
                     }
                     §§goto(addr20);
                  }
                  §§goto(addr61);
               }
               §§goto(addr20);
            }
            §§goto(addr83);
         }
         §§goto(addr68);
      }
      
      public function §0">§(param1:§7B§, param2:§ "=§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(param2 == this.§8"M§)
            {
               if(_loc3_)
               {
                  addr84:
                  this.§]"@§.§0",§(param1);
               }
               addr86:
            }
            else if(param2 == this.§8+§)
            {
               if(_loc3_ || this)
               {
                  if(_loc3_ || _loc3_)
                  {
                     addr54:
                     §§push(this.§]"@§);
                     if(_loc3_ || _loc3_)
                     {
                        §§pop().§6"u§(param1);
                        addr19:
                        return;
                        addr65:
                     }
                     else
                     {
                        §§goto(addr84);
                     }
                     §§goto(addr19);
                  }
                  §§goto(addr86);
               }
               §§goto(addr65);
            }
            §§goto(addr19);
         }
         §§goto(addr54);
      }
      
      override public function enteredSensor(param1:§1#E§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super.enteredSensor(param1);
            if(!(_loc4_ && _loc2_))
            {
               if(param1 is §"M§)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     addr50:
                     var _loc2_:*;
                     §§push((_loc2_ = this).§7!'§);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!(_loc4_ && this))
                     {
                        _loc2_.§7!'§ = _loc3_;
                     }
                     if(_loc4_ && _loc2_)
                     {
                     }
                     §§goto(addr95);
                  }
                  this.setFrozen(false);
               }
            }
            addr95:
            return;
         }
         §§goto(addr50);
      }
      
      override public function leftSensor(param1:§1#E§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super.leftSensor(param1);
            if(_loc4_ || param1)
            {
               if(param1 is §"M§)
               {
                  if(!(_loc5_ && this))
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§7!'§);
                     if(!_loc5_)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!_loc5_)
                     {
                        _loc2_.§7!'§ = _loc3_;
                     }
                     if(_loc4_)
                     {
                        this.setFrozen(true);
                     }
                  }
               }
            }
         }
      }
      
      override public function updateBeforeRemoving(param1:§;$§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(param1)
            {
               loop0:
               while(true)
               {
                  if(this.§8"M§)
                  {
                     while(true)
                     {
                        param1.removeObject(this.§8"M§);
                        addr71:
                        while(true)
                        {
                           this.§8"M§ = null;
                           addr60:
                           while(true)
                           {
                              if(!_loc5_)
                              {
                                 §§goto(addr74);
                              }
                           }
                        }
                     }
                     addr67:
                  }
                  loop2:
                  while(this.§8+§)
                  {
                     loop3:
                     while(_loc5_)
                     {
                        if(_loc5_ || param1)
                        {
                           param1.removeObject(this.§8+§);
                           while(!_loc6_)
                           {
                              if(_loc5_ || param1)
                              {
                                 this.§8+§ = null;
                                 if(_loc5_)
                                 {
                                    if(_loc5_)
                                    {
                                       if(true)
                                       {
                                          break loop2;
                                       }
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                                 continue;
                                 continue;
                              }
                              continue loop0;
                           }
                           §§goto(addr71);
                        }
                        else
                        {
                           §§goto(addr67);
                        }
                     }
                     §§goto(addr60);
                  }
                  var _loc2_:Number = §3!t§().GetPosition().x;
                  var _loc3_:Number = §3!t§().GetPosition().y;
                  var _loc4_:Number = §"#,§();
                  if(_loc5_)
                  {
                     this.§`A§(param1,_loc2_,_loc3_,_loc4_);
                     addr146:
                     this.§7[§.§+"M§(param1,_loc2_,_loc3_,_loc4_);
                     addr151:
                     if(!(_loc6_ && _loc2_))
                     {
                        §§push(this.§7[§);
                        if(_loc5_ || _loc2_)
                        {
                           §§pop().§4c§(param1,_loc2_,_loc3_);
                           super.updateBeforeRemoving(param1);
                           if(_loc5_ || _loc2_)
                           {
                              if(_loc6_ && _loc2_)
                              {
                                 §§goto(addr151);
                              }
                              return;
                              addr127:
                           }
                           addr142:
                           §§goto(addr142);
                        }
                        §§goto(addr146);
                     }
                     addr175:
                     §§goto(addr175);
                  }
                  §§goto(addr127);
               }
            }
            addr74:
            return;
         }
         §§goto(addr71);
      }
      
      protected function §`A§(param1:§;$§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:Number = §3!t§().GetPosition().x;
         var _loc6_:Number = §3!t§().GetPosition().y;
         if(!(_loc8_ && param3))
         {
            param4 = §"#,§();
         }
         while(this.§'!P§.spriteScore)
         {
            if(_loc7_ || param3)
            {
               param1.addObject(this.§'!P§.spriteScore,_loc5_,_loc6_,0,§;=§.§""3§,false,false,false,3,true);
            }
            if(!(_loc8_ && param3))
            {
               break;
            }
         }
      }
      
      protected function §!"M§(param1:§;$§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(!_loc4_)
         {
            if(this.§8"b§)
            {
               loop0:
               while(true)
               {
                  §§push(Number(§3!t§().GetPosition().x));
                  while(true)
                  {
                     _loc2_ = §§pop();
                     loop2:
                     while(true)
                     {
                        §§push(Number(§3!t§().GetPosition().y));
                        if(!_loc5_)
                        {
                           break;
                        }
                        _loc3_ = §§pop();
                        do
                        {
                           if(_loc5_ || _loc3_)
                           {
                              if(_loc5_)
                              {
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop2;
                        }
                        while(param1.addObject(this.§8"b§,_loc2_,_loc3_,0,§;=§.§""3§,false,true,false), _loc4_);
                        
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      override protected function setDamageState(param1:Number, param2:§;$§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§]"@§);
            while(§§pop())
            {
               if(_loc3_)
               {
                  §§push(this.§]"@§);
                  loop1:
                  while(true)
                  {
                     §§push(§§pop().isFrozen);
                     if(!(_loc4_ && _loc3_))
                     {
                        if(!§§pop())
                        {
                           continue;
                        }
                        if(!_loc4_)
                        {
                           §§push(false);
                           break;
                        }
                        addr89:
                        addr89:
                        while(true)
                        {
                           continue loop1;
                        }
                     }
                     break;
                  }
                  return §§pop();
               }
               §§goto(addr89);
            }
            return super.setDamageState(param1,param2);
         }
         §§goto(addr89);
      }
      
      override protected function normalize() : void
      {
      }
      
      override public function scream() : void
      {
      }
      
      override public function blink() : void
      {
      }
      
      protected function §#z§(param1:§;$§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Number = §3!t§().GetPosition().x;
         var _loc3_:Number = §3!t§().GetPosition().y;
         if(_loc5_)
         {
            §§push(this.§8"M§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop4:
                  while(true)
                  {
                     §§push(this.§8+§);
                     loop5:
                     while(!§§pop())
                     {
                        if(!_loc4_)
                        {
                           this.§8+§ = param1.addObject(this.§<G§,_loc2_,_loc3_,0,§;=§.§""3§) as § "=§;
                        }
                        loop6:
                        while(!(_loc4_ && _loc3_))
                        {
                           continue loop5;
                           §§pop().§=?§ = this;
                           if(!(_loc5_ || param1))
                           {
                              continue;
                           }
                           if(!_loc4_)
                           {
                              break loop5;
                           }
                           addr97:
                           addr108:
                           while(!(_loc4_ && param1))
                           {
                              continue loop4;
                           }
                           while(true)
                           {
                              §§push(this.§8+§);
                              if(_loc4_)
                              {
                                 continue loop5;
                              }
                              §§goto(addr41);
                           }
                           while(true)
                           {
                              this.§8"M§ = param1.addObject(this.§9,§,_loc2_,_loc3_,0,§;=§.§""3§) as § "=§;
                              break loop6;
                           }
                        }
                        continue loop0;
                     }
                     return;
                  }
               }
               §§goto(addr108);
            }
         }
         §§goto(addr89);
      }
      
      protected function §5!3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§8"M§);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§8"M§);
                     addr90:
                     while(true)
                     {
                        §§pop().§3!t§().SetPosition(§3!t§().GetPosition());
                        addr95:
                        while(true)
                        {
                        }
                     }
                  }
                  addr88:
               }
               while(true)
               {
                  §§push(this.§8+§);
                  if(!(_loc2_ && this))
                  {
                     if(§§pop())
                     {
                        if(_loc1_ || _loc2_)
                        {
                           if(!(_loc1_ || this))
                           {
                              continue;
                           }
                           addr65:
                           this.§8+§.§3!t§().SetPosition(§3!t§().GetPosition());
                        }
                        if(_loc1_)
                        {
                           break;
                        }
                        §§goto(addr88);
                     }
                     §§goto(addr24);
                  }
                  §§goto(addr65);
               }
               addr24:
               return;
            }
            §§goto(addr90);
         }
         §§goto(addr95);
      }
      
      public function §"#_§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§'!P§.§-Z§(param1);
         }
      }
      
      protected function §!"a§(param1:§;$§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§!"M§(param1);
         }
         §§push(this.§'!P§.§5!R§);
         if(_loc3_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc3_)
         {
            if(_loc2_)
            {
               if(!_loc4_)
               {
                  this.§'!P§.§-Z§(_loc2_);
               }
            }
         }
      }
      
      protected function §!#X§(param1:Number, param2:§;$§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            §§push(this.§!T§);
            loop0:
            while(true)
            {
               if(§§pop() == §[#0§)
               {
                  while(true)
                  {
                     this.§!"a§(param2);
                     addr111:
                     while(true)
                     {
                     }
                  }
                  addr108:
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§!T§);
                  if(_loc4_ || param2)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§!T§ = §§pop();
                  addr91:
                  addr25:
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        continue loop0;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr108);
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.update(param1,param2);
            loop0:
            while(true)
            {
               if(param2)
               {
                  continue;
               }
               addr79:
               loop2:
               while(true)
               {
                  §§push(this.§]"@§);
                  loop3:
                  while(true)
                  {
                     §§pop().update(param1);
                     loop4:
                     while(true)
                     {
                        §§push(this.§]"@§);
                        if(!_loc3_)
                        {
                           if(§§pop().isFrozen)
                           {
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    break loop4;
                                    addr71:
                                 }
                                 this.§!#X§(param1,param2);
                                 while(_loc4_ || this)
                                 {
                                 }
                                 continue loop2;
                              }
                              addr65:
                           }
                           loop7:
                           while(true)
                           {
                              this.§7[§.update(param1,param2);
                              while(_loc4_)
                              {
                                 this.§5!3§();
                                 if(_loc3_)
                                 {
                                    continue;
                                 }
                                 if(_loc4_)
                                 {
                                    break loop7;
                                 }
                                 §§goto(addr65);
                              }
                              §§goto(addr71);
                           }
                           if(_loc4_ || param2)
                           {
                              return;
                           }
                           continue;
                        }
                        continue loop3;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr79);
         }
      }
      
      protected function setFrozen(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§]"@§);
            loop0:
            while(true)
            {
               §§push(§§pop().isFrozen);
               loop1:
               while(!§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§7!'§);
                     loop3:
                     while(true)
                     {
                        §§push(0);
                        loop4:
                        while(true)
                        {
                           §§push(§§pop() <= §§pop());
                           if(!(_loc3_ && this))
                           {
                              §§push(§§pop());
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    loop22:
                                    while(!_loc3_)
                                    {
                                       §§pop();
                                       while(true)
                                       {
                                          §§push(this.§"!C§);
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                          §§push(0);
                                          if(!(_loc3_ && param1))
                                          {
                                             §§push(§§pop() <= §§pop());
                                             while(_loc2_ || this)
                                             {
                                             }
                                             continue loop22;
                                          }
                                          continue loop4;
                                       }
                                       continue loop3;
                                    }
                                    continue loop1;
                                    addr210:
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    if(§§pop())
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          §§pop();
                                          loop8:
                                          while(true)
                                          {
                                             loop16:
                                             while(true)
                                             {
                                                §§push(param1);
                                                if(_loc2_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                }
                                                loop9:
                                                while(true)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      if(!(_loc2_ || param1))
                                                      {
                                                         break;
                                                         addr156:
                                                      }
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            §§push(this.§]"@§);
                                                            if(!_loc3_)
                                                            {
                                                               §§push(§§pop().isFrozen);
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           this.§!T§ = §[#0§;
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§]"@§);
                                                                              addr125:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc2_ || _loc2_)
                                                                                 {
                                                                                    §§push(true);
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().isFrozen = §§pop();
                                                                                       addr134:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc3_ && param1))
                                                                                          {
                                                                                             §2N§.setAnimation(§`#§.§0!D§);
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc3_ && this))
                                                                                                {
                                                                                                   if(_loc2_ || this)
                                                                                                   {
                                                                                                      addr121:
                                                                                                      break;
                                                                                                   }
                                                                                                   break loop1;
                                                                                                }
                                                                                                addr158:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§]"@§);
                                                                                                }
                                                                                                §§goto(addr141);
                                                                                             }
                                                                                             addr141:
                                                                                             addr19:
                                                                                             return;
                                                                                             addr47:
                                                                                             addr97:
                                                                                          }
                                                                                          continue loop15;
                                                                                       }
                                                                                    }
                                                                                    addr133:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop17;
                                                                                 }
                                                                              }
                                                                              continue loop15;
                                                                           }
                                                                           addr167:
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                     continue loop16;
                                                                  }
                                                                  §§goto(addr47);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr76:
                                                               if(_loc2_)
                                                               {
                                                                  if(!_loc2_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(false);
                                                                  if(!(_loc3_ && _loc2_))
                                                                  {
                                                                     §§pop().isFrozen = §§pop();
                                                                     while(!_loc3_)
                                                                     {
                                                                        §2N§.setAnimation(§`#§.§8!h§);
                                                                        if(_loc3_ && _loc2_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(_loc2_ || this)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 continue loop2;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr223);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr167);
                                                                        }
                                                                        §§goto(addr19);
                                                                     }
                                                                     §§goto(addr134);
                                                                     addr89:
                                                                  }
                                                                  §§goto(addr133);
                                                               }
                                                            }
                                                            §§goto(addr125);
                                                         }
                                                         §§goto(addr158);
                                                      }
                                                      continue loop0;
                                                   }
                                                   continue loop7;
                                                }
                                                §§goto(addr182);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr156);
                                 }
                              }
                           }
                           §§goto(addr210);
                        }
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr121);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            super.render(param1,param2,param3);
            do
            {
               sprite.rotation = §<#W§ + this.§7[§.§3"a§;
            }
            while(!(_loc4_ || param3));
            
         }
      }
      
      override public function applyDamage(param1:Number, param2:§;$§, param3:§&#=§, param4:Boolean = true) : Number
      {
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override protected function playCollisionSound() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§7[§.playCollisionSound();
         }
      }
      
      override protected function playDamagedSound() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§7[§.playDamagedSound();
         }
      }
      
      protected function §0!e§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§'!P§.frozenKilledSound);
         if(_loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc2_)
         {
            this.§'!P§.§-Z§(_loc1_);
         }
      }
      
      override protected function playDestroyedSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!this.§]"@§.isFrozen)
            {
               this.§7[§.playDestroyedSound();
               if(!(_loc2_ || _loc1_))
               {
                  addr66:
               }
               return;
            }
            if(!_loc1_)
            {
               addr64:
               this.§0!e§();
            }
            §§goto(addr66);
         }
         §§goto(addr64);
      }
      
      override protected function addDestructionParticles(param1:§;$§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(!param1)
            {
               if(_loc5_ || this)
               {
                  §§goto(addr37);
               }
            }
            var _loc2_:Number = §3!t§().GetPosition().x;
            var _loc3_:Number = §3!t§().GetPosition().y;
            var _loc4_:Number = §"#,§();
            if(_loc5_)
            {
               this.§7[§.§]T§(param1,_loc2_,_loc3_,_loc4_);
            }
            return;
         }
         addr37:
      }
   }
}
