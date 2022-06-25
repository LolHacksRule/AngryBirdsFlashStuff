package §?$§
{
   import §"$§.Starling;
   import §-!>§.§4!T§;
   import §1!&§.§!!9§;
   import §1!&§.Sprite;
   import §8!?§.TextureManager;
   
   public class CutScene
   {
      
      public static const §]!3§:String = "CutScene_Type_Intro";
      
      public static const §;F§:String = "CutScene_Type_Outro";
      
      public static const §@s§:String = "CutScene_Type_Final_Outro";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §]!3§ = "CutScene_Type_Intro";
         }
         do
         {
            §;F§ = "CutScene_Type_Outro";
            do
            {
               §@s§ = "CutScene_Type_Final_Outro";
            }
            while(_loc2_);
            
         }
         while(_loc2_);
         
      }
      
      private var §`_§:TextureManager;
      
      private var §1L§:String;
      
      private var §-!F§:Vector.<§9!'§>;
      
      private var §>2§:Number;
      
      private var §4!M§:Number;
      
      private var §^B§:Number;
      
      private var §+!d§:Number;
      
      private var §1!J§:Sprite;
      
      private var §;>§:Boolean = true;
      
      private var §'[§:uint;
      
      private var §4!!§:Boolean;
      
      private var § null§:§!!9§;
      
      private var §]e§:§!!9§;
      
      public function CutScene(param1:Object, param2:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:§9!'§ = null;
         var _loc4_:Object = null;
         if(_loc8_ || this)
         {
            this.§-!F§ = new Vector.<§9!'§>();
            while(true)
            {
               super();
               loop2:
               for(; !(_loc7_ && _loc3_); if(_loc7_ && _loc3_)
               {
                  continue;
               },this.§1L§ = §;F§,§§goto(addr75))
               {
                  loop3:
                  while(param1)
                  {
                     loop4:
                     while(true)
                     {
                        if(!(_loc7_ && this))
                        {
                           §§push(param2);
                           loop5:
                           while(true)
                           {
                              §§push("intro");
                              while(§§pop().search(§§pop()) == -1)
                              {
                                 §§push(param2);
                                 if(_loc7_)
                                 {
                                    continue loop5;
                                 }
                                 §§push("complete");
                                 if(!(_loc8_ || this))
                                 {
                                    continue;
                                 }
                                 if(§§pop().search(§§pop()) != -1)
                                 {
                                    if(_loc7_)
                                    {
                                       break loop4;
                                    }
                                    if(!(_loc8_ || param2))
                                    {
                                       break;
                                    }
                                    if(!(_loc7_ && param2))
                                    {
                                       continue loop2;
                                    }
                                    continue loop4;
                                 }
                                 var _loc5_:int = 0;
                                 var _loc6_:* = param1;
                                 addr174:
                                 §§push(§§hasnext(_loc6_,_loc5_));
                                 if(_loc8_ || param2)
                                 {
                                    if(§§pop())
                                    {
                                       _loc4_ = §§nextvalue(_loc5_,_loc6_);
                                       _loc3_ = this.§]!Q§(_loc4_);
                                       if(_loc8_)
                                       {
                                          if(_loc3_)
                                          {
                                             if(_loc8_ || param2)
                                             {
                                                addr169:
                                                this.§-!F§.push(_loc3_);
                                             }
                                          }
                                          §§goto(addr174);
                                       }
                                       §§goto(addr169);
                                    }
                                    if(!(_loc7_ && param1))
                                    {
                                       if(!_loc7_)
                                       {
                                          if(_loc8_)
                                          {
                                             _loc5_ = 0;
                                             if(_loc8_)
                                             {
                                                addr200:
                                                _loc6_ = this.§-!F§;
                                                addr310:
                                                for each(_loc3_ in _loc6_)
                                                {
                                                   if(_loc8_)
                                                   {
                                                      addr298:
                                                      if(_loc3_ is §'y§)
                                                      {
                                                         addr299:
                                                         (_loc3_ as §'y§).setSize(this.§^B§,this.§+!d§);
                                                         (_loc3_ as §'y§).§#!6§ = this.§;>§;
                                                         addr286:
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            addr233:
                                                            §§goto(addr310);
                                                         }
                                                         addr309:
                                                         §§goto(addr309);
                                                      }
                                                      §§push(_loc3_ is §=n§);
                                                      if(_loc8_ || _loc3_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               if(!(_loc7_ && this))
                                                               {
                                                                  addr257:
                                                                  (_loc3_ as §=n§).setSize(this.§^B§,this.§+!d§);
                                                                  (_loc3_ as §=n§).§null § = this.§;>§;
                                                                  addr267:
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(_loc8_ || param2)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr233);
                                                                        }
                                                                        §§goto(addr310);
                                                                     }
                                                                     §§goto(addr286);
                                                                  }
                                                                  addr267:
                                                                  §§goto(addr267);
                                                               }
                                                               §§goto(addr299);
                                                            }
                                                            §§goto(addr267);
                                                         }
                                                         §§goto(addr310);
                                                      }
                                                      §§goto(addr298);
                                                   }
                                                   §§goto(addr257);
                                                }
                                             }
                                             break loop3;
                                          }
                                          break loop3;
                                       }
                                    }
                                    §§goto(addr200);
                                 }
                                 §§goto(addr310);
                              }
                              this.§1L§ = §]!3§;
                              addr104:
                              §§goto(addr130);
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              this.§>2§ = 0;
                              continue loop2;
                           }
                           addr120:
                        }
                     }
                     if(_loc8_ || param1)
                     {
                        if(false)
                        {
                           continue;
                        }
                     }
                     else
                     {
                        §§goto(addr104);
                     }
                     §§goto(addr130);
                  }
                  return;
               }
            }
         }
         §§goto(addr120);
      }
      
      public function get sprite() : Sprite
      {
         return this.§1!J§;
      }
      
      private function §]!Q§(param1:Object) : §9!'§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = param1.action;
         if(_loc5_)
         {
            §§push(§9!'§.§ !A§);
            if(!(_loc6_ && _loc2_))
            {
               if(§§pop() === _loc4_)
               {
                  if(!(_loc6_ && _loc2_))
                  {
                     §§push(0);
                     if(_loc6_)
                     {
                        addr344:
                     }
                  }
                  else
                  {
                     addr305:
                     §§push(2);
                     if(!_loc5_)
                     {
                        addr326:
                     }
                  }
               }
               else
               {
                  §§push(§9!'§.§`!R§);
                  if(!(_loc6_ && _loc2_))
                  {
                     if(§§pop() === _loc4_)
                     {
                        if(_loc5_ || _loc3_)
                        {
                           §§push(1);
                           if(!(_loc5_ || this))
                           {
                              addr455:
                           }
                        }
                        else
                        {
                           addr341:
                           §§push(4);
                           if(_loc5_)
                           {
                              §§goto(addr344);
                           }
                           else
                           {
                              addr418:
                           }
                        }
                     }
                     else
                     {
                        §§push(§9!'§.§;9§);
                        if(_loc5_)
                        {
                           if(§§pop() === _loc4_)
                           {
                              if(!_loc6_)
                              {
                                 §§goto(addr305);
                              }
                              else
                              {
                                 addr387:
                                 §§push(6);
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    §§goto(addr457);
                                 }
                                 else
                                 {
                                    §§goto(addr418);
                                 }
                              }
                              §§goto(addr457);
                           }
                           else
                           {
                              §§push(§9!'§.§''§);
                              if(!(_loc6_ && _loc2_))
                              {
                                 if(§§pop() === _loc4_)
                                 {
                                    if(_loc5_)
                                    {
                                       addr323:
                                       §§push(3);
                                       if(!_loc6_)
                                       {
                                          §§goto(addr326);
                                       }
                                       §§goto(addr457);
                                    }
                                    else
                                    {
                                       addr436:
                                       §§push(8);
                                       if(_loc5_ || _loc3_)
                                       {
                                          addr444:
                                          §§goto(addr457);
                                       }
                                       else
                                       {
                                          §§goto(addr455);
                                       }
                                    }
                                    §§goto(addr457);
                                 }
                                 else
                                 {
                                    §§push(§9!'§.§=!Y§);
                                    if(!(_loc6_ && this))
                                    {
                                       addr337:
                                       if(§§pop() === _loc4_)
                                       {
                                          if(!_loc6_)
                                          {
                                             §§goto(addr341);
                                          }
                                          else
                                          {
                                             addr410:
                                             §§push(7);
                                             if(!(_loc5_ || _loc3_))
                                             {
                                                §§goto(addr444);
                                             }
                                             §§goto(addr457);
                                          }
                                       }
                                       else
                                       {
                                          §§push(§9!'§.§9E§);
                                          if(!(_loc6_ && this))
                                          {
                                             addr355:
                                             if(§§pop() === _loc4_)
                                             {
                                                if(_loc5_ || _loc3_)
                                                {
                                                   §§push(5);
                                                   if(!(_loc6_ && this))
                                                   {
                                                      §§goto(addr457);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr455);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(§9!'§.§&2§);
                                                if(_loc5_ || _loc3_)
                                                {
                                                   addr383:
                                                   if(§§pop() === _loc4_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         §§goto(addr387);
                                                      }
                                                      else
                                                      {
                                                         addr447:
                                                         §§push(9);
                                                         if(_loc5_ || _loc3_)
                                                         {
                                                            §§goto(addr455);
                                                         }
                                                         §§goto(addr457);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(§9!'§.§4!,§);
                                                      if(_loc5_)
                                                      {
                                                         addr401:
                                                         if(§§pop() === _loc4_)
                                                         {
                                                            if(_loc5_ || _loc2_)
                                                            {
                                                               §§goto(addr410);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr447);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§push(§9!'§.§;!Q§);
                                                         }
                                                         §§goto(addr447);
                                                      }
                                                   }
                                                   §§goto(addr447);
                                                }
                                                if(§§pop() === _loc4_)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§goto(addr436);
                                                   }
                                                }
                                                else if(true)
                                                {
                                                   addr457:
                                                   switch(§§pop())
                                                   {
                                                      case 0:
                                                         return new §=n§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
                                                      case 1:
                                                         _loc2_ = param1.scroll_target;
                                                         if(_loc5_)
                                                         {
                                                            if(_loc2_.type == "sprite")
                                                            {
                                                               if(_loc5_ || _loc2_)
                                                               {
                                                                  §§goto(addr62);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         addr62:
                                                         return new §'y§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
                                                      case 2:
                                                         _loc3_ = param1.zoom_target;
                                                         if(_loc5_ || param1)
                                                         {
                                                            if(_loc3_.type != "sprite")
                                                            {
                                                               addr185:
                                                               break;
                                                            }
                                                         }
                                                         return new §,3§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
                                                         addr209:
                                                      case 3:
                                                         return new §<b§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                                                      case 8:
                                                         this.§'[§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                                                         if(_loc5_ || this)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               if(false)
                                                               {
                                                                  addr127:
                                                                  break;
                                                               }
                                                               break;
                                                            }
                                                            addr177:
                                                            this.§4!M§ = param1.time * 1000;
                                                         }
                                                         else
                                                         {
                                                            addr133:
                                                            if(_loc5_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  addr169:
                                                                  if(!(_loc6_ && _loc2_))
                                                                  {
                                                                     this.§+!d§ = param1.height;
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr209);
                                                                  }
                                                               }
                                                               break;
                                                            }
                                                            addr146:
                                                            if(_loc5_ || param1)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  §§goto(addr127);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr185);
                                                               }
                                                            }
                                                         }
                                                         break;
                                                      case 4:
                                                         §§goto(addr177);
                                                      case 5:
                                                         this.§^B§ = param1.width;
                                                         §§goto(addr169);
                                                      case 6:
                                                         this.§;>§ = false;
                                                         §§goto(addr146);
                                                      case 7:
                                                         this.§;>§ = true;
                                                         §§goto(addr133);
                                                   }
                                                   return null;
                                                   §§push(9);
                                                }
                                             }
                                             §§goto(addr457);
                                          }
                                          §§goto(addr383);
                                       }
                                       §§goto(addr457);
                                    }
                                    §§goto(addr355);
                                 }
                              }
                              §§goto(addr337);
                           }
                        }
                        §§goto(addr401);
                     }
                  }
                  §§goto(addr337);
               }
               §§goto(addr457);
            }
            §§goto(addr337);
         }
         §§goto(addr323);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§1!J§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr83:
                     this.§1!J§.dispose();
                  }
                  while(true)
                  {
                     this.§1!J§ = null;
                     addr67:
                     while(true)
                     {
                     }
                  }
                  addr85:
               }
               while(true)
               {
                  this.§-!F§ = null;
                  if(_loc1_ && _loc2_)
                  {
                     continue;
                  }
                  if(!_loc1_)
                  {
                     break;
                  }
                  §§goto(addr85);
               }
               return;
            }
            §§goto(addr83);
         }
         §§goto(addr67);
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc2_))
         {
            if(!this.§1!J§)
            {
               if(_loc3_ || this)
               {
                  addr34:
                  this.§1!J§ = new Sprite();
                  if(!_loc4_)
                  {
                     addr40:
                     §§push(this);
                     §§push(this.§>2§);
                     if(_loc3_)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§>2§ = §§pop();
                  }
               }
               var _loc2_:* = int(this.§-!F§.length - 1);
               loop0:
               while(true)
               {
                  §§push(_loc2_);
                  if(_loc3_ || this)
                  {
                     if(§§pop() < 0)
                     {
                        loop1:
                        for(; _loc3_; while(!(_loc4_ && this))
                        {
                           this.§ if§();
                           if(!(_loc3_ || _loc2_))
                           {
                              continue;
                           }
                           §§goto(addr88);
                        })
                        {
                           this.§<!k§();
                           loop2:
                           while(!(_loc4_ && _loc3_))
                           {
                              this.§7P§();
                              continue loop1;
                              if(!(_loc3_ || _loc3_))
                              {
                                 continue;
                              }
                              §§push(this.§>2§ < this.§4!M§);
                              if(!_loc4_)
                              {
                                 break loop0;
                              }
                              addr173:
                              if(§§pop())
                              {
                                 addr174:
                                 while(true)
                                 {
                                    this.§-!F§.splice(_loc2_,1);
                                    break loop2;
                                 }
                                 addr174:
                              }
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(_loc3_ || param1)
                                 {
                                    §§push(§§pop() - 1);
                                    if(_loc3_)
                                    {
                                       §§push(int(§§pop()));
                                    }
                                 }
                                 addr155:
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    break loop1;
                                 }
                              }
                              addr132:
                           }
                           while(true)
                           {
                              §§goto(addr132);
                              §§goto(addr174);
                           }
                        }
                        while(!_loc3_)
                        {
                           §§goto(addr174);
                        }
                        continue;
                     }
                     §§push(!this.§-!F§[_loc2_].update(this.§>2§,this.§1!J§,this.§`_§));
                     §§goto(addr173);
                  }
                  §§goto(addr155);
               }
               return §§pop();
            }
            §§goto(addr40);
         }
         §§goto(addr34);
      }
      
      private function § if§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:int = Starling.§'!A§.§<H§.height;
         §§push(§4!T§.§`!Y§);
         if(!(_loc6_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§4!T§.§=!_§);
         if(_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_);
         if(!_loc6_)
         {
            §§push(this.§+!d§);
            if(!_loc6_)
            {
               §§push(§§pop() * _loc2_);
            }
            §§push(§§pop() - §§pop());
            if(!(_loc6_ && _loc1_))
            {
               §§push(§§pop() / _loc2_);
            }
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(_loc5_ || this)
         {
            §§push(this.§1!J§);
            §§push(_loc4_);
            if(_loc5_)
            {
               §§push(§§pop() >> 1);
            }
            §§pop().y = §§pop();
         }
      }
      
      private function §<!k§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            Starling.§'!A§.color = this.§'[§;
         }
      }
      
      private function §7P§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§4!!§)
            {
               if(!_loc2_)
               {
                  return;
               }
            }
         }
         var _loc1_:Sprite = this.§1!J§.getChildByName(§=n§.§'"§) as Sprite;
         if(_loc3_)
         {
            if(_loc1_)
            {
               if(!(_loc2_ && this))
               {
                  addr68:
                  this.§4!!§ = true;
               }
               return;
            }
         }
         §§goto(addr68);
      }
      
      public function clone(param1:TextureManager) : CutScene
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§9!'§ = null;
         var _loc2_:CutScene = new CutScene(null,null);
         for each(_loc3_ in this.§-!F§)
         {
            if(_loc6_ || param1)
            {
               _loc2_.§-!F§.push(_loc3_.clone());
            }
         }
         if(_loc6_)
         {
            _loc2_.§>2§ = this.§>2§;
         }
         while(true)
         {
            _loc2_.§4!M§ = this.§4!M§;
            loop2:
            while(!_loc7_)
            {
               _loc2_.§^B§ = this.§^B§;
               loop3:
               while(true)
               {
                  _loc2_.§+!d§ = this.§+!d§;
                  loop4:
                  while(true)
                  {
                     _loc2_.§;>§ = this.§;>§;
                     loop5:
                     for(; !_loc7_; if(!(_loc7_ && _loc3_))
                     {
                        continue loop3;
                     })
                     {
                        _loc2_.§'[§ = this.§'[§;
                        loop6:
                        while(!_loc7_)
                        {
                           _loc2_.§1L§ = this.§1L§;
                           while(true)
                           {
                              if(!(_loc7_ && param1))
                              {
                                 continue loop5;
                              }
                              continue loop6;
                              addr111:
                              _loc2_.§`_§ = param1;
                              if(_loc6_ || param1)
                              {
                                 return _loc2_;
                              }
                           }
                           continue loop5;
                        }
                        continue loop4;
                     }
                     continue loop2;
                  }
                  if(!(_loc6_ || param1))
                  {
                     continue;
                  }
                  §§goto(addr111);
               }
            }
         }
      }
      
      public function get §%p§() : String
      {
         return this.§1L§;
      }
      
      public function set §%p§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§1L§ = param1;
         }
      }
   }
}
