package §+!o§
{
   import §+S§.b2World;
   import §2"=§.b2Vec2;
   import §5!V§.§!w§;
   import §default§.Sprite;
   
   public class §6!b§ extends §>G§
   {
      
      public static const §7"2§:String = "MISC_FOOD_EGG";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §7"2§ = "MISC_FOOD_EGG";
         }
      }
      
      public function §6!b§(param1:§?"-§, param2:Sprite, param3:b2World, param4:§!w§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(!_loc12_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§?"-§) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc6_ || _loc3_)
            {
               if(!§§pop())
               {
                  if(!_loc5_)
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
         var _loc2_:Number = getBody().GetPosition().x;
         var _loc3_:Number = getBody().GetPosition().y;
         §§push(param1);
         §§push(§7"2§);
         §§push(_loc2_);
         §§push(_loc3_);
         if(_loc6_ || _loc2_)
         {
            §§push(§§pop() + 0.01);
         }
         var _loc4_:§]"5§;
         (_loc4_ = §§pop().addObject(§§pop(),§§pop(),§§pop(),0,false,true,true,scale)).§-"<§ = true;
         if(_loc6_ || param1)
         {
            _loc4_.getBody().SetLinearVelocity(new b2Vec2(0,100));
            do
            {
               getBody().ApplyImpulse(new b2Vec2(30 * getBody().GetMass(),-60 * getBody().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
            }
            while(!_loc6_);
            
         }
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            super.applyDamage(param1,param2,param3,param4,param5,param6);
         }
         while(§6S§)
         {
            if(!_loc8_)
            {
               if(!_loc7_)
               {
                  continue;
               }
               §@!P§ = §'">§ - 1;
            }
            do
            {
               §[!g§.setDamagedFrame();
            }
            while(!(_loc7_ || param3));
            
            break;
         }
         return §@!P§;
      }
   }
}
