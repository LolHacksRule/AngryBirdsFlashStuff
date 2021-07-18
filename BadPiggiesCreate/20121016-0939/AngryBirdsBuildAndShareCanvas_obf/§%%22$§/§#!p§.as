package §%"$§
{
   import §#R§.§79§;
   import §+!o§.§]"5§;
   import §3§.§^!E§;
   import §5!V§.§!w§;
   import §7r§.§,!<§;
   import §7r§.§=q§;
   import §8" §.§`8§;
   import §[!_§.GhostObject;
   import flash.display.DisplayObject;
   
   public class §#!p§ extends §[!0§
   {
       
      
      private var §3!^§:Vector.<GhostObject>;
      
      private var §73§:Vector.<§=q§>;
      
      private var §[!-§:Vector.<§=q§>;
      
      private var § A§:§^!E§;
      
      public function §#!p§(param1:§!w§, param2:XML)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:XML = null;
         var _loc4_:§=q§ = null;
         var _loc5_:GhostObject = null;
         if(_loc9_ || param1)
         {
            this.§3!^§ = new Vector.<GhostObject>();
            while(true)
            {
               this.§73§ = new Vector.<§=q§>();
               addr67:
               loop1:
               while(true)
               {
                  addr52:
                  while(true)
                  {
                     this.§[!-§ = new Vector.<§=q§>();
                     continue loop1;
                  }
               }
            }
            addr74:
         }
         while(true)
         {
            super(param1,param2);
            if(!_loc9_)
            {
               continue;
            }
            if(_loc9_ || this)
            {
               if(_loc9_)
               {
                  if(true)
                  {
                     break;
                  }
               }
               else
               {
                  §§goto(addr74);
               }
               §§goto(addr52);
            }
            §§goto(addr67);
         }
         for each(_loc3_ in param2["object"])
         {
            _loc4_ = §`8§.§"!h§(_loc3_.toString(),param1.objects);
            if(_loc9_)
            {
               this.§73§.push(_loc4_);
            }
            _loc5_ = new GhostObject(_loc4_);
            if(!_loc8_)
            {
               this.§3!^§.push(_loc5_);
               if(!_loc9_)
               {
                  continue;
               }
            }
            if(_loc3_.@instruction == "true")
            {
               if(!_loc8_)
               {
                  §`!"§.push(new §79§(new §,!<§(_loc4_),new §,!<§(_loc5_)));
               }
            }
         }
         if(_loc9_ || param2)
         {
            this.§ A§ = new §^!E§();
            do
            {
               this.§ A§.init(this.§3!^§);
               do
               {
                  this.refresh(param1);
               }
               while(_loc8_ && _loc3_);
               
            }
            while(!_loc9_);
            
         }
      }
      
      override public function refresh(param1:§!w§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:GhostObject = null;
         var _loc3_:int = 0;
         for each(_loc2_ in this.§3!^§)
         {
            if(_loc6_ || _loc3_)
            {
               _loc2_.refresh(param1.objects,this.§[!-§);
            }
         }
         if(!(_loc5_ && param1))
         {
            this.§ A§.§;!K§();
         }
      }
      
      override public function update(param1:§!w§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&!2§();
         }
         return this.§3!^§.length - this.§[!-§.length == 0;
      }
      
      public function §&!2§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:GhostObject = null;
         for each(_loc1_ in this.§3!^§)
         {
            if(!_loc5_)
            {
               _loc1_.§1!,§(this.§73§,this.§[!-§);
            }
         }
      }
      
      private function §#"6§() : Boolean
      {
         return this.§3!^§.length - this.§[!-§.length == 0;
      }
      
      override public function isObjectNeeded(param1:§=q§) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§73§.indexOf(param1) == -1);
         if(!(_loc3_ && _loc2_))
         {
            return !§§pop();
         }
      }
      
      public function §?K§(param1:§=q§ = null) : Boolean
      {
         return this.§[!-§.indexOf(param1) == -1;
      }
      
      public function §^U§(param1:String = null) : Boolean
      {
         return this.§[!-§.length >= this.§3!^§.length;
      }
      
      public function §5;§(param1:§=q§ = null) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.isObjectNeeded(param1));
         if(_loc2_ || this)
         {
            return !§§pop();
         }
      }
      
      public function §"";§() : Boolean
      {
         return isCompleted;
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§ A§.clear();
         }
      }
      
      override public function onPhysicsEnabled() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§ A§.clear();
         }
      }
      
      override public function getNextInstruction() : DisplayObject
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc1_:GhostObject = null;
         var _loc2_:§79§ = null;
         for each(_loc1_ in this.§3!^§)
         {
            if(!(_loc7_ && _loc2_))
            {
               if(_loc1_.§!6§)
               {
                  if(_loc7_)
                  {
                  }
               }
               else
               {
                  var _loc5_:int = 0;
                  if(_loc8_ || _loc2_)
                  {
                     var _loc6_:* = §`!"§;
                     loop1:
                     while(true)
                     {
                        for each(_loc2_ in _loc6_)
                        {
                           if(!_loc8_)
                           {
                              break loop1;
                           }
                           if(_loc2_.end.object == _loc1_)
                           {
                              if(_loc8_ || _loc1_)
                              {
                                 break loop1;
                              }
                           }
                           continue loop1;
                        }
                     }
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public function §64§(param1:Boolean = true) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc2_:Vector.<§=q§> = null;
         var _loc3_:GhostObject = null;
         var _loc4_:§=q§ = null;
         if(_loc9_)
         {
            if(param1)
            {
               addr29:
               _loc2_ = this.§[!-§.concat();
               for each(_loc3_ in this.§3!^§)
               {
                  for each(_loc4_ in this.§73§)
                  {
                     if(!_loc10_)
                     {
                        §§push(_loc2_.indexOf(_loc4_) >= 0);
                        if(_loc9_)
                        {
                           §§push(§§pop());
                           loop2:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 addr161:
                                 while(true)
                                 {
                                    §§pop();
                                    addr162:
                                    while(true)
                                    {
                                       §§push(_loc4_.getName() == _loc3_.name);
                                       addr137:
                                       while(true)
                                       {
                                          §§push(!§§pop());
                                       }
                                    }
                                 }
                                 addr161:
                              }
                              while(true)
                              {
                                 continue loop2;
                              }
                           }
                        }
                        §§goto(addr161);
                     }
                     §§goto(addr162);
                  }
               }
            }
            else
            {
               this.§&!2§();
            }
            return;
         }
         §§goto(addr29);
      }
      
      public function §=<§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:GhostObject = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.§3!^§)
         {
            if(!_loc6_)
            {
               if(_loc2_.name.indexOf("PIG_") == -1)
               {
                  if(!_loc6_)
                  {
                     _loc1_++;
                  }
               }
            }
         }
         return _loc1_;
      }
      
      public function § !t§() : Vector.<§=q§>
      {
         return this.§73§;
      }
   }
}
