package §;!q§
{
   import §]z§.§#!F§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §+F§ extends §=t§
   {
       
      
      private var §+!3§:MovieClip;
      
      private var §,L§:Boolean;
      
      public function §+F§(param1:String, param2:String, param3:MovieClip, param4:Boolean = false, param5:String = null)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && param3))
         {
            this.§+!3§ = param3;
            do
            {
               super(param1,param2,param4,param5);
            }
            while(_loc7_ && this);
            
         }
      }
      
      public function set §7!W§(param1:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§+!3§ = param1;
         }
      }
      
      public function get §7!W§() : MovieClip
      {
         return this.§+!3§;
      }
      
      public function get §#c§() : Boolean
      {
         return this.§,L§;
      }
      
      override protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && this))
         {
            §§push(§§findproperty(§4>§));
            if(!(_loc7_ && param1))
            {
               §§push(param4);
               if(_loc6_)
               {
                  §§push(§§pop());
                  if(!(_loc7_ && param1))
                  {
                     §§push(§§pop());
                     if(!(_loc7_ && this))
                     {
                        if(!§§pop())
                        {
                           if(_loc6_ || param1)
                           {
                              addr58:
                              §§pop();
                              §§push(§%t§.§@!#§);
                              if(_loc6_ || param2)
                              {
                                 §§push(§§pop());
                                 if(_loc6_)
                                 {
                                    addr71:
                                    var _loc5_:*;
                                    §§push(_loc5_ = §§pop());
                                    if(_loc6_ || param3)
                                    {
                                       addr96:
                                       §§push(§§pop());
                                       if(_loc6_)
                                       {
                                          addr93:
                                          param4 = §§pop();
                                          §§push(_loc5_);
                                       }
                                       §§pop().§4>§ = §§pop();
                                       if(!_loc7_)
                                       {
                                          §7D§ = param1;
                                          loop0:
                                          while(true)
                                          {
                                             §%2§ = §#!F§.§8%§ == param1;
                                             addr181:
                                             while(true)
                                             {
                                                § in§(param1,param2,param3);
                                                continue loop0;
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §9y§.push(this);
                                          §§goto(addr142);
                                       }
                                    }
                                    §§goto(addr93);
                                 }
                              }
                              §§goto(addr96);
                           }
                        }
                     }
                     §§goto(addr71);
                  }
               }
            }
            §§goto(addr58);
         }
         §§goto(addr159);
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            §5!;§ = true;
            while(true)
            {
               §9!H§ = new §%!l§(param1,§4>§,true);
               while(!_loc6_)
               {
                  this.§+!3§.visible = false;
                  while(true)
                  {
                     this.§,L§ = true;
                     loop3:
                     for(; _loc7_ || param3; if(_loc6_ && param2)
                     {
                        continue;
                     },§§goto(addr20))
                     {
                        §9!H§.visible = true;
                        loop4:
                        while(true)
                        {
                           §§push(Boolean(§9!H§));
                           if(_loc7_)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr85:
                                    loop7:
                                    while(true)
                                    {
                                       §§push(param5);
                                       if(_loc7_ || param2)
                                       {
                                          §§push(!§§pop());
                                       }
                                       if(!(_loc6_ && param3))
                                       {
                                          while(§§pop())
                                          {
                                             if(!_loc6_)
                                             {
                                                if(_loc7_)
                                                {
                                                   continue loop4;
                                                }
                                                continue loop7;
                                             }
                                             continue loop3;
                                          }
                                          addr20:
                                          return;
                                          addr41:
                                       }
                                    }
                                 }
                                 addr84:
                              }
                              §§goto(addr41);
                           }
                           §§goto(addr84);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && this))
         {
            this.§,L§ = false;
            while(true)
            {
               this.§+!3§.visible = true;
               loop1:
               while(_loc5_ || this)
               {
                  while(§9!H§)
                  {
                     if(_loc5_ || param1)
                     {
                        §9!H§.visible = false;
                     }
                     if(_loc4_ && param2)
                     {
                        continue loop1;
                     }
                     §§goto(addr25);
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr82);
      }
   }
}
