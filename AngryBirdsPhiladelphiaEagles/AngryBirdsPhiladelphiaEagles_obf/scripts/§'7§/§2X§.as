package §'7§
{
   import § N§.§6!O§;
   import § N§.Sprite;
   import §#e§.§'?§;
   import §5Z§.§[Z§;
   import §8!B§.§#! §;
   
   public class §2X§
   {
      
      public static const §9!$§:String = "CutScene_Type_Intro";
      
      public static const §[<§:String = "CutScene_Type_Outro";
      
      public static const §9=§:String = "CutScene_Type_Final_Outro";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §9!$§ = "CutScene_Type_Intro";
         }
         do
         {
            §[<§ = "CutScene_Type_Outro";
            do
            {
               §9=§ = "CutScene_Type_Final_Outro";
            }
            while(!(_loc2_ || _loc1_));
            
         }
         while(_loc1_ && §2X§);
         
      }
      
      private var §2"§:§'?§;
      
      private var §6!%§:String;
      
      private var §]y§:Vector.<§@!F§>;
      
      private var §-!9§:Number;
      
      private var §#!A§:Number;
      
      private var §6! §:Number;
      
      private var §@g§:Number;
      
      private var §8A§:Sprite;
      
      private var §96§:Boolean = true;
      
      private var §6&§:uint;
      
      private var §^`§:Boolean;
      
      private var §?5§:§6!O§;
      
      private var §9!;§:§6!O§;
      
      public function §2X§(param1:Object, param2:String)
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:§@!F§ = null;
         var _loc4_:Object = null;
         this.§]y§ = new Vector.<§@!F§>();
         super();
         this.§-!9§ = 0;
         loop0:
         while(param1)
         {
            §§push(param2);
            loop1:
            while(true)
            {
               §§push("intro");
               while(true)
               {
                  if(§§pop().search(§§pop()) == -1)
                  {
                     §§push(param2);
                     if(_loc8_)
                     {
                        §§push("complete");
                        if(_loc8_)
                        {
                           if(§§pop().search(§§pop()) != -1)
                           {
                              if(_loc7_)
                              {
                                 break;
                              }
                              this.§6!%§ = §[<§;
                              if(true)
                              {
                                 break;
                              }
                              continue loop0;
                              addr61:
                           }
                           break;
                        }
                        continue;
                     }
                     continue loop1;
                  }
                  if(_loc8_ || this)
                  {
                     this.§6!%§ = §9!$§;
                  }
                  §§goto(addr61);
               }
               var _loc5_:int = 0;
               var _loc6_:* = param1;
               addr115:
               §§push(§§hasnext(_loc6_,_loc5_));
               if(_loc8_)
               {
                  if(§§pop())
                  {
                     _loc4_ = §§nextvalue(_loc5_,_loc6_);
                     _loc3_ = this.§?-§(_loc4_);
                     if(!_loc7_)
                     {
                        if(_loc3_)
                        {
                           if(_loc8_)
                           {
                              addr111:
                              this.§]y§.push(_loc3_);
                           }
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr111);
                  }
                  if(_loc8_)
                  {
                     if(!_loc7_)
                     {
                        if(_loc8_)
                        {
                           _loc5_ = 0;
                           if(_loc8_ || _loc3_)
                           {
                              _loc6_ = this.§]y§;
                              addr217:
                              for each(_loc3_ in _loc6_)
                              {
                                 if(!_loc7_)
                                 {
                                    addr207:
                                    if(_loc3_ is §'!A§)
                                    {
                                       (_loc3_ as §'!A§).setSize(this.§6! §,this.§@g§);
                                       (_loc3_ as §'!A§).§9I§ = this.§96§;
                                       addr159:
                                       §§goto(addr217);
                                       addr203:
                                       addr216:
                                    }
                                    §§push(_loc3_ is §3g§);
                                    if(_loc8_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc7_)
                                          {
                                             (_loc3_ as §3g§).setSize(this.§6! §,this.§@g§);
                                          }
                                          if(!(_loc7_ && this))
                                          {
                                             (_loc3_ as §3g§).§2h§ = this.§96§;
                                             if(false)
                                             {
                                                §§goto(addr159);
                                             }
                                             §§goto(addr217);
                                          }
                                          §§goto(addr203);
                                       }
                                       §§goto(addr217);
                                    }
                                    §§goto(addr207);
                                 }
                                 §§goto(addr216);
                              }
                              addr219:
                           }
                        }
                        break loop0;
                     }
                     break loop0;
                  }
                  §§goto(addr219);
               }
               §§goto(addr217);
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§8A§;
      }
      
      private function §?-§(param1:Object) : §@!F§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = param1.action;
         if(§@!F§.§=5§ === _loc4_)
         {
            if(_loc6_)
            {
               §§push(0);
               if(_loc5_)
               {
                  addr323:
               }
            }
            else
            {
               addr257:
               §§push(2);
            }
         }
         else
         {
            §§push(§@!F§.§,!P§);
            if(_loc6_)
            {
               if(§§pop() === _loc4_)
               {
                  §§push(1);
                  if(_loc5_)
                  {
                     addr274:
                  }
                  §§goto(addr328);
               }
               else
               {
                  §§push(§@!F§.§5&§);
                  if(_loc6_)
                  {
                     if(§§pop() === _loc4_)
                     {
                        §§goto(addr257);
                     }
                     else
                     {
                        if(§@!F§.§@`§ === _loc4_)
                        {
                           §§push(3);
                           if(_loc5_)
                           {
                              addr289:
                           }
                           §§goto(addr328);
                        }
                        else
                        {
                           §§push(§@!F§.END);
                           if(!_loc5_)
                           {
                              if(§§pop() === _loc4_)
                              {
                                 §§goto(addr274);
                                 §§push(4);
                              }
                              else
                              {
                                 §§push(§@!F§.§^i§);
                                 if(!(_loc5_ && param1))
                                 {
                                    if(§§pop() === _loc4_)
                                    {
                                       if(_loc6_)
                                       {
                                          §§goto(addr289);
                                          §§push(5);
                                       }
                                       else
                                       {
                                          addr316:
                                          addr328:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                return new §3g§(param1.time * 1000,0,param1.name,param1.image,param1.x,param1.y,param1.zoom);
                                             case 1:
                                                _loc2_ = param1.scroll_target;
                                                if(!(_loc5_ && this))
                                                {
                                                   if(_loc2_.type == "sprite")
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         return new §'!A§(param1.time * 1000,param1.duration * 1000,_loc2_.sprite,_loc2_.x,_loc2_.y,param1.type);
                                                      }
                                                   }
                                                }
                                                break;
                                             case 2:
                                                _loc3_ = param1.zoom_target;
                                                if(_loc3_.type == "sprite")
                                                {
                                                   return new §66§(param1.time * 1000,param1.duration * 1000,_loc3_.sprite,_loc3_.initialZoom,_loc3_.targetZoom);
                                                }
                                                addr183:
                                                break;
                                             case 3:
                                                return new §6!&§(param1.time * 1000,0,param1.sound,param1.loop,param1.volume,param1.track);
                                             case 4:
                                                this.§#!A§ = param1.time * 1000;
                                                break;
                                             case 5:
                                                this.§6! § = param1.width;
                                                this.§@g§ = param1.height;
                                                break;
                                                addr174:
                                                addr166:
                                             case 6:
                                                this.§96§ = false;
                                                addr130:
                                                break;
                                                addr150:
                                             case 7:
                                                this.§96§ = true;
                                                addr136:
                                                if(!(_loc5_ && _loc3_))
                                                {
                                                   break;
                                                }
                                                §§goto(addr150);
                                                break;
                                             case 8:
                                                this.§6&§ = (param1.r << 16) + (param1.g << 8) + param1.b + (255 << 24);
                                                if(_loc6_)
                                                {
                                                   if(_loc6_ || param1)
                                                   {
                                                      if(_loc6_ || this)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            if(true)
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr130);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr183);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr174);
                                                      }
                                                   }
                                                   §§goto(addr166);
                                                }
                                                else
                                                {
                                                   §§goto(addr136);
                                                }
                                          }
                                          return null;
                                          §§push(7);
                                       }
                                       §§goto(addr328);
                                    }
                                    else
                                    {
                                       §§push(§@!F§.§!!=§);
                                    }
                                    §§goto(addr328);
                                 }
                                 if(§§pop() === _loc4_)
                                 {
                                    if(_loc6_)
                                    {
                                       §§push(6);
                                       if(_loc5_)
                                       {
                                       }
                                       §§goto(addr328);
                                    }
                                    else
                                    {
                                       §§goto(addr316);
                                    }
                                 }
                                 else
                                 {
                                    §§push(§@!F§.§0d§);
                                 }
                                 §§goto(addr328);
                              }
                              §§goto(addr328);
                           }
                        }
                        §§goto(addr328);
                     }
                  }
                  if(§§pop() === _loc4_)
                  {
                     if(!_loc5_)
                     {
                        §§goto(addr316);
                     }
                  }
                  else
                  {
                     addr320:
                     if(§@!F§.§-T§ !== _loc4_)
                     {
                        §§goto(addr328);
                        §§push(9);
                     }
                  }
                  §§goto(addr328);
                  §§push(8);
               }
               §§goto(addr328);
            }
            §§goto(addr320);
         }
         §§goto(addr328);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§8A§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.§8A§);
                     addr56:
                     while(true)
                     {
                        §§pop().dispose();
                        addr57:
                        while(true)
                        {
                           this.§8A§ = null;
                           addr48:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr54:
               }
               while(true)
               {
                  this.§]y§ = null;
                  if(_loc2_)
                  {
                     continue;
                  }
                  if(_loc1_)
                  {
                     if(!_loc2_)
                     {
                        break;
                     }
                     §§goto(addr54);
                  }
                  §§goto(addr57);
               }
               return;
            }
            §§goto(addr56);
         }
         §§goto(addr48);
      }
      
      public function update(param1:Number) : Boolean
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!this.§8A§)
            {
               if(!_loc4_)
               {
                  §§goto(addr23);
               }
            }
            §§goto(addr29);
         }
         addr23:
         this.§8A§ = new Sprite();
         if(_loc3_)
         {
            addr29:
            §§push(this);
            §§push(this.§-!9§);
            if(!_loc4_)
            {
               §§push(§§pop() + param1);
            }
            §§pop().§-!9§ = §§pop();
         }
         var _loc2_:* = int(this.§]y§.length - 1);
         while(true)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() < 0)
               {
                  break;
               }
               if(!this.§]y§[_loc2_].update(this.§-!9§,this.§8A§,this.§2"§))
               {
                  this.§]y§.splice(_loc2_,1);
               }
               §§push(_loc2_);
               if(!(_loc4_ && this))
               {
                  §§push(§§pop() - 1);
               }
            }
            _loc2_ = §§pop();
         }
         this.§&E§();
         do
         {
            this.§!!5§();
            this.§+!"§();
         }
         while(_loc4_);
         
         return this.§-!9§ < this.§#!A§;
      }
      
      private function §+!"§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc1_:int = §[Z§.§%m§.§&!L§.height;
         §§push(§#! §.§3M§);
         if(_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(§#! §.§+!E§);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_);
         if(!_loc6_)
         {
            §§push(this.§@g§);
            if(_loc5_ || _loc1_)
            {
               §§push(§§pop() * _loc2_);
            }
            §§push(§§pop() - §§pop());
            if(_loc5_ || _loc1_)
            {
               §§push(§§pop() / _loc2_);
            }
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc6_)
         {
            §§push(this.§8A§);
            §§push(_loc4_);
            if(_loc5_)
            {
               §§push(§§pop() >> 1);
            }
            §§pop().y = §§pop();
         }
      }
      
      private function §&E§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §[Z§.§%m§.color = this.§6&§;
         }
      }
      
      private function §!!5§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc1_))
         {
            if(this.§^`§)
            {
               if(_loc2_)
               {
                  return;
               }
            }
         }
         var _loc1_:Sprite = this.§8A§.getChildByName(§3g§.§,V§) as Sprite;
         if(_loc2_)
         {
            if(_loc1_)
            {
               if(!_loc2_)
               {
               }
               §§goto(addr57);
            }
            this.§^`§ = true;
         }
         addr57:
      }
      
      public function clone(param1:§'?§) : §2X§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:§@!F§ = null;
         var _loc2_:§2X§ = new §2X§(null,null);
         for each(_loc3_ in this.§]y§)
         {
            if(!_loc6_)
            {
               _loc2_.§]y§.push(_loc3_.clone());
            }
         }
         _loc2_.§-!9§ = this.§-!9§;
         _loc2_.§#!A§ = this.§#!A§;
         loop1:
         do
         {
            _loc2_.§6! § = this.§6! §;
            _loc2_.§@g§ = this.§@g§;
            while(true)
            {
               _loc2_.§96§ = this.§96§;
               while(_loc7_ || _loc3_)
               {
                  _loc2_.§6&§ = this.§6&§;
                  _loc2_.§6!%§ = this.§6!%§;
                  if(!(_loc6_ && _loc3_))
                  {
                     continue loop1;
                  }
               }
            }
         }
         while(!(_loc7_ || _loc2_));
         
         _loc2_.§2"§ = param1;
         return _loc2_;
      }
      
      public function get §=!6§() : String
      {
         return this.§6!%§;
      }
      
      public function set §=!6§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§6!%§ = param1;
         }
      }
   }
}
