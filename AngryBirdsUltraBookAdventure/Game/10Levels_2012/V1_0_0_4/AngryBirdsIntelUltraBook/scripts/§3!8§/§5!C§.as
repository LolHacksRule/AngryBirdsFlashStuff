package §3!8§
{
   import §<z§.§^!s§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §5!C§ extends §0z§
   {
       
      
      private var §-]§:MovieClip;
      
      private var §!c§:Boolean;
      
      public function §5!C§(param1:String, param2:String, param3:MovieClip, param4:Boolean = false, param5:String = null)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param1))
         {
            this.§-]§ = param3;
            do
            {
               super(param1,param2,param4,param5);
            }
            while(_loc6_);
            
         }
      }
      
      public function set §15§(param1:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§-]§ = param1;
         }
      }
      
      public function get §15§() : MovieClip
      {
         return this.§-]§;
      }
      
      public function get §'f§() : Boolean
      {
         return this.§!c§;
      }
      
      override protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && this))
         {
            §§push(§§findproperty(§2!I§));
            if(!(_loc7_ && param2))
            {
               §§push(param4);
               if(_loc6_)
               {
                  §§push(§§pop());
                  if(_loc6_)
                  {
                     §§push(§§pop());
                     if(!(_loc7_ && param1))
                     {
                        if(!§§pop())
                        {
                           if(!(_loc7_ && param3))
                           {
                              addr53:
                              §§pop();
                              §§push(§%!5§.§+a§);
                              if(!_loc7_)
                              {
                                 addr58:
                                 §§push(§§pop());
                                 if(_loc6_ || this)
                                 {
                                    addr66:
                                    var _loc5_:*;
                                    §§push(_loc5_ = §§pop());
                                    if(_loc6_)
                                    {
                                       §§push(§§pop());
                                       if(_loc6_)
                                       {
                                          param4 = §§pop();
                                          §§push(_loc5_);
                                       }
                                    }
                                 }
                              }
                              §§pop().§2!I§ = §§pop();
                              if(!(_loc7_ && param1))
                              {
                                 § u§ = param1;
                                 addr175:
                                 while(true)
                                 {
                                    §=!&§ = §^!s§.§-!1§ == param1;
                                 }
                                 addr175:
                              }
                              loop0:
                              while(true)
                              {
                                 §5!Z§(param1,param2,param3);
                                 loop1:
                                 while(§=!&§)
                                 {
                                    loop2:
                                    for(; !(_loc7_ && param2); while(!(_loc7_ && this))
                                    {
                                       addEventListener(Event.REMOVED_FROM_STAGE,§@!K§);
                                       if(!_loc6_)
                                       {
                                          continue;
                                       }
                                       if(_loc6_)
                                       {
                                          break loop1;
                                       }
                                       §§goto(addr154);
                                    })
                                    {
                                       if(_loc6_ || param3)
                                       {
                                          §[9§.push(this);
                                          while(_loc6_)
                                          {
                                             addEventListener(Event.ADDED_TO_STAGE,§'6§);
                                             continue loop2;
                                          }
                                          continue loop1;
                                          addr154:
                                       }
                                       §§goto(addr175);
                                    }
                                    continue loop0;
                                 }
                                 return;
                              }
                           }
                           §§goto(addr58);
                        }
                     }
                     §§goto(addr66);
                  }
               }
            }
            §§goto(addr53);
         }
         §§goto(addr175);
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            §#!#§ = true;
            while(true)
            {
               §4!H§ = new §2!_§(param1,§2!I§,true);
               addr128:
               while(true)
               {
                  this.§-]§.visible = false;
               }
               addr91:
               if(!(_loc6_ || param1))
               {
                  continue;
               }
               §§push(Boolean(§4!H§));
               if(!_loc7_)
               {
                  if(§§pop())
                  {
                     loop7:
                     while(true)
                     {
                        §§pop();
                        addr84:
                        while(true)
                        {
                           §§push(param5);
                           if(!(_loc7_ && param2))
                           {
                              §§push(!§§pop());
                           }
                           if(_loc6_)
                           {
                              break;
                           }
                           continue loop7;
                        }
                     }
                     addr83:
                  }
                  for(; §§pop(); §§goto(addr84))
                  {
                     if(!_loc7_)
                     {
                        addr39:
                        if(!(_loc7_ && this))
                        {
                           addr46:
                           if(_loc6_ || this)
                           {
                              addChild(§4!H§);
                              addr66:
                              if(_loc7_ && param2)
                              {
                                 continue;
                              }
                              if(!_loc7_)
                              {
                                 break;
                              }
                              while(_loc6_)
                              {
                                 §§goto(addr91);
                              }
                              §§goto(addr128);
                              addr89:
                           }
                           while(true)
                           {
                              this.§!c§ = true;
                              §§goto(addr46);
                           }
                           addr119:
                        }
                        while(true)
                        {
                           §4!H§.visible = true;
                           §§goto(addr89);
                           §§goto(addr39);
                        }
                     }
                     §§goto(addr66);
                  }
                  return;
               }
               §§goto(addr83);
            }
         }
         §§goto(addr119);
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§!c§ = false;
            loop0:
            while(true)
            {
               this.§-]§.visible = true;
               while(§4!H§)
               {
                  if(!(_loc4_ || this))
                  {
                     break;
                  }
                  addr65:
                  if(!_loc5_)
                  {
                     continue loop0;
                  }
               }
               return;
            }
         }
         §4!H§.visible = false;
         §§goto(addr65);
      }
   }
}
