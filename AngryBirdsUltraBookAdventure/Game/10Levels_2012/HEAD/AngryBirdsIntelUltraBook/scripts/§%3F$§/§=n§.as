package §?$§
{
   import §1!&§.§&p§;
   import §1!&§.DisplayObject;
   import §1!&§.DisplayObjectContainer;
   import §1!&§.Sprite;
   import §8!?§.§?!B§;
   import §8!?§.CompositeSpriteParser;
   import §8!?§.TextureManager;
   
   public class §=n§ extends §9!'§
   {
      
      public static const §'"§:String = "background";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §'"§ = "background";
         }
      }
      
      private var mName:String;
      
      private var §^s§:String;
      
      private var §`!Z§:Number;
      
      private var §[§:Number;
      
      private var §^B§:Number;
      
      private var §+!d§:Number;
      
      private var §3!Q§:Number = 1.0;
      
      private var §;>§:Boolean = true;
      
      public function §=n§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
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
                  this.§^s§ = param4;
                  addr119:
                  while(true)
                  {
                     this.§`!Z§ = param5;
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
                                    this.§3!Q§ = param7;
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
      
      public function get §1!R§() : String
      {
         return this.§^s§;
      }
      
      public function get x() : Number
      {
         return this.§`!Z§;
      }
      
      public function get y() : Number
      {
         return this.§[§;
      }
      
      public function set §null §(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§;>§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:TextureManager) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:DisplayObject = null;
         var _loc5_:§?!B§ = null;
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
                     _loc4_ = CompositeSpriteParser.§#t§(this.§1!R§,param3);
                     if(!_loc9_)
                     {
                        §§push(!_loc4_);
                        if(!(_loc9_ && this))
                        {
                           if(§§pop())
                           {
                              if(!_loc9_)
                              {
                                 _loc5_ = param3.§"!'§(this.§1!R§);
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
                                             _loc6_ = param2.getChildByName(§'"§) as Sprite;
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
                                                                     if(this.name == §'"§)
                                                                     {
                                                                        if(_loc10_ || param2)
                                                                        {
                                                                           addr264:
                                                                           if(this.§;>§)
                                                                           {
                                                                              if(!_loc10_)
                                                                              {
                                                                              }
                                                                              addr280:
                                                                              _loc4_.scaleY = this.§3!Q§;
                                                                              return false;
                                                                              addr284:
                                                                           }
                                                                        }
                                                                     }
                                                                     _loc4_.scaleX = this.§3!Q§;
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
                                 _loc4_ = new §&p§(_loc5_.texture);
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
            this.§^B§ = param1;
         }
         do
         {
            this.§+!d§ = param2;
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      override public function clone() : §9!'§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§=n§ = new §=n§(time,duration,this.mName,this.§^s§,this.§`!Z§,this.§[§,this.§3!Q§);
         if(_loc3_)
         {
            _loc1_.§;>§ = this.§;>§;
         }
         while(true)
         {
            _loc1_.§^B§ = this.§^B§;
            while(_loc3_)
            {
               _loc1_.§+!d§ = this.§+!d§;
               if(_loc3_)
               {
                  return _loc1_;
               }
            }
         }
      }
   }
}
