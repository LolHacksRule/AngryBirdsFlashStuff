package §1" §
{
   import §"_§.§!"8§;
   import §%!0§.§%Q§;
   import §%!0§.§&@§;
   import §%!0§.§3"!§;
   import §%!j§.§%K§;
   import §&!P§.§``§;
   import §,!g§.§"!P§;
   import §,P§.§'_§;
   import §05§.§?s§;
   import §5u§.§-"#§;
   import §6U§.§="4§;
   import §6]§.§,"0§;
   import §6]§.Base64;
   import §7!@§.§+`§;
   import §7t§.§7a§;
   import §;" §.§5L§;
   import §;b§.StateLevelEditorTestPlay;
   import §<i§.§'!e§;
   import §<i§.§-"?§;
   import §[!P§.§@R§;
   import flash.display.BitmapData;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   
   public class §6!2§ extends EventDispatcher implements §4!x§
   {
      
      public static const §6=§:int = 200;
      
      public static const §1!V§:int = 1000;
      
      public static const §&!g§:int = 8;
      
      private static var §!!O§:Function;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §6=§ = 200;
            while(true)
            {
               §1!V§ = 1000;
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     §&!g§ = 8;
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr56);
      }
      
      private var §'!=§:Function;
      
      private var §`!G§:§&@§;
      
      private var §9J§:§#!j§;
      
      private var §4!u§:Boolean = true;
      
      public function §6!2§(param1:§#!j§)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
            while(true)
            {
               this.§9J§ = param1;
               while(_loc2_)
               {
                  this.§`!G§ = §'_§.§=M§ as §&@§;
                  if(!_loc3_)
                  {
                     return;
                     addr42:
                  }
               }
            }
         }
         §§goto(addr42);
      }
      
      public static function §'" §(param1:Function) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || §6!2§)
         {
            §!!O§ = param1;
         }
         do
         {
            §%K§.§`9§.§>"§ = §7""§;
         }
         while(!_loc2_);
         
      }
      
      private static function §7""§() : BitmapData
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(§'_§.§implements§());
         if(!(_loc4_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(§'_§.§6l§());
         if(_loc5_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         var _loc3_:BitmapData = new BitmapData(_loc1_,_loc2_,false);
         if(_loc5_)
         {
            §%K§.drawToBitmapData(_loc3_);
            for(; §!!O§ != null; do
            {
               §!!O§ = null;
            }
            while(!(_loc5_ || §6!2§));
            ,if(!(_loc4_ && _loc1_))
            {
               break;
            })
            {
               if(_loc4_ && _loc2_)
               {
                  continue;
               }
            }
            return _loc3_;
         }
         while(true)
         {
            §!!O§(_loc3_);
            §§goto(addr102);
         }
      }
      
      public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §!!2§.§[E§.§[j§(this.§?!p§,§!!2§.SAVE);
            do
            {
               this.§@!0§(§-"#§.§3"=§);
            }
            while(!(_loc2_ || this));
            
         }
      }
      
      public function initialize() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§9J§.§<!_§.addEventListener(§!"8§.SAVE,this.§ =§);
         }
      }
      
      private function § =§(param1:§!"8§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(§!!2§.§[E§.§?!p§())
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr66:
                  §5L§.§[E§.§2!q§();
               }
               do
               {
                  this.§4!u§ = false;
               }
               while(!_loc2_);
               
            }
            return;
         }
         §§goto(addr66);
      }
      
      public function get §0z§() : §&@§
      {
         return this.§`!G§;
      }
      
      public function get camera() : §"!P§
      {
         return this.§`!G§.camera;
      }
      
      public function §8!b§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§7a§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§`!G§.objects.getObjectCount())
         {
            _loc2_ = §7a§.§^!g§(this.§`!G§.objects.getObject(_loc1_));
            if(!_loc3_)
            {
               _loc2_.§8!b§();
               if(!(_loc4_ || _loc3_))
               {
                  continue;
               }
            }
            _loc1_++;
         }
      }
      
      public function §@!0§(param1:§'!e§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.§`!G§);
            loop0:
            while(true)
            {
               §§pop().clearLevel();
               loop1:
               while(true)
               {
                  §§push(this.§`!G§);
                  loop2:
                  while(true)
                  {
                     §§pop().init(param1);
                     loop3:
                     while(true)
                     {
                        §§push(this.§`!G§);
                        loop4:
                        while(!_loc2_)
                        {
                           if(_loc3_)
                           {
                              §§pop().objects.setGroundTextureEnabled(false);
                              while(!(_loc2_ && param1))
                              {
                                 §7a§.§3!G§(this.§`!G§.objects);
                                 while(_loc3_)
                                 {
                                    continue loop4;
                                    §§push(this.§`!G§);
                                    if(_loc2_ && _loc3_)
                                    {
                                       continue loop4;
                                    }
                                    §§pop().slingshot.setSlingShotState(§3"!§.§3"4§);
                                    while(true)
                                    {
                                       this.§?"7§();
                                       while(!_loc2_)
                                       {
                                          while(_loc3_ || _loc3_)
                                          {
                                             dispatchEvent(new §!"8§(§!"8§.§"`§));
                                             if(!_loc3_)
                                             {
                                                continue;
                                             }
                                             §§goto(addr33);
                                          }
                                       }
                                    }
                                    if(_loc3_ || param1)
                                    {
                                       if(!(_loc2_ && param1))
                                       {
                                          return;
                                          addr47:
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§7!F§();
            §§goto(addr51);
         }
         §§goto(addr47);
      }
      
      private function §7!F§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§7a§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§`!G§.objects.getObjectCount())
         {
            _loc2_ = §7a§.§^!g§(this.§`!G§.objects.getObject(_loc1_));
            if(_loc3_ || _loc3_)
            {
               if(_loc2_.isTexture())
               {
                  if(_loc4_)
                  {
                     continue;
                  }
                  _loc2_.§#!1§(-1,true);
                  if(!_loc3_)
                  {
                     continue;
                  }
               }
            }
            _loc1_++;
         }
      }
      
      public function §?!p§() : Boolean
      {
         return this.§4!u§;
      }
      
      public function §-v§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§4!u§ = true;
            do
            {
               dispatchEvent(new §!"8§(§!"8§.CHANGE));
            }
            while(_loc2_);
            
         }
      }
      
      public function §9!h§() : Object
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:Object = new Object();
         if(!_loc3_)
         {
            _loc1_.data = this.§`!G§.§1!l§().§6" §();
            do
            {
               _loc1_.valid = StateLevelEditorTestPlay.§3!%§;
            }
            while(_loc3_ && _loc2_);
            
         }
         return _loc1_;
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function §2!f§(param1:Number, param2:Number) : Point
      {
         return this.§`!G§.§4!5§(param1,param2);
      }
      
      public function §'!3§(param1:Point, param2:Boolean = true) : Object
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc5_:Vector.<§``§> = null;
         var _loc6_:§``§ = null;
         var _loc3_:Point = this.§`!G§.screenToBox2D(param1.x,param1.y);
         var _loc4_:Object;
         §§push((_loc4_ = this.§`!G§.slingshot.getObjectFromPoint(_loc3_.x,_loc3_.y)) == null);
         if(!(_loc10_ && param2))
         {
            if(§§pop())
            {
               if(!_loc10_)
               {
                  addr55:
                  §§pop();
                  if(!_loc10_)
                  {
                     §§push(this.§`!G§);
                     if(_loc9_ || _loc3_)
                     {
                        addr74:
                        if(§§pop().slingshot.intersectsWithPoint(_loc3_.x,_loc3_.y))
                        {
                           if(!_loc10_)
                           {
                              addr77:
                              §§push(this.§`!G§);
                              if(_loc9_ || _loc3_)
                              {
                                 _loc4_ = §§pop().slingshot;
                                 addr99:
                                 if(_loc4_ == null)
                                 {
                                    §§goto(addr104);
                                 }
                                 §§push(_loc4_ is §``§);
                                 if(_loc9_)
                                 {
                                    if(§§pop())
                                    {
                                       if(!_loc10_)
                                       {
                                          §§pop();
                                          if(!(_loc10_ && param1))
                                          {
                                             §§push((_loc4_ as §``§).isGround());
                                             if(_loc9_)
                                             {
                                                §§goto(addr175);
                                             }
                                             addr175:
                                             §§goto(addr174);
                                          }
                                          §§goto(addr193);
                                       }
                                       addr174:
                                       if(§§pop())
                                       {
                                          if(_loc9_ || param2)
                                          {
                                             addr193:
                                             return null;
                                          }
                                       }
                                       return _loc4_;
                                    }
                                 }
                                 §§goto(addr175);
                              }
                              addr104:
                              _loc5_ = this.§`!G§.objects.getObjectsFromPoint(_loc3_.x,_loc3_.y);
                              var _loc7_:int = 0;
                              var _loc8_:* = _loc5_;
                              §§goto(addr102);
                           }
                           addr102:
                           while(true)
                           {
                              for each(_loc6_ in _loc8_)
                              {
                                 if(!(_loc9_ || param1))
                                 {
                                    break;
                                 }
                                 if(§!!2§.§[E§.§'%§(§7a§.§^!g§(_loc6_)))
                                 {
                                    if(!(_loc10_ && this))
                                    {
                                       break;
                                    }
                                 }
                                 continue;
                              }
                           }
                           return _loc6_;
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr104);
                  }
                  §§goto(addr77);
               }
            }
            §§goto(addr74);
         }
         §§goto(addr55);
      }
      
      private function §#!$§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §%K§.§`9§.§>"§ = this.§"u§;
         }
      }
      
      private function §"u§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Object = this.§9!h§();
         var _loc2_:BitmapData = §7""§();
         var _loc3_:ByteArray = §="4§.encode(_loc2_);
         if(!(_loc5_ && _loc1_))
         {
            _loc1_.screen = Base64.§7o§(_loc3_);
            do
            {
               §?s§.doJsCall("onScreenshotReady",JSON.stringify(_loc1_));
            }
            while(_loc5_ && _loc1_);
            
         }
      }
      
      public function §=!I§() : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push((AngryBirdsFP11.§>!7§ as §+`§).§#!r§);
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(this.getBlockCount());
         if(!(_loc5_ && this))
         {
            §§push(int(§§pop() - this.§>y§()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§9J§.§9L§.§[i§());
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc1_ - _loc2_);
         if(_loc4_)
         {
            return §§pop() + _loc3_;
         }
      }
      
      public function §0J§() : int
      {
         return §1!V§ - this.getStaticCount();
      }
      
      public function §<!%§() : int
      {
         return §&!g§ - this.§`!G§.slingshot.getBirdCount();
      }
      
      public function §+P§() : Vector.<§%Q§>
      {
         return this.§`!G§.slingshot.mBirds;
      }
      
      public function getBirdCount() : int
      {
         return this.§`!G§.slingshot.getBirdCount();
      }
      
      public function getPigCount() : int
      {
         return this.§`!G§.objects.getPigCount();
      }
      
      public function getBlockCount() : int
      {
         return this.§`!G§.§0n§.getBlockCount();
      }
      
      public function §>y§() : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(true)
         {
            §§push(_loc2_);
            if(_loc3_)
            {
               break;
            }
            if(§§pop() >= this.§`!G§.§0n§.getObjectCount())
            {
               if(_loc3_ && _loc1_)
               {
                  continue;
               }
               if(_loc4_ || _loc1_)
               {
                  if(!_loc3_)
                  {
                     §§push(_loc1_);
                     break;
                  }
                  addr83:
                  _loc1_++;
               }
            }
            else if(this.§`!G§.§0n§.getObject(_loc2_).isMiscBlock())
            {
               §§goto(addr83);
            }
            _loc2_++;
         }
         return §§pop();
      }
      
      public function getStaticCount() : int
      {
         return this.§`!G§.§0n§.getStaticCount();
      }
      
      public function §6!T§() : §``§
      {
         return this.§`!G§.objects.getObject(0);
      }
      
      public function §,!D§(param1:String, param2:Number, param3:Number, param4:Boolean = true) : Object
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            §§push(param1);
            while(true)
            {
               if(§§pop().indexOf("BIRD_") == -1)
               {
                  §§push(param1);
                  continue;
               }
               if(this.§<!%§() <= 0)
               {
                  addr208:
                  §,"0§.log("LevelEditor::executeActions() ACTION_ADD_ITEM -> Reached Bird Limit");
                  addr197:
                  return null;
               }
               addr213:
               addr170:
               var _loc5_:Object = null;
               if(!(_loc6_ && this))
               {
                  if(param1.indexOf("BIRD_") != -1)
                  {
                     addr227:
                     §§push(this.§`!G§);
                     if(_loc7_ || this)
                     {
                        _loc5_ = §§pop().slingshot.addNewBirdToEndOfList(param1,param2,param3);
                        if(_loc7_)
                        {
                           addr256:
                           §§push(_loc5_ == null);
                           if(!(_loc6_ && param2))
                           {
                              §§push(!§§pop());
                              if(_loc7_ || param2)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       §§pop();
                                       if(_loc7_ || param2)
                                       {
                                          addr286:
                                          §§push(param4);
                                          if(!(_loc6_ && param3))
                                          {
                                             addr295:
                                             if(§§pop())
                                             {
                                                if(_loc7_ || param2)
                                                {
                                                   this.§-v§();
                                                }
                                             }
                                          }
                                          §§goto(addr295);
                                       }
                                       return _loc5_;
                                    }
                                    §§goto(addr295);
                                 }
                              }
                           }
                           §§goto(addr295);
                        }
                        §§goto(addr286);
                     }
                     else
                     {
                        addr248:
                        _loc5_ = §§pop().objects.addObject(param1,param2,param3,0);
                     }
                     §§goto(addr256);
                  }
                  else
                  {
                     §§push(this.§`!G§);
                  }
                  §§goto(addr248);
               }
               §§goto(addr227);
            }
         }
         §§goto(addr198);
      }
      
      public function §<!8§(param1:Vector.<§7a§>) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:§7a§ = null;
         var _loc2_:* = false;
         loop0:
         for each(_loc3_ in param1)
         {
            if(!_loc7_)
            {
               §§push(§!!2§.§[E§.§#§(_loc3_));
               if(_loc6_ || this)
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  while(true)
                  {
                     §§push(_loc3_.getObject() is §``§);
                     addr69:
                     if(_loc7_ && this)
                     {
                        continue;
                     }
                     this.§26§(_loc3_.getObject() as §%Q§);
                     loop4:
                     while(_loc6_)
                     {
                        if(!(_loc7_ && this))
                        {
                           addr101:
                           §§push(true);
                           if(_loc6_)
                           {
                              _loc2_ = §§pop();
                              if(!_loc6_)
                              {
                                 continue;
                              }
                              if(true)
                              {
                                 continue loop0;
                              }
                           }
                           else
                           {
                              loop3:
                              for(; _loc6_ || param1; §§goto(addr101))
                              {
                                 if(_loc6_ || _loc3_)
                                 {
                                    if(!§§pop())
                                    {
                                       continue loop0;
                                    }
                                    if(_loc7_)
                                    {
                                       continue loop4;
                                    }
                                    §§goto(addr69);
                                 }
                                 else
                                 {
                                    while(!§§pop())
                                    {
                                       §§push(_loc3_.getObject() is §%Q§);
                                       continue loop3;
                                    }
                                    addr130:
                                    this.§`!G§.objects.removeObject(_loc3_.getObject());
                                    while(true)
                                    {
                                       §§push(true);
                                       break loop3;
                                    }
                                    addr136:
                                    addr129:
                                 }
                              }
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 break loop4;
                                 §§goto(addr136);
                              }
                              addr112:
                              addr104:
                           }
                           continue loop0;
                        }
                        §§goto(addr130);
                     }
                     while(true)
                     {
                        if(!(_loc7_ && param1))
                        {
                           §§goto(addr112);
                        }
                        else
                        {
                           §§goto(addr130);
                        }
                     }
                  }
               }
               §§goto(addr129);
            }
            §§goto(addr130);
         }
         if(!(_loc7_ && _loc2_))
         {
            if(_loc2_)
            {
               if(_loc6_)
               {
                  this.§-v§();
               }
            }
         }
      }
      
      public function removeObject(param1:§``§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(§!!2§.§[E§.§#§(§7a§.§^!g§(param1)))
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr73:
                  this.§`!G§.objects.removeObject(param1);
               }
               do
               {
                  this.§-v§();
               }
               while(_loc3_ && _loc3_);
               
            }
            return;
         }
         §§goto(addr73);
      }
      
      public function §26§(param1:§%Q§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§`!G§.slingshot.removeObject(param1);
         }
      }
      
      private function §?"7§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§7a§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§`!G§.objects.getObjectCount())
         {
            _loc2_ = §7a§.§^!g§(this.§`!G§.objects.getObject(_loc1_));
            if(!(_loc4_ && this))
            {
               _loc2_.§;!>§();
               if(_loc3_)
               {
                  _loc1_++;
               }
            }
         }
      }
      
      public function getJoints() : Vector.<§@R§>
      {
         return this.§`!G§.objects.getJoints();
      }
      
      public function §=j§(param1:§7a§, param2:Number, param3:Number) : §7a§
      {
         return param1.clone(this.§`!G§,param2,param3);
      }
      
      public function get §,w§() : §-"?§
      {
         return this.§`!G§.§1!l§() as §-"?§;
      }
   }
}
