package §]">§
{
   import §"!&§.§+W§;
   import §'!&§.b2World;
   import §'4§.§-T§;
   import §'4§.§^g§;
   import §1"H§.§!v§;
   import §1"H§.§<!I§;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import §9t§.b2Vec2;
   import flash.geom.Point;
   
   public class §]"-§ extends §6!y§
   {
      
      public static const §!!p§:String = "LaserBird";
      
      public static const §]2§:String = "LaserBirdSpecialTrail";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §!!p§ = "LaserBird";
         }
         do
         {
            §]2§ = "LaserBirdSpecialTrail";
         }
         while(_loc2_ && _loc1_);
         
      }
      
      protected var §5`§:Number;
      
      protected var §@r§:Number;
      
      private var §%!m§:§<!I§;
      
      private var §]"4§:Boolean = false;
      
      private var §5#§:§!v§;
      
      private var §2B§:Point;
      
      public function §]"-§(param1:Sprite, param2:§#r§, param3:b2World, param4:§+W§, param5:Number, param6:Number, param7:Number, param8:Number = 1.0, param9:Boolean = true)
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_ || param1)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9);
         }
      }
      
      override public function activateSpecialPower(param1:§;U§, param2:Number, param3:Number) : Boolean
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            if(super.activateSpecialPower(param1,param2,param3))
            {
               loop0:
               while(true)
               {
                  this.§%!m§ = §<!I§(param1.addObject(§<!I§.§!!p§,param2,param3,0,§-%§.§;!J§,false,false,false,1,true));
                  loop1:
                  while(!_loc8_)
                  {
                     loop2:
                     while(true)
                     {
                        this.§5`§ = param2;
                        while(_loc7_ || this)
                        {
                           this.§@r§ = param3;
                           if(_loc7_ || param3)
                           {
                              continue loop2;
                           }
                        }
                        continue loop1;
                     }
                  }
                  addr76:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
            return false;
         }
         §§goto(addr76);
      }
      
      override public function updateOutOfCamera() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.updateOutOfCamera();
            loop0:
            while(true)
            {
               §§push(this.§%!m§);
               if(_loc2_ || this)
               {
                  if(§§pop())
                  {
                     loop1:
                     while(true)
                     {
                        §§push(this.§%!m§);
                        addr106:
                        while(true)
                        {
                           §§pop().hide();
                           addr107:
                           while(true)
                           {
                           }
                        }
                        addr73:
                        loop3:
                        while(true)
                        {
                           if(_loc1_ && _loc2_)
                           {
                              continue loop1;
                           }
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                           while(true)
                           {
                              §§push(this.§5#§);
                              if(_loc2_)
                              {
                                 §§pop().§[U§();
                                 while(_loc1_)
                                 {
                                    continue loop3;
                                 }
                                 while(true)
                                 {
                                    this.§]"4§ = false;
                                    if(!_loc1_)
                                    {
                                       if(_loc2_ || this)
                                       {
                                          return;
                                          addr37:
                                       }
                                       break loop3;
                                    }
                                    §§goto(addr44);
                                    §§goto(addr46);
                                 }
                                 addr44:
                                 addr46:
                                 addr24:
                              }
                              addr72:
                              while(true)
                              {
                                 §§pop().§=F§();
                                 continue loop3;
                              }
                           }
                        }
                        §§goto(addr107);
                     }
                  }
                  while(true)
                  {
                     §§push(this.§5#§);
                     if(_loc2_ || this)
                     {
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                              §§goto(addr72);
                              §§push(this.§5#§);
                           }
                           §§goto(addr73);
                        }
                        §§goto(addr24);
                     }
                     §§goto(addr72);
                     §§goto(addr107);
                  }
                  §§goto(addr37);
               }
               §§goto(addr106);
            }
         }
         §§goto(addr82);
      }
      
      override public function get isLeavingTrail() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(health < healthMax);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr122:
                     while(true)
                     {
                        §§push(§^!z§() == null);
                     }
                  }
                  addr121:
               }
               while(true)
               {
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop5:
                        while(true)
                        {
                           §§push(this.§]"4§);
                           if(!(_loc1_ || _loc2_))
                           {
                              break;
                           }
                           if(!(_loc2_ && this))
                           {
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                              if(§§pop())
                              {
                                 if(_loc1_ || _loc1_)
                                 {
                                    if(_loc1_)
                                    {
                                       §§push(false);
                                       break;
                                    }
                                    continue;
                                 }
                                 if(!_loc2_)
                                 {
                                    while(true)
                                    {
                                    }
                                    addr88:
                                 }
                                 else
                                 {
                                    addr96:
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       §§goto(addr114);
                                    }
                                    §§goto(addr122);
                                 }
                              }
                              while(true)
                              {
                                 §§push(true);
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    return §§pop();
                                 }
                                 break loop5;
                              }
                           }
                           addr114:
                           return false;
                        }
                        continue;
                     }
                     §§goto(addr96);
                  }
                  if(_loc1_)
                  {
                     break;
                  }
                  §§goto(addr121);
               }
               return §§pop();
            }
         }
         §§goto(addr88);
      }
      
      private function §<?§(param1:§;U§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§2B§ = new Point(x,y);
            while(true)
            {
               this.§5#§ = (param1 as §@!q§).addObject(§]2§,this.§2B§.x,this.§2B§.y,0,§-%§.§;!J§,false,true,false,1,true) as §!v§;
               §§goto(addr87);
            }
         }
         addr87:
         while(true)
         {
            this.§5#§.§>" §(param2);
            if(!_loc4_)
            {
               if(_loc3_ || this)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function applyGravity() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§]"4§);
         if(!(_loc2_ && this))
         {
            return !§§pop();
         }
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super.update(param1,param2);
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(_loc7_ || param1)
         {
            super.render(param1,param2,param3);
         }
         while(true)
         {
            §§push(this.§5#§);
            while(§§pop())
            {
               while(true)
               {
                  §§push(Number(Math.pow(this.§2B§.x - x,2)));
                  loop3:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     addr174:
                     while(true)
                     {
                        §§push(Number(Math.pow(this.§2B§.y - y,2)));
                        continue loop3;
                     }
                  }
               }
               if(!(_loc7_ || this))
               {
                  continue;
               }
               §§push(_loc6_);
               if(!(_loc8_ && param2))
               {
                  §§push(§^g§.§5!-§);
                  if(!_loc8_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc7_ || param1)
                     {
                        addr72:
                        §§push(§§pop() * 0.5);
                     }
                     §§pop().§[u§(§§pop(),1);
                     if(_loc7_)
                     {
                        §§goto(addr77);
                     }
                     §§goto(addr103);
                  }
               }
               §§goto(addr72);
            }
            return;
            while(_loc7_ || param3)
            {
               §§goto(addr149);
               §§goto(addr103);
            }
         }
      }
      
      override public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§, param4:Boolean = true) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            this.§]"4§ = false;
         }
         loop0:
         do
         {
            §§push(this.§%!m§);
            if(_loc5_ || this)
            {
               if(§§pop())
               {
                  if(!(_loc6_ && this))
                  {
                     addr105:
                     this.§%!m§.hide();
                  }
                  while(true)
                  {
                     addr57:
                     if(!(_loc6_ && param2))
                     {
                        addr66:
                        this.§5#§.§=F§();
                        continue loop0;
                     }
                  }
                  addr106:
               }
               while(true)
               {
                  §§push(this.§5#§);
                  if(_loc5_ || param2)
                  {
                     if(!§§pop())
                     {
                        §§goto(addr24);
                     }
                     if(!_loc5_)
                     {
                        continue loop0;
                     }
                     §§goto(addr57);
                  }
                  break;
                  §§goto(addr106);
               }
               §§goto(addr66);
            }
            §§goto(addr105);
         }
         while(_loc6_ && param1);
         
         addr24:
         return super.applyDamage(param1,param2,param3,param4);
      }
      
      protected function §`i§(param1:§;U§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §=9§(new b2Vec2(Math.cos(param2),Math.sin(param2)));
            do
            {
               §var§(§-T§.§;x§);
            }
            while(_loc4_);
            
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§%!m§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     addr118:
                     this.§%!m§.dispose();
                  }
                  while(true)
                  {
                     this.§%!m§ = null;
                     addr93:
                     while(true)
                     {
                     }
                     addr43:
                     if(!(_loc2_ || this))
                     {
                        continue;
                     }
                     return;
                     addr50:
                     addr60:
                  }
               }
               while(true)
               {
                  §§push(this.§5#§);
                  if(_loc2_ || this)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§5#§);
                           addr86:
                           while(true)
                           {
                              §§pop().§3"6§ = true;
                              loop7:
                              while(true)
                              {
                                 this.§5#§ = null;
                                 addr65:
                                 addr72:
                                 while(!(_loc2_ || this))
                                 {
                                    continue loop7;
                                 }
                              }
                           }
                        }
                        addr84:
                     }
                     while(true)
                     {
                        super.dispose();
                        if(_loc2_ || _loc2_)
                        {
                           if(!_loc1_)
                           {
                              break;
                           }
                           §§goto(addr84);
                        }
                        §§goto(addr65);
                        §§goto(addr72);
                     }
                     if(!_loc2_)
                     {
                        continue;
                     }
                     §§goto(addr43);
                  }
                  §§goto(addr86);
               }
               §§goto(addr50);
            }
            §§goto(addr118);
         }
         §§goto(addr60);
      }
   }
}
