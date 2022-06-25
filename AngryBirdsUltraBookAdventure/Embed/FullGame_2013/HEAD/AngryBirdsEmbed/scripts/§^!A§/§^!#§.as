package §^!A§
{
   import §&o§.Sprite;
   import §4@§.§2!H§;
   import §4@§.§<!6§;
   import §6A§.§ !§;
   import §6A§.§#!E§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class §^!#§ extends §#z§
   {
      
      public static const §;!4§:Number = 0.3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §;!4§ = 0.3;
         }
      }
      
      private var §+z§:Boolean = false;
      
      private var §,!K§:Number = 0;
      
      public function §^!#§(param1:§@H§, param2:Sprite, param3:b2World, param4:§ !§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(!(_loc14_ && param1))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
            if(!(_loc14_ && this))
            {
               §§goto(addr62);
            }
            §§goto(addr72);
         }
         addr62:
         §4N§ = param11;
         if(!(_loc14_ && this))
         {
            addr72:
            §;!0§.limitMultiplier = §;!4§;
         }
      }
      
      override public function addDestructionParticles(param1:§2!H§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§+z§)
            {
               §§goto(addr27);
            }
            else
            {
               §§push(§<!6§.§`7§);
               if(!_loc3_)
               {
                  §§goto(addr39);
               }
            }
            §§goto(addr42);
         }
         addr27:
         §§push(§<!6§.§'l§);
         if(!_loc3_)
         {
            §§push(§§pop());
            if(_loc4_)
            {
               addr42:
               §§push(§§pop());
            }
            else
            {
               addr39:
               §§push(§§pop());
               if(_loc4_)
               {
                  §§goto(addr42);
               }
            }
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            if(§4N§ == "")
            {
               if(!(_loc3_ && this))
               {
                  param1.§4#§(_loc2_,§2!H§.§"!5§,§<!6§.§8!<§,§'[§().GetPosition().x,§'[§().GetPosition().y - 1,2000,"",§<!6§.§;k§);
                  if(_loc4_ || this)
                  {
                  }
                  §§goto(addr132);
               }
            }
            else
            {
               param1.§?e§(§4N§,_loc2_,§2!H§.§"!5§,§<!6§.§8!<§,§'[§().GetPosition().x,§'[§().GetPosition().y - 1,2000,"",§<!6§.§;k§,0,0,0,0,1,20,true);
            }
         }
         addr132:
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number;
         §§push(_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6));
         if(_loc8_ || param2)
         {
            §§push(§§pop() <= 0);
            §§push(§§pop() <= 0);
            if(_loc8_ || param3)
            {
               if(§§pop())
               {
                  if(!_loc9_)
                  {
                     §§pop();
                     if(_loc8_ || param3)
                     {
                        §§push(param3);
                        if(!_loc9_)
                        {
                           §§push(Boolean(§§pop()));
                           if(!_loc9_)
                           {
                              addr81:
                              if(§§pop())
                              {
                                 §§goto(addr83);
                              }
                           }
                           §§goto(addr95);
                        }
                        §§goto(addr83);
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr83);
               }
            }
            §§goto(addr81);
         }
         addr83:
         §§pop();
         if(_loc8_)
         {
            addr86:
            §§push(param4);
            if(!(_loc9_ && this))
            {
               addr95:
               if(§§pop())
               {
                  if(!(_loc9_ && param2))
                  {
                     this.§+z§ = true;
                  }
               }
            }
            §§goto(addr95);
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(this.§,!K§ > 0)
            {
               if(_loc3_ || param1)
               {
                  §§push(this);
                  §§push(this.§,!K§);
                  if(!(_loc2_ && _loc3_))
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§,!K§ = §§pop();
                  if(!_loc2_)
                  {
                     §;S§.mTryToScream = §[!J§.§`"§;
                     if(_loc3_)
                     {
                        addr76:
                        §§push(true);
                        if(!(_loc2_ && this))
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr85:
                        §§push(super.updateScreamingFrameAnimations(param1));
                     }
                     return §§pop();
                  }
                  §§goto(addr76);
               }
            }
            §§goto(addr85);
         }
         §§goto(addr76);
      }
      
      public function §'R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§,!K§ = §#!E§.§<[§;
            if(_loc1_ || _loc1_)
            {
               addr44:
               §;S§.mTryToScream = §[!J§.§`"§;
               if(_loc1_)
               {
                  playScreamingSoundEffect();
               }
            }
            return;
         }
         §§goto(addr44);
      }
   }
}
