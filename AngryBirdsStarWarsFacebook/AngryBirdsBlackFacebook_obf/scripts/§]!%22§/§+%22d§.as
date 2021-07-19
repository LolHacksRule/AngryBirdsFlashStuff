package §]!"§
{
   import §+!J§.§""A§;
   import §1"b§.§7",§;
   import §6#§.§#!z§;
   import §6#§.§7#C§;
   import §6=§.§+!,§;
   import com.furusystems.dconsole2.DConsole;
   import flash.utils.Dictionary;
   
   public class §+"d§
   {
       
      
      private var §0^§:Dictionary;
      
      private var §[![§:DConsole;
      
      private var §9!T§:§7#C§;
      
      private var §'"F§:uint = 0;
      
      public function §+"d§(param1:DConsole, param2:§7#C§)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§0^§ = new Dictionary(true);
            while(true)
            {
               super();
               addr44:
               if(!(_loc4_ || _loc3_))
               {
                  continue;
               }
               return;
               addr51:
            }
         }
         loop1:
         while(true)
         {
            this.§9!T§ = param2;
            loop2:
            while(true)
            {
               this.§[![§ = param1;
               while(true)
               {
                  if(!_loc3_)
                  {
                     if(_loc3_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop2;
               }
               continue loop1;
            }
         }
         §§goto(addr51);
      }
      
      private function get §?"Q§() : uint
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:*;
         §§push(Number((_loc1_ = this).§'"F§));
         if(_loc4_)
         {
            §§push(§§pop());
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() + 1);
            }
            var _loc2_:* = §§pop();
            if(_loc4_)
            {
               _loc1_.§'"F§ = _loc2_;
            }
         }
         return §§pop();
      }
      
      private function §0!5§(param1:§7",§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§0^§["this"] = §#!z§(param1.data).§5#L§;
         }
      }
      
      public function §0"&§(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var name:String = param1;
         try
         {
            delete this.§0^§[name];
            if(!(_loc4_ && _loc2_))
            {
               this.§[![§.§""W§("Cleared reference " + name,§+!,§.§>y§);
               if(!_loc4_)
               {
                  addr58:
                  this.§%!a§();
               }
               §§goto(addr91);
            }
            §§goto(addr58);
         }
         catch(e:Error)
         {
            if(_loc5_)
            {
               §[![§.§""W§("No such reference",§+!,§.ERROR);
            }
         }
         addr91:
      }
      
      public function §4#A§(param1:*, param2:String = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(§§newactivation());
         loop0:
         while(true)
         {
            §§pop().§§slot[3] = null;
            loop1:
            while(true)
            {
               loop2:
               while(true)
               {
                  §§push(§§newactivation());
                  loop3:
                  while(_loc5_)
                  {
                     §§pop().§§slot[1] = param1;
                     while(!_loc6_)
                     {
                        §§push(§§newactivation());
                        if(_loc5_)
                        {
                           §§pop().§§slot[2] = param2;
                           if(_loc5_)
                           {
                              if(true)
                              {
                                 break loop2;
                              }
                              continue loop2;
                           }
                           continue;
                        }
                        continue loop3;
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
               try
               {
                  §§push(§§newactivation());
                  if(!_loc6_)
                  {
                     §§pop().§§slot[3] = this.§9!T§.§@<§(target);
                     if(!_loc6_)
                     {
                        addr88:
                        §§push(§§newactivation());
                        if(_loc5_)
                        {
                           if(!§§pop().§§slot[3])
                           {
                              if(_loc5_)
                              {
                                 throw new Error("Invalid target");
                              }
                              addr112:
                              this.§0^§[id] = t;
                              addr120:
                              if(_loc5_ || param2)
                              {
                                 if(_loc5_ || param1)
                                 {
                                    this.§%!a§();
                                    if(_loc6_)
                                    {
                                       §§goto(addr120);
                                    }
                                    return;
                                 }
                                 addr156:
                                 var id:String = "ref" + this.§?"Q§;
                                 addr155:
                              }
                              addr162:
                              §§goto(addr162);
                           }
                           else
                           {
                              addr135:
                              §§push(§§newactivation());
                              if(!(_loc6_ && param1))
                              {
                                 addr143:
                                 if(!§§pop().§§slot[2])
                                 {
                                    §§goto(addr155);
                                 }
                                 §§goto(addr112);
                              }
                           }
                        }
                        §§goto(addr156);
                     }
                     §§goto(addr135);
                  }
                  §§goto(addr143);
               }
               catch(e:Error)
               {
                  if(!_loc6_)
                  {
                     var t:Object = target;
                  }
               }
               §§goto(addr88);
            }
         }
      }
      
      public function getReference(param1:String = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(param1);
            if(_loc3_ || _loc3_)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     §§push("ref" + this.§?"Q§);
                     addr93:
                     while(true)
                     {
                        param1 = §§pop();
                        addr94:
                        while(true)
                        {
                        }
                     }
                     addr49:
                     if(_loc2_ && _loc3_)
                     {
                        continue;
                     }
                     return;
                     addr56:
                  }
               }
               while(true)
               {
                  this.§0^§[param1] = this.§9!T§.§0%§.§5#L§;
                  while(_loc3_)
                  {
                     this.§%!a§();
                     if(!(_loc3_ || _loc3_))
                     {
                        continue;
                     }
                     §§goto(addr49);
                  }
                  §§goto(addr94);
               }
               §§goto(addr56);
            }
            §§goto(addr93);
         }
         §§goto(addr94);
      }
      
      public function §2_§(param1:*) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:String = "r" + this.§?"Q§;
         if(!(_loc3_ && _loc2_))
         {
            this.§0^§[_loc2_] = param1;
            do
            {
               this.§%!a§();
            }
            while(_loc3_);
            
         }
      }
      
      public function §+"D§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§0^§ = new Dictionary(true);
         }
         do
         {
            this.§[![§.§""W§("References cleared",§+!,§.§>y§);
         }
         while(!(_loc1_ || this));
         
      }
      
      public function §%!a§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = undefined;
         if(_loc4_ || _loc3_)
         {
            this.§[![§.§""W§("Stored references: ");
         }
         for(_loc1_ in this.§0^§)
         {
            if(!_loc5_)
            {
               §§push(this.§[![§);
               §§push("\t" + _loc1_.toString());
               if(_loc4_)
               {
                  §§push(§§pop() + " : ");
                  if(!_loc5_)
                  {
                     §§push(§§pop() + this.§0^§[_loc1_].toString());
                  }
               }
               §§pop().§""W§(§§pop());
            }
         }
      }
      
      public function §9#R§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.§0^§[param1])
            {
               throw new Error("No such reference");
            }
            this.§9!T§.§4"i§(this.§0^§[param1]);
         }
      }
      
      public function §]#9§(param1:Array) : Array
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:* = false;
         var _loc5_:* = undefined;
         var _loc2_:int = 0;
         for(; _loc2_ < param1.length; _loc2_++,if(!_loc8_)
         {
            break;
         })
         {
            §§push(param1);
            if(!(_loc7_ && _loc3_))
            {
               §§push(_loc2_);
               if(_loc8_)
               {
                  §§push(§§pop()[§§pop()]);
                  if(!(_loc7_ && _loc3_))
                  {
                     _loc3_ = §§pop();
                     if(_loc8_ || this)
                     {
                        if(this.§0^§[_loc3_] != null)
                        {
                           if(_loc8_)
                           {
                              §§push(this.§0^§[_loc3_] is Function);
                              if(!_loc7_)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       §§push(param1);
                                       if(!(_loc7_ && this))
                                       {
                                          §§push(_loc2_);
                                          if(!_loc7_)
                                          {
                                             addr92:
                                             §§pop()[§§pop()] = this.§0^§[_loc3_]();
                                             if(_loc8_ || this)
                                             {
                                                addr109:
                                             }
                                          }
                                          else
                                          {
                                             addr114:
                                             §§pop()[§§pop()] = this.§0^§[_loc3_];
                                             if(!(_loc8_ || _loc2_))
                                             {
                                                addr204:
                                                §§push((_loc5_ = this.§9!T§.§@<§(_loc3_)) is Function);
                                                if(_loc8_ || _loc2_)
                                                {
                                                   if(!§§pop())
                                                   {
                                                      if(!(_loc7_ && _loc2_))
                                                      {
                                                         §§pop();
                                                         if(!_loc7_)
                                                         {
                                                            §§push(_loc4_);
                                                            if(_loc8_ || this)
                                                            {
                                                               addr241:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc8_ || _loc2_)
                                                                  {
                                                                     param1[_loc2_] = _loc5_;
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr241);
                                                         }
                                                         addr253:
                                                         continue;
                                                      }
                                                   }
                                                }
                                                §§goto(addr241);
                                             }
                                          }
                                          continue;
                                       }
                                       addr113:
                                       §§push(_loc2_);
                                       §§goto(addr114);
                                    }
                                    §§goto(addr204);
                                 }
                                 else
                                 {
                                    §§push(param1);
                                    if(_loc7_)
                                    {
                                       §§goto(addr283);
                                    }
                                    §§goto(addr113);
                                 }
                              }
                              else
                              {
                                 addr201:
                                 _loc4_ = §§pop();
                                 if(!_loc8_)
                                 {
                                    break;
                                 }
                                 §§goto(addr204);
                              }
                           }
                           §§goto(addr109);
                        }
                        else
                        {
                           try
                           {
                              §§push(false);
                              if(!(_loc7_ && _loc3_))
                              {
                                 _loc4_ = §§pop();
                                 if(!(_loc7_ && _loc2_))
                                 {
                                    §§push(_loc3_);
                                    if(!(_loc7_ && _loc2_))
                                    {
                                       §§push(0);
                                       if(_loc8_ || _loc2_)
                                       {
                                          if(§§pop().charAt(§§pop()) == "@")
                                          {
                                             if(!(_loc7_ && this))
                                             {
                                                addr179:
                                                §§push(_loc3_);
                                                if(_loc8_ || _loc3_)
                                                {
                                                   addr188:
                                                   §§push(§§pop().slice(1,_loc3_.length));
                                                }
                                                _loc3_ = §§pop();
                                                if(!(_loc7_ && _loc2_))
                                                {
                                                   §§goto(addr201);
                                                   §§push(true);
                                                }
                                                break;
                                             }
                                          }
                                          §§goto(addr204);
                                       }
                                    }
                                    §§goto(addr188);
                                 }
                                 §§goto(addr179);
                              }
                              §§goto(addr201);
                           }
                           catch(e:Error)
                           {
                           }
                           §§goto(addr253);
                        }
                        continue;
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr188);
               }
               §§goto(addr92);
            }
            §§goto(addr113);
         }
         addr283:
         param1;
         return §§pop();
      }
   }
}
