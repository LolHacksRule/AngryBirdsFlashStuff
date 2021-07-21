package §&!P§
{
   import §"J§.b2World;
   import §%!0§.§,4§;
   import §%!0§.§,g§;
   import §+!-§.Sprite;
   import §case§.§6!Q§;
   import §case§.§`!E§;
   
   public class §&!a§ extends §!>§
   {
      
      public static const §5e§:Number = 0.3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §5e§ = 0.3;
         }
      }
      
      private var §<O§:Boolean = false;
      
      private var §+7§:Number = 0;
      
      public function §&!a§(param1:§^!!§, param2:Sprite, param3:b2World, param4:§,4§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(_loc13_)
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
            while(true)
            {
               §,H§ = param11;
               while(!_loc14_)
               {
                  §^!?§.limitMultiplier = §5e§;
                  if(_loc13_ || param1)
                  {
                     return;
                     addr44:
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      override public function addDestructionParticles(param1:§6!Q§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§<O§)
            {
               addr27:
               §§push(§`!E§.§5!d§);
               if(_loc4_ || this)
               {
                  addr58:
                  §§push(§§pop());
                  if(_loc4_ || _loc3_)
                  {
                     addr57:
                     §§push(§§pop());
                     addr44:
                  }
                  var _loc2_:* = §§pop();
                  if(_loc4_)
                  {
                     if(§,H§ != "")
                     {
                        param1.§-"<§(§,H§,_loc2_,§6!Q§.§+f§,§`!E§.§;!o§,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§`!E§.§,K§,0,0,0,0,1,20,true);
                        if(!_loc3_)
                        {
                           if(_loc3_ && param1)
                           {
                              param1.§'p§(_loc2_,§6!Q§.§+f§,§`!E§.§;!o§,getBody().GetPosition().x,getBody().GetPosition().y - 1,2000,"",§`!E§.§,K§);
                              addr150:
                              addr120:
                           }
                           return;
                        }
                        §§goto(addr150);
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr150);
               }
               §§goto(addr44);
            }
            else
            {
               §§push(§`!E§.§8!&§);
               if(!_loc3_)
               {
                  §§push(§§pop());
                  if(!(_loc3_ && _loc2_))
                  {
                     §§goto(addr57);
                  }
                  §§goto(addr58);
               }
            }
            §§goto(addr57);
         }
         §§goto(addr27);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:Number;
         §§push(_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6));
         if(!(_loc8_ && param3))
         {
            §§push(§§pop() <= 0);
            if(!_loc8_)
            {
               §§push(§§pop());
               if(_loc9_ || param3)
               {
                  if(§§pop())
                  {
                     if(_loc9_)
                     {
                        §§pop();
                        if(!_loc8_)
                        {
                           §§push(param3);
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              if(!(_loc8_ && param2))
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    addr123:
                                    loop4:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          addr124:
                                          while(true)
                                          {
                                             §§pop();
                                             §§goto(addr125);
                                          }
                                          addr124:
                                       }
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc8_ && param1))
                                             {
                                                if(!_loc8_)
                                                {
                                                   this.§<O§ = true;
                                                   break loop4;
                                                }
                                                addr125:
                                                §§goto(addr64);
                                             }
                                             break loop4;
                                          }
                                          §§goto(addr64);
                                       }
                                    }
                                 }
                                 addr122:
                              }
                              §§goto(addr124);
                           }
                        }
                        §§goto(addr64);
                     }
                     §§goto(addr124);
                  }
                  §§goto(addr122);
               }
               §§goto(addr123);
            }
            §§goto(addr85);
         }
         addr64:
         while(true)
         {
            §§push(param4);
            if(_loc9_ || param1)
            {
               continue loop0;
            }
            addr86:
            while(true)
            {
               if(_loc8_)
               {
                  continue loop1;
               }
            }
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§+7§ > 0)
            {
               do
               {
                  §§push(this);
                  §§push(this.§+7§);
                  if(_loc2_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§+7§ = §§pop();
                  do
                  {
                     §8C§.mTryToScream = §0;§.§2!_§;
                  }
                  while(!(_loc2_ || _loc2_));
                  
               }
               while(!(_loc2_ || _loc3_));
               
               §§push(true);
               addr88:
            }
            else
            {
               §§push(super.updateScreamingFrameAnimations(param1));
               if(!(_loc3_ && _loc2_))
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr88);
      }
      
      public function §!!'§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§+7§ = §,g§.§&e§;
            while(true)
            {
               §8C§.mTryToScream = §0;§.§2!_§;
               loop1:
               while(_loc2_ || this)
               {
                  while(true)
                  {
                     playScreamingSoundEffect();
                     if(_loc2_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr72);
      }
   }
}
