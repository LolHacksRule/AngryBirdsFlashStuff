package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §7!F§.§0'§;
   import §7!F§.§>"G§;
   import §7!F§.§`y§;
   import §<"B§.§94§;
   import com.angrybirds.§,!q§;
   
   public class §7"?§ extends §`#G§
   {
      
      public static const §9"F§:String = "turbineFlameAnimation";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §9"F§ = "turbineFlameAnimation";
         }
      }
      
      private var §]!%§:Boolean = false;
      
      private var §]!o§:§0'§;
      
      public function §7"?§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super(param1,param2,param3,param4,param5,param6);
         }
         do
         {
            this.§2!2§();
         }
         while(!(_loc8_ || param1));
         
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§]!o§)
            {
               if(!(_loc3_ && this))
               {
                  addr49:
                  this.§^"]§(param1);
               }
            }
            return super.update(param1,param2);
         }
         §§goto(addr49);
      }
      
      private function §^"]§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            §§push(this);
            §§push(this.§]!%§);
            if(_loc3_ || _loc2_)
            {
               §§push(!§§pop());
            }
            §§pop().§]!%§ = §§pop();
            loop0:
            while(this.§]!%§)
            {
               if(_loc3_ || param1)
               {
                  addr128:
                  §§push(this.§]!o§);
                  while(true)
                  {
                     §§push(0.5);
                     addr129:
                     while(true)
                     {
                        §§push(Math.random() * 0.5);
                        addr133:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           addr134:
                           while(true)
                           {
                              §§pop().alpha = §§pop();
                           }
                        }
                     }
                  }
                  addr128:
               }
               loop10:
               while(true)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(this.§]!o§);
                     if(!(_loc2_ && _loc2_))
                     {
                        if(!_loc2_)
                        {
                           §§push(0.9);
                           if(_loc3_ || param1)
                           {
                              if(_loc3_)
                              {
                                 addr51:
                                 §§push(Math.random() * 0.2);
                                 if(_loc3_ || param1)
                                 {
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       addr80:
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          if(!_loc2_)
                                          {
                                             §§pop().scaleY = §§pop();
                                             if(_loc2_)
                                             {
                                                continue;
                                             }
                                             if(_loc3_)
                                             {
                                                break loop0;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr129);
                                          }
                                          while(true)
                                          {
                                             §§push(this.§]!o§);
                                             break loop10;
                                          }
                                          addr135:
                                       }
                                       while(!_loc2_)
                                       {
                                          §§push(Math.random() * 0.4);
                                          while(true)
                                          {
                                             §§push(§§pop() + §§pop());
                                             addr106:
                                             while(true)
                                             {
                                                §§pop().scaleX = §§pop();
                                                continue loop10;
                                             }
                                             §§goto(addr128);
                                             §§goto(addr51);
                                          }
                                       }
                                       §§goto(addr134);
                                       addr99:
                                    }
                                    §§goto(addr133);
                                 }
                                 §§goto(addr105);
                              }
                              §§goto(addr106);
                           }
                           §§goto(addr80);
                        }
                        else
                        {
                           §§goto(addr128);
                        }
                     }
                     break;
                     addr114:
                  }
                  continue loop0;
               }
               while(true)
               {
                  §§goto(addr99);
                  §§goto(addr114);
               }
            }
            return;
         }
         §§goto(addr135);
      }
      
      override protected function setDamageState(param1:Number, param2:§;$§) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1 > 0.02);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr94:
                     do
                     {
                        §§push(Boolean(this.§]!o§));
                        if(!_loc3_)
                        {
                           continue loop1;
                        }
                     }
                     while(_loc3_);
                     
                     continue loop0;
                  }
               }
               while(§§pop())
               {
                  if(_loc3_ || this)
                  {
                     if(!(_loc4_ && this))
                     {
                        sprite.removeChild(this.§]!o§);
                        addr73:
                     }
                     else
                     {
                        §§goto(addr94);
                     }
                  }
                  do
                  {
                     this.§]!o§ = null;
                  }
                  while(!(_loc3_ || _loc3_));
                  
                  break;
               }
               return super.setDamageState(param1,param2);
            }
         }
         §§goto(addr73);
      }
      
      private function §2!2§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:§`y§ = §,!q§.§9!,§.animationManager;
         var _loc2_:§>"G§ = _loc1_.getAnimation(§9"F§);
         if(_loc4_ || _loc2_)
         {
            if(!_loc2_)
            {
               if(!_loc3_)
               {
                  _loc2_ = _loc1_.§%#M§(§9"F§,["GLOW_ENGINE_BIG_1","GLOW_ENGINE_BIG_2"]);
                  addr56:
                  this.§]!o§ = new §0'§(_loc2_);
                  if(!(_loc3_ && _loc2_))
                  {
                     sprite.addChild(this.§]!o§);
                  }
                  loop2:
                  while(true)
                  {
                     sprite.setChildIndex(this.§]!o§,0);
                     addr102:
                     while(_loc3_)
                     {
                        continue loop2;
                     }
                  }
                  addr38:
               }
               while(true)
               {
                  this.§]!o§.x = 20;
                  if(!(_loc3_ && _loc2_))
                  {
                     break;
                  }
                  §§goto(addr102);
               }
               return;
            }
            §§goto(addr56);
         }
         §§goto(addr38);
      }
   }
}
