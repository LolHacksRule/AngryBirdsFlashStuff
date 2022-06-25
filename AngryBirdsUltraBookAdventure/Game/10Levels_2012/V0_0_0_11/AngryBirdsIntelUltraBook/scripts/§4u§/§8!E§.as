package §4u§
{
   import §,!_§.§;K§;
   import §,!_§.CompositeSpriteParser;
   import §,!_§.TextureManager;
   import §6!7§.§-m§;
   import §6!7§.DisplayObject;
   import §6!7§.DisplayObjectContainer;
   import §6!7§.Sprite;
   
   public class §8!E§ extends §^!I§
   {
      
      public static const §?!^§:String = "background";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §?!^§ = "background";
         }
      }
      
      private var mName:String;
      
      private var §8!3§:String;
      
      private var §`!%§:Number;
      
      private var §else§:Number;
      
      private var §[v§:Number;
      
      private var §5%§:Number;
      
      private var §2c§:Number = 1.0;
      
      private var §6m§:Boolean = true;
      
      public function §8!E§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.mName = param3;
               while(true)
               {
                  this.§8!3§ = param4;
                  addr119:
                  while(true)
                  {
                     this.§`!%§ = param5;
                     continue loop0;
                  }
                  loop7:
                  for(; _loc9_ || param2; while(true)
                  {
                     §§pop();
                     continue loop7;
                  })
                  {
                     §§push(param7 > 0);
                     if(!_loc8_)
                     {
                        if(!_loc8_)
                        {
                           addr33:
                           §§push(Boolean(§§pop()));
                           if(_loc9_)
                           {
                              loop6:
                              while(§§pop())
                              {
                                 if(_loc9_)
                                 {
                                    if(!(_loc9_ || param2))
                                    {
                                       continue loop7;
                                    }
                                    this.§2c§ = param7;
                                 }
                                 if(!_loc9_)
                                 {
                                    while(_loc9_)
                                    {
                                       §§push(!isNaN(param7));
                                       if(_loc8_)
                                       {
                                          continue loop7;
                                       }
                                       §§push(Boolean(§§pop()));
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!_loc8_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                          if(§§pop())
                                          {
                                             continue loop7;
                                          }
                                          continue loop6;
                                       }
                                    }
                                    continue loop0;
                                    addr100:
                                 }
                                 if(_loc9_)
                                 {
                                    addr63:
                                    break;
                                 }
                                 §§goto(addr119);
                              }
                              return;
                           }
                           continue;
                        }
                        §§goto(addr72);
                     }
                     §§goto(addr33);
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §9!=§() : String
      {
         return this.§8!3§;
      }
      
      public function get x() : Number
      {
         return this.§`!%§;
      }
      
      public function get y() : Number
      {
         return this.§else§;
      }
      
      public function set §;!§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§6m§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:TextureManager) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:DisplayObject = null;
         var _loc5_:§;K§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(_loc10_ || param2)
         {
            §§push(super.update(param1,param2,param3));
            if(!(_loc9_ && param3))
            {
               §§push(!§§pop());
               if(!(_loc9_ && param2))
               {
                  if(§§pop())
                  {
                     addr60:
                     _loc4_ = CompositeSpriteParser.§-!$§(this.§9!=§,param3);
                     if(!_loc9_)
                     {
                        §§push(!_loc4_);
                        if(!(_loc9_ && this))
                        {
                           if(§§pop())
                           {
                              if(!_loc9_)
                              {
                                 _loc5_ = param3.§]&§(this.§9!=§);
                                 if(!(_loc9_ && param3))
                                 {
                                    if(_loc5_)
                                    {
                                    }
                                    addr118:
                                    §§push(Boolean(_loc4_));
                                    if(_loc10_)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc10_ || param3)
                                          {
                                             _loc6_ = param2.getChildByName(§?!^§) as Sprite;
                                             if(_loc10_)
                                             {
                                                if(_loc6_)
                                                {
                                                   if(_loc10_)
                                                   {
                                                      param2 = _loc6_;
                                                      addr159:
                                                      §§push(_loc4_);
                                                      §§push(_loc4_.x);
                                                      if(!(_loc9_ && this))
                                                      {
                                                         §§push(§§pop() + this.x);
                                                      }
                                                      §§pop().x = §§pop();
                                                      if(!_loc9_)
                                                      {
                                                         §§push(_loc4_);
                                                         §§push(_loc4_.y);
                                                         if(_loc10_ || param2)
                                                         {
                                                            §§push(§§pop() + this.y);
                                                         }
                                                         §§pop().y = §§pop();
                                                         if(!_loc9_)
                                                         {
                                                            addr191:
                                                            _loc4_.name = this.name;
                                                         }
                                                      }
                                                   }
                                                   _loc7_ = param2.getChildByName(this.name);
                                                   if(!(_loc9_ && this))
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         if(!(_loc9_ && param3))
                                                         {
                                                            addr218:
                                                            _loc8_ = _loc7_.parent;
                                                            if(_loc10_)
                                                            {
                                                               _loc8_.removeChild(_loc7_,true);
                                                               if(_loc10_)
                                                               {
                                                                  _loc8_.addChild(_loc4_);
                                                                  if(_loc10_)
                                                                  {
                                                                     addr242:
                                                                     if(this.name == §?!^§)
                                                                     {
                                                                        if(_loc10_ || param2)
                                                                        {
                                                                           addr264:
                                                                           if(this.§6m§)
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                              }
                                                                              addr280:
                                                                              _loc4_.scaleY = this.§2c§;
                                                                              return false;
                                                                              addr284:
                                                                           }
                                                                        }
                                                                     }
                                                                     _loc4_.scaleX = this.§2c§;
                                                                     if(_loc10_ || param1)
                                                                     {
                                                                     }
                                                                     §§goto(addr284);
                                                                     addr237:
                                                                  }
                                                                  §§goto(addr280);
                                                               }
                                                               §§goto(addr237);
                                                            }
                                                            §§goto(addr264);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         param2.addChild(_loc4_);
                                                      }
                                                      §§goto(addr242);
                                                   }
                                                   §§goto(addr218);
                                                }
                                                §§goto(addr159);
                                             }
                                             §§goto(addr191);
                                          }
                                          else
                                          {
                                             addr287:
                                             return true;
                                             addr286:
                                          }
                                       }
                                    }
                                    §§goto(addr280);
                                 }
                                 _loc4_ = new §-m§(_loc5_.texture);
                                 if(!_loc9_)
                                 {
                                    _loc4_.pivotX = -_loc5_.pivotX;
                                    if(_loc9_)
                                    {
                                    }
                                    §§goto(addr118);
                                 }
                                 _loc4_.pivotY = -_loc5_.pivotY;
                              }
                              §§goto(addr286);
                           }
                           §§goto(addr118);
                        }
                        §§goto(addr280);
                     }
                  }
                  §§goto(addr286);
               }
            }
            §§goto(addr287);
         }
         §§goto(addr60);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.§[v§ = param1;
         }
         do
         {
            this.§5%§ = param2;
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      override public function clone() : §^!I§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§8!E§ = new §8!E§(time,duration,this.mName,this.§8!3§,this.§`!%§,this.§else§,this.§2c§);
         if(_loc3_)
         {
            _loc1_.§6m§ = this.§6m§;
         }
         while(true)
         {
            _loc1_.§[v§ = this.§[v§;
            while(_loc3_)
            {
               _loc1_.§5%§ = this.§5%§;
               if(_loc3_)
               {
                  return _loc1_;
               }
            }
         }
      }
   }
}
