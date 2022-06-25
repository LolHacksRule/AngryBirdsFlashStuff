package §%t§
{
   import §#!"§.§"U§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §3!d§ extends §9!7§
   {
       
      
      private var §^!y§:MovieClip;
      
      private var §,J§:Boolean;
      
      public function §3!d§(param1:String, param2:String, param3:MovieClip, param4:Boolean = false, param5:String = null)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param3))
         {
            this.§^!y§ = param3;
            do
            {
               super(param1,param2,param4,param5);
            }
            while(_loc6_);
            
         }
      }
      
      public function set §+!^§(param1:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§^!y§ = param1;
         }
      }
      
      public function get §+!^§() : MovieClip
      {
         return this.§^!y§;
      }
      
      public function get §5?§() : Boolean
      {
         return this.§,J§;
      }
      
      override protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            §§push(§§findproperty(§&Q§));
            if(_loc7_ || this)
            {
               §§push(param4);
               if(_loc7_)
               {
                  §§push(§§pop());
                  if(!(_loc6_ && param3))
                  {
                     §§push(§§pop());
                     if(!_loc6_)
                     {
                        if(!§§pop())
                        {
                           if(_loc7_ || param2)
                           {
                              §§pop();
                              addr50:
                              §§push(§?!a§.§+6§);
                              if(!_loc6_)
                              {
                                 addr87:
                                 §§push(§§pop());
                                 if(!_loc6_)
                                 {
                                    addr57:
                                    §§push(§§pop());
                                 }
                                 §§pop().§&Q§ = §§pop();
                                 if(!(_loc6_ && this))
                                 {
                                    §^o§ = param1;
                                    loop0:
                                    while(true)
                                    {
                                       §@!h§ = §"U§.§7!2§ == param1;
                                       while(true)
                                       {
                                          §0Y§(param1,param2,param3);
                                          loop2:
                                          for(; !_loc6_; while(_loc7_ || param3)
                                          {
                                             while(true)
                                             {
                                                addEventListener(Event.ADDED_TO_STAGE,§+T§);
                                                while(true)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      continue;
                                                   }
                                                   continue loop0;
                                                }
                                             }
                                             if(_loc6_ && param2)
                                             {
                                                continue;
                                             }
                                             §§goto(addr115);
                                          })
                                          {
                                             if(!§@!h§)
                                             {
                                                addr96:
                                                return;
                                             }
                                             while(true)
                                             {
                                                §'$§.push(this);
                                                continue loop2;
                                                addr115:
                                                if(!(_loc6_ && param2))
                                                {
                                                   §§goto(addr96);
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr155);
                              }
                              §§goto(addr87);
                           }
                        }
                        §§goto(addr57);
                     }
                     var _loc5_:* = §§pop();
                     if(!(_loc6_ && param2))
                     {
                        §§push(§§pop());
                        if(_loc7_ || param1)
                        {
                           param4 = §§pop();
                           §§push(_loc5_);
                        }
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr57);
               }
               §§goto(addr87);
            }
            §§goto(addr50);
         }
         §§goto(addr155);
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            §+!M§ = true;
            loop0:
            while(true)
            {
               §2-§ = new §1§(param1,§&Q§,true);
               loop1:
               while(true)
               {
                  this.§^!y§.visible = false;
                  while(true)
                  {
                     this.§,J§ = true;
                     addr82:
                     while(_loc6_ || param2)
                     {
                        if(_loc6_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr118);
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            this.§,J§ = false;
            while(true)
            {
               this.§^!y§.visible = true;
               loop1:
               while(_loc4_ || param1)
               {
                  while(§2-§)
                  {
                     if(!_loc5_)
                     {
                        §2-§.visible = false;
                     }
                     if(!(_loc4_ || param1))
                     {
                        continue loop1;
                     }
                     §§goto(addr34);
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr76);
      }
   }
}
