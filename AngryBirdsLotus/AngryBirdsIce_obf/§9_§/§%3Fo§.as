package §9_§
{
   import §[x§.§2^§;
   import §^V§.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §?o§ extends §4!;§
   {
       
      
      private var §<!5§:Number = 0;
      
      public function §?o§(param1:§?!!§, param2:Sprite, param3:b2World, param4:§2^§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         if(_loc12_ || param3)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         if(!(_loc4_ && _loc3_))
         {
            §§push(this.§<!5§);
            §§push(0);
            loop0:
            while(true)
            {
               §§push(§§pop() == §§pop());
               loop1:
               while(true)
               {
                  §§push(!§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr217:
                           while(true)
                           {
                              §§push(§8!'§ == §[!3§);
                              if(_loc5_ || param1)
                              {
                                 if(!_loc5_)
                                 {
                                    continue;
                                 }
                                 if(_loc4_)
                                 {
                                    continue loop2;
                                 }
                                 if(!_loc5_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(!§§pop());
                                 while(true)
                                 {
                                 }
                              }
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    this.§<!5§ = 0;
                                 }
                                 §§push(this.§<!5§);
                                 continue loop0;
                              }
                           }
                        }
                     }
                     §§goto(addr203);
                  }
               }
            }
         }
         §§goto(addr217);
      }
      
      override public function activateSpecialPower(param1:§?!!§) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            §§push(super.activateSpecialPower(param1));
            if(!(_loc3_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                     §§push(false);
                  }
                  else
                  {
                     addr49:
                     var _loc2_:Number = §>b§().GetLinearVelocity().x;
                     if(!(_loc3_ && _loc2_))
                     {
                        if(_loc2_ != 0)
                        {
                           if(_loc4_)
                           {
                              addr77:
                              §§push(this);
                              §§push(_loc2_);
                              if(_loc4_)
                              {
                                 §§push(-§§pop());
                                 if(_loc4_ || param1)
                                 {
                                    §§push(§§pop() * 1.5);
                                 }
                              }
                              §§pop().§<!5§ = §§pop();
                           }
                        }
                        return true;
                     }
                     §§goto(addr77);
                  }
               }
               §§goto(addr49);
            }
            return §§pop();
         }
         §§goto(addr49);
      }
   }
}
