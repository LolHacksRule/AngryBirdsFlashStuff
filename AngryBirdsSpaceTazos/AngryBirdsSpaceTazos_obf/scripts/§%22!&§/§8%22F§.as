package §"!&§
{
   import § !Y§.§9k§;
   
   public class §8"F§ extends §-!M§
   {
      
      protected static const § -§:int = 300;
      
      protected static const §1!$§:int = 5000;
      
      protected static const §][§:int = 10000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            § -§ = 300;
         }
         do
         {
            §1!$§ = 5000;
            do
            {
               §][§ = 10000;
            }
            while(!_loc1_);
            
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      private var §@q§:Object;
      
      protected var §9"3§:§="D§;
      
      public function §8"F§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§@q§ = {};
            do
            {
               super();
            }
            while(_loc1_ && this);
            
         }
      }
      
      public function get soundManager() : §="D§
      {
         return this.§9"3§;
      }
      
      override protected function initMaterialManager() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §]X§ = new §]§();
         }
      }
      
      public function §[J§(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§4P§.§[J§(param1,param2);
         }
      }
      
      public function §[!v§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§9"3§ = new §="D§();
         }
         var _loc2_:Object = §9k§.§9"@§(param1);
         if(!(_loc4_ && _loc3_))
         {
            this.§9"3§.§?O§(_loc2_);
         }
      }
      
      public function §,! §(param1:String) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:Object = null;
         var _loc4_:§+W§ = null;
         var _loc2_:Object = §9k§.§9"@§(param1);
         for each(_loc3_ in _loc2_.birds)
         {
            _loc4_ = this.createLevelItemBird(_loc3_);
            if(_loc8_)
            {
               §1"0§[_loc3_.definition.toLowerCase()] = _loc4_;
               if(_loc7_)
               {
                  continue;
               }
            }
            this.§@q§[_loc3_.definition.toLowerCase()] = _loc4_;
         }
      }
      
      public function §&!j§(param1:String) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:Object = null;
         var _loc4_:§`D§ = null;
         var _loc2_:Object = §9k§.§9"@§(param1);
         for each(_loc3_ in _loc2_.levelGoals)
         {
            _loc4_ = null;
            if(!(_loc8_ && _loc2_))
            {
               if(_loc3_.levelGoal == true)
               {
                  addr64:
                  _loc4_ = this.createLevelItemPig(_loc3_);
                  if(!(_loc8_ && this))
                  {
                     addr84:
                     §1"0§[_loc3_.definition.toLowerCase()] = _loc4_;
                     if(!_loc7_)
                     {
                        continue;
                     }
                  }
                  this.§@q§[_loc3_.definition.toLowerCase()] = _loc4_;
                  continue;
               }
               _loc4_ = this.createLevelItem(_loc3_,§8X§.§5x§);
               §§goto(addr84);
            }
            §§goto(addr64);
         }
      }
      
      public function §-y§(param1:String) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc3_:* = null;
         var _loc4_:Object = null;
         var _loc5_:§%F§ = null;
         var _loc2_:Object = §9k§.§9"@§(param1);
         for(_loc3_ in _loc2_.particles)
         {
            if((_loc4_ = _loc2_.particles[_loc3_]).definition == undefined)
            {
               if(_loc8_)
               {
                  _loc4_.definition = _loc3_;
               }
            }
            _loc5_ = this.createLevelItemParticle(_loc4_);
            if(_loc8_ || _loc2_)
            {
               §1"0§[_loc3_.toLowerCase()] = _loc5_;
               if(_loc8_ || _loc3_)
               {
                  this.§@q§[_loc3_.toLowerCase()] = _loc5_;
               }
            }
         }
      }
      
      public function §]!J§(param1:String) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:§`D§ = null;
         var _loc2_:Object = §9k§.§9"@§(param1);
         for each(_loc3_ in _loc2_)
         {
            if(!_loc10_)
            {
               var _loc8_:int = 0;
               if(!_loc10_)
               {
                  for each(_loc4_ in _loc3_)
                  {
                     _loc5_ = this.§-"!§(_loc4_);
                     if(!(_loc10_ && _loc2_))
                     {
                        §1"0§[_loc4_.definition.toLowerCase()] = _loc5_;
                        if(_loc11_ || _loc2_)
                        {
                           this.§@q§[_loc4_.definition.toLowerCase()] = _loc5_;
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §-"!§(param1:Object) : §`D§
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         if(_loc3_ || _loc2_)
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
                           if(!(_loc4_ && _loc2_))
                           {
                              if(_loc4_ && _loc2_)
                              {
                                 break;
                              }
                              if(param1.themed === true)
                              {
                                 if(_loc3_ || _loc2_)
                                 {
                                    addr161:
                                    if(_loc3_ || _loc2_)
                                    {
                                       §§goto(addr170);
                                    }
                                    §§goto(addr203);
                                 }
                                 §§goto(addr174);
                              }
                              else
                              {
                                 addr91:
                                 §§push(§8X§.§5x§);
                                 if(_loc3_ || _loc3_)
                                 {
                                    addr109:
                                    _loc2_ = int(§§pop());
                                    addr110:
                                    if(!(_loc3_ || param1))
                                    {
                                       loop2:
                                       while(true)
                                       {
                                          §§push(param1.material.indexOf("staticGround") == 0);
                                          if(_loc3_)
                                          {
                                             continue loop0;
                                          }
                                          addr183:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop2;
                                          }
                                       }
                                       continue loop0;
                                    }
                                    §§goto(addr174);
                                 }
                                 else
                                 {
                                    §§goto(addr170);
                                 }
                              }
                              §§goto(addr170);
                           }
                           §§goto(addr161);
                        }
                        else
                        {
                           §§push(§8X§.§5x§);
                           if(_loc3_ || this)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 addr54:
                                 §§push(int(§§pop()));
                                 if(_loc3_)
                                 {
                                    if(!(_loc3_ || this))
                                    {
                                       addr171:
                                       §§push(int(§8X§.§1!Q§));
                                       if(!_loc4_)
                                       {
                                          _loc2_ = §§pop();
                                          addr174:
                                       }
                                       else
                                       {
                                          addr202:
                                          _loc2_ = §§pop();
                                          addr203:
                                       }
                                       return this.createLevelItem(param1,_loc2_);
                                    }
                                    if(!(_loc4_ && this))
                                    {
                                       _loc2_ = §§pop();
                                       if(_loc3_ || _loc3_)
                                       {
                                          if(_loc3_ || _loc3_)
                                          {
                                             §§goto(addr170);
                                          }
                                          else
                                          {
                                             §§goto(addr174);
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr110);
                                       }
                                       §§goto(addr174);
                                    }
                                    else
                                    {
                                       addr201:
                                       §§goto(addr202);
                                       §§push(int(§§pop()));
                                    }
                                    addr170:
                                    §§goto(addr171);
                                    §§goto(addr202);
                                 }
                                 else
                                 {
                                    §§goto(addr109);
                                 }
                              }
                              else
                              {
                                 §§goto(addr91);
                              }
                              §§goto(addr170);
                           }
                           §§goto(addr54);
                        }
                     }
                     addr199:
                     §§goto(addr201);
                     §§push(§8X§.§<g§);
                     addr134:
                  }
                  §§goto(addr183);
               }
            }
         }
         §§goto(addr199);
      }
      
      protected function createLevelItem(param1:Object, param2:int) : §`D§
      {
         var _loc3_:String = param1.material;
         return new §`D§(param1,param2,!!_loc3_ ? §]X§.getMaterial(_loc3_) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§ -§));
      }
      
      protected function createLevelItemBird(param1:Object) : §+W§
      {
         return new §+W§(param1,§8X§.§1!K§,!!param1.material ? §]X§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§][§));
      }
      
      protected function createLevelItemPig(param1:Object) : §3",§
      {
         return new §3",§(param1,§8X§.§<g§,!!param1.material ? §]X§.getMaterial(param1.material) : null,null,param1.destroyedScoreInc != undefined ? int(param1.destroyedScoreInc) : int(§1!$§));
      }
      
      protected function createLevelItemParticle(param1:Object) : §%F§
      {
         return new §%F§(param1,§8X§.§,"4§,!!param1.material ? §]X§.getMaterial(param1.material) : null,null,0);
      }
      
      protected function get §4P§() : §]§
      {
         return §]X§ as §]§;
      }
   }
}
