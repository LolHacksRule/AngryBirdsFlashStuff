package §`!G§
{
   import §&E§.§0i§;
   import §&E§.§6!O§;
   import §&E§.§="@§;
   import §'!6§.Sprite;
   import §-r§.§!"M§;
   import §4!<§.§'!S§;
   import §6"1§.b2World;
   import §@!"§.§?l§;
   
   public class §8!4§ extends §[!8§
   {
       
      
      private var §8j§:Boolean = false;
      
      public function §8!4§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         §§push(1);
         if(_loc14_ || param2)
         {
            §§push(int(§§pop() + Math.floor(Math.random() * 3)));
         }
         var _loc12_:* = §§pop();
         if(_loc14_)
         {
            this.§8j§ = false;
         }
         do
         {
            §§push(this);
            §§push(param1);
            §§push(param2);
            §§push(param3);
            §§push(param4);
            §§push(param5);
            §§push("MISC_WONDERLAND_EGG_");
            if(!(_loc13_ && this))
            {
               §§push(§§pop() + _loc12_);
            }
            §§pop().super(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),param7,param8,param9,param10,param11);
         }
         while(_loc13_);
         
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param2))
         {
            super.applyDamage(param1,param2,param3,param4,param5,param6);
            loop0:
            while(true)
            {
               §§push(§ d§ <= 0);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr113:
                        while(!_loc8_)
                        {
                           §§push(this.§8j§);
                           if(_loc7_)
                           {
                              if(!(_loc7_ || param3))
                              {
                                 continue loop2;
                              }
                              §§push(!§§pop());
                           }
                           if(_loc8_)
                           {
                              continue loop1;
                           }
                        }
                        continue loop0;
                     }
                  }
                  while(§§pop())
                  {
                     if(!(_loc8_ && param3))
                     {
                        if(!_loc8_)
                        {
                           this.§6^§();
                        }
                        else
                        {
                           §§goto(addr113);
                        }
                     }
                     (container.mLevelMain.getController() as §!"M§).§3!_§(§@x§);
                     this.§8j§ = true;
                     addr105:
                     if(_loc7_ || param1)
                     {
                        if(!(_loc7_ || param2))
                        {
                           §§goto(addr105);
                        }
                        addr57:
                        break;
                     }
                     addr66:
                     §§goto(addr66);
                  }
                  return § d§;
               }
            }
         }
         §§goto(addr57);
      }
      
      private function §6^§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§="@§ = §?l§.§'h§.particles as §="@§;
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.§@6§("WONDERLAND_MISC_SPLASH",§0i§.§^"X§,§6!O§.PARTICLE_GROUP_BACKGROUND_EFFECTS,§0i§.PARTICLE_TYPE_KINETIC_PARTICLE,getBody().GetPosition().x,getBody().GetPosition().y,1000,"",§0i§.§?"Z§,0,0,0,0,1.5,15,true);
         }
      }
   }
}
