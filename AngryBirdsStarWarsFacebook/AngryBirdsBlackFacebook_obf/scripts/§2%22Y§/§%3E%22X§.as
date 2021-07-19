package §2"Y§
{
   import §1!i§.§7#&§;
   
   public class §>"X§ extends §,#5§
   {
      
      protected static const §8!S§:int = 300;
      
      protected static const §'!Y§:int = 5000;
      
      protected static const §+L§:int = 10000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §8!S§ = 300;
         }
         do
         {
            §'!Y§ = 5000;
            do
            {
               §+L§ = 10000;
            }
            while(_loc2_ && _loc1_);
            
         }
         while(_loc2_);
         
      }
      
      private var §=!R§:Object;
      
      protected var §>"Q§:§%"3§;
      
      public function §>"X§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§=!R§ = {};
            do
            {
               super();
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      public function get soundManager() : §%"3§
      {
         return this.§>"Q§;
      }
      
      override protected function initMaterialManager() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §-#J§ = new §!""§();
         }
      }
      
      public function §'#P§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§1"P§.§'#P§(param1,param2);
         }
      }
      
      public function §%"W§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§>"Q§ = new §%"3§();
         }
         var _loc2_:Object = §7#&§.§06§(param1);
         if(_loc4_ || this)
         {
            this.§>"Q§.§7!f§(_loc2_);
         }
      }
      
      public function §5l§(param1:String) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:Object = null;
         var _loc4_:§=+§ = null;
         var _loc2_:Object = §7#&§.§06§(param1);
         for each(_loc3_ in _loc2_.birds)
         {
            _loc4_ = this.createLevelItemBird(_loc3_);
            if(_loc7_ || this)
            {
               §%"u§[_loc3_.definition.toLowerCase()] = _loc4_;
               if(!(_loc8_ && param1))
               {
                  this.§=!R§[_loc3_.definition.toLowerCase()] = _loc4_;
               }
            }
         }
      }
      
      public function §""9§(param1:Array) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:§["$§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = null;
            if(!(_loc6_ && _loc2_))
            {
               if(_loc2_.levelGoal == true)
               {
                  addr59:
                  _loc3_ = this.createLevelItemPig(_loc2_);
                  if(!_loc6_)
                  {
                     addr74:
                     §%"u§[_loc2_.definition.toLowerCase()] = _loc3_;
                     if(_loc6_)
                     {
                        continue;
                     }
                  }
                  this.§=!R§[_loc2_.definition.toLowerCase()] = _loc3_;
                  continue;
               }
               _loc3_ = this.createLevelItem(_loc2_,§"t§.§;"e§);
               §§goto(addr74);
            }
            §§goto(addr59);
         }
      }
      
      public function § !y§(param1:String) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:§2"q§ = null;
         var _loc2_:Object = §7#&§.§06§(param1);
         for(_loc3_ in _loc2_.particles)
         {
            if((_loc4_ = _loc2_.particles[_loc3_]).definition == undefined)
            {
               if(!_loc8_)
               {
                  _loc4_.definition = _loc3_;
               }
            }
            _loc5_ = this.§?!g§(_loc4_);
            if(_loc9_)
            {
               §%"u§[_loc3_.toLowerCase()] = _loc5_;
               if(_loc8_ && _loc2_)
               {
                  continue;
               }
            }
            this.§=!R§[_loc3_.toLowerCase()] = _loc5_;
         }
      }
      
      public function §9!e§(param1:String) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:§["$§ = null;
         var _loc2_:Object = §7#&§.§06§(param1);
         for each(_loc3_ in _loc2_)
         {
            if(!_loc10_)
            {
               var _loc8_:int = 0;
               if(_loc11_)
               {
                  for each(_loc4_ in _loc3_)
                  {
                     _loc5_ = this.§5#>§(_loc4_);
                     if(!(_loc10_ && _loc3_))
                     {
                        this.§9"0§(_loc5_,_loc4_.definition.toLowerCase());
                     }
                  }
               }
            }
         }
      }
      
      protected function §9"0§(param1:§["$§, param2:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            §%"u§[param2] = param1;
         }
         do
         {
            this.§=!R§[param2] = param1;
         }
         while(!(_loc3_ || param2));
         
      }
      
      protected function §5#>§(param1:Object) : §["$§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = 0;
         if(!(_loc3_ && _loc3_))
         {
            if(param1.material != "pig")
            {
               §§push(Boolean(param1.material));
               loop0:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc4_)
                           {
                              if(param1.themed !== true)
                              {
                                 addr65:
                                 §§push(int(§"t§.§;"e§));
                                 if(!(_loc3_ && param1))
                                 {
                                    _loc2_ = §§pop();
                                    addr84:
                                    if(!_loc3_)
                                    {
                                       if(_loc4_ || this)
                                       {
                                          if(_loc4_)
                                          {
                                             if(!_loc3_)
                                             {
                                                addr35:
                                                addr97:
                                             }
                                             else
                                             {
                                                addr159:
                                             }
                                             §§goto(addr27);
                                          }
                                          loop2:
                                          while(true)
                                          {
                                             §§push(param1.material.indexOf("staticGround") == 0);
                                             if(_loc4_)
                                             {
                                                continue loop0;
                                             }
                                             addr139:
                                             while(true)
                                             {
                                                §§pop();
                                                continue loop2;
                                             }
                                          }
                                          continue loop0;
                                       }
                                       addr122:
                                       if(!_loc3_)
                                       {
                                          §§push(§"t§.§5k§);
                                          if(!_loc3_)
                                          {
                                             §§push(int(§§pop()));
                                             break;
                                          }
                                          break;
                                       }
                                       addr155:
                                       addr158:
                                       _loc2_ = int(§"t§.§5s§);
                                       §§goto(addr159);
                                    }
                                    §§goto(addr35);
                                    addr130:
                                 }
                                 §§goto(addr158);
                              }
                              §§goto(addr122);
                           }
                           §§goto(addr130);
                        }
                        else
                        {
                           §§push(§"t§.§;"e§);
                           if(!_loc3_)
                           {
                              if(_loc4_)
                              {
                                 if(!_loc3_)
                                 {
                                    addr47:
                                    §§push(int(§§pop()));
                                    if(_loc4_)
                                    {
                                       if(_loc4_)
                                       {
                                          _loc2_ = §§pop();
                                          if(!(_loc4_ || param1))
                                          {
                                             §§goto(addr84);
                                          }
                                          addr27:
                                          return this.createLevelItem(param1,_loc2_);
                                       }
                                       §§goto(addr158);
                                    }
                                    break;
                                 }
                                 §§goto(addr65);
                                 §§goto(addr158);
                              }
                              §§goto(addr65);
                           }
                           §§goto(addr47);
                        }
                     }
                     _loc2_ = §§pop();
                     §§goto(addr84);
                     addr114:
                  }
                  §§goto(addr139);
               }
            }
            §§goto(addr155);
         }
         §§goto(addr97);
      }
      
      protected function createLevelItem(param1:Object, param2:int) : §["$§
      {
         var _loc3_:String = param1.material;
         return new §["$§(param1,param2,!!_loc3_ ? §-#J§.getMaterial(_loc3_) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§8!S§));
      }
      
      protected function createLevelItemBird(param1:Object) : §=+§
      {
         return new §=+§(param1,§"t§.§&#F§,!!param1.material ? §-#J§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§+L§));
      }
      
      protected function createLevelItemPig(param1:Object) : §%#@§
      {
         return new §%#@§(param1,§"t§.§5s§,!!param1.material ? §-#J§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§'!Y§));
      }
      
      protected function §?!g§(param1:Object) : §2"q§
      {
         return new §2"q§(param1,§"t§.§ 4§,!!param1.material ? §-#J§.getMaterial(param1.material) : null,null,0);
      }
      
      protected function get §1"P§() : §!""§
      {
         return §-#J§ as §!""§;
      }
   }
}
