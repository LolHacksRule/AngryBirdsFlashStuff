package §,"N§
{
   import § !m§.§^"j§;
   import §="V§.§""v§;
   import §`!o§.§+"k§;
   import §`!o§.§<9§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class §^"o§ extends EventDispatcher
   {
       
      
      public var §7#X§:§^"j§;
      
      public var gifts:Array;
      
      public var inviteGifts:Array;
      
      public var brags:Array;
      
      public var challenges:Array;
      
      public var §>"@§:Array;
      
      private var §!#F§:§+"k§;
      
      public function §^"o§(param1:Array, param2:Array, param3:Array, param4:Array, param5:Array, param6:int)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            this.inviteGifts = [];
            loop0:
            while(true)
            {
               this.brags = [];
               loop1:
               while(true)
               {
                  this.challenges = [];
                  loop2:
                  while(true)
                  {
                     super();
                     loop3:
                     while(true)
                     {
                        this.gifts = param1;
                        loop4:
                        while(true)
                        {
                           this.§'"@§(param2);
                           loop5:
                           while(true)
                           {
                              this.§%7§(param3);
                              loop6:
                              while(_loc7_)
                              {
                                 this.§>!3§(param4);
                                 loop7:
                                 while(_loc7_)
                                 {
                                    if(!_loc8_)
                                    {
                                       if(_loc7_)
                                       {
                                          if(!_loc8_)
                                          {
                                             this.§^!M§(param5);
                                             while(true)
                                             {
                                                if(!_loc8_)
                                                {
                                                   if(param6 <= 0)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc7_ || param2)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      continue;
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc8_ && this)
                                                      {
                                                         continue loop6;
                                                      }
                                                      §§goto(addr19);
                                                   }
                                                   continue loop6;
                                                }
                                                continue loop7;
                                             }
                                             addr19:
                                             return;
                                          }
                                          continue loop1;
                                       }
                                       continue loop3;
                                    }
                                    continue loop4;
                                 }
                                 continue loop5;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§7#X§ = new §^"j§(param6);
            §§goto(addr48);
         }
      }
      
      public function update() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.isLoading)
            {
               if(_loc1_)
               {
                  §§goto(addr92);
               }
               else
               {
                  while(true)
                  {
                     addr74:
                     loop2:
                     for(; !_loc2_; if(!(_loc2_ && _loc1_))
                     {
                        return;
                     })
                     {
                        §§push(this.§!#F§);
                        while(true)
                        {
                           §§pop().addEventListener(Event.COMPLETE,this.§2!h§);
                           while(true)
                           {
                              §§push(this.§!#F§);
                              if(!(_loc1_ || this))
                              {
                                 break;
                              }
                              §§pop().load(§<9§.§""I§(§4#;§.SERVER_ROOT + "/getrequests"));
                              if(_loc1_)
                              {
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
                  addr93:
               }
            }
            while(true)
            {
               this.§!#F§ = new §+"k§();
               §§goto(addr74);
               §§goto(addr93);
            }
         }
         addr92:
      }
      
      public function §4!s§() : Array
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Array = this.gifts.concat(this.inviteGifts,this.brags,this.challenges,this.§>"@§);
         if(_loc2_ || _loc3_)
         {
            if(this.§7#X§)
            {
               if(_loc2_)
               {
                  _loc1_.unshift(this.§7#X§);
               }
            }
         }
         return _loc1_;
      }
      
      protected function §2!h§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§!#F§.removeEventListener(Event.COMPLETE,this.§2!h§);
            while(true)
            {
               this.gifts = this.§!#F§.data.gifts;
               loop1:
               while(true)
               {
                  this.§'"@§(this.§!#F§.data.inviteGifts);
                  addr117:
                  while(true)
                  {
                     this.§%7§(this.§!#F§.data.brags);
                     continue loop1;
                  }
               }
            }
            addr143:
         }
         while(true)
         {
            this.§>!3§(this.§!#F§.data.challenges);
            loop5:
            while(true)
            {
               this.§^!M§(this.§!#F§.data.requestsForHelp);
               addr86:
               while(true)
               {
                  this.§!#F§ = null;
                  continue loop5;
               }
            }
         }
      }
      
      protected function §%7§(param1:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            if(!_loc6_)
            {
               _loc2_.isBrag = true;
               if(!(_loc6_ && param1))
               {
                  §""v§.§&R§("flashDeleteRequest",_loc2_.r);
               }
            }
         }
         if(!(_loc6_ && this))
         {
            this.brags = this.brags.concat(param1);
         }
      }
      
      protected function §'"@§(param1:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         if(!_loc5_)
         {
            this.inviteGifts = param1;
         }
         for each(_loc2_ in this.inviteGifts)
         {
            if(!_loc5_)
            {
               _loc2_.isInviteGift = true;
            }
         }
      }
      
      protected function §>!3§(param1:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         for each(_loc2_ in param1)
         {
            if(!(_loc5_ && _loc3_))
            {
               _loc2_.isChallenge = true;
               if(!_loc6_)
               {
                  continue;
               }
            }
            §""v§.§&R§("flashDeleteRequest",_loc2_.r);
         }
         if(_loc6_)
         {
            this.challenges = this.challenges.concat(param1);
         }
      }
      
      protected function §^!M§(param1:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            if(!(_loc5_ && param1))
            {
               _loc2_.isHelpRequest = true;
            }
         }
         if(_loc6_ || _loc2_)
         {
            this.§>"@§ = param1;
         }
      }
      
      public function get §#";§() : int
      {
         return this.gifts.length + this.inviteGifts.length + this.brags.length + this.challenges.length + this.§>"@§.length + (this.§7#X§ && (this.§7#X§.§8!Q§ > 0 || this.§7#X§.§%5§) ? 1 : 0);
      }
      
      public function get isLoading() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§!#F§ == null);
         if(!(_loc2_ && _loc2_))
         {
            return !§§pop();
         }
      }
      
      public function §2#L§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§7#X§.§%5§ = param1;
         }
         do
         {
            dispatchEvent(new Event(Event.CHANGE));
         }
         while(!_loc3_);
         
      }
   }
}
