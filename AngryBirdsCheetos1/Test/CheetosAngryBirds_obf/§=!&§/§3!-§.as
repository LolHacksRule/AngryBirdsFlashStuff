package §=!&§
{
   import §&!F§.§"!d§;
   import §,§.§'-§;
   import §1!E§.§>f§;
   import §1!E§.§`!8§;
   import §1!E§.§class§;
   import §12§.§4!1§;
   import §5G§.StatePlay;
   import §=!g§.§!!@§;
   import §[h§.§7Z§;
   import §[h§.§[!U§;
   import §`![§.§@;§;
   import §`h§.§@!Z§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §3!-§ extends EventDispatcher implements §7Z§
   {
       
      
      private var §7!b§:§"!d§ = null;
      
      private var §#!K§:Boolean = false;
      
      private var §#!P§:StatePlay;
      
      public function §3!-§(param1:StatePlay)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
         }
         do
         {
            this.§#!P§ = param1;
         }
         while(_loc2_);
         
      }
      
      public function levelCompleted() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc1_:String = null;
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:* = 0;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         if(_loc7_)
         {
            if(!this.§7!b§)
            {
               if(_loc7_)
               {
                  if(§>f§.§%!`§)
                  {
                     loop0:
                     while(true)
                     {
                        this.§#!K§ = false;
                        if(!(_loc8_ && this))
                        {
                           break;
                        }
                        addr74:
                        while(true)
                        {
                           continue loop0;
                        }
                     }
                     if(_loc7_)
                     {
                        do
                        {
                           _loc1_ = "updateLevelProfile";
                           do
                           {
                              §§push(§@;§.§6!K§);
                              if(_loc7_)
                              {
                                 §§push(§§pop());
                              }
                              _loc2_ = §§pop();
                           }
                           while(_loc8_);
                           
                        }
                        while(false);
                        
                        _loc3_ = §>f§.§0!9§(§@;§.§6!K§);
                        if(!(_loc8_ && this))
                        {
                           §§push(this.§#!P§.§58§.getScore());
                           if(!_loc8_)
                           {
                              §§push(int(§§pop()));
                           }
                           _loc4_ = §§pop();
                           while(true)
                           {
                              _loc3_.score = _loc4_;
                              loop4:
                              while(true)
                              {
                                 _loc3_.stars = §5!9§.§#%§.§[![§(_loc2_,_loc4_);
                                 while(true)
                                 {
                                    _loc3_.levelId = _loc2_;
                                    continue loop4;
                                    addr104:
                                    if(!(_loc8_ && this))
                                    {
                                       addr111:
                                       if(false)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             _loc3_.userId = §>f§.§%!`§.id;
                                             addr129:
                                             while(!(_loc8_ && _loc3_))
                                             {
                                                _loc3_.security = §"!d§.§0#§(_loc3_);
                                                if(!(_loc7_ || this))
                                                {
                                                   continue;
                                                }
                                                if(!_loc8_)
                                                {
                                                   §§goto(addr104);
                                                }
                                                else
                                                {
                                                   while(!(_loc8_ && _loc1_))
                                                   {
                                                      while(true)
                                                      {
                                                         continue loop10;
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      _loc3_.gamePlay = §@!Z§.§;!,§.§&;§().toString();
                                                      §§goto(addr144);
                                                   }
                                                   addr144:
                                                   addr157:
                                                }
                                             }
                                             continue loop4;
                                          }
                                       }
                                       (_loc5_ = new Object()).id = §>f§.§%!`§.id;
                                       if(_loc7_)
                                       {
                                          _loc5_.security = §>f§.§%!`§.§#]§;
                                       }
                                       _loc6_ = {
                                          "player":_loc5_,
                                          "levelProfile":_loc3_
                                       };
                                       if(_loc7_ || this)
                                       {
                                          this.§7!b§ = new §"!d§(_loc6_,§5!9§.§<V§ + _loc1_,this,§"!d§.§9X§);
                                       }
                                       §§goto(addr252);
                                    }
                                 }
                              }
                              if(!(_loc7_ || _loc1_))
                              {
                                 continue;
                              }
                              _loc3_.blocks = §'-§.§1-§();
                              §§goto(addr157);
                           }
                        }
                        §§goto(addr151);
                     }
                  }
               }
               return;
            }
            addr252:
            return;
         }
         §§goto(addr74);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:String = null;
         if(_loc7_)
         {
            this.§#!K§ = true;
         }
         var _loc2_:Object = §[!U§.§ !=§((param1.currentTarget as URLLoader).data);
         §§push(§"!d§.§ !_§(_loc2_.levelProfile));
         if(_loc7_ || this)
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(!(_loc8_ && this))
         {
            if(_loc3_ != _loc2_.levelProfileSecurity)
            {
               if(_loc7_ || _loc3_)
               {
                  §5!9§.§#%§ = new §`!8§("");
               }
               §>f§.§%!`§ = new §class§();
               addr161:
            }
            else
            {
               loop0:
               while(true)
               {
                  §>f§.levelProfileSecurity = _loc2_.levelProfileSecurity;
                  loop1:
                  while(!(_loc8_ && _loc3_))
                  {
                     if(_loc7_ || _loc2_)
                     {
                        loop2:
                        while(_loc2_.levelProfile != undefined)
                        {
                           if(!_loc8_)
                           {
                              if(_loc8_ && _loc2_)
                              {
                                 if(_loc8_ && this)
                                 {
                                    return;
                                 }
                                 addr138:
                                 continue loop0;
                              }
                              §>f§.levelProfile = _loc2_.levelProfile;
                           }
                           while(true)
                           {
                              §>f§.§1!P§();
                              if(_loc8_)
                              {
                                 break;
                              }
                              if(!(_loc8_ && this))
                              {
                                 if(!(_loc8_ && param1))
                                 {
                                    if(true)
                                    {
                                       break loop2;
                                    }
                                    continue loop2;
                                    continue loop2;
                                 }
                                 continue loop1;
                              }
                           }
                           loop4:
                           for each(_loc4_ in _loc2_.achievements)
                           {
                              loop5:
                              while(true)
                              {
                                 do
                                 {
                                    §§push(§>f§.§%!`§);
                                    if(!_loc8_)
                                    {
                                       if(!§§pop())
                                       {
                                          break;
                                       }
                                       if(!(_loc8_ && this))
                                       {
                                          continue loop5;
                                       }
                                    }
                                    else
                                    {
                                       addr202:
                                       §§pop().§";§(_loc4_);
                                    }
                                    do
                                    {
                                       this.§9!!§(_loc4_);
                                    }
                                    while(_loc8_);
                                    
                                 }
                                 while(false);
                                 
                                 continue loop4;
                              }
                           }
                           if(!_loc8_)
                           {
                              addr244:
                              this.§#!P§.§%n§();
                           }
                           do
                           {
                              dispatchEvent(new §4!1§(§4!1§.§1!8§));
                           }
                           while(!_loc7_);
                           
                           return;
                        }
                        if(_loc2_.achievements)
                        {
                           §§goto(addr165);
                        }
                        §§goto(addr244);
                     }
                     else
                     {
                        §§goto(addr161);
                     }
                  }
               }
            }
         }
         §>f§.levelProfile = [];
         §§goto(addr138);
      }
      
      public function onHttpStatus(param1:HTTPStatusEvent) : void
      {
      }
      
      public function onIOError(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            dispatchEvent(new §4!1§(§4!1§.§3!>§));
         }
      }
      
      public function §5>§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§7!b§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     addr75:
                     this.§7!b§.dispose();
                  }
                  while(true)
                  {
                  }
                  addr76:
               }
               while(true)
               {
                  this.§#!K§ = true;
                  if(!_loc1_)
                  {
                     break;
                  }
                  §§goto(addr76);
               }
               return;
            }
         }
         §§goto(addr75);
      }
      
      public function §>3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§7!b§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     addr76:
                     this.§7!b§.dispose();
                  }
                  while(true)
                  {
                     this.§7!b§ = null;
                     loop1:
                     while(!_loc2_)
                     {
                        while(true)
                        {
                           this.§#!K§ = false;
                           if(_loc1_ || this)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        return;
                     }
                  }
               }
               §§goto(addr23);
            }
            §§goto(addr76);
         }
         §§goto(addr44);
      }
      
      public function get §,!@§() : Boolean
      {
         return this.§#!K§;
      }
      
      private function §9!!§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §!!@§.§%Q§("spotAchievement",param1);
         }
      }
   }
}
