package §_-hX§
{
   import §_-05L§.§_-K5§;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class §_-Gc§ extends §_-pI§
   {
       
      
      private var §do §:MovieClip;
      
      private var §_-WM§:Boolean;
      
      public function §_-Gc§(param1:String, param2:String, param3:MovieClip, param4:Boolean = false, param5:String = null)
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || this)
         {
            this.§do § = param3;
            do
            {
               super(param1,param2,param4,param5);
            }
            while(_loc7_);
            
         }
      }
      
      public function set §_-CY§(param1:MovieClip) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§do § = param1;
         }
      }
      
      public function get §_-CY§() : MovieClip
      {
         return this.§do §;
      }
      
      public function get §_-Vo§() : Boolean
      {
         return this.§_-WM§;
      }
      
      override protected function initProfile(param1:String, param2:String, param3:Boolean = false, param4:String = null) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            §§push(§§findproperty(§_-3m§));
            if(_loc7_ || this)
            {
               §§push(param4);
               if(!(_loc6_ && this))
               {
                  §§push(§§pop());
                  if(_loc7_ || param3)
                  {
                     §§push(§§pop());
                     if(!(_loc6_ && this))
                     {
                        if(!§§pop())
                        {
                           if(!(_loc6_ && param3))
                           {
                              §§pop();
                              addr60:
                              §§push(§_-bT§.§_-N2§);
                              if(!_loc6_)
                              {
                                 §§push(§§pop());
                                 if(!_loc7_)
                                 {
                                 }
                                 addr97:
                                 §§pop().§_-3m§ = §§pop();
                                 if(!_loc6_)
                                 {
                                    §_-ck§ = param1;
                                    loop0:
                                    while(true)
                                    {
                                       §_-52§ = §_-K5§.§_-EE§ == param1;
                                       addr187:
                                       while(true)
                                       {
                                          §_-BS§(param1,param2,param3);
                                          continue loop0;
                                       }
                                    }
                                 }
                                 §§goto(addr148);
                              }
                              §§goto(addr97);
                           }
                        }
                        §§push(§§pop());
                     }
                     var _loc5_:* = §§pop();
                     if(!(_loc6_ && param2))
                     {
                        §§push(§§pop());
                        if(_loc7_ || this)
                        {
                           param4 = §§pop();
                           §§push(_loc5_);
                        }
                     }
                  }
               }
               §§goto(addr97);
            }
            §§goto(addr60);
         }
         §§goto(addr187);
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            §_-m4§ = true;
            loop0:
            while(true)
            {
               §_-2A§ = new §_-WC§(param1,§_-3m§,true);
               while(true)
               {
                  this.§do §.visible = false;
                  addr90:
                  if(_loc6_ && param3)
                  {
                     continue;
                  }
                  §§push(param5);
                  if(!(_loc6_ && this))
                  {
                     §§push(!§§pop());
                  }
                  addr97:
                  if(_loc7_ || param1)
                  {
                     loop5:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!(_loc6_ && param2))
                           {
                              continue loop0;
                           }
                           addr70:
                           if(!_loc7_)
                           {
                              loop6:
                              while(true)
                              {
                                 if(_loc7_ || param3)
                                 {
                                    if(_loc6_)
                                    {
                                       break;
                                    }
                                    §§goto(addr90);
                                 }
                                 addr112:
                                 addr124:
                                 while(!(_loc6_ && param3))
                                 {
                                    §§push(Boolean(§_-2A§));
                                    if(_loc7_)
                                    {
                                       if(§§pop())
                                       {
                                          continue loop6;
                                       }
                                       continue loop5;
                                    }
                                    continue loop6;
                                 }
                                 while(true)
                                 {
                                    §_-2A§.visible = true;
                                    §§goto(addr112);
                                 }
                              }
                              while(true)
                              {
                                 this.§_-WM§ = true;
                                 §§goto(addr124);
                              }
                              addr130:
                           }
                        }
                        return;
                     }
                     continue;
                  }
                  §§goto(addr80);
               }
            }
         }
         §§goto(addr130);
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§_-WM§ = false;
            loop0:
            while(true)
            {
               this.§do §.visible = true;
               while(§_-2A§)
               {
                  if(!_loc5_)
                  {
                     §_-2A§.visible = false;
                  }
                  if(!(_loc5_ && param2))
                  {
                     continue loop0;
                  }
               }
               §§goto(addr19);
            }
         }
         addr19:
      }
   }
}
