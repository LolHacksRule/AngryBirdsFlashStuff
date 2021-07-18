package §"O§
{
   import § "4§.§7q§;
   import §!"W§.§##L§;
   import §"a§.§6#!§;
   import §#!'§.§6"]§;
   import §'"E§.§8d§;
   import §,"N§.§@#B§;
   import §-!_§.§,#Q§;
   import §6!H§.§,#E§;
   import §;"3§.§+H§;
   import §;#Q§.§6!Y§;
   import §?m§.§,"X§;
   import §?m§.§3![§;
   import §^#>§.§15§;
   import §^#>§.§8"f§;
   import com.angrybirds.§,!q§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §"K§ extends EventDispatcher
   {
       
      
      private var §'#G§:Dictionary;
      
      private var §28§:§8d§;
      
      private var §?"v§:Number;
      
      private var §7"%§:Vector.<§^-§>;
      
      private var § "1§:Vector.<§8d§>;
      
      private var §#"K§:Vector.<§8d§>;
      
      private var §'#7§:Boolean;
      
      private var §[!X§:Boolean;
      
      private var §4"s§:§6!Y§;
      
      private var §4#J§:§@#B§;
      
      private var §">§:§7q§;
      
      private var §+!b§:§,"X§;
      
      public function §"K§(param1:§@#B§, param2:§,"X§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§4#J§ = param1;
               addr89:
               while(true)
               {
                  this.§">§ = §7q§(this.§4#J§.userProgress);
               }
               while(true)
               {
                  if(_loc4_ || param2)
                  {
                     continue;
                  }
                  continue loop0;
               }
               §§goto(addr89);
            }
         }
         §§goto(addr84);
      }
      
      public function get §^##§() : int
      {
         return this.§7"%§.length;
      }
      
      public function get isLoading() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§4"s§ == null);
         if(_loc2_ || _loc1_)
         {
            return !§§pop();
         }
      }
      
      protected function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§'#7§ = true;
            while(true)
            {
               this.§[!X§ = false;
               loop1:
               for(; !(_loc2_ && _loc2_); while(_loc1_ || _loc1_)
               {
                  while(true)
                  {
                     this.§'#G§ = new Dictionary();
                     §§goto(addr59);
                  }
                  §§goto(addr53);
               })
               {
                  this.§?"v§ = -1;
                  loop2:
                  while(true)
                  {
                     this.§28§ = null;
                     while(true)
                     {
                        this.§ "1§ = new Vector.<§8d§>(0);
                        while(true)
                        {
                           this.§7"%§ = new Vector.<§^-§>();
                           continue loop1;
                           addr46:
                           if(!(_loc2_ && _loc2_))
                           {
                              return;
                              addr53:
                           }
                        }
                        addr59:
                        while(!(_loc2_ && _loc2_))
                        {
                           continue loop2;
                           this.§#"K§ = new Vector.<§8d§>(0);
                           if(!(_loc1_ || _loc1_))
                           {
                              continue;
                           }
                           if(_loc2_)
                           {
                              continue loop1;
                           }
                           §§goto(addr46);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr98);
      }
      
      public function dispose() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§6#!§ = §,!q§.§>k§ as §6#!§;
         if(_loc2_ || this)
         {
            if(_loc1_)
            {
               while(true)
               {
                  _loc1_.mouseEnabled = true;
                  addr116:
                  while(true)
                  {
                  }
               }
               addr113:
            }
            loop2:
            while(true)
            {
               this.§?"v§ = -1;
               while(true)
               {
                  this.§28§ = null;
                  loop4:
                  while(true)
                  {
                     this.§ "1§.length = 0;
                     while(true)
                     {
                        if(_loc3_)
                        {
                           continue loop4;
                        }
                        if(!_loc3_)
                        {
                           this.§7"%§.length = 0;
                        }
                        else
                        {
                           §§goto(addr113);
                        }
                        addr46:
                        if(_loc2_)
                        {
                           return;
                           addr58:
                        }
                     }
                     continue loop2;
                  }
                  addr65:
                  if(_loc2_ || _loc3_)
                  {
                     if(!_loc3_)
                     {
                        this.§#"K§.length = 0;
                        if(!(_loc3_ && _loc1_))
                        {
                           §§goto(addr46);
                        }
                        loop7:
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              §§goto(addr65);
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§'#G§ = null;
                                 continue loop7;
                              }
                              §§goto(addr58);
                              addr80:
                           }
                        }
                        addr74:
                        continue;
                     }
                     continue loop2;
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      public function reset() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§7"%§.length = 0;
            loop0:
            do
            {
               if(this.§4"s§)
               {
                  if(!_loc1_)
                  {
                     §§push(this.§">§);
                     loop1:
                     while(true)
                     {
                        §§pop().removeEventListener(§##L§.§0"5§,this.§2"C§);
                        addr87:
                        loop2:
                        while(true)
                        {
                           §§push(this.§">§);
                           if(_loc1_ && _loc2_)
                           {
                              continue loop1;
                           }
                           §§pop().§"!1§(this.§4"s§);
                           loop4:
                           while(true)
                           {
                              addr24:
                              while(true)
                              {
                                 this.§4"s§ = null;
                                 if(_loc2_)
                                 {
                                    if(!_loc1_)
                                    {
                                       break;
                                    }
                                    continue loop2;
                                 }
                                 continue loop4;
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
                  §§goto(addr87);
               }
               §§goto(addr24);
            }
            while(_loc1_ && this);
            
            return;
         }
         §§goto(addr63);
      }
      
      public function §&"]§(param1:§8d§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§'#G§[param1.id] = param1;
         }
      }
      
      public function updateWithTime(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§?"v§);
            loop0:
            while(true)
            {
               §§push(0);
               addr82:
               while(true)
               {
                  if(§§pop() <= §§pop())
                  {
                     loop5:
                     do
                     {
                        this.§8Y§(param1);
                        if(!(_loc3_ || _loc3_))
                        {
                           while(_loc3_ || param1)
                           {
                              continue loop5;
                           }
                           continue loop0;
                           addr71:
                        }
                     }
                     while(_loc2_);
                     
                     return;
                     addr29:
                     addr42:
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§?"v§);
                     if(!(_loc2_ && param1))
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§?"v§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr42);
      }
      
      public function handleEngineUpdateStep(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§8d§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§#"K§.length)
         {
            _loc2_ = this.§#"K§[_loc3_];
            if(_loc5_)
            {
               if(_loc2_.§6#A§ == §,#E§.§<#Q§)
               {
                  if(!_loc5_)
                  {
                     continue;
                  }
                  _loc2_.§%"L§(param1);
                  if(!(_loc5_ || this))
                  {
                     continue;
                  }
               }
            }
            _loc3_++;
         }
         if(_loc5_)
         {
            if(this.§#"K§.length >= 1)
            {
               if(_loc5_ || param1)
               {
                  addr89:
                  this.§5"_§();
               }
            }
            return;
         }
         §§goto(addr89);
      }
      
      public function §6!4§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§#"K§.length >= 1)
            {
               if(_loc2_ || _loc1_)
               {
                  §§push(true);
                  if(!_loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr55:
                  return false;
               }
               return §§pop();
            }
         }
         §§goto(addr55);
      }
      
      public function §0"[§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§'#G§[param1])
            {
               do
               {
                  this.§!!^§(param1);
               }
               while(!(_loc2_ || this));
               
               if(!(_loc3_ && param1))
               {
                  return;
                  addr51:
               }
            }
            throw new Error("NO REGISTERED POWERUP FOUND WITH ID: " + param1);
         }
         §§goto(addr51);
      }
      
      protected function §!!^§(param1:String) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            this.§[!X§ = true;
            if(_loc5_ || _loc3_)
            {
               addr33:
               this.§%z§(this.§'#7§);
            }
            var _loc2_:§8d§ = this.§'#G§[param1];
            if(!(_loc6_ && _loc3_))
            {
               this.§&"T§(_loc2_);
            }
            §§push(§8"f§(§,!q§.§9!,§).§2!o§());
            if(!(_loc6_ && _loc2_))
            {
               §§push(int(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:§^-§ = new §^-§(param1,_loc3_);
            if(_loc5_ || this)
            {
               if(this.§4"s§ == null)
               {
                  this.§""8§(_loc4_);
                  loop0:
                  while(true)
                  {
                     if(!(_loc5_ || param1))
                     {
                        while(true)
                        {
                           this.§7"%§.push(_loc4_);
                           addr168:
                           while(true)
                           {
                           }
                        }
                        addr164:
                     }
                     loop1:
                     while(true)
                     {
                        this.§4#J§.§]"<§.§0"[§(param1);
                        while(!_loc6_)
                        {
                           §8"f§(§,!q§.§9!,§).§0"[§(param1);
                           while(_loc5_)
                           {
                              §6"]§.§?!h§(param1,this.§+!b§.currentLevelNumericName,this.§4#J§.§4"Z§.§,#a§(param1));
                              if(_loc5_ || _loc3_)
                              {
                                 if(_loc5_)
                                 {
                                    break loop1;
                                 }
                                 continue loop1;
                              }
                           }
                        }
                        continue loop0;
                     }
                     §§goto(addr116);
                  }
               }
               §§goto(addr164);
            }
            addr116:
            return;
         }
         §§goto(addr33);
      }
      
      protected function §],§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§8d§ = null;
         if(!(_loc4_ && this))
         {
            this.§[!X§ = false;
         }
         §§push(this.§28§.id);
         if(!_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc3_)
         {
            §§push(this.§28§);
            loop0:
            while(true)
            {
               §§pop().execute();
               while(true)
               {
                  §§push(this.§28§);
                  if(_loc3_)
                  {
                     if(§§pop().§6#A§ != §,#E§.§3#I§)
                     {
                        if(!_loc4_)
                        {
                           if(!(_loc4_ && this))
                           {
                              this.§#"K§.push(this.§28§);
                              if(_loc3_)
                              {
                                 addr132:
                                 break;
                              }
                              addr142:
                              _loc2_ = this.§ "1§.shift();
                              if(_loc3_ || _loc3_)
                              {
                                 this.§&"T§(_loc2_);
                              }
                              §§goto(addr167);
                           }
                           continue;
                        }
                        §§goto(addr132);
                     }
                     break;
                  }
                  continue loop0;
               }
               this.§28§ = null;
               loop2:
               while(true)
               {
                  if(this.§#"K§.length != 0)
                  {
                     while(true)
                     {
                        (§,!q§.§>k§ as §6#!§).mouseEnabled = true;
                        if(!(_loc4_ && _loc1_))
                        {
                           if(!_loc4_)
                           {
                              dispatchEvent(new §+H§(§+H§.§["_§,_loc1_));
                              if(_loc3_ || _loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    if(false)
                                    {
                                       continue;
                                    }
                                    if(this.§ "1§.length > 0)
                                    {
                                       break;
                                    }
                                 }
                                 continue loop2;
                                 addr167:
                                 return;
                              }
                              break;
                           }
                           addr91:
                           addr91:
                           while(true)
                           {
                              this.§%z§(true);
                              continue loop2;
                           }
                        }
                        break;
                     }
                     §§goto(addr142);
                     addr58:
                  }
                  §§goto(addr91);
               }
            }
         }
         §§goto(addr91);
      }
      
      protected function §8Y§(param1:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§8d§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§#"K§.length)
         {
            _loc2_ = this.§#"K§[_loc3_];
            if(!(_loc4_ && _loc3_))
            {
               if(_loc2_.§6#A§ == §,#E§.§&X§)
               {
                  if(!(_loc4_ && _loc3_))
                  {
                     addr59:
                     _loc2_.updateTimeStep(param1);
                     if(!(_loc5_ || _loc3_))
                     {
                        continue;
                     }
                  }
               }
               _loc3_++;
               continue;
            }
            §§goto(addr59);
         }
         if(!(_loc4_ && _loc2_))
         {
            if(this.§#"K§.length >= 1)
            {
               if(_loc5_ || _loc2_)
               {
                  this.§5"_§();
               }
            }
         }
      }
      
      private function §5"_§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:Boolean = true;
         var _loc2_:* = int(this.§#"K§.length - 1);
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(_loc4_ || _loc2_)
            {
               if(_loc4_ || _loc1_)
               {
                  if(§§pop() < 0)
                  {
                     if(!(_loc3_ && _loc1_))
                     {
                        if(!_loc3_)
                        {
                           this.§%z§(_loc1_);
                           addr70:
                           if(!(_loc3_ && _loc2_))
                           {
                              break;
                           }
                           addr94:
                           if(!(_loc3_ && _loc1_))
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 _loc1_ = false;
                                 while(true)
                                 {
                                 }
                                 addr110:
                              }
                              else
                              {
                                 addr129:
                                 this.§#"K§.splice(_loc2_,1);
                                 addr134:
                              }
                              loop2:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 addr80:
                                 while(true)
                                 {
                                    §§push(§§pop() - 1);
                                    addr81:
                                    while(true)
                                    {
                                       _loc2_ = §§pop();
                                       addr82:
                                       while(!_loc4_)
                                       {
                                          continue loop2;
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              addr78:
                           }
                           §§goto(addr134);
                        }
                        §§goto(addr82);
                     }
                     §§goto(addr70);
                  }
                  else if(!this.§#"K§[_loc2_].isComplete)
                  {
                     if(!this.§#"K§[_loc2_].allowNextPowerUp)
                     {
                        §§goto(addr94);
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr129);
               }
               §§goto(addr80);
            }
            §§goto(addr81);
         }
      }
      
      private function §%z§(param1:Boolean) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§'#7§);
         if(!_loc3_)
         {
            §§push(Boolean(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(this);
            if(_loc4_ || _loc2_)
            {
               §§push(param1);
               if(_loc4_)
               {
                  §§push(Boolean(§§pop()));
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           §§pop();
                           addr88:
                           §§push(this.§[!X§);
                           if(!_loc4_)
                           {
                           }
                           §§goto(addr93);
                        }
                        §§push(!§§pop());
                     }
                  }
               }
               addr93:
               §§pop().§'#7§ = §§pop();
               while(_loc2_ != this.§'#7§)
               {
                  if(!_loc3_)
                  {
                     if(!_loc4_)
                     {
                        continue;
                     }
                     dispatchEvent(new §+H§(§+H§.§=Z§,"",this.§'#7§));
                  }
                  break;
               }
               return;
            }
            §§goto(addr88);
         }
         §§goto(addr49);
      }
      
      private function §&"T§(param1:§8d§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§28§ == null)
            {
               this.§28§ = param1;
               while(true)
               {
                  (§,!q§.§>k§ as §6#!§).mouseEnabled = false;
                  loop1:
                  while(true)
                  {
                     this.§?"v§ = §15§.§""Q§;
                     while(_loc3_ || this)
                     {
                        §§push(§,!q§.§9!,§.camera);
                        if(!(_loc2_ && param1))
                        {
                           if(param1.§7"U§)
                           {
                              addr38:
                              §§push(§,#Q§.§@#G§);
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§push(int(§§pop()));
                                 if(_loc2_)
                                 {
                                    addr55:
                                    §§push(int(§§pop()));
                                 }
                              }
                           }
                           else
                           {
                              §§push(§,#Q§.§+!v§);
                              if(!_loc2_)
                              {
                                 §§goto(addr55);
                              }
                           }
                           §§pop().setAction(§§pop());
                           if(!_loc2_)
                           {
                              continue loop1;
                           }
                           continue;
                        }
                        §§goto(addr38);
                     }
                     §§goto(addr132);
                  }
               }
            }
            §§goto(addr128);
         }
         addr132:
      }
      
      protected function §""8§(param1:§^-§) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc2_:String = this.§+!b§.currentLevel;
         var _loc3_:§3![§ = this.§+!b§.getEpisodeForLevel(_loc2_);
         if(!_loc8_)
         {
            if(_loc3_)
            {
               addr31:
               §§push(_loc3_.name);
               if(_loc7_)
               {
                  §§push(§§pop());
                  if(_loc7_)
                  {
                     addr40:
                     §§push(§§pop());
                  }
               }
               var _loc4_:* = §§pop();
               var _loc5_:String = (_loc3_.getLevelIndex(_loc2_) + 1).toString();
               var _loc6_:int;
               §§push(_loc6_ = §@#B§(§4#;§.singleton.dataModel).§!!C§.levelNames.indexOf(_loc2_));
               if(_loc7_)
               {
                  §§push(-1);
                  if(_loc7_)
                  {
                     if(§§pop() > §§pop())
                     {
                        if(!(_loc8_ && _loc2_))
                        {
                           addr87:
                           _loc5_ = (_loc6_ + 1).toString();
                           if(_loc7_)
                           {
                              addr124:
                              this.§">§.addEventListener(§##L§.§0"5§,this.§2"C§);
                           }
                        }
                        do
                        {
                           this.§4"s§ = this.§">§.§7# §(param1.§'"4§,_loc2_,_loc4_,_loc5_,param1.§>!;§);
                        }
                        while(!_loc7_);
                        
                        return;
                     }
                     §§goto(addr124);
                  }
               }
               §§goto(addr87);
            }
            else
            {
               §§push("unknownEpisode");
            }
            §§goto(addr40);
         }
         §§goto(addr31);
      }
      
      protected function §2"C§(param1:§##L§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§^-§ = null;
         if(!_loc4_)
         {
            this.§">§.removeEventListener(§##L§.§0"5§,this.§2"C§);
            loop0:
            do
            {
               loop1:
               while(true)
               {
                  this.§4"s§ = null;
                  while(!param1.§;K§)
                  {
                     if(_loc3_ || param1)
                     {
                        if(_loc3_ || this)
                        {
                           continue loop0;
                        }
                        continue;
                     }
                     if(true)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  if(this.§7"%§.length > 0)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        _loc2_ = this.§7"%§.shift();
                        if(_loc3_)
                        {
                           this.§""8§(_loc2_);
                        }
                     }
                  }
                  else
                  {
                     dispatchEvent(new §+H§(§+H§.§6p§,param1.itemID));
                  }
               }
            }
            while(!_loc3_);
            
            throw new Error("Powerup[" + param1.itemID + "] usage not allowed according to server response!");
         }
      }
   }
}
