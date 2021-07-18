package §'i§
{
   import §%c§.§=!X§;
   import §62§.§0!t§;
   import §7r§.§=q§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §0!u§ extends EventDispatcher implements §8p§
   {
       
      
      private var §<y§:Boolean = false;
      
      private var §6!^§:§'!;§;
      
      public function §0!u§(param1:§'!;§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            super();
         }
         do
         {
            this.§6!^§ = param1;
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      public function initialize() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§6!^§.§+"2§.addEventListener(§0!t§.§!">§,this.§3!x§);
         }
      }
      
      public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(§,!1§.§2=§);
            loop0:
            while(true)
            {
               §§push(this.§-!Q§);
               loop1:
               while(true)
               {
                  §§push(§,!1§.SAVE);
                  loop2:
                  while(true)
                  {
                     §§pop().§8!5§(§§pop(),§§pop());
                     loop3:
                     while(true)
                     {
                        §§push(§,!1§.§2=§);
                        loop4:
                        for(; !_loc1_; while(_loc2_ || _loc1_)
                        {
                           §§goto(addr99);
                           §§push(this.§^U§);
                           §§goto(addr113);
                        })
                        {
                           §§push(this.§?K§);
                           loop5:
                           while(true)
                           {
                              §§push(§,!1§.MODIFY);
                              addr123:
                              addr99:
                              while(true)
                              {
                                 §§pop().§8!5§(§§pop(),§§pop());
                                 addr134:
                                 addr84:
                                 while(true)
                                 {
                                    §§push(§,!1§.§2=§);
                                    continue loop4;
                                 }
                                 if(_loc1_)
                                 {
                                    continue loop3;
                                 }
                              }
                              loop9:
                              while(true)
                              {
                                 if(_loc2_ || this)
                                 {
                                    if(!_loc2_)
                                    {
                                       break;
                                    }
                                    §§push(§,!1§.ADD);
                                    loop10:
                                    while(!_loc1_)
                                    {
                                       §§pop().§8!5§(§§pop(),§§pop());
                                       while(true)
                                       {
                                          §§push(§,!1§.§2=§);
                                          if(_loc1_ && _loc2_)
                                          {
                                             break;
                                          }
                                          §§push(this.§5;§);
                                          if(!_loc1_)
                                          {
                                             §§push(§,!1§.DELETE);
                                             if(_loc1_ && _loc1_)
                                             {
                                                continue loop10;
                                             }
                                             if(!(_loc1_ && _loc2_))
                                             {
                                                §§goto(addr59);
                                             }
                                             §§goto(addr123);
                                             continue loop10;
                                          }
                                          continue loop9;
                                          addr59:
                                          §§pop().§8!5§(§§pop(),§§pop());
                                          if(_loc1_ && _loc2_)
                                          {
                                             continue;
                                          }
                                          if(!(_loc2_ || _loc2_))
                                          {
                                             §§goto(addr134);
                                          }
                                          §§goto(addr84);
                                       }
                                       continue loop4;
                                    }
                                    continue loop2;
                                 }
                                 continue loop5;
                              }
                              continue loop1;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
      }
      
      protected function §3!x§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this);
            §§push(this.§<y§);
            if(_loc2_ || param1)
            {
               §§push(!§§pop());
            }
            §§pop().§ !v§(§§pop());
         }
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!§=!X§.isPaused)
            {
               if(!_loc2_)
               {
                  this.§6!^§.§8#§.§4+§.update(param1,this.§<y§);
               }
            }
         }
      }
      
      public function §7"4§() : Boolean
      {
         return this.§<y§;
      }
      
      public function § !v§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§<y§);
            loop0:
            while(true)
            {
               if(§§pop() == param1)
               {
                  addr95:
                  return;
               }
               addr76:
               while(true)
               {
                  this.§<y§ = param1;
                  continue loop0;
               }
            }
         }
         §§goto(addr75);
      }
      
      public function §?K§(param1:§=q§ = null) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§<y§);
         if(_loc3_)
         {
            return !§§pop();
         }
      }
      
      public function §^U§(param1:String = null) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§<y§);
         if(_loc2_ || this)
         {
            return !§§pop();
         }
      }
      
      public function §5;§(param1:§=q§ = null) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§<y§);
         if(_loc3_ || param1)
         {
            return !§§pop();
         }
      }
      
      public function §-!Q§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§<y§);
         if(_loc2_ || _loc1_)
         {
            return !§§pop();
         }
      }
   }
}
