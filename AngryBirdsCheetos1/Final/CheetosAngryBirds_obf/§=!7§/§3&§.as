package §=!7§
{
   import § `§.§2w§;
   import § `§.§6!=§;
   import § `§.§>o§;
   import §]@§.DisplayObject;
   import §]@§.DisplayObjectContainer;
   import §]@§.Sprite;
   import §]@§.§`!C§;
   
   public class §3&§ extends §%f§
   {
      
      public static const §[!M§:String = "background";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && §3&§))
         {
            §[!M§ = "background";
         }
      }
      
      private var mName:String;
      
      private var §8?§:String;
      
      private var §<!Y§:Number;
      
      private var § l§:Number;
      
      private var §^!I§:Number;
      
      private var §,!X§:Number;
      
      private var §'p§:Number = 1.0;
      
      private var get:Boolean = true;
      
      public function §3&§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param3)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.mName = param3;
               loop1:
               while(true)
               {
                  this.§8?§ = param4;
                  loop2:
                  while(true)
                  {
                     this.§<!Y§ = param5;
                     loop3:
                     while(true)
                     {
                        this.§ l§ = param6;
                        loop4:
                        while(true)
                        {
                           §§push(!isNaN(param7));
                           loop5:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(§§pop())
                                 {
                                    if(!_loc8_)
                                    {
                                       if(!_loc8_)
                                       {
                                          continue loop2;
                                       }
                                       continue loop4;
                                    }
                                    addr68:
                                    if(_loc9_ || param2)
                                    {
                                       if(_loc9_)
                                       {
                                          addr77:
                                          break;
                                       }
                                       continue loop1;
                                    }
                                    loop7:
                                    while(_loc9_)
                                    {
                                       if(!_loc9_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(param7 > 0);
                                       if(!_loc8_)
                                       {
                                          continue loop5;
                                       }
                                       addr85:
                                       while(true)
                                       {
                                          §§pop();
                                          continue loop7;
                                       }
                                    }
                                    continue loop3;
                                 }
                                 return;
                                 addr42:
                              }
                              §§goto(addr85);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §87§() : String
      {
         return this.§8?§;
      }
      
      public function get x() : Number
      {
         return this.§<!Y§;
      }
      
      public function get y() : Number
      {
         return this.§ l§;
      }
      
      public function set §true §(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.get = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§2w§) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:DisplayObject = null;
         var _loc5_:§6!=§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(_loc10_ || param1)
         {
            §§push(super.update(param1,param2,param3));
            if(_loc10_ || this)
            {
               if(!§§pop())
               {
                  addr52:
                  if(!(_loc4_ = §>o§.§#]§(this.§87§,param3)))
                  {
                     if(_loc10_ || param2)
                     {
                        if(_loc5_ = param3.§4!,§(this.§87§))
                        {
                           (_loc4_ = new §`!C§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                           if(_loc10_)
                           {
                              _loc4_.pivotY = -_loc5_.pivotY;
                              addr94:
                              if(_loc4_)
                              {
                                 if(!_loc9_)
                                 {
                                    addr98:
                                    if(_loc6_ = param2.getChildByName(§[!M§) as Sprite)
                                    {
                                       if(_loc10_ || param2)
                                       {
                                          param2 = _loc6_;
                                          addr127:
                                          §§push(_loc4_);
                                          §§push(_loc4_.x);
                                          if(_loc10_ || param3)
                                          {
                                             §§push(§§pop() + this.x);
                                          }
                                          §§pop().x = §§pop();
                                          if(!_loc9_)
                                          {
                                             §§push(_loc4_);
                                             §§push(_loc4_.y);
                                             if(_loc10_ || this)
                                             {
                                                §§push(§§pop() + this.y);
                                             }
                                             §§pop().y = §§pop();
                                             if(!(_loc9_ && param2))
                                             {
                                                addr164:
                                                _loc4_.name = this.name;
                                             }
                                          }
                                          if(_loc7_ = param2.getChildByName(this.name))
                                          {
                                             if(_loc10_)
                                             {
                                                (_loc8_ = _loc7_.parent).removeChild(_loc7_,true);
                                                if(_loc10_)
                                                {
                                                   _loc8_.addChild(_loc4_);
                                                   if(_loc10_)
                                                   {
                                                      addr197:
                                                      if(this.name == §[!M§)
                                                      {
                                                         if(_loc10_ || param3)
                                                         {
                                                            addr208:
                                                            if(this.get)
                                                            {
                                                               if(!(_loc9_ && param1))
                                                               {
                                                                  addr218:
                                                                  _loc4_.scaleX = this.§'p§;
                                                                  if(!_loc10_)
                                                                  {
                                                                  }
                                                                  §§goto(addr238);
                                                               }
                                                               addr238:
                                                               return false;
                                                            }
                                                            §§goto(addr218);
                                                         }
                                                         _loc4_.scaleY = this.§'p§;
                                                      }
                                                      §§goto(addr218);
                                                   }
                                                   §§goto(addr208);
                                                }
                                                §§goto(addr218);
                                             }
                                          }
                                          else
                                          {
                                             param2.addChild(_loc4_);
                                          }
                                          §§goto(addr197);
                                       }
                                       §§goto(addr164);
                                    }
                                    §§goto(addr127);
                                 }
                                 else
                                 {
                                    addr241:
                                    return true;
                                    addr240:
                                 }
                              }
                              §§goto(addr218);
                           }
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr94);
               }
               §§goto(addr240);
            }
            §§goto(addr241);
         }
         §§goto(addr52);
      }
      
      public function §%r§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§^!I§ = param1;
         }
         do
         {
            this.§,!X§ = param2;
         }
         while(_loc3_);
         
      }
      
      override public function clone() : §%f§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§3&§ = new §3&§(time,duration,this.mName,this.§8?§,this.§<!Y§,this.§ l§,this.§'p§);
         if(_loc3_ || _loc3_)
         {
            _loc1_.get = this.get;
            while(true)
            {
               _loc1_.§^!I§ = this.§^!I§;
               while(!(_loc2_ && _loc1_))
               {
                  _loc1_.§,!X§ = this.§,!X§;
                  if(_loc2_ && _loc3_)
                  {
                     continue;
                  }
                  return _loc1_;
                  addr68:
               }
            }
         }
         §§goto(addr68);
      }
   }
}
