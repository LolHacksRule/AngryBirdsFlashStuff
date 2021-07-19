package §7P§
{
   import §!!U§.Sprite;
   import §+!c§.§;!d§;
   import §+#$§.b2World;
   import §2"Y§.§=+§;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   
   public class §9"k§ extends §&l§
   {
       
      
      private var §`"3§:Number = 0.0;
      
      private var §"!W§:String;
      
      protected var § !d§:§;!d§;
      
      public function §9"k§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§=+§, param5:§94§, param6:Number = 1.0, param7:Boolean = true)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc8_)
         {
            super(param1,param2,param3,param4,param5,param6,param7);
            loop0:
            while(true)
            {
               this.§`"3§ = §'L§.getNumberProperty("specialtyActivationDelay");
               loop1:
               do
               {
                  if(isNaN(this.§`"3§))
                  {
                     if(!(_loc8_ && param2))
                     {
                        this.§`"3§ = 0;
                     }
                     while(true)
                     {
                        do
                        {
                           this.§"!W§ = §'L§.getProperty("reticleSprite");
                        }
                        while(_loc8_ && param2);
                        
                        continue loop1;
                     }
                     addr92:
                  }
                  else
                  {
                     §§push(this);
                     §§push(this.§`"3§);
                     if(_loc9_ || param3)
                     {
                        §§push(§§pop() * 1000);
                     }
                     §§pop().§`"3§ = §§pop();
                  }
                  while(true)
                  {
                     if(!_loc8_)
                     {
                        continue loop0;
                     }
                     §§goto(addr92);
                  }
                  continue loop0;
               }
               while(_loc8_);
               
            }
         }
      }
      
      public function get §[f§() : Number
      {
         return this.§`"3§;
      }
      
      public function get reticleSprite() : String
      {
         return this.§"!W§;
      }
      
      override public function get canActivateSpecialPower() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(!specialPowerUsed);
            loop0:
            while(true)
            {
               §§push(§§pop());
               addr91:
               loop1:
               while(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr93:
                     while(true)
                     {
                        §§push(Boolean(§8!_§));
                        if(!(_loc1_ && this))
                        {
                           if(!(_loc1_ && _loc1_))
                           {
                              continue loop0;
                           }
                           continue loop2;
                        }
                        addr74:
                        while(true)
                        {
                           §§pop();
                           if(!_loc2_)
                           {
                              break;
                           }
                           §§push(§#"d§ < this.§[f§);
                           if(_loc2_ || this)
                           {
                              break loop1;
                           }
                        }
                     }
                  }
               }
               addr32:
               return §§pop();
            }
         }
         §§goto(addr93);
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            super.render(param1,param2,param3);
            loop0:
            while(true)
            {
               §§push(this.§ !d§);
               if(_loc4_)
               {
                  if(!§§pop())
                  {
                     §§goto(addr24);
                  }
                  if(!(_loc4_ || param1))
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(this.§ !d§);
                  }
               }
               while(true)
               {
                  §§pop().update(param1);
                  continue loop0;
               }
            }
            addr24:
            return;
         }
         §§goto(addr51);
      }
      
      public function glow(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.§ !d§)
            {
               if(!_loc2_)
               {
                  addr58:
                  this.§ !d§ = new §;!d§(param1);
               }
               do
               {
                  sprite.addChildAt(this.§ !d§,0);
               }
               while(!_loc3_);
               
            }
            return;
         }
         §§goto(addr58);
      }
      
      override protected function normalize() : void
      {
      }
   }
}
