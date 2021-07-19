package §]">§
{
   import §"!&§.§3",§;
   import §"!&§.§5!f§;
   import §"!&§.§8X§;
   import §"!&§.§`D§;
   import §'!&§.b2World;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   
   public class §?!`§ extends §50§ implements §+o§
   {
      
      public static const §[E§:Number = 0.15;
      
      public static const §?!w§:String = "BLOCK_SENSOR_PIG_A";
      
      public static const §<"§:String = "BLOCK_SENSOR_PIG_B";
      
      private static const §0!S§:Number = 2000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §[E§ = 0.15;
            loop0:
            while(true)
            {
               §?!w§ = "BLOCK_SENSOR_PIG_A";
               while(true)
               {
                  §<"§ = "BLOCK_SENSOR_PIG_B";
                  while(!(_loc2_ && _loc1_))
                  {
                     continue loop0;
                     §0!S§ = 2000;
                     if(_loc1_ || _loc1_)
                     {
                        return;
                        addr44:
                     }
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      protected var §,!?§:§[!m§;
      
      protected var §3!!§:§[!m§;
      
      protected var §""1§:§;W§;
      
      protected var §--§:Number;
      
      protected var §"6§:int = 0;
      
      protected var §6E§:int = 0;
      
      protected var §&0§:String = "lightBuff";
      
      protected var §-!z§:String = "iceExplosion";
      
      protected var §]@§:§5!f§;
      
      protected var §7!w§:§"!B§;
      
      protected var §<!A§:Boolean;
      
      public function §?!`§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0)
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         if(_loc9_ || this)
         {
            this.§]@§ = param4 as §5!f§;
         }
         while(true)
         {
            this.§""1§ = new §;W§(this,§3",§(param4));
            loop1:
            while(true)
            {
               this.initializeObjectBehaviorLogic();
               loop2:
               while(true)
               {
                  super(param1,param2,param3,param4,param5,param6,param7,param8);
                  addr75:
                  addr24:
                  while(true)
                  {
                     if(!(_loc10_ && param2))
                     {
                        continue loop1;
                     }
                     continue loop2;
                  }
                  return;
               }
            }
            if(_loc10_ && param1)
            {
               continue;
            }
            this.§"6§ = 1;
            §§goto(addr61);
         }
      }
      
      protected function get §7b§() : String
      {
         return §?!w§;
      }
      
      protected function get §6!R§() : String
      {
         return §<"§;
      }
      
      public function get §@k§() : Boolean
      {
         return this.§<!A§;
      }
      
      public function set §@k§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§<!A§ = param1;
         }
      }
      
      override protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.createPhysicsBody(param1,param2);
         }
         do
         {
            §^!z§().SetLinearDamping(§[E§);
         }
         while(_loc3_);
         
      }
      
      protected function initializeObjectBehaviorLogic() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§7!w§ = new §"!B§(this.§]@§);
         }
      }
      
      override protected function initObjectRenderer() : §&5§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§;"3§ = new §;"3§(animation,sprite);
         if(_loc2_ || _loc3_)
         {
            _loc1_.§6m§ = this.§""1§;
         }
         return _loc1_;
      }
      
      protected function §]D§(param1:§<!=§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§`D§ = null;
         if(!_loc4_)
         {
            §§push(Boolean(param1));
            if(_loc3_ || this)
            {
               if(§§pop())
               {
                  if(_loc3_ || _loc2_)
                  {
                     §§pop();
                     if(_loc3_)
                     {
                        addr52:
                        §§push(param1.levelItem);
                        if(!_loc4_)
                        {
                           §§push(§§pop() is §`D§);
                           if(_loc3_)
                           {
                              addr60:
                              if(§§pop())
                              {
                                 addr63:
                                 _loc2_ = param1.levelItem as §`D§;
                                 if(!_loc4_)
                                 {
                                    §§push(_loc2_.§-0§("isBubble"));
                                    if(_loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             §§push(true);
                                          }
                                          else
                                          {
                                             addr95:
                                             return false;
                                             addr94:
                                          }
                                       }
                                       §§goto(addr94);
                                    }
                                    return §§pop();
                                 }
                              }
                              §§goto(addr94);
                           }
                           §§goto(addr95);
                        }
                     }
                     §§goto(addr63);
                  }
                  §§goto(addr95);
               }
            }
            §§goto(addr60);
         }
         §§goto(addr52);
      }
      
      override public function attachedJointRemoved(param1:§<!=§ = null) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super.attachedJointRemoved(param1);
            if(!(_loc5_ && _loc3_))
            {
               if(this.§]D§(param1))
               {
                  if(!(_loc5_ && this))
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§6E§);
                     if(_loc4_ || this)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc3_:* = §§pop();
                     if(_loc4_)
                     {
                        _loc2_.§6E§ = _loc3_;
                     }
                     if(!_loc4_)
                     {
                     }
                  }
                  §§goto(addr84);
               }
               this.§1!<§(true);
            }
         }
         addr84:
      }
      
      override public function attachedJointCreated(param1:§<!=§ = null) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc2_))
         {
            super.attachedJointCreated(param1);
            if(_loc5_ || _loc3_)
            {
               addr34:
               if(this.§]D§(param1))
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§6E§);
                     if(!(_loc4_ && _loc2_))
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(_loc5_)
                     {
                        _loc2_.§6E§ = _loc3_;
                     }
                     if(!(_loc4_ && _loc3_))
                     {
                        addr92:
                        this.§1!<§(false);
                     }
                  }
                  return;
               }
            }
            §§goto(addr92);
         }
         §§goto(addr34);
      }
      
      public function §34§(param1:§<!=§, param2:§[!m§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            if(param2 == this.§,!?§)
            {
               if(_loc4_ || this)
               {
                  addr85:
                  this.§""1§.§try §(param1);
               }
               addr87:
            }
            else if(param2 == this.§3!!§)
            {
               if(!_loc3_)
               {
                  §§push(this.§""1§);
                  if(!(_loc3_ && this))
                  {
                     §§pop().§3J§(param1);
                     §§goto(addr59);
                  }
                  else
                  {
                     §§goto(addr85);
                  }
               }
               addr59:
               if(_loc3_)
               {
               }
               §§goto(addr25);
            }
            addr25:
            return;
         }
         §§goto(addr85);
      }
      
      public function §0"<§(param1:§<!=§, param2:§[!m§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param2 == this.§,!?§)
            {
               if(_loc3_ || param1)
               {
                  addr79:
                  this.§""1§.§,"8§(param1);
               }
               addr81:
            }
            else if(param2 == this.§3!!§)
            {
               if(!(_loc4_ && this))
               {
                  §§push(this.§""1§);
                  if(!_loc4_)
                  {
                     §§pop().§#Y§(param1);
                     §§goto(addr53);
                  }
                  else
                  {
                     §§goto(addr79);
                  }
               }
               addr53:
               if(_loc4_)
               {
               }
               §§goto(addr19);
            }
            addr19:
            return;
         }
         §§goto(addr79);
      }
      
      override public function enteredSensor(param1:§3=§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && _loc2_))
         {
            super.enteredSensor(param1);
            if(!_loc4_)
            {
               if(param1 is §5a§)
               {
                  if(_loc5_ || param1)
                  {
                     var _loc2_:*;
                     §§push((_loc2_ = this).§"6§);
                     if(_loc5_)
                     {
                        §§push(§§pop() + 1);
                     }
                     var _loc3_:* = §§pop();
                     if(_loc5_)
                     {
                        _loc2_.§"6§ = _loc3_;
                     }
                     if(!_loc4_)
                     {
                        this.§1!<§(false);
                     }
                  }
               }
            }
         }
      }
      
      override public function leftSensor(param1:§3=§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super.leftSensor(param1);
            if(_loc5_)
            {
               if(param1 is §5a§)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     addr45:
                     var _loc2_:*;
                     §§push((_loc2_ = this).§"6§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() - 1);
                     }
                     var _loc3_:* = §§pop();
                     if(!_loc4_)
                     {
                        _loc2_.§"6§ = _loc3_;
                     }
                     if(!_loc4_)
                     {
                        addr72:
                        this.§1!<§(true);
                     }
                  }
                  §§goto(addr72);
               }
               return;
            }
            §§goto(addr45);
         }
         §§goto(addr72);
      }
      
      override public function updateBeforeRemoving(param1:§;U§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || _loc2_)
         {
            if(this.§,!?§)
            {
               loop0:
               while(true)
               {
                  param1.§!!m§(this.§,!?§);
                  addr92:
                  while(true)
                  {
                     this.§,!?§ = null;
                     continue loop0;
                  }
               }
            }
            §§goto(addr38);
         }
         §§goto(addr36);
      }
      
      protected function §-!c§(param1:§;U§, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Number = §^!z§().GetPosition().x;
         var _loc6_:Number = §^!z§().GetPosition().y;
         if(_loc8_)
         {
            param4 = §+!c§();
            while(true)
            {
               this.§7!w§.§@<§(param1,_loc5_,_loc6_,param4);
               addr55:
               if(!(_loc8_ || param2))
               {
                  continue;
               }
               param1.addObject(this.§]@§.spriteScore,_loc5_,_loc6_,0,§-%§.§;!J§,false,false,false,3,true);
               addr32:
               return;
               addr77:
            }
         }
         while(this.§]@§.spriteScore)
         {
            if(!_loc7_)
            {
               if(!_loc8_)
               {
                  continue;
               }
               §§goto(addr55);
            }
            §§goto(addr77);
         }
         §§goto(addr32);
      }
      
      protected function §`#§(param1:§;U§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         if(_loc5_)
         {
            if(this.§-!z§)
            {
               loop0:
               do
               {
                  §§push(Number(§^!z§().GetPosition().x));
                  while(true)
                  {
                     _loc2_ = §§pop();
                     while(true)
                     {
                        §§push(Number(§^!z§().GetPosition().y));
                        if(!(_loc5_ || param1))
                        {
                           break;
                        }
                        _loc3_ = §§pop();
                        while(!_loc4_)
                        {
                           param1.addObject(this.§-!z§,_loc2_,_loc3_,0,§-%§.§;!J§,false,true,false);
                           if(!_loc4_)
                           {
                              continue loop0;
                           }
                        }
                     }
                  }
               }
               while(!(_loc5_ || _loc3_));
               
               addr60:
            }
            return;
         }
         §§goto(addr60);
      }
      
      override protected function setDamageState(param1:Number, param2:§;U§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.§""1§);
            loop0:
            while(§§pop())
            {
               while(true)
               {
                  §§push(this.§""1§);
                  while(true)
                  {
                     §§push(§§pop().§;"D§);
                     if(!(_loc3_ || this))
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        addr97:
                        §§push(false);
                        break;
                     }
                     loop3:
                     while(true)
                     {
                        §§push(this.§""1§);
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue loop0;
                        addr99:
                        if(!(_loc3_ || param2))
                        {
                           continue loop0;
                        }
                        §§pop().setDamageState(param1);
                        if(_loc3_ || param2)
                        {
                           if(!(_loc4_ && param1))
                           {
                              if(_loc4_ && _loc3_)
                              {
                                 §§goto(addr76);
                              }
                              §§goto(addr72);
                           }
                           §§goto(addr97);
                        }
                        while(true)
                        {
                           continue loop3;
                        }
                     }
                  }
                  return §§pop();
               }
               break;
            }
            return super.setDamageState(param1,param2);
         }
         §§goto(addr99);
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
      
      protected function §^t§(param1:§;U§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Number = §^!z§().GetPosition().x;
         var _loc3_:Number = §^!z§().GetPosition().y;
         if(_loc5_)
         {
            §§push(this.§,!?§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§3!!§);
                     loop3:
                     while(!§§pop())
                     {
                        loop4:
                        while(_loc5_)
                        {
                           if(!_loc4_)
                           {
                              this.§3!!§ = param1.addObject(this.§6!R§,_loc2_,_loc3_,0,§-%§.§;!J§) as §[!m§;
                              while(!_loc4_)
                              {
                                 §§push(this.§3!!§);
                                 if(_loc5_ || _loc2_)
                                 {
                                    §§pop().§9J§ = this;
                                    if(!_loc4_)
                                    {
                                       if(_loc5_ || _loc2_)
                                       {
                                          break loop3;
                                       }
                                       continue loop4;
                                    }
                                    continue;
                                 }
                                 continue loop3;
                              }
                              continue loop0;
                           }
                           addr103:
                           while(true)
                           {
                              this.§,!?§ = param1.addObject(this.§7b§,_loc2_,_loc3_,0,§-%§.§;!J§) as §[!m§;
                              continue loop0;
                           }
                        }
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                     return;
                  }
                  addr68:
               }
               §§goto(addr103);
            }
            addr102:
         }
         while(true)
         {
            §§push(this.§,!?§);
            if(_loc5_)
            {
               §§pop().§9J§ = this;
               §§goto(addr99);
            }
            else
            {
               §§goto(addr102);
            }
         }
      }
      
      protected function §1E§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§,!?§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§,!?§);
                     addr91:
                     while(true)
                     {
                        §§pop().§^!z§().SetPosition(§^!z§().GetPosition());
                        addr96:
                        while(true)
                        {
                        }
                     }
                     §§goto(addr61);
                  }
               }
               while(true)
               {
                  §§push(this.§3!!§);
                  if(_loc2_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_ || _loc1_)
                        {
                           if(_loc1_)
                           {
                              continue;
                           }
                           while(true)
                           {
                              §§push(this.§3!!§);
                              addr56:
                              while(true)
                              {
                                 §§pop().§^!z§().SetPosition(§^!z§().GetPosition());
                              }
                           }
                        }
                        addr61:
                        §§goto(addr20);
                     }
                     addr20:
                     while(_loc1_ && _loc1_)
                     {
                        continue loop0;
                     }
                     return;
                  }
                  §§goto(addr56);
               }
               §§goto(addr68);
            }
            §§goto(addr91);
         }
         §§goto(addr54);
      }
      
      public function playSound(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§]@§.playSoundLua(param1);
         }
      }
      
      protected function § "&§(param1:§;U§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            this.§`#§(param1);
         }
         §§push(this.§]@§.§#!a§);
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || this)
         {
            if(_loc2_)
            {
               if(_loc3_ || _loc3_)
               {
                  addr69:
                  this.§]@§.playSoundLua(_loc2_);
               }
            }
            return;
         }
         §§goto(addr69);
      }
      
      protected function §4" §(param1:Number, param2:§;U§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            §§push(this.§--§);
            loop0:
            while(true)
            {
               if(§§pop() == §0!S§)
               {
                  while(true)
                  {
                     this.§ "&§(param2);
                     addr105:
                     while(true)
                     {
                     }
                  }
                  addr102:
               }
               while(true)
               {
                  §§push(this);
                  §§push(this.§--§);
                  if(_loc3_ || param2)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§--§ = §§pop();
                  loop3:
                  while(true)
                  {
                     if(_loc3_)
                     {
                        continue loop0;
                     }
                     addr58:
                     if(_loc4_ && param1)
                     {
                        continue;
                     }
                     health = 0;
                     while(_loc3_)
                     {
                        this.§,0§();
                        if(_loc3_ || param1)
                        {
                           break loop3;
                        }
                     }
                     §§goto(addr102);
                  }
                  addr24:
                  return;
               }
            }
         }
         §§goto(addr105);
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            super.update(param1,param2);
         }
         while(true)
         {
            if(param2)
            {
               if(!_loc4_)
               {
                  this.§^t§(param2);
               }
               while(true)
               {
                  addr45:
                  if(!(_loc4_ && this))
                  {
                     return;
                  }
               }
               addr117:
            }
            loop2:
            while(true)
            {
               §§push(this.§""1§);
               loop3:
               while(true)
               {
                  §§pop().update(param1);
                  loop4:
                  while(true)
                  {
                     §§push(this.§""1§);
                     if(!(_loc4_ && _loc3_))
                     {
                        if(§§pop().§;"D§)
                        {
                           if(_loc3_)
                           {
                              if(_loc4_)
                              {
                                 continue;
                              }
                              if(!_loc3_)
                              {
                                 break loop2;
                              }
                              this.§4" §(param1,param2);
                           }
                           while(true)
                           {
                              break loop4;
                           }
                           §§goto(addr45);
                           addr92:
                        }
                        break;
                     }
                     continue loop3;
                  }
                  while(true)
                  {
                     this.§7!w§.update(param1,param2);
                     do
                     {
                        this.§1E§();
                     }
                     while(!(_loc3_ || this));
                     
                     if(_loc4_ && param1)
                     {
                        §§goto(addr92);
                     }
                     §§goto(addr45);
                  }
               }
               §§goto(addr117);
            }
         }
      }
      
      protected function §1!<§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§""1§);
            loop0:
            while(true)
            {
               §§push(§§pop().§;"D§);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§push(this.§"6§);
                        loop3:
                        while(true)
                        {
                           §§push(0);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop() <= §§pop());
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop6:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          addr236:
                                          addr259:
                                          while(!(_loc3_ && _loc2_))
                                          {
                                             §§push(this.§6E§);
                                             if(_loc3_ && _loc2_)
                                             {
                                                continue loop3;
                                             }
                                             §§push(0);
                                             if(!_loc2_)
                                             {
                                                continue loop4;
                                             }
                                             §§push(§§pop() <= §§pop());
                                          }
                                          while(true)
                                          {
                                             continue loop2;
                                          }
                                       }
                                       addr235:
                                    }
                                    while(true)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc2_ || _loc3_))
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             loop11:
                                             while(!(_loc3_ && param1))
                                             {
                                                §§pop();
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   if(_loc2_ || param1)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue loop11;
                                                      }
                                                      if(_loc2_ || this)
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         §§push(Boolean(§§pop()));
                                                         while(true)
                                                         {
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr235);
                                                      }
                                                   }
                                                   loop13:
                                                   for(; !§§pop(); if(_loc3_ && param1)
                                                   {
                                                      continue;
                                                   },if(§§pop())
                                                   {
                                                      if(!(_loc3_ && param1))
                                                      {
                                                         continue loop12;
                                                      }
                                                      §§goto(addr107);
                                                   },§§goto(addr24))
                                                   {
                                                      §§push(this.§""1§);
                                                      if(!(_loc3_ && this))
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            §§push(§§pop().§;"D§);
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               continue;
                                                            }
                                                            continue loop10;
                                                         }
                                                         while(true)
                                                         {
                                                            if(_loc2_ || this)
                                                            {
                                                               §§push(true);
                                                               while(true)
                                                               {
                                                                  §§pop().§;"D§ = §§pop();
                                                                  §§goto(addr136);
                                                               }
                                                               addr135:
                                                            }
                                                            addr173:
                                                            while(true)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  §§push(§§pop().§;"D§);
                                                                  continue loop10;
                                                               }
                                                               continue loop0;
                                                            }
                                                            continue loop10;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr98:
                                                         §§push(false);
                                                         if(_loc2_ || _loc3_)
                                                         {
                                                            §§pop().§;"D§ = §§pop();
                                                            do
                                                            {
                                                               §'%§.setAnimation(§;"3§.§,Y§);
                                                            }
                                                            while(!_loc2_);
                                                            
                                                            if(_loc2_)
                                                            {
                                                               if(_loc3_ && _loc3_)
                                                               {
                                                                  addr136:
                                                                  while(true)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        if(!(_loc3_ && _loc3_))
                                                                        {
                                                                           if(!_loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           break loop13;
                                                                        }
                                                                        addr184:
                                                                        while(true)
                                                                        {
                                                                           this.§--§ = §0!S§;
                                                                        }
                                                                     }
                                                                     while(!(_loc3_ && _loc2_))
                                                                     {
                                                                        §§push(this.§""1§);
                                                                        continue loop22;
                                                                     }
                                                                     addr258:
                                                                     return;
                                                                     continue loop19;
                                                                  }
                                                               }
                                                               §§goto(addr24);
                                                            }
                                                            addr24:
                                                            §'%§.setAnimation(§;"3§.§"2§);
                                                            return;
                                                            addr107:
                                                         }
                                                      }
                                                      §§goto(addr135);
                                                   }
                                                   while(true)
                                                   {
                                                      §§goto(addr173);
                                                   }
                                                   if(_loc3_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   if(_loc3_ && this)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr98);
                                                   §§push(this.§""1§);
                                                }
                                                §§goto(addr236);
                                             }
                                             continue loop5;
                                          }
                                          §§goto(addr169);
                                       }
                                       continue loop6;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr258);
               }
            }
         }
         §§goto(addr259);
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
               sprite.rotation = §1"3§ + this.§7!w§.§3"7§;
            }
            while(!_loc4_);
            
         }
      }
      
      override public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§, param4:Boolean = true) : Number
      {
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      override protected function playCollisionSound() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§7!w§.playCollisionSound();
         }
      }
      
      override protected function playDamagedSound() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§7!w§.playDamagedSound();
         }
      }
      
      protected function §,0§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§]@§.frozenKilledSound);
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!(_loc3_ && _loc2_))
         {
            this.§]@§.playSoundLua(_loc1_);
         }
      }
      
      override protected function playDestroyedSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!this.§""1§.§;"D§)
            {
               this.§7!w§.playDestroyedSound();
               if(!(_loc2_ || _loc2_))
               {
                  addr71:
               }
               return;
            }
            if(!(_loc1_ && _loc1_))
            {
               this.§,0§();
            }
         }
         §§goto(addr71);
      }
      
      override protected function addDestructionParticles(param1:§;U§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Number = §^!z§().GetPosition().x;
         var _loc3_:Number = §^!z§().GetPosition().y;
         var _loc4_:Number = §+!c§();
         if(!_loc5_)
         {
            this.§7!w§.§@<§(param1,_loc2_,_loc3_,_loc4_);
         }
      }
   }
}
