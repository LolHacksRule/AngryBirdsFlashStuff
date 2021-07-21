package §>!'§
{
   import § !t§.b2World;
   import §#N§.§!r§;
   import §#N§.§<!r§;
   import §-!`§.Sprite;
   import §<!<§.§7E§;
   import §<!<§.§;J§;
   import §?s§.b2Settings;
   
   public class §3^§ extends §5!6§
   {
       
      
      private var §0!m§:Boolean = false;
      
      private var §-!I§:Number = 0;
      
      public function §3^§(param1:§'!Y§, param2:Sprite, param3:b2World, param4:§7E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         if(!(_loc11_ && this))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
      }
      
      override public function addDestructionParticles(param1:§<!r§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(this.§0!m§)
            {
               addr22:
               §§push(§!r§.§[#§);
               if(!_loc3_)
               {
                  §§goto(addr63);
               }
            }
            else
            {
               §§push(§!r§.§implements§);
               if(!_loc3_)
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     §§goto(addr62);
                  }
                  addr63:
                  §§push(§§pop());
                  if(_loc4_ || this)
                  {
                     addr62:
                     §§push(§§pop());
                  }
                  var _loc2_:* = §§pop();
                  if(_loc4_)
                  {
                     param1.§1&§(_loc2_,§<!r§.§1N§,§!r§.§0!_§,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§!r§.§%1§);
                  }
                  return;
               }
            }
            §§goto(addr62);
         }
         §§goto(addr22);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:Number;
         §§push(_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6));
         if(!_loc8_)
         {
            §§push(§§pop() <= 0);
            if(!_loc8_)
            {
               §§push(§§pop());
               if(_loc9_ || param1)
               {
                  if(§§pop())
                  {
                     §§goto(addr53);
                  }
               }
               §§goto(addr73);
            }
            addr53:
            §§pop();
            if(!(_loc8_ && param2))
            {
               addr73:
               §§push(Boolean(param3));
               if(Boolean(param3))
               {
                  if(!(_loc8_ && this))
                  {
                     §§pop();
                     §§goto(addr93);
                  }
                  §§push(Boolean(§§pop()));
               }
               if(§§pop())
               {
                  if(_loc9_)
                  {
                     this.§0!m§ = true;
                  }
               }
            }
            §§goto(addr93);
         }
         addr93:
         if(_loc9_)
         {
            §§push(param4);
         }
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(0.3);
         if(!(_loc3_ && _loc1_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc3_ && this))
         {
            §§push(Math.abs(getBody().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * _loc1_);
            §§push(Math.abs(getBody().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * _loc1_);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§pop();
                     if(!_loc3_)
                     {
                        addr84:
                        §§push(Math.abs(getBody().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * _loc1_);
                        if(Math.abs(getBody().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * _loc1_)
                        {
                           if(_loc2_)
                           {
                              §§pop();
                              if(!_loc3_)
                              {
                                 addr91:
                                 §§push(Math.abs(getBody().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * _loc1_);
                                 if(_loc3_)
                                 {
                                 }
                                 §§goto(addr109);
                              }
                              addr108:
                              addr109:
                              return §§pop();
                              §§push(false);
                           }
                        }
                        if(§§pop())
                        {
                           if(_loc2_)
                           {
                              return true;
                           }
                        }
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr109);
               }
            }
            §§goto(addr84);
         }
         §§goto(addr91);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§-!I§ > 0)
            {
               if(_loc3_ || _loc2_)
               {
                  §§push(this);
                  §§push(this.§-!I§);
                  if(_loc3_ || this)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§-!I§ = §§pop();
                  if(_loc3_)
                  {
                     §0!E§.mTryToScream = §6!N§.§0+§;
                     if(!_loc2_)
                     {
                        addr71:
                        §§push(true);
                        if(!(_loc2_ && this))
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
               }
               §§goto(addr71);
            }
         }
         §§goto(addr80);
      }
      
      public function §6K§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§-!I§ = §;J§.§+!J§;
            if(!_loc1_)
            {
               §0!E§.mTryToScream = §6!N§.§0+§;
               if(_loc2_ || _loc1_)
               {
                  addr46:
                  playScreamingSoundEffect();
               }
               return;
            }
         }
         §§goto(addr46);
      }
   }
}
