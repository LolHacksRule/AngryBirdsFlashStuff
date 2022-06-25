package §%Q§
{
   import §'!9§.Sprite;
   import §,!5§.§0;§;
   import §,!5§.§^g§;
   import §7!u§.b2Settings;
   import §]V§.§+F§;
   import §]V§.§1!e§;
   import §`w§.b2World;
   
   public class §6j§ extends § !v§
   {
       
      
      private var §,!0§:Boolean = false;
      
      private var §;!x§:Number = 0;
      
      public function §6j§(param1:§=[§, param2:Sprite, param3:b2World, param4:§^g§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = true;
         if(!(_loc13_ && param3))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
            do
            {
               §4!c§ = param11;
            }
            while(!_loc14_);
            
         }
      }
      
      override public function addDestructionParticles(param1:§+F§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            if(this.§,!0§)
            {
               addr26:
               §§push(§1!e§.§+g§);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§pop());
                  if(_loc3_ || _loc2_)
                  {
                     addr43:
                  }
                  addr57:
                  var _loc2_:String = §§pop();
                  addr56:
                  if(!_loc4_)
                  {
                     if(§4!c§ != "")
                     {
                        param1.§0!>§(§4!c§,_loc2_,§+F§.§+!X§,§1!e§.§'!K§,§5b§().GetPosition().x,§5b§().GetPosition().y - 1,2000,"",§1!e§.§ !h§,0,0,0,0,1,20,true);
                        if(!(_loc4_ && param1))
                        {
                           if(!(_loc3_ || this))
                           {
                              addr134:
                              param1.§ K§(_loc2_,§+F§.§+!X§,§1!e§.§'!K§,§5b§().GetPosition().x,§5b§().GetPosition().y - 1,2000,"",§1!e§.§ !h§);
                              addr154:
                           }
                           else
                           {
                              addr130:
                           }
                           return;
                        }
                        §§goto(addr154);
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr130);
               }
               §§goto(addr43);
            }
            else
            {
               §§push(§1!e§.§@v§);
               if(!(_loc4_ && param1))
               {
                  §§push(§§pop());
                  if(!_loc4_)
                  {
                     §§goto(addr56);
                  }
               }
            }
            §§goto(addr57);
         }
         §§goto(addr26);
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
            if(_loc9_)
            {
               §§push(§§pop());
               if(!(_loc8_ && param2))
               {
                  if(§§pop())
                  {
                     if(!(_loc8_ && this))
                     {
                        §§pop();
                        if(_loc9_)
                        {
                           §§push(param3);
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(!(_loc8_ && param3))
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    addr133:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          while(true)
                                          {
                                             §§goto(addr94);
                                          }
                                          addr93:
                                       }
                                       §§goto(addr134);
                                    }
                                 }
                                 addr132:
                              }
                              §§goto(addr134);
                           }
                        }
                        §§goto(addr135);
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr132);
               }
               §§goto(addr133);
            }
            addr94:
            §§goto(addr66);
         }
         addr66:
         while(§§pop())
         {
            if(!(_loc8_ && param1))
            {
               this.§,!0§ = true;
            }
            if(!(_loc8_ && param2))
            {
               break;
            }
            addr135:
            loop1:
            while(true)
            {
               §§push(param4);
               if(!(_loc9_ || param2))
               {
                  continue loop0;
               }
               if(!(_loc8_ && param3))
               {
                  §§push(Boolean(§§pop()));
                  continue loop0;
               }
               addr134:
               addr134:
               addr134:
               while(true)
               {
                  §§pop();
                  continue loop1;
               }
            }
         }
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(0.3);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(_loc3_)
         {
            §§push(Math.abs(§5b§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * _loc1_);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr147:
                        while(true)
                        {
                           §§push(Math.abs(§5b§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * _loc1_);
                        }
                     }
                     addr146:
                  }
                  while(true)
                  {
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc2_ && _loc3_)
                        {
                           continue loop1;
                        }
                        if(!§§pop())
                        {
                           loop9:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    while(true)
                                    {
                                       §§push(false);
                                       break loop9;
                                    }
                                    addr85:
                                 }
                                 else
                                 {
                                    if(!_loc2_)
                                    {
                                       addr25:
                                       §§push(true);
                                       if(!(_loc3_ || this))
                                       {
                                          break;
                                       }
                                       if(_loc3_)
                                       {
                                          return §§pop();
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             if(_loc2_ && _loc3_)
                                             {
                                                break;
                                             }
                                             continue loop0;
                                          }
                                          addr129:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop8;
                                          }
                                       }
                                       §§goto(addr146);
                                       addr50:
                                    }
                                    while(_loc3_)
                                    {
                                       §§goto(addr50);
                                       §§push(Math.abs(§5b§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * _loc1_);
                                    }
                                    §§goto(addr147);
                                 }
                              }
                              §§goto(addr25);
                           }
                           continue;
                           addr81:
                        }
                        §§goto(addr129);
                     }
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§;!x§ > 0)
            {
               if(!(_loc3_ && _loc3_))
               {
                  §§push(this);
                  §§push(this.§;!x§);
                  if(!_loc3_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§;!x§ = §§pop();
                  §?!M§.mTryToScream = §'!%§.§2<§;
                  addr91:
                  §§push(true);
                  addr91:
               }
               §§goto(addr91);
            }
            else
            {
               §§push(super.updateScreamingFrameAnimations(param1));
               if(_loc2_)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr91);
      }
      
      public function §,!E§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§;!x§ = §0;§.§#N§;
            while(true)
            {
               §?!M§.mTryToScream = §'!%§.§2<§;
               §§goto(addr56);
            }
         }
         addr56:
         while(true)
         {
            playScreamingSoundEffect();
            if(!(_loc2_ && this))
            {
               if(!_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
   }
}
