package §9"%§
{
   import §1!$§.Sprite;
   import §48§.b2World;
   import §9"!§.§4"F§;
   import §9"!§.§9"3§;
   import §]!4§.§'G§;
   import §]!4§.§^!f§;
   
   public class §="$§ extends §#+§
   {
      
      public static const §>!e§:Number = 0.3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §>!e§ = 0.3;
         }
      }
      
      private var §9!-§:Boolean = false;
      
      private var §'!0§:Number = 0;
      
      public function §="$§(param1:§]a§, param2:Sprite, param3:b2World, param4:§9"3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_ || param3)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
         while(true)
         {
            § R§ = param11;
            while(!(_loc14_ && param1))
            {
               §],§.limitMultiplier = §>!e§;
               if(!(_loc14_ && this))
               {
                  return;
               }
            }
         }
      }
      
      override public function addDestructionParticles(param1:§^!f§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§9!-§)
            {
               addr21:
               §§push(§'G§.§?!s§);
               if(!(_loc4_ && param1))
               {
                  §§push(§§pop());
                  if(_loc3_ || param1)
                  {
                  }
                  addr51:
                  §§push(§§pop());
               }
            }
            else
            {
               §§push(§'G§.§9!>§);
               if(_loc3_)
               {
                  §§push(§§pop());
                  if(!(_loc4_ && _loc2_))
                  {
                     §§goto(addr51);
                  }
               }
            }
            var _loc2_:* = §§pop();
            if(_loc3_ || param1)
            {
               if(§ R§ != "")
               {
                  param1.§4!P§(§ R§,_loc2_,§^!f§.§>"F§,§'G§.§5!l§,§=!y§().GetPosition().x,§=!y§().GetPosition().y - 1,2000,"",§'G§.§0=§,0,0,0,0,1,20,true);
                  if(!_loc4_)
                  {
                     if(_loc4_ && param1)
                     {
                        addr129:
                        param1.§;!u§(_loc2_,§^!f§.§>"F§,§'G§.§5!l§,§=!y§().GetPosition().x,§=!y§().GetPosition().y - 1,2000,"",§'G§.§0=§);
                        addr149:
                     }
                     return;
                  }
                  §§goto(addr149);
               }
            }
            §§goto(addr129);
         }
         §§goto(addr21);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number;
         §§push(_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6));
         if(!(_loc9_ && param1))
         {
            §§push(§§pop() <= 0);
            if(_loc8_)
            {
               §§push(§§pop());
               if(!(_loc9_ && param1))
               {
                  if(§§pop())
                  {
                     if(_loc8_)
                     {
                        §§pop();
                        if(_loc8_ || param1)
                        {
                           §§push(param3);
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(!(_loc9_ && this))
                              {
                                 addr116:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    §§goto(addr117);
                                 }
                                 addr116:
                              }
                              §§goto(addr118);
                           }
                           addr108:
                        }
                        §§goto(addr119);
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr116);
               }
               addr117:
               loop3:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        §§goto(addr119);
                     }
                     addr118:
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(!(_loc9_ && this))
                        {
                           if(!_loc9_)
                           {
                              this.§9!-§ = true;
                              break loop3;
                           }
                           addr119:
                           §§goto(addr68);
                        }
                        break loop3;
                     }
                     §§goto(addr68);
                  }
               }
               §§goto(addr68);
            }
            §§goto(addr116);
         }
         addr68:
         while(true)
         {
            §§push(param4);
            if(!_loc9_)
            {
               §§push(Boolean(§§pop()));
            }
            if(!_loc8_)
            {
               continue loop2;
            }
            if(!_loc8_)
            {
               continue loop1;
            }
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(this.§'!0§ > 0)
            {
               if(!_loc3_)
               {
                  §§push(this);
                  §§push(this.§'!0§);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§'!0§ = §§pop();
               }
               do
               {
                  §"!&§.mTryToScream = §#!D§.§%"$§;
               }
               while(!_loc2_);
               
               return true;
            }
            else
            {
               addr24:
               §§push(super.updateScreamingFrameAnimations(param1));
               if(_loc2_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr24);
      }
      
      public function §4!B§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§'!0§ = §4"F§.§4"E§;
            while(true)
            {
               §"!&§.mTryToScream = §#!D§.§%"$§;
               §§goto(addr56);
            }
         }
         addr56:
         while(true)
         {
            playScreamingSoundEffect();
            if(!_loc2_)
            {
               if(!(_loc2_ && _loc2_))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
   }
}
