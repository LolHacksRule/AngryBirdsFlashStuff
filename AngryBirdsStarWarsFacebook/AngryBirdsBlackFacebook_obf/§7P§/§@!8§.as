package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§=+§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §[R§.b2Vec2;
   import §`!r§.§ U§;
   import §`!r§.§,!w§;
   
   public class §@!8§ extends §9"k§
   {
      
      public static const §+"§:String = "SmallBlueBird";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §+"§ = "SmallBlueBird";
         }
      }
      
      protected var § ##§:Vector.<§@!8§>;
      
      public function §@!8§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§=+§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!(_loc9_ && param1))
         {
            this.§ ##§ = new Vector.<§@!8§>();
            do
            {
               super(param1,param2,param3,param4,param5,param6,param7);
            }
            while(_loc9_ && this);
            
         }
      }
      
      override public function activateSpecialPower(param1:§;$§, param2:Number, param3:Number) : Boolean
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!_loc12_)
         {
            if(!super.activateSpecialPower(param1,param2,param3))
            {
               if(!_loc12_)
               {
                  return false;
               }
            }
         }
         var _loc4_:Number = §3!t§().GetPosition().x;
         var _loc5_:Number = §3!t§().GetPosition().y;
         var _loc6_:Number = §3!t§().GetLinearVelocity().x;
         var _loc7_:Number = §3!t§().GetLinearVelocity().y;
         var _loc8_:Number = Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_);
         §§push(_loc6_);
         if(!_loc12_)
         {
            §§push(-§§pop());
            if(_loc13_)
            {
               addr70:
               §§push(§§pop() / _loc8_);
               if(_loc13_)
               {
                  addr74:
                  §§push(Number(§§pop()));
               }
               var _loc9_:* = §§pop();
               §§push(_loc7_);
               if(!_loc12_)
               {
                  §§push(§§pop() / _loc8_);
                  if(_loc13_ || this)
                  {
                     addr88:
                     §§push(Number(§§pop()));
                  }
                  var _loc10_:* = §§pop();
                  var _loc11_:§@!8§;
                  §§push(_loc11_ = §@!8§(param1.addObject(§;B§.itemName,_loc4_ - _loc10_,_loc5_ - _loc9_,0,§;=§.§""3§,true,false,false,scale)));
                  §§push(§§findproperty(b2Vec2));
                  §§push(_loc6_);
                  if(!(_loc12_ && param1))
                  {
                     §§push(7 * _loc10_);
                     if(!_loc12_)
                     {
                        addr127:
                        §§push(§§pop() - §§pop());
                        §§push(_loc7_);
                        if(_loc13_)
                        {
                           addr130:
                           §§push(§§pop() - 7 * _loc9_);
                        }
                        §§pop().§ &§(new §§pop().b2Vec2(§§pop(),§§pop()));
                        if(!_loc12_)
                        {
                           this.§!1§(_loc11_ as §9"k§);
                        }
                        loop0:
                        while(true)
                        {
                           _loc11_.isLeavingTrail = isLeavingTrail;
                           loop1:
                           while(true)
                           {
                              addr164:
                              while(true)
                              {
                                 _loc11_.§6!]§(this);
                                 continue loop1;
                              }
                              continue loop0;
                           }
                        }
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr127);
               }
               §§goto(addr88);
            }
            §§goto(addr74);
         }
         §§goto(addr70);
      }
      
      protected function §!1§(param1:§9"k§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(§ !d§)
            {
               loop0:
               while(true)
               {
                  §§push(Boolean(param1));
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§pop();
                           addr82:
                           do
                           {
                              if(_loc3_)
                              {
                                 continue loop0;
                              }
                              if(_loc3_)
                              {
                                 §§goto(addr89);
                              }
                              §§push(Boolean(§ !d§));
                              if(!_loc2_)
                              {
                                 continue loop2;
                              }
                           }
                           while(_loc2_ || _loc2_);
                           
                           continue loop1;
                        }
                     }
                     while(§§pop())
                     {
                        if(!_loc3_)
                        {
                           param1.glow(§ !d§.tintColor);
                        }
                        if(_loc2_ || param1)
                        {
                           addr65:
                           break;
                        }
                        §§goto(addr82);
                     }
                     return;
                  }
               }
            }
            addr89:
            return;
         }
         §§goto(addr65);
      }
      
      public function §6!]§(param1:§@!8§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§ ##§.push(param1);
         }
      }
      
      override public function collidedWith(param1:§7B§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§ ##§.indexOf(param1) <= -1)
            {
               do
               {
                  super.collidedWith(param1);
               }
               while(!(_loc3_ || _loc3_));
               
               if(_loc3_ || _loc2_)
               {
                  return;
                  addr62:
               }
            }
            return;
         }
         §§goto(addr62);
      }
      
      override protected function spawnParticlesOnSpecial(param1:§;$§, param2:Number = 0.0) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:Number = §3!t§().GetPosition().x;
         var _loc4_:Number = §3!t§().GetPosition().y;
         if(_loc6_ || param1)
         {
            param1.§;!0§(§ U§.§'"v§,§,!w§.§9F§,§ U§.§+!Q§,_loc3_,_loc4_,-1,"",§ U§.§9"W§);
         }
         do
         {
            super.spawnParticlesOnSpecial(param1,param2);
         }
         while(!_loc6_);
         
      }
   }
}
