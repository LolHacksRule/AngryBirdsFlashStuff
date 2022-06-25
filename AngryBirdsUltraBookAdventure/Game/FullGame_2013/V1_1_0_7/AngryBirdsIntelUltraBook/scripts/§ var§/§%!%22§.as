package § var§
{
   import § ! §.§=!%§;
   import § ! §.§>p§;
   import §#I§.b2World;
   import §40§.§2!y§;
   import §40§.§5G§;
   import §`g§.Sprite;
   
   public class §%!"§ extends §&Y§
   {
      
      public static const §6!X§:Number = 0.3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §6!X§ = 0.3;
         }
      }
      
      private var §?T§:Boolean = false;
      
      private var §0P§:Number = 0;
      
      public function §%!"§(param1:§ 4§, param2:Sprite, param3:b2World, param4:§5G§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:String = "", param12:int = 0)
      {
         var _loc13_:Boolean = true;
         var _loc14_:Boolean = false;
         if(!(_loc14_ && this))
         {
            super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10);
         }
         do
         {
            §?!T§ = param11;
            do
            {
               §1!7§.limitMultiplier = §6!X§;
            }
            while(!(_loc13_ || param1));
            
         }
         while(_loc14_);
         
      }
      
      override public function addDestructionParticles(param1:§=!%§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(this.§?T§)
            {
               addr21:
               §§push(§>p§.§#!J§);
               if(!_loc4_)
               {
                  addr42:
                  §§push(§§pop());
                  if(!(_loc4_ && _loc2_))
                  {
                     addr41:
                     §§push(§§pop());
                  }
                  var _loc2_:* = §§pop();
                  if(_loc3_)
                  {
                     if(§?!T§ != "")
                     {
                        param1.§;4§(§?!T§,_loc2_,§=!%§.§2k§,§>p§.§>b§,§63§().GetPosition().x,§63§().GetPosition().y - 1,2000,"",§>p§.§4?§,0,0,0,0,1,20,true);
                        if(!_loc4_)
                        {
                           if(_loc4_)
                           {
                              addr109:
                              param1.§-M§(_loc2_,§=!%§.§2k§,§>p§.§>b§,§63§().GetPosition().x,§63§().GetPosition().y - 1,2000,"",§>p§.§4?§);
                              addr129:
                           }
                           return;
                        }
                        §§goto(addr129);
                     }
                  }
                  §§goto(addr109);
               }
            }
            else
            {
               §§push(§>p§.§@!J§);
               if(!_loc4_)
               {
                  §§push(§§pop());
                  if(_loc3_)
                  {
                     §§goto(addr41);
                  }
                  §§goto(addr42);
               }
            }
            §§goto(addr41);
         }
         §§goto(addr21);
      }
      
      override public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:Number;
         §§push(_loc7_ = super.applyDamage(param1,param2,param3,param4,param5,param6));
         if(!(_loc8_ && param1))
         {
            §§push(§§pop() <= 0);
            if(_loc9_ || param3)
            {
               §§push(§§pop());
               if(!_loc8_)
               {
                  if(§§pop())
                  {
                     if(_loc9_ || this)
                     {
                        §§pop();
                        if(!(_loc8_ && param1))
                        {
                           §§push(param3);
                           if(!(_loc8_ && param3))
                           {
                              addr132:
                              §§push(Boolean(§§pop()));
                              loop2:
                              while(true)
                              {
                                 §§push(§§pop());
                                 addr133:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop5:
                                       while(true)
                                       {
                                          §§pop();
                                          addr135:
                                          while(true)
                                          {
                                             §§push(param4);
                                             if(_loc9_)
                                             {
                                                if(_loc8_)
                                                {
                                                   continue loop5;
                                                }
                                                §§push(Boolean(§§pop()));
                                             }
                                             if(!(_loc9_ || param1))
                                             {
                                                continue loop2;
                                             }
                                          }
                                       }
                                       addr134:
                                    }
                                    while(true)
                                    {
                                       §§goto(addr94);
                                    }
                                 }
                              }
                              addr132:
                           }
                           §§goto(addr132);
                        }
                        §§goto(addr135);
                     }
                     addr94:
                     §§goto(addr76);
                  }
                  §§goto(addr132);
               }
               §§goto(addr133);
            }
            §§goto(addr134);
         }
         addr76:
         while(§§pop())
         {
            if(!(_loc8_ && param3))
            {
               if(!(_loc8_ && this))
               {
                  this.§?T§ = true;
               }
               else
               {
                  §§goto(addr135);
               }
            }
            break;
         }
         return _loc7_;
      }
      
      override protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§0P§ > 0)
            {
               do
               {
                  §§push(this);
                  §§push(this.§0P§);
                  if(_loc3_ || _loc2_)
                  {
                     §§push(§§pop() - param1);
                  }
                  §§pop().§0P§ = §§pop();
                  §+!j§.mTryToScream = §7!r§.§<!c§;
               }
               while(_loc2_ && this);
               
               §§push(true);
               addr79:
            }
            else
            {
               §§push(super.updateScreamingFrameAnimations(param1));
               if(_loc3_ || this)
               {
                  return §§pop();
               }
            }
            return §§pop();
         }
         §§goto(addr79);
      }
      
      public function §0"!§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§0P§ = §2!y§.§-!k§;
            while(true)
            {
               §+!j§.mTryToScream = §7!r§.§<!c§;
               §§goto(addr47);
            }
         }
         addr47:
         while(true)
         {
            playScreamingSoundEffect();
            if(!_loc1_)
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
   }
}
