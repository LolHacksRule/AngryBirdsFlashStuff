package §4m§
{
   import §%!0§.§,4§;
   import §&!P§.§``§;
   import §+V§.§&!O§;
   import §-&§.GhostObject;
   import §7&§.§6!4§;
   import §7t§.§7a§;
   import §7t§.§<^§;
   import §;" §.§5_§;
   import flash.display.DisplayObject;
   
   public class §3g§ extends §9g§
   {
       
      
      private var §@K§:Vector.<GhostObject>;
      
      private var §9Z§:Vector.<§7a§>;
      
      private var §]$§:Vector.<§7a§>;
      
      private var §+!"§:§6!4§;
      
      public function §3g§(param1:§,4§, param2:XML)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:XML = null;
         var _loc4_:§7a§ = null;
         var _loc5_:GhostObject = null;
         if(_loc8_)
         {
            this.§@K§ = new Vector.<GhostObject>();
            while(true)
            {
               this.§9Z§ = new Vector.<§7a§>();
               loop3:
               while(_loc8_ || this)
               {
                  super(param1,param2);
                  if(_loc9_ && param1)
                  {
                     continue;
                  }
                  if(!_loc9_)
                  {
                     if(false)
                     {
                        while(true)
                        {
                           this.§]$§ = new Vector.<§7a§>();
                           continue loop3;
                        }
                        addr74:
                        var _loc6_:int = 0;
                        var _loc7_:* = param2["object"];
                        addr44:
                     }
                     else
                     {
                        §§goto(addr74);
                     }
                     for each(_loc3_ in _loc7_)
                     {
                        if((_loc4_ = §5_§.§<!v§(_loc3_.toString(),param1.objects)).isTexture())
                        {
                           if(_loc8_ || param2)
                           {
                              continue;
                           }
                        }
                        else
                        {
                           this.§9Z§.push(_loc4_);
                        }
                        _loc5_ = new GhostObject(_loc4_);
                        if(!(_loc9_ && this))
                        {
                           this.§@K§.push(_loc5_);
                           if(!(_loc8_ || _loc3_))
                           {
                              continue;
                           }
                           if(_loc3_.@instruction != "true")
                           {
                              continue;
                           }
                           if(_loc9_)
                           {
                              continue;
                           }
                        }
                        §<!$§.push(new §&!O§(new §<^§(_loc4_),new §<^§(_loc5_)));
                     }
                     if(!_loc9_)
                     {
                        this.§+!"§ = new §6!4§();
                     }
                     while(true)
                     {
                        this.§+!"§.init(this.§@K§);
                        while(_loc8_)
                        {
                           this.refresh(param1);
                           if(!_loc9_)
                           {
                              return;
                           }
                        }
                     }
                  }
                  else
                  {
                     while(true)
                     {
                     }
                     addr66:
                  }
                  §§goto(addr44);
               }
            }
         }
         §§goto(addr66);
      }
      
      override public function refresh(param1:§,4§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:GhostObject = null;
         for each(_loc2_ in this.§@K§)
         {
            if(!(_loc5_ && this))
            {
               _loc2_.refresh(param1.objects,this.§]$§);
            }
         }
         if(!_loc5_)
         {
            this.§+!"§.§[&§();
         }
      }
      
      override public function update(param1:§,4§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§@!l§();
         }
         return this.§@K§.length - this.§]$§.length == 0;
      }
      
      public function §@!l§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:GhostObject = null;
         var _loc3_:* = this.§@K§;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc5_ && _loc3_))
            {
               _loc1_.§?k§(this.§9Z§,this.§]$§);
            }
         }
      }
      
      private function §,!p§() : Boolean
      {
         return this.§@K§.length - this.§]$§.length == 0;
      }
      
      override public function isObjectNeeded(param1:§7a§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§9Z§.indexOf(param1) == -1);
         if(!(_loc2_ && _loc2_))
         {
            return !§§pop();
         }
      }
      
      public function §[?§(param1:§7a§ = null) : Boolean
      {
         return this.§]$§.indexOf(param1) == -1;
      }
      
      public function §+'§(param1:String = null) : Boolean
      {
         return this.§]$§.length >= this.§@K§.length;
      }
      
      public function §[Q§(param1:§7a§ = null) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.isObjectNeeded(param1));
         if(!(_loc3_ && _loc2_))
         {
            return !§§pop();
         }
      }
      
      public function §["&§() : Boolean
      {
         return isCompleted;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§+!"§.clear();
         }
      }
      
      override public function onPhysicsEnabled() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§+!"§.clear();
         }
      }
      
      override public function getNextInstruction() : DisplayObject
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc1_:GhostObject = null;
         var _loc2_:§&!O§ = null;
         for each(_loc1_ in this.§@K§)
         {
            if(!_loc8_)
            {
               if(!_loc1_.§%i§)
               {
                  var _loc5_:int = 0;
                  if(_loc7_)
                  {
                     for each(_loc2_ in §<!$§)
                     {
                        if(!_loc8_)
                        {
                           if(_loc2_.end.object == _loc1_)
                           {
                              if(_loc7_)
                              {
                                 return _loc2_;
                              }
                           }
                        }
                     }
                  }
                  continue;
               }
               if(_loc8_ && _loc1_)
               {
                  continue;
               }
            }
         }
         return null;
      }
      
      public function §+5§(param1:Boolean = true) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:Vector.<§7a§> = null;
         var _loc3_:GhostObject = null;
         var _loc4_:§7a§ = null;
         if(_loc9_)
         {
            if(param1)
            {
               addr29:
               _loc2_ = this.§]$§.concat();
               for each(_loc3_ in this.§@K§)
               {
                  loop1:
                  for each(_loc4_ in this.§9Z§)
                  {
                     if(!_loc10_)
                     {
                        §§push(_loc2_.indexOf(_loc4_) >= 0);
                        if(_loc9_ || this)
                        {
                           §§push(§§pop());
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr172:
                                    addr178:
                                    addr179:
                                    while(true)
                                    {
                                       §§push(_loc4_.getName() == _loc3_.name);
                                       if(!_loc10_)
                                       {
                                          §§push(!§§pop());
                                          if(_loc9_ || _loc3_)
                                          {
                                          }
                                          break;
                                       }
                                       break;
                                    }
                                    addr178:
                                    if(!§§pop())
                                    {
                                    }
                                    break loop1;
                                 }
                                 addr171:
                              }
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!_loc9_)
                                 {
                                    break;
                                 }
                                 if(!§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       if(!(_loc10_ && _loc3_))
                                       {
                                          §§pop();
                                          while(true)
                                          {
                                             if(_loc10_ && _loc2_)
                                             {
                                                break loop6;
                                                addr72:
                                             }
                                             while(true)
                                             {
                                                §§push(_loc3_.§%i§);
                                                if(!_loc10_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   if(_loc9_ || _loc3_)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         break;
                                                      }
                                                   }
                                                }
                                                §§goto(addr178);
                                             }
                                             continue loop6;
                                          }
                                          addr149:
                                       }
                                       else
                                       {
                                          §§goto(addr171);
                                       }
                                    }
                                    §§goto(addr172);
                                 }
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       _loc2_.push(_loc4_);
                                       if(_loc9_ || param1)
                                       {
                                       }
                                       break;
                                    }
                                    if(_loc9_ || param1)
                                    {
                                       if(!_loc10_)
                                       {
                                          continue loop1;
                                       }
                                       §§goto(addr149);
                                    }
                                    else
                                    {
                                       _loc4_.§9!c§(_loc3_.transform);
                                       if(_loc9_)
                                       {
                                          if(true)
                                          {
                                             §§goto(addr178);
                                             §§push((_loc4_.getObject() as §``§).§^_§());
                                          }
                                          §§goto(addr178);
                                       }
                                       break;
                                       addr119:
                                    }
                                    §§goto(addr72);
                                    §§goto(addr119);
                                 }
                                 §§goto(addr179);
                              }
                           }
                        }
                        §§goto(addr178);
                     }
                     §§goto(addr179);
                  }
               }
            }
            else
            {
               this.§@!l§();
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function §2l§() : int
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:GhostObject = null;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§@K§)
         {
            if(_loc6_ || _loc2_)
            {
               if(_loc2_.name.indexOf("PIG_") == -1)
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     _loc1_++;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function §'!"§() : Vector.<§7a§>
      {
         return this.§9Z§;
      }
   }
}
