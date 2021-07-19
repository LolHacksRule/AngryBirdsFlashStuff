package §'i§
{
   import §"v§.§9"§;
   import §"v§.§]!B§;
   import §62§.§0!t§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   
   public class §,"%§ extends EventDispatcher implements §8p§
   {
       
      
      private var §^?§:Vector.<String>;
      
      private var §6!^§:§'!;§;
      
      private var § !>§:String;
      
      public function §,"%§(param1:§'!;§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super();
            do
            {
               this.§6!^§ = param1;
            }
            while(_loc3_);
            
         }
      }
      
      public function initialize() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§6!^§);
            loop0:
            while(true)
            {
               §§push(§§pop().§1?§);
               loop1:
               while(true)
               {
                  §§push(§0!t§.§1y§);
                  loop2:
                  while(true)
                  {
                     §§pop().addEventListener(§§pop(),this.onPhysicsEnabled,false,1);
                     loop3:
                     while(true)
                     {
                        §§push(this.§6!^§);
                        while(true)
                        {
                           §§push(§§pop().§1?§);
                           if(_loc2_)
                           {
                              break;
                           }
                           §§push(§0!t§.§0!_§);
                           if(!(_loc1_ || _loc2_))
                           {
                              continue loop2;
                           }
                           §§pop().addEventListener(§§pop(),this.§0!h§,false,1);
                           loop5:
                           while(true)
                           {
                              §§push(this.§6!^§);
                              addr76:
                              loop6:
                              while(!_loc2_)
                              {
                                 §§push(§§pop().§+"2§);
                                 while(true)
                                 {
                                    §§pop().addEventListener(§0!t§.PLAY,this.onPlay,false,1);
                                    addr86:
                                    while(!_loc2_)
                                    {
                                       continue loop6;
                                    }
                                    addr35:
                                    §§push(§§pop().§+"2§);
                                    continue loop5;
                                    if(_loc2_ && this)
                                    {
                                       continue;
                                    }
                                    §§pop().addEventListener(KeyboardEvent.KEY_DOWN,this.§8!l§);
                                    if(!(_loc2_ && this))
                                    {
                                       if(_loc1_ || _loc2_)
                                       {
                                          return;
                                          addr72:
                                       }
                                       continue loop3;
                                    }
                                    §§goto(addr86);
                                 }
                              }
                              continue loop0;
                           }
                           addr28:
                           if(_loc2_ && _loc2_)
                           {
                              continue;
                           }
                           §§goto(addr35);
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§6!^§);
            if(_loc1_)
            {
               §§goto(addr28);
            }
            §§goto(addr76);
         }
         §§goto(addr72);
      }
      
      public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§ !>§)
            {
               do
               {
                  this.§+"$§(this.§ !>§);
                  do
                  {
                     this.§ !>§ = null;
                  }
                  while(!_loc1_);
                  
               }
               while(_loc2_ && _loc1_);
               
               addr56:
            }
            return;
         }
         §§goto(addr56);
      }
      
      private function onPlay(param1:§0!t§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§ !>§ = this.§5R§(false);
         }
      }
      
      private function onPhysicsEnabled(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§5R§();
         }
      }
      
      private function §0!h§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§`!c§(false);
         }
      }
      
      public function §@I§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§+"$§(this.§^?§[this.§^?§.length - 1]);
         }
      }
      
      public function §+"$§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§9"§ = §]!B§.§+0§(param1);
         if(_loc4_)
         {
            this.§6!^§.§8#§.§48§(_loc2_);
         }
      }
      
      public function §4!G§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§^?§ = null;
         }
      }
      
      public function §`!c§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §§push(this.§^?§ == null);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               if(_loc2_ || _loc2_)
               {
                  if(§§pop())
                  {
                     loop5:
                     while(true)
                     {
                        §§pop();
                        addr114:
                        while(true)
                        {
                           §§push(this.§^?§.length > 0);
                           if(!(_loc3_ && this))
                           {
                              break;
                           }
                           continue loop5;
                        }
                        if(!_loc2_)
                        {
                           continue loop0;
                        }
                     }
                     addr113:
                  }
                  loop1:
                  while(§§pop())
                  {
                     if(!_loc3_)
                     {
                        while(true)
                        {
                           this.§@I§();
                        }
                        addr86:
                     }
                     while(true)
                     {
                        this.§^?§.pop();
                        for(; !(_loc3_ && param1); dispatchEvent(new §0!t§(§0!t§.§6!D§)),if(!_loc3_)
                        {
                           break loop1;
                        })
                        {
                           if(_loc2_ || param1)
                           {
                              continue;
                           }
                           §§goto(addr114);
                        }
                     }
                  }
                  return;
               }
               §§goto(addr113);
            }
         }
         §§goto(addr86);
      }
      
      public function §5R§(param1:Boolean = true) : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            if(!§,!1§.§2=§.§8§())
            {
               if(_loc4_ || _loc2_)
               {
                  return null;
               }
            }
            else
            {
               addr39:
               if(this.§^?§ == null)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     this.§^?§ = new Vector.<String>();
                  }
               }
            }
            var _loc2_:String = this.§6!^§.§8#§.§4+§.§6!P§().§4U§();
            if(_loc4_)
            {
               if(param1)
               {
                  if(!(_loc3_ && param1))
                  {
                     this.§^?§.push(_loc2_);
                  }
               }
            }
            return _loc2_;
         }
         §§goto(addr39);
      }
      
      public function update(param1:Number) : void
      {
      }
      
      private function §8!l§(param1:KeyboardEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1.keyCode == 90);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(§§pop())
                  {
                     if(_loc2_ || this)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           this.§`!c§();
                           addr77:
                           break;
                        }
                        loop2:
                        while(true)
                        {
                           §§push(§,!1§.§2=§.§>L§());
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           if(!_loc3_)
                           {
                              §§push(Boolean(§§pop()));
                              continue loop0;
                           }
                           addr84:
                           while(true)
                           {
                              §§pop();
                              continue loop2;
                           }
                        }
                        continue loop0;
                     }
                     §§goto(addr77);
                  }
                  return;
                  addr49:
               }
               §§goto(addr84);
            }
         }
         §§goto(addr77);
      }
   }
}
