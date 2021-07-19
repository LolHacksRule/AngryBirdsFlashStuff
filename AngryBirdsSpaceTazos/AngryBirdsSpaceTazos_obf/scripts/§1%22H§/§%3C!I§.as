package §1"H§
{
   import §"!&§.§"v§;
   import §"!&§.§%F§;
   import §"!&§.§8X§;
   import §'!&§.b2World;
   import §'4§.§^g§;
   import §4&§.§#r§;
   import §7!8§.DisplayObject;
   import §7!8§.Sprite;
   import §]">§.§;U§;
   
   public class §<!I§ extends §+>§
   {
      
      public static const §!!p§:String = "LASER_CROSSHAIR";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §!!p§ = "LASER_CROSSHAIR";
         }
      }
      
      protected var §@!]§:DisplayObject;
      
      protected var §2"!§:§"v§;
      
      protected var §@n§:Number;
      
      protected var §9S§:Number;
      
      protected var §'!8§:Number;
      
      private var §`"4§:Number;
      
      private var §0! §:Number;
      
      public function §<!I§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            super(param1,param3,param4);
            while(true)
            {
               this.§2"!§ = param4 as §%F§;
               while(_loc7_)
               {
                  this.§@!]§ = param2.getFrame(0,this.§@!]§);
                  while(true)
                  {
                     §§push(this.§@!]§);
                     loop3:
                     while(true)
                     {
                        §§push(param5);
                        addr166:
                        while(true)
                        {
                           §§push(§^g§.§5!-§);
                           addr168:
                           while(true)
                           {
                              §§push(§§pop() / §§pop());
                              addr169:
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr32);
      }
      
      public function hide() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(sprite)
            {
               if(!_loc2_)
               {
                  addr47:
                  sprite.visible = false;
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.§9S§ >= this.§@n§;
      }
      
      protected function §'-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§0! §);
            loop0:
            while(true)
            {
               §§push(0);
               addr178:
               while(true)
               {
                  §§push(§§pop() > §§pop());
                  if(!_loc2_)
                  {
                     if(!§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(this);
                                 §§push(this.§0! §);
                                 if(_loc1_ || this)
                                 {
                                    §§push(this.§`"4§);
                                    if(_loc1_ || this)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc1_ || _loc1_)
                                       {
                                          §§push(§§pop() / 2);
                                          if(!_loc1_)
                                          {
                                          }
                                          addr161:
                                          §§pop().§'!8§ = §§pop();
                                          while(!_loc2_)
                                          {
                                             §§push(this.§@!]§);
                                             loop5:
                                             while(true)
                                             {
                                                §§push(this.§'!8§);
                                                addr58:
                                                while(true)
                                                {
                                                   §§pop().scaleX = §§pop();
                                                   addr59:
                                                   while(!_loc2_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                          }
                                          continue loop0;
                                       }
                                       §§push(this.§0! §);
                                       if(_loc1_ || _loc2_)
                                       {
                                          §§push(this.§`"4§);
                                          if(_loc1_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!(_loc2_ && _loc2_))
                                             {
                                                §§push(§§pop() / 2);
                                                if(_loc1_)
                                                {
                                                   addr159:
                                                   §§push(§§pop() * -Math.cos(this.§9S§ / this.§@n§ * Math.PI * 4));
                                                }
                                             }
                                             §§goto(addr161);
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§goto(addr159);
                                       }
                                    }
                                    §§goto(addr159);
                                 }
                                 §§goto(addr161);
                              }
                           }
                           §§push(§§pop() > §§pop());
                           addr70:
                           break;
                           if(_loc1_ || _loc2_)
                           {
                              continue;
                           }
                           addr183:
                           while(true)
                           {
                              §§pop();
                              continue loop0;
                           }
                           addr183:
                        }
                        return;
                        addr78:
                     }
                  }
                  §§goto(addr183);
               }
            }
         }
         §§goto(addr61);
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            super.update(param1,param2);
         }
         while(true)
         {
            if(param2)
            {
               loop1:
               while(_loc3_)
               {
                  §§push(param1);
                  if(_loc3_)
                  {
                     §§push(§§pop() / param2.§+"1§);
                     if(!_loc4_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  param1 = §§pop();
                  while(true)
                  {
                     addr58:
                     while(!(_loc4_ && param1))
                     {
                        if(!_loc4_)
                        {
                           this.§'-§();
                           if(_loc3_ || param2)
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
               continue;
            }
            while(true)
            {
               §§push(this);
               §§push(this.§9S§);
               if(_loc3_)
               {
                  §§push(§§pop() + param1);
               }
               §§pop().§9S§ = §§pop();
               §§goto(addr58);
               §§goto(addr93);
            }
         }
      }
   }
}
