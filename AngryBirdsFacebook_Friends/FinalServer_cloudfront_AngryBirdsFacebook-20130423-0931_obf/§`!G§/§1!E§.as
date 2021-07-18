package §`!G§
{
   import §&E§.§6!O§;
   import §&E§.§="@§;
   import §'!6§.Sprite;
   import §4!<§.§'!S§;
   import §6"1§.b2World;
   
   public class §1!E§ extends §>o§
   {
       
      
      private var §;z§:Number = 0;
      
      private var §7!C§:Number = 800;
      
      private var §,a§:Number = 0;
      
      public function §1!E§(param1:§8"=§, param2:Sprite, param3:b2World, param4:§'!S§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false, param12:String = "", param13:int = 1)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
         }
      }
      
      override protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         return true;
      }
      
      override public function addDestructionParticles(param1:§6!O§) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc2_:int = 12;
         §§push(0.5);
         if(!(_loc9_ && _loc2_))
         {
            §§push(§§pop() + Math.random() * 0.5);
            if(_loc8_ || param1)
            {
               addr42:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:Number = 20;
            var _loc5_:int = 0;
            while(true)
            {
               if(_loc5_ >= _loc2_)
               {
                  if(!(_loc9_ && param1))
                  {
                     break;
                  }
                  while(_loc9_)
                  {
                     while(!_loc8_)
                     {
                        while(_loc9_ && this)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(0.5);
                              if(!(_loc9_ && this))
                              {
                                 if(_loc8_)
                                 {
                                    §§push(_loc4_);
                                    if(!(_loc9_ && _loc2_))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          addr119:
                                          §§push(_loc4_);
                                          if(!_loc9_)
                                          {
                                             addr122:
                                             §§push(§§pop() * (Math.random() * 0.5));
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc9_ && param1)
                                          {
                                             break;
                                          }
                                          addr145:
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             §§push(Number(§§pop()));
                                             break;
                                          }
                                          continue;
                                       }
                                       §§goto(addr145);
                                    }
                                    §§goto(addr122);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       continue loop4;
                                    }
                                    addr169:
                                 }
                              }
                              §§goto(addr119);
                           }
                           _loc7_ = §§pop();
                        }
                        (param1 as §="@§).§ t§(x,y,_loc7_,_loc6_,_loc3_);
                     }
                     _loc5_++;
                  }
                  continue;
               }
               §§push(Math.random() * Math.PI);
               §§goto(addr169);
            }
            return;
         }
         §§goto(addr42);
      }
      
      override public function shouldUpdate() : Boolean
      {
         return true;
      }
      
      override public function update(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super.update(param1);
         }
         do
         {
            if(this.§;z§ <= this.§7!C§)
            {
               if(!_loc3_)
               {
                  §§push(this);
                  §§push(this.§;z§);
                  if(_loc2_ || this)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§;z§ = §§pop();
               }
               do
               {
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push(1);
                     §§push(this.§;z§);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(§§pop() / this.§7!C§);
                     }
                     §§pop().§,a§ = §§pop() - §§pop();
                     if(_loc2_ || this)
                     {
                        break;
                     }
                     addr83:
                     while(true)
                     {
                        continue loop2;
                     }
                  }
               }
               while(_loc3_ && _loc2_);
               
               continue;
            }
            this.§;z§ = 0;
            §§goto(addr83);
         }
         while(_loc3_);
         
      }
      
      override public function getSpecialAnimationProgress() : Number
      {
         return this.§,a§;
      }
   }
}
