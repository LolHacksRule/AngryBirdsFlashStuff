package §>"%§
{
   import §+!J§.§""A§;
   import §1"b§.§7",§;
   import §1"b§.§>l§;
   import §6=§.§@"c§;
   import com.furusystems.dconsole2.DConsole;
   import flash.utils.Dictionary;
   
   public class §"!5§
   {
      
      private static const §["w§:String = "DConsole";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §["w§ = "DConsole";
         }
      }
      
      private var §="n§:Dictionary;
      
      private var §2#"§:Dictionary;
      
      private var §#!@§:§ "R§;
      
      private var §5"D§:§ "R§;
      
      private var §+"@§:int = 0;
      
      private var §^y§:int = 0;
      
      private var §5"d§:§>l§;
      
      public function §"!5§(param1:DConsole)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§="n§ = new Dictionary(true);
            loop0:
            while(true)
            {
               this.§2#"§ = new Dictionary();
               addr63:
               while(true)
               {
                  addr35:
                  while(true)
                  {
                     super();
                     if(_loc4_)
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr93);
      }
      
      private function §^#=§(param1:§7",§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§]!N§(param1.data as String);
         }
      }
      
      public function clearAll() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§ "R§ = null;
         for each(_loc1_ in this.§="n§)
         {
            if(_loc5_ || this)
            {
               _loc1_.clear();
            }
         }
      }
      
      public function §8!"§(param1:§@"c§, param2:§ "R§ = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && this))
         {
            if(!param2)
            {
               if(_loc4_)
               {
                  addr38:
                  param2 = this.§#!@§;
                  addr52:
                  this.§ 0§(param1);
                  if(!_loc3_)
                  {
                     param2.§8!"§(param1);
                  }
               }
               return;
            }
            §§goto(addr52);
         }
         §§goto(addr38);
      }
      
      public function §=N§(param1:String, param2:Boolean = true) : § "R§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§ "R§ = null;
         if(_loc4_)
         {
            if(this.§="n§[param1.toLowerCase()] != null)
            {
               if(_loc4_ || _loc3_)
               {
                  _loc3_ = this.§="n§[param1.toLowerCase()];
                  if(_loc4_)
                  {
                     return _loc3_;
                  }
                  addr56:
                  if(param2)
                  {
                     if(!(_loc5_ && this))
                     {
                        return this.§?!c§(param1);
                        addr65:
                     }
                  }
               }
               throw new ArgumentError("No such log \'" + param1 + "\'");
            }
            §§goto(addr56);
         }
         §§goto(addr65);
      }
      
      public function §?!c§(param1:String) : § "R§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§ "R§ = new § "R§(param1,this);
         if(_loc5_ || param1)
         {
            this.§="n§[param1.toLowerCase()] = _loc2_;
            if(!(_loc6_ && _loc3_))
            {
               var _loc3_:*;
               §§push((_loc3_ = this).§^y§);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() + 1);
               }
               var _loc4_:* = §§pop();
               if(!(_loc6_ && param1))
               {
                  _loc3_.§^y§ = _loc4_;
               }
               if(!_loc6_)
               {
                  addr89:
                  this.§5"d§.§#!"§(§""A§.§9#C§,_loc2_,this);
               }
            }
            return _loc2_;
         }
         §§goto(addr89);
      }
      
      public function §]#&§(param1:String) : § "R§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§ "R§ = null;
         if(_loc5_ || this)
         {
            if(this.§="n§[param1.toLowerCase()] != null)
            {
               addr33:
               _loc2_ = this.§="n§[param1.toLowerCase()];
               if(!_loc6_)
               {
                  _loc2_.destroy();
                  if(_loc5_ || _loc2_)
                  {
                     delete this.§="n§[param1.toLowerCase()];
                     if(!_loc6_)
                     {
                        §§goto(addr69);
                     }
                     return _loc2_;
                  }
                  addr69:
                  var _loc3_:*;
                  §§push((_loc3_ = this).§^y§);
                  if(_loc5_ || _loc3_)
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc4_:* = §§pop();
                  if(_loc5_)
                  {
                     _loc3_.§^y§ = _loc4_;
                  }
                  if(_loc5_)
                  {
                     this.§5"d§.§#!"§(§""A§.§8"$§,_loc2_,this);
                     if(!(_loc5_ || _loc3_))
                     {
                        §§goto(addr117);
                     }
                  }
                  §§goto(addr117);
               }
            }
            addr117:
            throw new ArgumentError("No such log: " + param1);
         }
         §§goto(addr33);
      }
      
      public function §]!N§(param1:String) : § "R§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(this.§="n§[param1.toLowerCase()] != null)
            {
               if(_loc3_ || this)
               {
                  this.§#!@§ = this.§="n§[param1.toLowerCase()];
                  addr84:
                  while(true)
                  {
                  }
                  addr84:
               }
               §§goto(addr84);
            }
            while(true)
            {
               this.§5"d§.§#!"§(§""A§.§5!q§,this.§#!@§,this);
               if(_loc3_ || _loc3_)
               {
                  break;
               }
               §§goto(addr84);
            }
            return this.§#!@§;
         }
         §§goto(addr84);
      }
      
      public function §="Q§(param1:§%"4§) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§2#"§[param1.id] = param1;
            if(!_loc5_)
            {
               addr36:
               var _loc2_:*;
               §§push((_loc2_ = this).§+"@§);
               if(_loc4_)
               {
                  §§push(§§pop() + 1);
               }
               var _loc3_:* = §§pop();
               if(_loc4_)
               {
                  _loc2_.§+"@§ = _loc3_;
               }
               if(!_loc5_)
               {
                  this.§&s§();
               }
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function §7!L§(param1:§%"4§) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            delete this.§2#"§[param1.id];
            if(!_loc4_)
            {
               var _loc2_:*;
               §§push((_loc2_ = this).§+"@§);
               if(!(_loc4_ && this))
               {
                  §§push(§§pop() - 1);
               }
               var _loc3_:* = §§pop();
               if(_loc5_ || _loc3_)
               {
                  _loc2_.§+"@§ = _loc3_;
               }
               if(_loc5_)
               {
                  this.§&s§();
               }
            }
         }
      }
      
      public function §[!C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§2#"§ = new Dictionary();
         }
         while(true)
         {
            this.§+"@§ = 0;
            while(!(_loc1_ && this))
            {
               this.§&s§();
               if(_loc2_)
               {
                  return;
               }
            }
         }
      }
      
      private function §&s§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc1_:§ "R§ = null;
         var _loc2_:§@"c§ = null;
         for each(_loc1_ in this.§="n§)
         {
            if(_loc7_ || _loc2_)
            {
               var _loc5_:int = 0;
               if(!_loc8_)
               {
                  for each(_loc2_ in _loc1_.§0!G§)
                  {
                     if(_loc7_)
                     {
                        this.§ 0§(_loc2_);
                     }
                  }
               }
               if(!_loc7_)
               {
                  continue;
               }
            }
            this.§5"d§.§#!"§(§""A§.§@!<§,_loc1_,this);
         }
      }
      
      private function § 0§(param1:§@"c§) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§%"4§ = null;
         var _loc3_:* = false;
         if(_loc7_)
         {
            param1.visible = true;
         }
         loop0:
         for each(_loc2_ in this.§2#"§)
         {
            if(!_loc6_)
            {
               §§push(true);
               loop1:
               while(true)
               {
                  _loc3_ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(_loc2_.§8#=§);
                     if(_loc7_)
                     {
                        §§push("");
                        loop3:
                        while(true)
                        {
                           if(§§pop() != §§pop())
                           {
                              while(true)
                              {
                                 §§push(param1.text);
                                 addr132:
                                 while(true)
                                 {
                                    §§push(§§pop().toLowerCase().indexOf(_loc2_.§8#=§.toLowerCase()) > -1);
                                    addr139:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       addr150:
                                       while(true)
                                       {
                                       }
                                    }
                                 }
                              }
                              addr130:
                           }
                           loop5:
                           while(true)
                           {
                              §§push(_loc2_.tag);
                              if(!_loc6_)
                              {
                                 §§push("");
                                 if(_loc6_)
                                 {
                                    continue loop3;
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    while(true)
                                    {
                                       param1.visible = _loc3_;
                                       if(!(_loc7_ || _loc3_))
                                       {
                                          continue;
                                       }
                                       if(_loc7_ || _loc2_)
                                       {
                                          if(_loc7_)
                                          {
                                             if(!(_loc7_ || this))
                                             {
                                                break loop5;
                                                addr80:
                                             }
                                             while(false)
                                             {
                                                continue loop5;
                                             }
                                             continue loop0;
                                          }
                                          §§goto(addr130);
                                       }
                                    }
                                    §§goto(addr132);
                                 }
                                 while(!_loc6_)
                                 {
                                    §§push(param1.tag);
                                    while(true)
                                    {
                                       if(!(_loc6_ && _loc3_))
                                       {
                                          §§push(§§pop().toLowerCase() == _loc2_.tag.toLowerCase());
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             continue loop1;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr132);
                                       }
                                       §§goto(addr139);
                                    }
                                    continue loop1;
                                    §§goto(addr54);
                                 }
                                 §§goto(addr150);
                              }
                              §§goto(addr95);
                           }
                           continue loop2;
                        }
                     }
                     §§goto(addr132);
                  }
               }
            }
            §§goto(addr80);
         }
      }
      
      public function get §^"%§() : § "R§
      {
         return this.§#!@§;
      }
      
      public function get §@V§() : int
      {
         return this.§+"@§;
      }
      
      public function get §["2§() : § "R§
      {
         return this.§5"D§;
      }
      
      public function get §9!Y§() : int
      {
         return this.§^y§;
      }
      
      public function §[!x§(param1:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_ || this)
            {
               if(!_loc3_)
               {
                  addr87:
               }
               if(§§pop() >= this.§^"%§.length)
               {
                  if(_loc4_ && _loc3_)
                  {
                     continue;
                  }
                  if(!_loc4_)
                  {
                     break;
                  }
                  addr88:
               }
               else if(this.§^"%§.§0!G§[_loc2_].text.toLowerCase().indexOf(param1.toLowerCase()) > -1)
               {
                  if(_loc3_)
                  {
                     §§goto(addr87);
                  }
                  §§goto(addr88);
               }
               _loc2_++;
               continue;
               return _loc2_;
            }
            break;
         }
         return §§pop();
      }
      
      public function §;#R§() : Vector.<String>
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§ "R§ = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         for each(_loc2_ in this.§="n§)
         {
            if(!(_loc5_ && _loc1_))
            {
               if(_loc2_ != this.§5"D§)
               {
                  if(_loc6_)
                  {
                     _loc1_.push(_loc2_.name);
                  }
               }
            }
         }
         if(_loc6_)
         {
            _loc1_.sort(this.§^"X§);
         }
         do
         {
            _loc1_.unshift(this.§5"D§.name);
         }
         while(!_loc6_);
         
         return _loc1_;
      }
      
      private function §^"X§(param1:String, param2:String) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(param2);
               loop1:
               while(§§pop() <= §§pop())
               {
                  while(true)
                  {
                     §§push(param1);
                     if(!_loc4_)
                     {
                        §§push(param2);
                        if(_loc3_ || param2)
                        {
                           if(§§pop() >= §§pop())
                           {
                              break;
                           }
                           if(_loc3_)
                           {
                              §§goto(addr59);
                           }
                           if(_loc3_ || this)
                           {
                              if(_loc3_)
                              {
                                 break;
                              }
                              break loop1;
                           }
                           continue;
                        }
                        continue loop1;
                     }
                     continue loop0;
                  }
                  §§push(0);
                  if(!_loc4_)
                  {
                     if(!(_loc4_ && this))
                     {
                        return §§pop();
                     }
                     addr84:
                     return §§pop();
                  }
                  addr59:
                  return -1;
               }
            }
         }
         §§goto(addr84);
         §§push(1);
      }
      
      public function §7!<§(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§2#"§[param1] == null);
         if(!_loc2_)
         {
            return !§§pop();
         }
      }
      
      public function §<"p§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§2#"§[param1] == null);
         if(!_loc3_)
         {
            return !§§pop();
         }
      }
      
      public function §+!k§(param1:§%"4§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§2#"§[param1.id] == null);
         if(_loc3_)
         {
            return !§§pop();
         }
      }
   }
}
