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
            while(_loc13_ && param3);
            
         }
      }
      
      override public function addDestructionParticles(param1:§+F§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§,!0§)
            {
               addr21:
               §§push(§1!e§.§+g§);
               if(_loc3_ || param1)
               {
                  §§push(§§pop());
                  if(_loc4_ && _loc2_)
                  {
                     addr48:
                     §§push(§§pop());
                     if(!(_loc4_ && param1))
                     {
                        addr57:
                        var _loc2_:String = §§pop();
                        if(!_loc4_)
                        {
                           if(§4!c§ != "")
                           {
                              param1.§0!>§(§4!c§,_loc2_,§+F§.§+!X§,§1!e§.§'!K§,§5b§().GetPosition().x,§5b§().GetPosition().y - 1,2000,"",§1!e§.§ !h§,0,0,0,0,1,20,true);
                              if(_loc3_ || this)
                              {
                                 addr123:
                              }
                              else
                              {
                                 addr149:
                              }
                              return;
                           }
                           if(!_loc4_)
                           {
                              param1.§ K§(_loc2_,§+F§.§+!X§,§1!e§.§'!K§,§5b§().GetPosition().x,§5b§().GetPosition().y - 1,2000,"",§1!e§.§ !h§);
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr123);
                     }
                  }
               }
               §§goto(addr57);
            }
            else
            {
               §§push(§1!e§.§@v§);
               if(_loc3_ || _loc2_)
               {
                  §§goto(addr48);
               }
            }
            §§goto(addr57);
         }
         §§goto(addr21);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:Number;
         §§push(_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6));
         if(_loc8_)
         {
            §§push(§§pop() <= 0);
            if(_loc8_)
            {
               §§push(§§pop());
               if(_loc8_)
               {
                  if(§§pop())
                  {
                     if(!_loc9_)
                     {
                        §§pop();
                        if(_loc8_ || param1)
                        {
                           §§push(param3);
                           if(_loc8_ || this)
                           {
                              addr121:
                              §§push(Boolean(§§pop()));
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop());
                                 addr122:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          §§pop();
                                          addr124:
                                          loop3:
                                          while(true)
                                          {
                                             §§push(param4);
                                             if(_loc8_ || param3)
                                             {
                                                if(!(_loc8_ || param3))
                                                {
                                                   continue loop6;
                                                }
                                                addr79:
                                                if(!(_loc8_ || param3))
                                                {
                                                   continue loop4;
                                                }
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   addr97:
                                                   while(true)
                                                   {
                                                      break loop3;
                                                   }
                                                   §§goto(addr79);
                                                }
                                             }
                                             break;
                                          }
                                          while(§§pop())
                                          {
                                             if(!(_loc9_ && param3))
                                             {
                                                this.§,!0§ = true;
                                             }
                                             if(_loc8_)
                                             {
                                                addr111:
                                                break;
                                             }
                                             §§goto(addr124);
                                          }
                                          §§goto(addr60);
                                       }
                                       addr123:
                                    }
                                    §§goto(addr97);
                                 }
                              }
                              addr121:
                           }
                           §§goto(addr121);
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr121);
               }
               §§goto(addr122);
            }
            §§goto(addr123);
         }
         addr60:
         return _loc7_;
      }
      
      override protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(0.3);
         if(!_loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         if(!(_loc2_ && this))
         {
            §§push(Math.abs(§5b§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * _loc1_);
            loop0:
            while(true)
            {
               §§push(§§pop());
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr152:
                        while(true)
                        {
                           §§push(Math.abs(§5b§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * _loc1_);
                           while(_loc3_ || _loc1_)
                           {
                              if(!(_loc2_ && _loc3_))
                              {
                                 return §§pop();
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc2_ && _loc2_)
                     {
                        break;
                     }
                     if(!§§pop())
                     {
                        loop7:
                        while(true)
                        {
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    if(!_loc2_)
                                    {
                                       §§push(false);
                                       break;
                                    }
                                    continue loop7;
                                 }
                                 if(_loc3_)
                                 {
                                    addr30:
                                    §§push(true);
                                    if(!_loc3_)
                                    {
                                       break;
                                    }
                                    if(!(_loc3_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    §§goto(addr41);
                                 }
                                 §§goto(addr152);
                              }
                              §§goto(addr30);
                           }
                           §§goto(addr84);
                        }
                        addr91:
                     }
                     while(!_loc2_)
                     {
                        §§pop();
                        while(true)
                        {
                           §§push(Math.abs(§5b§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * _loc1_);
                        }
                        if(_loc3_ || _loc3_)
                        {
                           §§goto(addr91);
                        }
                     }
                     continue loop0;
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr137);
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(this.§;!x§ > 0)
            {
               §§push(this);
               §§push(this.§;!x§);
               if(_loc2_ || this)
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§;!x§ = §§pop();
               do
               {
                  §?!M§.mTryToScream = §'!%§.§2<§;
               }
               while(_loc3_);
               
               §§push(true);
               addr73:
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
         §§goto(addr73);
      }
      
      public function §,!E§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§;!x§ = §0;§.§#N§;
         }
         do
         {
            §?!M§.mTryToScream = §'!%§.§2<§;
            do
            {
               playScreamingSoundEffect();
            }
            while(!_loc1_);
            
         }
         while(_loc2_);
         
      }
   }
}
