package §]![§
{
   import § D§.b2World;
   import §+&§.§-!7§;
   import §8>§.b2Vec2;
   import §9E§.Sprite;
   
   public class §]!O§ extends §4J§
   {
      
      public static const §3!S§:String = "MISC_FOOD_EGG";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §3!S§ = "MISC_FOOD_EGG";
         }
      }
      
      public function §]!O§(param1:§[?§, param2:Sprite, param3:b2World, param4:§-!7§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!(_loc12_ && this))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§[?§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            §§push(super.activateSpecialPower(param1));
            if(!_loc5_)
            {
               if(!§§pop())
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(false);
                  }
                  else
                  {
                     §§goto(addr39);
                  }
               }
               §§goto(addr39);
            }
            return §§pop();
         }
         addr39:
         var _loc2_:Number = §+$§().GetPosition().x;
         var _loc3_:Number = §+$§().GetPosition().y;
         §§push(param1);
         §§push(§3!S§);
         §§push(_loc2_);
         §§push(_loc3_);
         if(!(_loc5_ && param1))
         {
            §§push(§§pop() + 0.01);
         }
         var _loc4_:§4!H§;
         (_loc4_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,false,true,true,scale)).§15§ = true;
         if(!_loc5_)
         {
            _loc4_.§+$§().SetLinearVelocity(new b2Vec2(0,100));
            do
            {
               §+$§().ApplyImpulse(new b2Vec2(30 * §+$§().GetMass(),-60 * §+$§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
            }
            while(!(_loc6_ || _loc3_));
            
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(!_loc7_)
         {
            super.applyDamage(param1,param2,param3,param4,param5,param6);
            while(§6V§)
            {
               if(!_loc8_)
               {
                  do
                  {
                     §[!"§.setDamagedFrame();
                  }
                  while(_loc7_);
                  
                  break;
               }
               addr67:
               if(_loc7_ && this)
               {
                  continue;
               }
               §%,§ = §0K§ - 1;
               §§goto(addr67);
            }
            return §%,§;
         }
         §§goto(addr67);
      }
   }
}
