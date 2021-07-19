package §1"H§
{
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §,"&§.§9q§;
   import §4&§.§'!"§;
   import §7!8§.Sprite;
   import §7!8§.§`y§;
   
   public class §!v§ extends §+>§
   {
      
      private static const §4_§:String = "LASER_TRAIL_3";
      
      private static const §>"C§:String = "LASER_EFFECT_1";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §4_§ = "LASER_TRAIL_3";
            do
            {
               §>"C§ = "LASER_EFFECT_1";
            }
            while(!_loc2_);
            
         }
      }
      
      private var §1"!§:§`y§;
      
      private var §-!d§:Sprite;
      
      private var §`M§:§`y§;
      
      private var §6!O§:Boolean;
      
      public function §!v§(param1:Sprite, param2:b2World, param3:§8X§, param4:Number, param5:Number)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            super(param1,param2,param3);
            loop0:
            while(true)
            {
               this.§`M§ = this.§3^§(§>"C§);
               addr193:
               while(true)
               {
                  §§push(this.§`M§);
                  addr170:
                  loop2:
                  while(true)
                  {
                     §§push(this.§`M§);
                     addr172:
                     while(true)
                     {
                        §§pop().x = §§pop().x + param4;
                        continue loop2;
                     }
                  }
               }
               loop13:
               while(true)
               {
                  if(!(_loc7_ || this))
                  {
                     continue loop0;
                  }
                  addr112:
                  §§push(this.§-!d§);
                  if(_loc7_ || param2)
                  {
                     addr68:
                     if(!(_loc6_ && this))
                     {
                        §§pop().addChild(this.§1"!§);
                        loop14:
                        for(; _loc7_ || this; while(!(_loc6_ && param3))
                        {
                           this.§6!O§ = false;
                           if(!_loc7_)
                           {
                              continue;
                           }
                           if(!_loc7_)
                           {
                              continue loop13;
                           }
                           if(_loc7_)
                           {
                              addr34:
                              if(_loc7_ || param1)
                              {
                                 if(!_loc6_)
                                 {
                                    return;
                                 }
                                 addr176:
                                 while(true)
                                 {
                                    §§push(this.§`M§);
                                    if(!(_loc6_ && param1))
                                    {
                                       §§push(this.§`M§);
                                       if(!_loc6_)
                                       {
                                          §§pop().y = §§pop().y + param5;
                                          while(true)
                                          {
                                             param1.addChildAt(this.§`M§,0);
                                             break loop14;
                                             §§goto(addr34);
                                          }
                                          addr166:
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr170);
                                    }
                                    §§goto(addr172);
                                 }
                              }
                              §§goto(addr166);
                           }
                           loop11:
                           while(_loc7_ || param2)
                           {
                              §§push(this.§-!d§);
                              while(true)
                              {
                                 §§push(param5);
                                 if(_loc7_)
                                 {
                                    §§pop().y = §§pop();
                                    continue loop13;
                                 }
                                 addr117:
                                 while(true)
                                 {
                                    §§pop().x = §§pop();
                                    continue loop11;
                                 }
                                 §§goto(addr112);
                              }
                              continue loop0;
                           }
                           while(true)
                           {
                              if(!_loc6_)
                              {
                                 §§push(this.§-!d§);
                                 break loop13;
                              }
                              break;
                              §§goto(addr118);
                           }
                           addr118:
                           while(true)
                           {
                              this.§-!d§ = new Sprite();
                              §§goto(addr131);
                           }
                           addr131:
                           addr140:
                        })
                        {
                           if(_loc7_)
                           {
                              param1.addChildAt(this.§-!d§,0);
                              continue;
                           }
                           §§goto(addr193);
                        }
                        while(true)
                        {
                           this.§1"!§ = this.§`"7§(§4_§);
                           §§goto(addr140);
                           §§goto(addr78);
                        }
                        addr78:
                     }
                     break;
                  }
                  §§goto(addr101);
               }
               while(true)
               {
                  §§goto(addr117);
                  §§goto(addr68);
               }
            }
         }
         §§goto(addr176);
      }
      
      private function §`"7§(param1:String, param2:Number = 1) : §`y§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§'!"§ = §9q§.§>!L§.textureManager.getTexture(param1);
         var _loc4_:§`y§;
         §§push(_loc4_ = new §`y§(_loc3_.texture));
         §§push(param2);
         if(_loc5_)
         {
            §§push(-§§pop());
         }
         §§pop().scaleX = §§pop();
         if(!_loc6_)
         {
            _loc4_.scaleY = param2;
            do
            {
               _loc4_.x = -_loc4_.width;
               do
               {
                  §§push(_loc4_);
                  §§push(-_loc4_.height);
                  if(_loc5_)
                  {
                     §§push(§§pop() / 2);
                  }
                  §§pop().y = §§pop();
               }
               while(!_loc5_);
               
            }
            while(_loc6_);
            
         }
         return _loc4_;
      }
      
      private function §3^§(param1:String, param2:Number = 1) : §`y§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§'!"§ = §9q§.§>!L§.textureManager.getTexture(param1);
         var _loc4_:§`y§;
         (_loc4_ = new §`y§(_loc3_.texture)).scaleX = param2;
         if(!_loc6_)
         {
            _loc4_.scaleY = param2;
            do
            {
               §§push(_loc4_);
               §§push(-_loc4_.width);
               if(!_loc6_)
               {
                  §§push(§§pop() / 2);
               }
               §§pop().x = §§pop();
               do
               {
                  §§push(_loc4_);
                  §§push(-_loc4_.height);
                  if(_loc5_)
                  {
                     §§push(§§pop() / 2);
                  }
                  §§pop().y = §§pop();
               }
               while(!(_loc5_ || param2));
               
            }
            while(_loc6_ && param2);
            
         }
         return _loc4_;
      }
      
      public function §>" §(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§-!d§.rotation = param1;
         }
      }
      
      public function §[u§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(this.§1"!§);
            loop0:
            while(true)
            {
               §§push(param1);
               if(_loc3_)
               {
                  §§push(-§§pop());
               }
               addr71:
               while(true)
               {
                  §§pop().scaleX = §§pop();
                  continue loop0;
               }
            }
            addr67:
         }
         while(true)
         {
            §§push(this.§1"!§);
            if(_loc3_)
            {
               §§push(param2);
               if(_loc3_ || param1)
               {
                  §§pop().scaleY = §§pop();
                  if(_loc3_ || param2)
                  {
                     break;
                  }
                  continue;
               }
            }
            else
            {
               §§goto(addr67);
            }
            §§goto(addr71);
         }
      }
      
      public function §7T§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            §§push(this.§-!d§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr73:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
            addr72:
         }
         while(true)
         {
            §§push(this.§-!d§);
            if(!_loc4_)
            {
               §§push(param2);
               if(!(_loc4_ && param2))
               {
                  §§pop().y = §§pop();
                  if(_loc3_ || param1)
                  {
                     break;
                  }
                  continue;
               }
            }
            else
            {
               §§goto(addr72);
            }
            §§goto(addr73);
         }
      }
      
      public function §=F§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§-!d§.visible = false;
         }
      }
      
      public function §[U§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§`M§);
            if(!_loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr59);
            }
            §§pop().visible = false;
         }
         addr59:
         if(_loc1_ || _loc2_)
         {
            §§push(this.§`M§);
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§6!O§;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§`M§.dispose();
            while(true)
            {
               this.§`M§ = null;
               loop1:
               while(_loc2_ || this)
               {
                  §§push(this.§-!d§);
                  loop2:
                  while(true)
                  {
                     §§pop().removeChild(this.§1"!§);
                     addr93:
                     loop3:
                     while(true)
                     {
                        §§push(this.§-!d§);
                        if(_loc1_)
                        {
                           continue loop2;
                        }
                        §§pop().dispose();
                        loop4:
                        while(true)
                        {
                           this.§-!d§ = null;
                           loop5:
                           while(_loc2_)
                           {
                              this.§1"!§.dispose();
                              while(true)
                              {
                                 if(!(_loc1_ && _loc1_))
                                 {
                                    if(!_loc1_)
                                    {
                                       if(!(_loc2_ || _loc1_))
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop4;
                                 }
                                 continue loop5;
                              }
                              continue loop3;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      public function get §3"6§() : Boolean
      {
         return this.§6!O§;
      }
      
      public function set §3"6§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§6!O§ = param1;
         }
      }
   }
}
