package §!+§
{
   import §!!>§.§!8§;
   import §!!>§.§#C§;
   import §9W§.Sprite;
   import §?b§.§&z§;
   import §?b§.§7!,§;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §6>§ extends §89§
   {
       
      
      private var §^Z§:Boolean = false;
      
      private var §9!5§:Number = 0;
      
      public function §6>§(param1:§#-§, param2:Sprite, param3:b2World, param4:§7!,§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(!(_loc14_ && param3))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
            if(!(_loc14_ && param1))
            {
               § !4§ = param11;
            }
         }
      }
      
      override public function addDestructionParticles(param1:§#C§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            if(this.§^Z§)
            {
               addr26:
               §§push(§!8§.§2]§);
               if(!_loc4_)
               {
                  §§push(§§pop());
                  if(_loc4_)
                  {
                  }
                  addr47:
                  var _loc2_:String = §§pop();
                  addr46:
                  if(_loc3_ || param1)
                  {
                     if(§ !4§ == "")
                     {
                        if(_loc3_)
                        {
                           addr70:
                           param1.§'!;§(_loc2_,§#C§.§#!'§,§!8§.§0!H§,§`t§().GetPosition().x,§`t§().GetPosition().y - 1,2000,"",§!8§.§<!§);
                           if(_loc3_ || _loc3_)
                           {
                           }
                           §§goto(addr136);
                        }
                     }
                     else
                     {
                        param1.§=!B§(§ !4§,_loc2_,§#C§.§#!'§,§!8§.§0!H§,§`t§().GetPosition().x,§`t§().GetPosition().y - 1,2000,"",§!8§.§<!§,0,0,0,0,1,20,true);
                     }
                     addr136:
                     return;
                  }
                  §§goto(addr70);
               }
            }
            else
            {
               §§push(§!8§.§0E§);
               if(!(_loc4_ && this))
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     §§goto(addr46);
                  }
                  §§goto(addr47);
               }
            }
            §§goto(addr47);
         }
         §§goto(addr26);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:Number;
         §§push(_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6));
         if(_loc9_)
         {
            §§push(§§pop() <= 0);
            §§push(§§pop() <= 0);
            if(!_loc8_)
            {
               if(§§pop())
               {
                  §§pop();
                  if(!_loc8_)
                  {
                     §§push(Boolean(param3));
                     if(!(_loc8_ && this))
                     {
                        addr68:
                        if(§§pop())
                        {
                           if(_loc9_)
                           {
                              §§pop();
                              if(_loc9_ || param1)
                              {
                                 §§goto(addr82);
                              }
                              §§goto(addr85);
                           }
                        }
                     }
                     addr82:
                     §§goto(addr80);
                  }
                  addr80:
                  if(param4)
                  {
                     if(!_loc8_)
                     {
                        addr85:
                        this.§^Z§ = true;
                     }
                  }
                  return _loc7_;
               }
            }
            §§goto(addr68);
         }
         §§goto(addr82);
      }
      
      override protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(0.3);
         if(_loc2_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!_loc3_)
         {
            §§push(Math.abs(§`t§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * _loc1_);
            §§push(Math.abs(§`t§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * _loc1_);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  if(_loc2_ || this)
                  {
                     §§pop();
                     if(!(_loc3_ && this))
                     {
                        addr94:
                        §§push(Math.abs(§`t§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * _loc1_);
                        if(Math.abs(§`t§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * _loc1_)
                        {
                           §§goto(addr96);
                        }
                        §§goto(addr109);
                     }
                     §§goto(addr117);
                  }
                  addr96:
                  §§pop();
                  if(_loc2_)
                  {
                     addr109:
                     if(Math.abs(§`t§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * _loc1_)
                     {
                        if(_loc2_ || _loc3_)
                        {
                           addr117:
                           return false;
                        }
                     }
                  }
                  return true;
               }
            }
            §§goto(addr94);
         }
         §§goto(addr109);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§9!5§ > 0)
            {
               if(!_loc2_)
               {
                  §§push(this);
                  §§push(this.§9!5§);
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§9!5§ = §§pop();
                  if(!(_loc2_ && param1))
                  {
                     §§goto(addr65);
                  }
                  §§goto(addr76);
               }
            }
            §§goto(addr80);
         }
         addr65:
         §'j§.mTryToScream = override.§`=§;
         if(!(_loc2_ && _loc2_))
         {
            addr76:
            §§push(true);
            if(!_loc2_)
            {
               return §§pop();
            }
         }
         else
         {
            addr80:
            §§push(super.updateScreamingFrameAnimations(param1));
         }
         return §§pop();
      }
      
      public function §<a§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§9!5§ = §&z§.§=!0§;
            if(!_loc1_)
            {
               §'j§.mTryToScream = override.§`=§;
               if(!_loc2_)
               {
               }
               §§goto(addr33);
            }
            playScreamingSoundEffect();
         }
         addr33:
      }
   }
}
