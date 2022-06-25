package §8u§
{
   import §,_§.Sprite;
   import §3G§.§!E§;
   import §3G§.§&!"§;
   import §?t§.§,i§;
   import §?t§.§;x§;
   import com.rovio.Box2D.Dynamics.b2World;
   
   public class § !8§ extends §=Z§
   {
      
      public static const §!G§:Number = 0.3;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §!G§ = 0.3;
         }
      }
      
      private var §0d§:Boolean = false;
      
      private var §1!4§:Number = 0;
      
      public function § !8§(param1:§6a§, param2:Sprite, param3:b2World, param4:§!E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(!_loc14_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
            if(_loc13_)
            {
               §+M§ = param11;
               if(!_loc14_)
               {
                  addr47:
                  §@m§.limitMultiplier = §!G§;
               }
               return;
            }
         }
         §§goto(addr47);
      }
      
      override public function addDestructionParticles(param1:§;x§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
            if(this.§0d§)
            {
               addr26:
               §§push(§,i§.§4t§);
               if(_loc3_)
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     addr33:
                  }
                  addr52:
                  var _loc2_:String = §§pop();
                  if(!_loc4_)
                  {
                     if(§+M§ == "")
                     {
                        if(_loc3_ || _loc3_)
                        {
                           addr75:
                           param1.§8"§(_loc2_,§;x§.§]+§,§,i§.§0!&§,§?n§().GetPosition().x,§?n§().GetPosition().y - 1,2000,"",§,i§.§8H§);
                           if(!_loc3_)
                           {
                           }
                        }
                     }
                     else
                     {
                        param1.§;w§(§+M§,_loc2_,§;x§.§]+§,§,i§.§0!&§,§?n§().GetPosition().x,§?n§().GetPosition().y - 1,2000,"",§,i§.§8H§,0,0,0,0,1,20,true);
                     }
                     return;
                  }
                  §§goto(addr75);
                  addr51:
               }
               §§goto(addr33);
            }
            else
            {
               §§push(§,i§.§,!9§);
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop());
                  if(_loc3_ || param1)
                  {
                     §§goto(addr51);
                  }
               }
            }
            §§goto(addr52);
         }
         §§goto(addr26);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number;
         §§push(_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6));
         if(_loc8_ || this)
         {
            §§push(§§pop() <= 0);
            if(!(_loc9_ && this))
            {
               §§push(§§pop());
               if(!(_loc9_ && this))
               {
                  if(§§pop())
                  {
                     §§pop();
                     if(_loc8_ || param2)
                     {
                        addr82:
                        §§push(Boolean(param3));
                        if(Boolean(param3))
                        {
                           §§pop();
                           if(_loc8_ || param1)
                           {
                              §§push(param4);
                              if(!_loc9_)
                              {
                                 addr96:
                                 if(§§pop())
                                 {
                                    if(_loc9_)
                                    {
                                    }
                                    addr103:
                                    return _loc7_;
                                    addr102:
                                 }
                                 §§goto(addr102);
                              }
                              §§goto(addr96);
                           }
                           this.§0d§ = true;
                           §§goto(addr102);
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr102);
                  }
               }
            }
            §§goto(addr82);
         }
         §§goto(addr103);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            if(this.§1!4§ > 0)
            {
               if(_loc2_ || this)
               {
                  §§push(this);
                  §§push(this.§1!4§);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§1!4§ = §§pop();
                  if(_loc3_ && _loc2_)
                  {
                  }
                  addr92:
                  return super.updateScreamingFrameAnimations(param1);
                  addr89:
               }
               §7!;§.mTryToScream = §44§.§;<§;
               if(_loc2_ || _loc3_)
               {
                  §§push(true);
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  §§goto(addr89);
               }
               §§goto(addr92);
            }
         }
         §§goto(addr92);
      }
      
      public function §`!#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§1!4§ = §&!"§.§8>§;
            if(_loc1_)
            {
               §7!;§.mTryToScream = §44§.§;<§;
               if(!(_loc2_ && _loc1_))
               {
                  addr50:
                  playScreamingSoundEffect();
               }
               return;
            }
         }
         §§goto(addr50);
      }
   }
}
