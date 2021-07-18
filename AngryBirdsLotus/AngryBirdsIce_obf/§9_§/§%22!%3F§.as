package §9_§
{
   import §[x§.§2^§;
   import §^V§.Sprite;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §"!?§ extends §4!;§
   {
      
      public static const §<k§:String = "MISC_FOOD_EGG";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §<k§ = "MISC_FOOD_EGG";
         }
      }
      
      public function §"!?§(param1:§?!!§, param2:Sprite, param3:b2World, param4:§2^§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_ || param2)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§?!!§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(super.activateSpecialPower(param1));
            if(!(_loc5_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(_loc6_ || _loc3_)
                  {
                     §§goto(addr38);
                  }
               }
               var _loc2_:Number = §>b§().GetPosition().x;
               var _loc3_:Number = §>b§().GetPosition().y;
               §§push(param1);
               §§push(§<k§);
               §§push(_loc2_);
               §§push(_loc3_);
               if(!_loc5_)
               {
                  §§push(§§pop() + 0.01);
               }
               var _loc4_:§+>§;
               (_loc4_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,false,true,true,scale)).§'J§ = true;
               if(!(_loc5_ && _loc3_))
               {
                  _loc4_.§>b§().SetLinearVelocity(new b2Vec2(0,100));
                  do
                  {
                     §>b§().ApplyImpulse(new b2Vec2(30 * §>b§().GetMass(),-60 * §>b§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
                  }
                  while(_loc5_ && _loc3_);
                  
               }
               return true;
            }
            §§goto(addr38);
         }
         addr38:
         return false;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super.applyDamage(param1,param2,param3,param4,param5,param6);
            loop0:
            while(§;$§)
            {
               loop1:
               while(true)
               {
                  §8!'§ = §[!3§ - 1;
                  loop2:
                  while(_loc8_)
                  {
                     while(true)
                     {
                        §<p§.setDamagedFrame();
                        if(_loc8_)
                        {
                           if(!_loc7_)
                           {
                              break loop0;
                           }
                           continue loop1;
                        }
                        continue loop2;
                     }
                  }
                  continue loop0;
               }
            }
            return §8!'§;
         }
         §§goto(addr52);
      }
   }
}
