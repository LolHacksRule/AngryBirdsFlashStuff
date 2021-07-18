package §]"U§
{
   import §1"b§.§>l§;
   import §6#§.§7#C§;
   import §6=§.§+!,§;
   import §6=§.§@"c§;
   import §>!c§.§?!;§;
   import §>"%§.§"!5§;
   import §]!"§.§+"d§;
   import com.furusystems.dconsole2.§!!%§;
   import com.furusystems.dconsole2.DConsole;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   import flash.utils.describeType;
   
   public class § !X§
   {
       
      
      private var §]t§:Dictionary;
      
      private var §&#-§:Vector.<§+4§>;
      
      private var §;'§:Vector.<§break§>;
      
      private var §8!A§:Vector.<§"#%§>;
      
      private var §>#?§:Vector.<§'#;§>;
      
      private var §-"x§:§7#C§;
      
      private var §-"_§:§+"d§;
      
      private var §#L§:DConsole;
      
      private var §5![§:Sprite;
      
      private var §6u§:Sprite;
      
      private var §^"&§:Sprite;
      
      private var §-!z§:§"!5§;
      
      public function § !X§(param1:§7#C§, param2:§+"d§, param3:DConsole, param4:Sprite, param5:Sprite, param6:Sprite, param7:§"!5§)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_)
         {
            this.§&#-§ = new Vector.<§+4§>();
            loop0:
            while(true)
            {
               this.§;'§ = new Vector.<§break§>();
               loop1:
               while(true)
               {
                  this.§8!A§ = new Vector.<§"#%§>();
                  loop2:
                  while(true)
                  {
                     this.§>#?§ = new Vector.<§'#;§>();
                     loop3:
                     while(true)
                     {
                        super();
                        loop4:
                        while(true)
                        {
                           this.§-!z§ = param7;
                           loop5:
                           while(true)
                           {
                              this.§5![§ = param4;
                              while(!_loc9_)
                              {
                                 this.§6u§ = param5;
                                 continue loop3;
                                 while(!(_loc9_ && this))
                                 {
                                    continue loop5;
                                    addr51:
                                    if(_loc8_ || this)
                                    {
                                       loop12:
                                       while(true)
                                       {
                                          this.§]t§ = new Dictionary();
                                          if(_loc8_ || param2)
                                          {
                                             addr35:
                                             if(_loc8_ || param1)
                                             {
                                                if(_loc8_)
                                                {
                                                   break;
                                                }
                                                continue loop2;
                                             }
                                             continue loop3;
                                          }
                                          addr63:
                                          addr70:
                                          while(!_loc9_)
                                          {
                                             §§goto(addr51);
                                             continue loop12;
                                          }
                                          while(!_loc9_)
                                          {
                                             this.§#L§ = param3;
                                             §§goto(addr49);
                                          }
                                          addr49:
                                          while(!_loc9_)
                                          {
                                             continue loop1;
                                          }
                                          continue loop4;
                                       }
                                       return;
                                       addr58:
                                    }
                                 }
                              }
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      public function §[t§(param1:Class) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(this.§]t§[param1] != null)
            {
               if(_loc3_ || _loc3_)
               {
                  this.§]t§[param1].shutdown(this);
               }
               loop0:
               while(true)
               {
                  §§push(this.§]t§[param1] is §'#;§);
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§push(this.§]t§[param1] is §"#%§);
                        continue;
                     }
                     while(true)
                     {
                        this.§#L§.view.inspector.§]!E§(this.§]t§[param1]);
                        addr234:
                        while(true)
                        {
                           this.§>#?§.splice(this.§>#?§.indexOf(this.§]t§[param1]),1);
                           continue loop0;
                        }
                     }
                  }
               }
            }
            §§goto(addr25);
         }
         §§goto(addr196);
      }
      
      public function §'"W§(param1:Class) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:§3"l§ = null;
         var _loc4_:Class = null;
         var _loc5_:§^"p§ = null;
         var _loc6_:* = 0;
         var _loc2_:* = new param1();
         if(!(_loc9_ && param1))
         {
            if(_loc2_ is §3"l§)
            {
               addr43:
               _loc3_ = _loc2_ as §3"l§;
               if(!_loc9_)
               {
                  if(this.§]t§[param1] == null)
                  {
                     if(!(_loc9_ && _loc2_))
                     {
                        addr63:
                        if(_loc3_.§&!R§ != null)
                        {
                           if(_loc10_ || _loc3_)
                           {
                              addr74:
                              if(_loc3_.§&!R§.length > 0)
                              {
                              }
                              addr244:
                              _loc3_.initialize(this);
                              do
                              {
                                 this.§]t§[param1] = _loc3_;
                                 while(true)
                                 {
                                    §§push(_loc3_ is §'#;§);
                                    loop8:
                                    while(!§§pop())
                                    {
                                       §§push(_loc3_ is §"#%§);
                                       loop9:
                                       while(!§§pop())
                                       {
                                          §§push(_loc3_ is §break§);
                                          while(true)
                                          {
                                             if(!(_loc9_ && this))
                                             {
                                                if(_loc10_)
                                                {
                                                   continue;
                                                }
                                                continue loop8;
                                             }
                                             continue loop9;
                                          }
                                          this.§;'§.push(_loc3_);
                                          §§goto(addr186);
                                       }
                                       if(_loc9_ && this)
                                       {
                                          break;
                                       }
                                       this.§8!A§.push(_loc3_);
                                       §§goto(addr216);
                                    }
                                    this.§>#?§.push(_loc3_);
                                    §§goto(addr236);
                                    if(!(_loc10_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    this.§&#-§.push(_loc3_);
                                    §§goto(addr147);
                                 }
                              }
                              while(!(_loc10_ || _loc2_));
                              
                              §§goto(addr248);
                              addr197:
                           }
                           for each(_loc4_ in _loc3_.§&!R§)
                           {
                              if(!(_loc9_ && this))
                              {
                                 this.§'"W§(_loc4_);
                              }
                           }
                           if(!(_loc9_ && param1))
                           {
                              §§goto(addr244);
                           }
                           §§goto(addr197);
                        }
                        §§goto(addr244);
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr248);
               }
               §§goto(addr63);
            }
            else if(_loc2_ is §^"p§)
            {
               if(!(_loc9_ && param1))
               {
                  _loc5_ = _loc2_ as §^"p§;
                  if(_loc10_ || this)
                  {
                     §§push(0);
                     if(!_loc9_)
                     {
                        _loc6_ = §§pop();
                        while(true)
                        {
                           addr284:
                           while(true)
                           {
                              addr303:
                              while(true)
                              {
                                 §§push(_loc6_);
                              }
                           }
                        }
                        addr302:
                     }
                     loop3:
                     while(§§pop() < _loc5_.plugins.length)
                     {
                        this.§'"W§(_loc5_.plugins[_loc6_]);
                        if(!_loc9_)
                        {
                           if(!_loc9_)
                           {
                              while(true)
                              {
                                 _loc6_++;
                                 if(!(_loc10_ || _loc2_))
                                 {
                                    break loop3;
                                 }
                                 if(true)
                                 {
                                    §§goto(addr303);
                                    continue loop3;
                                 }
                              }
                              addr297:
                           }
                           else
                           {
                              §§goto(addr302);
                           }
                           §§goto(addr284);
                        }
                        break;
                     }
                     §§goto(addr335);
                  }
                  §§goto(addr297);
               }
            }
            else
            {
               this.§[![§.§""W§("Couldn\'t register plug-in: " + String(describeType(param1).@name).split("::").pop(),§+!,§.ERROR);
            }
            §§goto(addr335);
         }
         §§goto(addr43);
      }
      
      public function get §'0§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§3"l§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§]t§)
         {
            if(!(_loc5_ && _loc1_))
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      public function §#Y§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§3"l§ = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§]t§)
         {
            if(_loc6_ || this)
            {
               _loc1_++;
               loop1:
               while(true)
               {
                  addr76:
                  while(true)
                  {
                     §§push(this.§[![§);
                     addr79:
                     while(true)
                     {
                        §§pop().§""W§(String(describeType(_loc2_).@name).split("::").pop(),§+!,§.§>y§);
                        continue loop1;
                     }
                  }
               }
            }
            while(true)
            {
               §§push(this.§[![§);
               if(_loc6_ || _loc1_)
               {
                  §§push("\t(" + _loc2_.§6!7§);
                  if(_loc6_)
                  {
                     §§push(§§pop() + ")");
                  }
                  §§pop().§""W§(§§pop());
                  if(_loc6_)
                  {
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr91);
               }
               §§goto(addr79);
            }
         }
         if(!(_loc5_ && _loc2_))
         {
            this.§[![§.§""W§(_loc1_ + " plugins registered",§+!,§.§>y§);
         }
      }
      
      public function §4!'§(param1:String) : *
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:§"#%§ = null;
         var _loc4_:* = undefined;
         var _loc2_:int = 0;
         while(_loc2_ < this.§8!A§.length)
         {
            _loc3_ = this.§8!A§[_loc2_];
            if((_loc4_ = _loc3_.parse(param1)) != null)
            {
               if(!(_loc6_ && _loc3_))
               {
                  return _loc4_;
               }
            }
            _loc2_++;
         }
         return param1;
      }
      
      public function §5""§(param1:§@"c§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§break§ = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§;'§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc6_ && _loc3_)
               {
                  addr73:
                  break;
               }
               §§push(_loc2_.filter(param1));
               if(!(_loc5_ || _loc2_))
               {
                  return §§pop();
               }
               if(!§§pop())
               {
                  if(!_loc6_)
                  {
                     break;
                  }
               }
            }
            return true;
         }
         §§goto(addr73);
         §§push(false);
      }
      
      public function update() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§+4§ = null;
         var _loc3_:* = this.§&#-§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_ || _loc3_)
            {
               _loc1_.update(this);
            }
         }
      }
      
      public function §"">§(param1:Class) : §3"l§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§]t§[param1] != null)
            {
               if(!(_loc2_ && param1))
               {
                  §§goto(addr52);
               }
            }
            return null;
         }
         addr52:
         return this.§]t§[param1] as §3"l§;
      }
      
      public function get persistence() : §?!;§
      {
         return this.§#L§.persistence;
      }
      
      public function get §[![§() : §!!%§
      {
         return this.§#L§;
      }
      
      public function get §9!T§() : §7#C§
      {
         return this.§-"x§;
      }
      
      public function get §>"[§() : §+"d§
      {
         return this.§-"_§;
      }
      
      public function get §76§() : DisplayObjectContainer
      {
         return this.§5![§;
      }
      
      public function get §4""§() : DisplayObjectContainer
      {
         return this.§6u§;
      }
      
      public function get §>!P§() : DisplayObjectContainer
      {
         return this.§^"&§;
      }
      
      public function get §'#U§() : §"!5§
      {
         return this.§-!z§;
      }
      
      public function get §]"z§() : §>l§
      {
         return this.§#L§.§]"z§;
      }
   }
}
