package §^[§
{
   import § "@§.StateLevelEditor;
   import §%c§.§=!X§;
   import §&"5§.§7!P§;
   import §'i§.§ "+§;
   import §2"=§.b2Vec2;
   import §3"5§.§ !,§;
   import §5!V§.§!w§;
   import §7R§.Texture;
   import §default§.§=!Z§;
   
   public class §!!c§
   {
       
      
      private var §]!K§:Vector.<§=!Z§>;
      
      private var §]!a§:Vector.<§=!Z§>;
      
      private var §+!A§:Texture;
      
      private var §8"4§:§ "+§;
      
      private var §3H§:StateLevelEditor;
      
      public function §!!c§(param1:StateLevelEditor, param2:§ "+§)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§]!K§ = new Vector.<§=!Z§>();
            while(true)
            {
               this.§]!a§ = new Vector.<§=!Z§>();
               loop2:
               for(; _loc3_ || param2; if(_loc3_ || this)
               {
                  if(!this.§+!A§)
                  {
                     if(_loc3_ || _loc3_)
                     {
                        addr34:
                        if(!(_loc4_ && this))
                        {
                           this.§+!A§ = §7!P§.§2=§.§4!A§();
                           §§goto(addr46);
                        }
                        while(true)
                        {
                           super();
                           continue loop2;
                           §§goto(addr34);
                        }
                        addr111:
                     }
                     addr46:
                     if(_loc4_)
                     {
                        addr63:
                     }
                     §§goto(addr19);
                  }
                  addr19:
                  while(true)
                  {
                     if(_loc3_ || param1)
                     {
                        continue loop2;
                     }
                     continue loop3;
                  }
                  return;
               })
               {
                  this.§3H§ = param1;
                  while(true)
                  {
                     this.§8"4§ = param2;
                     §§goto(addr63);
                  }
               }
            }
         }
         §§goto(addr111);
      }
      
      public function update(param1:Vector.<§ !,§>) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§#!U§(param1);
         }
      }
      
      private function §#!U§(param1:Vector.<§ !,§>) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc3_:§ !,§ = null;
         var _loc4_:b2Vec2 = null;
         var _loc5_:b2Vec2 = null;
         var _loc6_:b2Vec2 = null;
         var _loc7_:b2Vec2 = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:int = 0;
         var _loc14_:§=!Z§ = null;
         var _loc15_:§=!Z§ = null;
         if(!_loc18_)
         {
            this.§+!A§ = §=!X§.§!'§.§7!J§.§12§("LASER_DOT").texture;
         }
         var _loc2_:int = 0;
         loop0:
         for each(_loc3_ in param1)
         {
            _loc4_ = _loc3_.§5""§.§]"$§().GetPosition();
            _loc5_ = _loc3_.§5""§.§5v§().GetPosition();
            (_loc6_ = _loc4_.Copy()).§5!]§(_loc5_);
            (_loc7_ = _loc6_.Copy()).Normalize();
            if(!_loc18_)
            {
               §§push(4);
               if(!(_loc18_ && _loc3_))
               {
                  §§push(Number(§§pop()));
                  loop1:
                  while(true)
                  {
                     _loc8_ = §§pop();
                     while(true)
                     {
                        §§push(_loc5_.x);
                        if(_loc19_)
                        {
                           §§push(_loc4_.x);
                           while(true)
                           {
                              §§push(§§pop() - §§pop());
                              addr233:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           addr232:
                        }
                        loop5:
                        while(true)
                        {
                           _loc9_ = §§pop();
                           loop6:
                           while(true)
                           {
                              §§push(_loc5_.y);
                              if(_loc19_)
                              {
                                 if(_loc18_)
                                 {
                                    break;
                                 }
                                 §§push(_loc4_.y);
                                 if(_loc19_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    loop7:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       addr219:
                                       loop8:
                                       while(_loc19_)
                                       {
                                          _loc10_ = §§pop();
                                          while(_loc19_)
                                          {
                                             §§push(Number(Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_)));
                                             while(true)
                                             {
                                                if(!(_loc18_ && this))
                                                {
                                                   if(!_loc18_)
                                                   {
                                                      _loc11_ = §§pop();
                                                      if(!(_loc19_ || this))
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                   continue loop7;
                                                }
                                                continue loop8;
                                             }
                                             continue loop0;
                                          }
                                          continue loop6;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr232);
                                 }
                                 §§goto(addr233);
                              }
                              §§goto(addr219);
                           }
                           continue loop1;
                        }
                     }
                  }
               }
               §§goto(addr427);
            }
            §§goto(addr136);
         }
         if(!(_loc18_ && _loc3_))
         {
            while(this.§]!K§.length > _loc2_)
            {
               _loc15_ = this.§]!K§.pop();
               if(_loc19_)
               {
                  §=!X§.§!'§.objects.§6!v§.removeChild(_loc15_);
                  if(_loc18_ && _loc3_)
                  {
                     continue;
                  }
               }
               this.§,!`§(_loc15_);
            }
         }
      }
      
      private function §%!7§() : §=!Z§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§]!a§.length > 0)
            {
               if(_loc2_ || this)
               {
                  §§goto(addr56);
               }
            }
            return new §=!Z§(this.§+!A§);
         }
         addr56:
         return this.§]!a§.pop();
      }
      
      private function §,!`§(param1:§=!Z§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!this.§]!a§)
            {
               while(true)
               {
                  this.§]!a§ = new Vector.<§=!Z§>();
                  while(true)
                  {
                  }
               }
               addr61:
            }
            do
            {
               this.§]!a§.push(param1);
               if(!_loc2_)
               {
                  continue;
               }
            }
            while(_loc3_ && _loc3_);
            
            return;
         }
         §§goto(addr61);
      }
   }
}
