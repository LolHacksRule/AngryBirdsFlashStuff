package §+!8§
{
   import §"!I§.§^!2§;
   import §2Y§.Sprite;
   import §3!R§.b2World;
   import §6A§.b2Vec2;
   
   public class §-!O§ extends §`!O§
   {
      
      public static const §@!d§:String = "MISC_FOOD_EGG";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §@!d§ = "MISC_FOOD_EGG";
         }
      }
      
      public function §-!O§(param1:§-!N§, param2:Sprite, param3:b2World, param4:§^!2§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Boolean = true, param11:Number = 1.0)
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         if(_loc13_ || this)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         }
      }
      
      override public function activateSpecialPower(param1:§-!N§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && _loc3_))
         {
            §§push(super.activateSpecialPower(param1));
            if(_loc5_ || this)
            {
               if(!§§pop())
               {
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(false);
                  }
                  else
                  {
                     §§goto(addr43);
                  }
               }
               §§goto(addr43);
            }
            return §§pop();
         }
         addr43:
         var _loc2_:Number = §0c§().GetPosition().x;
         var _loc3_:Number = §0c§().GetPosition().y;
         §§push(param1);
         §§push(§@!d§);
         §§push(_loc2_);
         §§push(_loc3_);
         if(!(_loc6_ && _loc3_))
         {
            §§push(§§pop() + 0.01);
         }
         var _loc4_:§,_§;
         (_loc4_ = §§pop().§@!,§(§§pop(),§§pop(),§§pop(),0,false,true,true,scale)).§0!>§ = true;
         if(!_loc6_)
         {
            _loc4_.§0c§().SetLinearVelocity(new b2Vec2(0,100));
         }
         do
         {
            §0c§().ApplyImpulse(new b2Vec2(30 * §0c§().GetMass(),-60 * §0c§().GetMass()),new b2Vec2(_loc2_ - 0.5,_loc3_));
         }
         while(!_loc5_);
         
         return true;
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            super.applyDamage(param1,param2,param3,param4,param5,param6);
            while(§!!M§)
            {
               do
               {
                  §[h§ = §'!V§ - 1;
                  do
                  {
                     §[r§.setDamagedFrame();
                  }
                  while(!_loc8_);
                  
               }
               while(_loc7_);
               
               if(_loc8_ || param2)
               {
                  addr49:
                  break;
               }
            }
            return §[h§;
         }
         §§goto(addr49);
      }
   }
}
