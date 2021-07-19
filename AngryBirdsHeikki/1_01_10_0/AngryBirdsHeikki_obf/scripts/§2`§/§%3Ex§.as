package §2`§
{
   import §3Y§.§4!_§;
   import §9I§.§+J§;
   import §9I§.§>!=§;
   import §<!!§.§#!`§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.net.URLLoader;
   
   public class §>x§ extends EventDispatcher implements §>!=§
   {
      
      public static const §!;§:Number = 1800000.0;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§§findproperty(§!;§));
            §§push(30 * 60);
            if(_loc1_ || _loc1_)
            {
               §§push(§§pop() * 1000);
            }
            §§pop().§!;§ = §§pop();
         }
      }
      
      private var §@!3§:String;
      
      private var §+?§:Boolean = true;
      
      private var §+!4§:Array;
      
      private var §>L§:int = 0;
      
      private var §-`§:int = 1;
      
      private var §#U§:Number = 0;
      
      public function §>x§(param1:String)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               addr32:
               while(true)
               {
                  this.§@!3§ = param1;
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§+!4§ = [];
            if(_loc3_ || this)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr32);
            }
            §§goto(addr36);
         }
         var _loc2_:int = 0;
         while(true)
         {
            if(_loc2_ >= 50)
            {
               if(!_loc4_)
               {
                  break;
               }
               loop5:
               while(_loc4_ && _loc3_)
               {
                  while(true)
                  {
                     _loc2_++;
                     continue loop5;
                  }
               }
               continue;
            }
            this.§+!4§.push({
               "nickName":"",
               "score":"",
               "isPlayer":"false"
            });
            §§goto(addr101);
         }
      }
      
      public function clearReloadTimer() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§#U§ = 0;
            do
            {
               this.§+?§ = true;
            }
            while(!_loc2_);
            
         }
      }
      
      public function §^9§(param1:Boolean = false) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:§#!`§ = null;
         var _loc5_:Object = null;
         if(!(_loc7_ && _loc3_))
         {
            §§push(this.§+?§);
            if(_loc6_ || this)
            {
               if(!§§pop())
               {
                  if(_loc6_ || this)
                  {
                     §§goto(addr50);
                  }
               }
               var _loc2_:Date = new Date();
               if(!_loc7_)
               {
                  §§push(param1);
                  if(!_loc7_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc6_ || _loc3_)
                     {
                        addr144:
                        if(!§§pop())
                        {
                           loop0:
                           while(true)
                           {
                              §§pop();
                              addr147:
                              while(true)
                              {
                                 §§push(_loc2_.time - this.§#U§ > §!;§);
                                 addr114:
                                 while(_loc6_)
                                 {
                                 }
                                 continue loop0;
                              }
                           }
                           addr146:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 this.§#U§ = _loc2_.time;
                                 loop5:
                                 while(true)
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       addr58:
                                       while(true)
                                       {
                                          if(this.§@!3§ == HighscoreSidebar.§<>§)
                                          {
                                             if(_loc7_ && this)
                                             {
                                                continue loop4;
                                             }
                                             if(_loc7_)
                                             {
                                                continue loop5;
                                             }
                                             if(!(_loc7_ && this))
                                             {
                                                _loc3_ = "overallHighScore";
                                                if(_loc6_ || param1)
                                                {
                                                   if(false)
                                                   {
                                                      continue loop6;
                                                   }
                                                   if(§4!_§.§,t§)
                                                   {
                                                      addr151:
                                                      §§push({"playerId":§4!_§.§,t§.§5!D§});
                                                      if(_loc6_ || param1)
                                                      {
                                                         _loc5_ = §§pop();
                                                      }
                                                      else
                                                      {
                                                         addr167:
                                                         _loc5_ = §§pop();
                                                      }
                                                      _loc4_ = new §#!`§(_loc5_,§,L§.§2;§ + _loc3_,this,§#!`§.§`!1§);
                                                      if(_loc6_)
                                                      {
                                                         this.§+?§ = false;
                                                      }
                                                      break;
                                                   }
                                                   §§push({});
                                                   §§goto(addr167);
                                                }
                                                §§goto(addr151);
                                             }
                                             else
                                             {
                                                §§goto(addr147);
                                             }
                                          }
                                          else
                                          {
                                             _loc3_ = "highscore";
                                             if(!_loc7_)
                                             {
                                                if(§4!_§.§,t§)
                                                {
                                                   addr194:
                                                   §§push("levelId");
                                                   if(_loc6_)
                                                   {
                                                      §§push(this.§@!3§);
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         §§push(null);
                                                         if(!_loc7_)
                                                         {
                                                            _loc5_ = §§pop();
                                                         }
                                                         else
                                                         {
                                                            addr220:
                                                            _loc5_ = §§pop();
                                                         }
                                                         _loc4_ = new §#!`§(_loc5_,§,L§.§2;§ + _loc3_,this,§#!`§.§`!1§);
                                                         if(!_loc7_)
                                                         {
                                                            this.§+?§ = false;
                                                            break;
                                                         }
                                                         break;
                                                      }
                                                      addr219:
                                                      §§push(null);
                                                      §§goto(addr220);
                                                   }
                                                   else
                                                   {
                                                      addr217:
                                                      §§push(this.§@!3§);
                                                   }
                                                   §§goto(addr219);
                                                }
                                                else
                                                {
                                                   §§push("levelId");
                                                }
                                                §§goto(addr217);
                                             }
                                             §§goto(addr194);
                                          }
                                       }
                                       return true;
                                    }
                                    continue loop4;
                                 }
                              }
                              addr128:
                           }
                           else
                           {
                              §§push(false);
                              if(!_loc7_)
                              {
                                 return §§pop();
                              }
                           }
                           §§goto(addr114);
                        }
                     }
                     §§goto(addr146);
                  }
                  §§goto(addr144);
               }
               §§goto(addr128);
            }
            §§goto(addr50);
         }
         addr50:
         return false;
      }
      
      public function §4§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§-`§);
            if(!(_loc4_ && _loc2_))
            {
               §§push(§§pop() + 1);
            }
            var _loc2_:* = §§pop();
            if(_loc3_ || _loc1_)
            {
               _loc1_.§-`§ = _loc2_;
            }
            if(_loc3_ || _loc2_)
            {
               §§goto(addr60);
            }
            §§goto(addr82);
         }
         addr60:
         if(this.§-`§ > HighscoreSidebar.§2>§)
         {
            if(!(_loc4_ && _loc1_))
            {
               addr82:
               this.§-`§ = 1;
            }
         }
      }
      
      public function §<$§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc1_)
         {
            var _loc1_:*;
            §§push((_loc1_ = this).§-`§);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop() - 1);
            }
            var _loc2_:* = §§pop();
            if(_loc4_)
            {
               _loc1_.§-`§ = _loc2_;
            }
            if(!(_loc3_ && this))
            {
               if(this.§-`§ < 1)
               {
                  if(_loc4_)
                  {
                     addr77:
                     this.§-`§ = HighscoreSidebar.§2>§;
                  }
               }
            }
            return;
         }
         §§goto(addr77);
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Object = §+J§.§;!+§((param1.currentTarget as URLLoader).data);
         if(_loc3_ || this)
         {
            if(_loc2_.highScore is Array)
            {
               loop0:
               while(true)
               {
                  this.§+!4§ = _loc2_.highScore as Array;
                  loop1:
                  while(true)
                  {
                     this.§>L§ = _loc2_.heikkiScore;
                     loop2:
                     while(_loc3_)
                     {
                        while(true)
                        {
                           dispatchEvent(new §"0§(§"0§.§3!A§));
                           if(_loc3_)
                           {
                              if(_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                        }
                        return;
                     }
                     continue loop0;
                  }
               }
            }
            while(true)
            {
               this.§+?§ = true;
            }
         }
         §§goto(addr65);
      }
      
      public function §3!X§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §'z§(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§+?§ = true;
         }
      }
      
      public function get §0!7§() : Boolean
      {
         return this.§+?§;
      }
      
      public function get §"!?§() : Array
      {
         return this.§+!4§;
      }
      
      public function get levelId() : String
      {
         return this.§@!3§;
      }
      
      public function get §`^§() : int
      {
         return this.§-`§;
      }
      
      public function get heikkiScore() : int
      {
         return this.§>L§;
      }
   }
}
