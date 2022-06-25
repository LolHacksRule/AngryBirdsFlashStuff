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
         if(_loc7_ || this)
         {
            this.§-]§ = param3;
            do
            {
               super(param1,param2,param4,param5);
            }
            while(!(_loc7_ || param1));
            
         }
      }
      
      public function set §15§(param1:MovieClip) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
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
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            §§push(§§findproperty(§2!I§));
            if(_loc7_)
            {
               §§push(param4);
               if(!(_loc6_ && this))
               {
                  §§push(§§pop());
                  if(!_loc6_)
                  {
                     §§push(§§pop());
                     if(!_loc6_)
                     {
                        if(!§§pop())
                        {
                           if(_loc7_ || this)
                           {
                              §§pop();
                              addr45:
                              §§push(§%!5§.§+a§);
                              if(_loc6_ && this)
                              {
                              }
                              addr82:
                              §§pop().§2!I§ = §§pop();
                              if(!(_loc6_ && param2))
                              {
                                 § u§ = param1;
                                 loop0:
                                 while(true)
                                 {
                                    §=!&§ = §^!s§.§-!1§ == param1;
                                    addr167:
                                    while(true)
                                    {
                                       §5!Z§(param1,param2,param3);
                                       continue loop0;
                                    }
                                 }
                              }
                              while(§=!&§)
                              {
                                 if(_loc7_)
                                 {
                                    §[9§.push(this);
                                 }
                                 §§goto(addr128);
                              }
                              §§goto(addr91);
                           }
                           §§push(§§pop());
                           if(_loc6_)
                           {
                           }
                           §§goto(addr82);
                        }
                        §§push(§§pop());
                     }
                     var _loc5_:* = §§pop();
                     if(!(_loc6_ && param3))
                     {
                        §§push(§§pop());
                        if(!_loc6_)
                        {
                           param4 = §§pop();
                           §§push(_loc5_);
                        }
                     }
                  }
               }
               §§goto(addr82);
            }
            §§goto(addr45);
         }
         §§goto(addr110);
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            §#!#§ = true;
            while(true)
            {
               §4!H§ = new §2!_§(param1,§2!I§,true);
               while(true)
               {
                  this.§-]§.visible = false;
                  loop2:
                  while(true)
                  {
                     this.§!c§ = true;
                     while(true)
                     {
                        §4!H§.visible = true;
                        continue loop2;
                        addr69:
                        if(_loc7_ || param1)
                        {
                           addChild(§4!H§);
                           addr79:
                           if(!(_loc6_ && param3))
                           {
                              addr20:
                              return;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param2))
         {
            this.§!c§ = false;
            loop0:
            while(true)
            {
               this.§-]§.visible = true;
               while(§4!H§)
               {
                  if(!(_loc5_ && param3))
                  {
                     if(!_loc4_)
                     {
                        continue;
                     }
                     §4!H§.visible = false;
                  }
                  if(_loc4_)
                  {
                     addr65:
                     break;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr65);
      }
   }
}
