package §'i§
{
   import § "@§.StateLevelEditorTestPlay;
   import §"v§.§9"§;
   import §"v§.§]!B§;
   import §%_§.§4m§;
   import §%c§.§=!X§;
   import §+!o§.§]"5§;
   import §3!t§.include;
   import §3"5§.§ !,§;
   import §5!V§.§1!L§;
   import §5!V§.§>n§;
   import §5!V§.§[!6§;
   import §62§.§0!t§;
   import §6p§.§?%§;
   import §7r§.§=q§;
   import §8" §.§,!q§;
   import §=!#§.§`"=§;
   import §=!M§.§9!P§;
   import §=!M§.Base64;
   import §="6§.§^"8§;
   import §^!y§.§'"#§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.net.SharedObject;
   import flash.utils.ByteArray;
   
   public class § "+§ extends EventDispatcher implements §8p§
   {
      
      public static const §-§:int = 200;
      
      public static const §try §:int = 1000;
      
      public static const §%!l§:int = 8;
      
      private static const §6"7§:String = "LastEditedLevel";
      
      private static var §2!l§:SharedObject;
      
      private static var §4!y§:Function;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §-§ = 200;
         }
         loop0:
         while(true)
         {
            §try § = 1000;
            loop1:
            do
            {
               §%!l§ = 8;
               while(_loc2_)
               {
                  §6"7§ = "LastEditedLevel";
                  if(!_loc1_)
                  {
                     continue loop1;
                  }
               }
               continue loop0;
            }
            while(!(_loc2_ || _loc1_));
            
            return;
         }
      }
      
      private var §#"&§:Function;
      
      private var §9q§:§1!L§;
      
      private var §6!^§:§'!;§;
      
      private var §@B§:Boolean = true;
      
      public function § "+§(param1:§'!;§)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            super();
            while(true)
            {
               this.§6!^§ = param1;
               while(_loc3_ || _loc3_)
               {
                  this.§9q§ = §=!X§.§!'§ as §1!L§;
                  if(!_loc3_)
                  {
                     continue;
                  }
                  return;
                  addr48:
               }
            }
         }
         §§goto(addr48);
      }
      
      public static function §2&§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §4!y§ = param1;
            do
            {
               §?%§.§%b§.§[!Z§ = §6"8§;
            }
            while(_loc2_);
            
         }
      }
      
      private static function §6"8§() : BitmapData
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(§=!X§.§7,§());
         if(_loc4_ || _loc1_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§=!X§.§3?§());
         if(!_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:BitmapData = new BitmapData(_loc1_,_loc2_,false);
         if(_loc4_ || _loc2_)
         {
            §?%§.drawToBitmapData(_loc3_);
            for(; §4!y§ != null; do
            {
               §4!y§ = null;
            }
            while(!(_loc4_ || _loc2_));
            ,if(!_loc5_)
            {
               break;
            })
            {
               if(_loc5_ && § "+§)
               {
                  continue;
               }
            }
            return _loc3_;
         }
         while(true)
         {
            §4!y§(_loc3_);
            §§goto(addr101);
         }
      }
      
      public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §,!1§.§2=§.§8!5§(this.§-!Q§,§,!1§.SAVE);
         }
         do
         {
            this.§48§(§^"8§.§7K§);
         }
         while(_loc1_ && _loc2_);
         
      }
      
      public function initialize() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§6!^§.§+"2§.addEventListener(§0!t§.SAVE,this.§9"9§);
         }
      }
      
      private function §9"9§(param1:§0!t§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(§,!1§.§2=§.§-!Q§())
            {
               if(!(_loc3_ && _loc2_))
               {
                  §4m§.doJsCall("save",JSON.stringify(§,!q§.§2=§.§[!K§()),JSON.stringify(this.§`!U§()));
                  do
                  {
                     this.§@B§ = false;
                  }
                  while(_loc3_);
                  
                  addr73:
               }
               §§goto(addr73);
            }
            return;
         }
         §§goto(addr73);
      }
      
      public function get §4+§() : §1!L§
      {
         return this.§9q§;
      }
      
      public function get camera() : §`"=§
      {
         return this.§9q§.camera;
      }
      
      public function §21§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§=q§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§9q§.objects.getObjectCount())
         {
            _loc2_ = §=q§.§0"§(this.§9q§.objects.getObject(_loc1_));
            if(!_loc3_)
            {
               _loc2_.§21§();
               if(!(_loc3_ && _loc1_))
               {
                  _loc1_++;
               }
            }
         }
      }
      
      public function §48§(param1:§9"§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§9q§);
            while(true)
            {
               §§pop().clearLevel();
               addr115:
               while(true)
               {
                  §§push(this.§9q§);
                  addr109:
                  while(true)
                  {
                     §§pop().init(param1);
                  }
               }
            }
            addr114:
         }
         while(true)
         {
            §§push(this.§9q§);
            loop4:
            while(true)
            {
               §§pop().objects.setGroundTextureEnabled(false);
               addr88:
               while(_loc2_ || param1)
               {
                  §=q§.§+!2§(this.§9q§.objects);
                  continue loop4;
               }
               §§goto(addr115);
            }
         }
      }
      
      private function §><§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§=q§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§9q§.objects.getObjectCount())
         {
            _loc2_ = §=q§.§0"§(this.§9q§.objects.getObject(_loc1_));
            if(_loc4_)
            {
               if(_loc2_.isTexture())
               {
                  if(_loc3_)
                  {
                     continue;
                  }
                  addr50:
                  _loc2_.§0q§(-1,true);
                  if(!(_loc4_ || _loc2_))
                  {
                     continue;
                  }
               }
               _loc1_++;
               continue;
            }
            §§goto(addr50);
         }
      }
      
      public function §-!Q§() : Boolean
      {
         return this.§@B§;
      }
      
      public function § f§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§@B§ = true;
         }
         do
         {
            dispatchEvent(new §0!t§(§0!t§.CHANGE));
         }
         while(!(_loc2_ || this));
         
      }
      
      public function §`!U§() : Object
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Object = new Object();
         if(_loc3_)
         {
            _loc1_.data = this.§9q§.§6!P§().§%4§();
            do
            {
               _loc1_.valid = StateLevelEditorTestPlay.§^!M§;
            }
            while(_loc2_ && _loc2_);
            
         }
         return _loc1_;
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §!!3§(param1:Number, param2:Number) : Point
      {
         return this.§9q§.§&g§(param1,param2);
      }
      
      public function §]!l§(param1:Point, param2:Boolean = true) : Object
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc5_:Vector.<§]"5§> = null;
         var _loc6_:§]"5§ = null;
         var _loc3_:Point = this.§9q§.screenToBox2D(param1.x,param1.y);
         var _loc4_:Object;
         §§push((_loc4_ = this.§9q§.slingshot.getObjectFromPoint(_loc3_.x,_loc3_.y)) == null);
         if(_loc10_ || this)
         {
            if(§§pop())
            {
               if(!_loc9_)
               {
                  §§pop();
                  if(!(_loc9_ && this))
                  {
                     §§push(this.§9q§);
                     if(_loc10_ || _loc3_)
                     {
                        addr80:
                        if(§§pop().slingshot.intersectsWithPoint(_loc3_.x,_loc3_.y))
                        {
                           if(_loc10_)
                           {
                              addr83:
                              §§push(this.§9q§);
                              if(!_loc9_)
                              {
                                 _loc4_ = §§pop().slingshot;
                                 addr100:
                                 if(_loc4_ == null)
                                 {
                                    §§goto(addr105);
                                 }
                                 §§push(_loc4_ is §]"5§);
                                 if(_loc10_ || param2)
                                 {
                                    if(§§pop())
                                    {
                                       if(_loc10_ || param1)
                                       {
                                          §§goto(addr161);
                                       }
                                    }
                                    §§goto(addr191);
                                 }
                                 addr161:
                                 §§pop();
                                 if(!(_loc9_ && _loc3_))
                                 {
                                    §§push((_loc4_ as §]"5§).isGround());
                                    if(_loc10_ || param2)
                                    {
                                       addr191:
                                       if(§§pop())
                                       {
                                          if(_loc10_)
                                          {
                                             return null;
                                          }
                                       }
                                    }
                                    §§goto(addr191);
                                 }
                                 return _loc4_;
                                 addr87:
                              }
                              addr105:
                              _loc5_ = this.§9q§.objects.getObjectsFromPoint(_loc3_.x,_loc3_.y);
                              var _loc7_:int = 0;
                              var _loc8_:* = _loc5_;
                              §§goto(addr103);
                           }
                           addr103:
                           while(true)
                           {
                              for each(_loc6_ in _loc8_)
                              {
                                 if(!_loc10_)
                                 {
                                    break;
                                 }
                                 if(§,!1§.§2=§.§>L§(§=q§.§0"§(_loc6_)))
                                 {
                                    if(!_loc9_)
                                    {
                                       break;
                                    }
                                 }
                                 continue;
                              }
                           }
                           return _loc6_;
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr87);
                  }
                  §§goto(addr83);
               }
            }
         }
         §§goto(addr80);
      }
      
      private function § !j§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §?%§.§%b§.§[!Z§ = this.§""6§;
         }
      }
      
      private function §""6§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Object = this.§`!U§();
         var _loc2_:BitmapData = §6"8§();
         var _loc3_:ByteArray = include.encode(_loc2_);
         if(_loc4_)
         {
            _loc1_.screen = Base64.§<_§(_loc3_);
            do
            {
               §4m§.doJsCall("onScreenshotReady",JSON.stringify(_loc1_));
            }
            while(_loc5_);
            
         }
      }
      
      public function §4!3§() : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push((AngryBirdsFP11.§>" § as §'"#§).§!T§);
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(this.getBlockCount());
         if(!(_loc4_ && _loc1_))
         {
            §§push(int(§§pop() - this.§[S§()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§6!^§.§4!4§.§;!J§());
         if(_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_ - _loc2_);
         if(!(_loc4_ && this))
         {
            return §§pop() + _loc3_;
         }
      }
      
      public function §#=§() : int
      {
         return §try § - this.getStaticCount();
      }
      
      public function §4!m§() : int
      {
         return §%!l§ - this.§9q§.slingshot.getBirdCount();
      }
      
      public function §98§() : Vector.<§>n§>
      {
         return this.§9q§.slingshot.mBirds;
      }
      
      public function getBirdCount() : int
      {
         return this.§9q§.slingshot.getBirdCount();
      }
      
      public function getPigCount() : int
      {
         return this.§9q§.objects.getPigCount();
      }
      
      public function getBlockCount() : int
      {
         return this.§9q§.§1!V§.getBlockCount();
      }
      
      public function §[S§() : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         loop0:
         while(true)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc1_))
            {
               if(§§pop() >= this.§9q§.§1!V§.getObjectCount())
               {
                  if(!(_loc4_ && this))
                  {
                     if(_loc3_ || _loc2_)
                     {
                        §§push(_loc1_);
                        break;
                     }
                     loop2:
                     while(true)
                     {
                        addr63:
                        while(true)
                        {
                           _loc2_++;
                        }
                        addr92:
                        loop1:
                        while(true)
                        {
                           _loc1_++;
                           continue loop2;
                           addr65:
                           while(!(_loc3_ || _loc2_))
                           {
                              continue loop1;
                           }
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr65);
               }
               else if(this.§9q§.§1!V§.getObject(_loc2_).isMiscBlock())
               {
                  §§goto(addr92);
               }
               §§goto(addr63);
            }
            break;
         }
         return §§pop();
      }
      
      public function getStaticCount() : int
      {
         return this.§9q§.§1!V§.getStaticCount();
      }
      
      public function §[6§() : §]"5§
      {
         return this.§9q§.objects.getObject(0);
      }
      
      public function §9%§(param1:String, param2:Number, param3:Number, param4:Boolean = true) : Object
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            §§push(param1);
            while(§§pop().indexOf("BIRD_") == -1)
            {
               §§push(param1);
               if(_loc7_ && this)
               {
                  continue;
               }
               if(§§pop().indexOf("TERRAIN_") != 0)
               {
                  §§push(this.§4!3§());
                  if(!_loc7_)
                  {
                     if(!_loc7_)
                     {
                        §§push(0);
                        if(_loc6_)
                        {
                           if(!(_loc7_ && param2))
                           {
                              if(§§pop() <= §§pop())
                              {
                                 if(!(_loc7_ && this))
                                 {
                                    if(_loc6_)
                                    {
                                       if(_loc6_)
                                       {
                                          §9!P§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Block Limit");
                                          addr89:
                                          if(_loc7_)
                                          {
                                             break;
                                          }
                                          dispatchEvent(new §0!t§(§0!t§.§ 6§));
                                          if(_loc6_ || param2)
                                          {
                                             §§push(null);
                                             if(!(_loc7_ && this))
                                             {
                                                return §§pop();
                                             }
                                          }
                                          else if(_loc6_)
                                          {
                                             addr55:
                                             §§push(null);
                                          }
                                          else
                                          {
                                             addr115:
                                             if(_loc6_ || param3)
                                             {
                                                addr135:
                                                if(this.§#=§() <= 0)
                                                {
                                                   if(_loc6_ || param1)
                                                   {
                                                      §9!P§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Static Limit");
                                                      addr146:
                                                      if(_loc6_ || this)
                                                      {
                                                         §§push(null);
                                                         if(_loc6_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         addr174:
                                                         var _loc5_:Object = §§pop();
                                                         if(_loc6_)
                                                         {
                                                            if(param1.indexOf("BIRD_") != -1)
                                                            {
                                                               addr183:
                                                               §§push(this.§9q§);
                                                               if(!(_loc7_ && param3))
                                                               {
                                                                  _loc5_ = §§pop().slingshot.addNewBirdToEndOfList(param1,param2,param3);
                                                                  if(_loc6_)
                                                                  {
                                                                     addr212:
                                                                     §§push(_loc5_ == null);
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(!§§pop());
                                                                        if(!(_loc7_ && param2))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(!_loc7_)
                                                                              {
                                                                                 §§pop();
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§push(param4);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                    }
                                                                                    addr236:
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!(_loc7_ && this))
                                                                                       {
                                                                                          this.§ f§();
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr256);
                                                                              }
                                                                           }
                                                                           §§goto(addr236);
                                                                        }
                                                                        §§push(Boolean(§§pop()));
                                                                     }
                                                                     §§goto(addr236);
                                                                  }
                                                                  addr256:
                                                                  return _loc5_;
                                                               }
                                                               addr204:
                                                               _loc5_ = §§pop().objects.addObject(param1,param2,param3,0);
                                                               §§goto(addr212);
                                                            }
                                                            else
                                                            {
                                                               §§push(this.§9q§);
                                                            }
                                                            §§goto(addr204);
                                                         }
                                                         §§goto(addr183);
                                                      }
                                                      else
                                                      {
                                                         addr169:
                                                         §9!P§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Bird Limit");
                                                      }
                                                      §§goto(addr174);
                                                   }
                                                   §§goto(addr146);
                                                }
                                                else
                                                {
                                                   §§goto(addr55);
                                                }
                                             }
                                             §§push(null);
                                             if(!_loc7_)
                                             {
                                                return §§pop();
                                             }
                                          }
                                          §§goto(addr174);
                                       }
                                       else
                                       {
                                          addr100:
                                          §§goto(addr55);
                                          addr159:
                                       }
                                       §§goto(addr55);
                                    }
                                    §§goto(addr146);
                                 }
                                 §§goto(addr89);
                              }
                              §§goto(addr55);
                           }
                           addr168:
                           if(§§pop() <= §§pop())
                           {
                              §§goto(addr169);
                           }
                           else
                           {
                              §§goto(addr100);
                           }
                        }
                        §§goto(addr135);
                     }
                     addr167:
                     §§goto(addr168);
                     §§push(0);
                  }
                  §§goto(addr135);
               }
               §§goto(addr115);
            }
            §§goto(addr167);
            §§push(this.§4!m§());
         }
         §§goto(addr159);
      }
      
      public function removeObject(param1:§]"5§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(§,!1§.§2=§.§,h§(§=q§.§0"§(param1)))
            {
               do
               {
                  this.§9q§.objects.removeObject(param1);
                  do
                  {
                     this.§ f§();
                  }
                  while(_loc2_);
                  
               }
               while(!_loc3_);
               
               addr46:
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function §5,§(param1:§>n§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§9q§.slingshot.removeObject(param1);
         }
      }
      
      private function §9v§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§=q§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§9q§.objects.getObjectCount())
         {
            _loc2_ = §=q§.§0"§(this.§9q§.objects.getObject(_loc1_));
            if(_loc3_ || _loc1_)
            {
               _loc2_.§]<§();
               if(!(_loc4_ && _loc1_))
               {
                  _loc1_++;
               }
            }
         }
      }
      
      public function getJoints() : Vector.<§ !,§>
      {
         return this.§9q§.objects.getJoints();
      }
      
      public function §&!%§(param1:§=q§, param2:Number, param3:Number) : §=q§
      {
         return param1.clone(this.§9q§,param2,param3);
      }
      
      public function get §'";§() : §]!B§
      {
         return this.§9q§.§6!P§() as §]!B§;
      }
   }
}
