package §7Z§
{
   import §2Y§.§7!f§;
   import §2Y§.DisplayObject;
   import §2Y§.DisplayObjectContainer;
   import §2Y§.Sprite;
   import §=!<§.§8!!§;
   import §=!<§.§>a§;
   import §=!<§.§`[§;
   
   public class §&!Q§ extends §^!§
   {
      
      public static const §<!b§:String = "background";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §<!b§ = "background";
         }
      }
      
      private var mName:String;
      
      private var §,!E§:String;
      
      private var §"!d§:Number;
      
      private var §,!W§:Number;
      
      private var §@!-§:Number;
      
      private var §3S§:Number;
      
      private var §1-§:Number = 1.0;
      
      private var §`!`§:Boolean = true;
      
      public function §&!Q§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!(_loc8_ && param3))
         {
            super(param1,param2);
            while(true)
            {
               this.mName = param3;
               addr125:
               while(true)
               {
                  this.§,!E§ = param4;
                  loop2:
                  while(true)
                  {
                     this.§"!d§ = param5;
                     addr105:
                     while(true)
                     {
                        this.§,!W§ = param6;
                        continue loop2;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(!isNaN(param7));
            if(_loc9_)
            {
               if(§§pop())
               {
                  loop8:
                  while(true)
                  {
                     §§pop();
                     loop7:
                     for(; !_loc8_; continue loop8)
                     {
                        addr88:
                        §§push(param7 > 0);
                        if(_loc8_ && param2)
                        {
                           continue loop8;
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc8_)
                              {
                                 if(_loc8_ && param2)
                                 {
                                    continue loop7;
                                 }
                                 §§goto(addr51);
                              }
                              §§goto(addr73);
                           }
                           break;
                           §§goto(addr88);
                        }
                        §§goto(addr25);
                     }
                     §§goto(addr125);
                  }
                  addr85:
               }
               §§goto(addr40);
            }
            §§goto(addr85);
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §7m§() : String
      {
         return this.§,!E§;
      }
      
      public function get x() : Number
      {
         return this.§"!d§;
      }
      
      public function get y() : Number
      {
         return this.§,!W§;
      }
      
      public function set §'d§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§`!`§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§>a§) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:DisplayObject = null;
         var _loc5_:§8!!§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(!(_loc9_ && param1))
         {
            §§push(super.update(param1,param2,param3));
            if(_loc10_)
            {
               if(!§§pop())
               {
                  addr47:
                  if(!(_loc4_ = §`[§.§&Y§(this.§7m§,param3)))
                  {
                     if(_loc10_ || this)
                     {
                        if(_loc5_ = param3.§8t§(this.§7m§))
                        {
                           (_loc4_ = new §7!f§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                           if(!_loc9_)
                           {
                              _loc4_.pivotY = -_loc5_.pivotY;
                              addr89:
                              if(_loc4_)
                              {
                                 if(!_loc9_)
                                 {
                                    addr93:
                                    if(_loc6_ = param2.getChildByName(§<!b§) as Sprite)
                                    {
                                       if(_loc10_ || param1)
                                       {
                                          param2 = _loc6_;
                                          addr122:
                                          §§push(_loc4_);
                                          §§push(_loc4_.x);
                                          if(!_loc9_)
                                          {
                                             §§push(§§pop() + this.x);
                                          }
                                          §§pop().x = §§pop();
                                          if(_loc10_ || this)
                                          {
                                             §§push(_loc4_);
                                             §§push(_loc4_.y);
                                             if(_loc10_)
                                             {
                                                §§push(§§pop() + this.y);
                                             }
                                             §§pop().y = §§pop();
                                             if(!(_loc9_ && param3))
                                             {
                                                addr154:
                                                _loc4_.name = this.name;
                                             }
                                          }
                                          if(_loc7_ = param2.getChildByName(this.name))
                                          {
                                             if(!_loc9_)
                                             {
                                                (_loc8_ = _loc7_.parent).removeChild(_loc7_,true);
                                                if(_loc10_ || this)
                                                {
                                                   _loc8_.addChild(_loc4_);
                                                   if(_loc10_ || param1)
                                                   {
                                                      addr197:
                                                      if(this.name == §<!b§)
                                                      {
                                                         if(!(_loc9_ && this))
                                                         {
                                                            if(this.§`!`§)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                               }
                                                               §§goto(addr238);
                                                            }
                                                         }
                                                         addr234:
                                                         _loc4_.scaleY = this.§1-§;
                                                         §§goto(addr238);
                                                      }
                                                      _loc4_.scaleX = this.§1-§;
                                                      if(_loc10_ || param2)
                                                      {
                                                      }
                                                      addr238:
                                                      return false;
                                                      addr193:
                                                   }
                                                   §§goto(addr234);
                                                }
                                                §§goto(addr193);
                                             }
                                          }
                                          else
                                          {
                                             param2.addChild(_loc4_);
                                          }
                                          §§goto(addr197);
                                       }
                                       §§goto(addr154);
                                    }
                                    §§goto(addr122);
                                 }
                                 else
                                 {
                                    addr241:
                                    return true;
                                    addr240:
                                 }
                              }
                              §§goto(addr238);
                           }
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr89);
               }
               §§goto(addr240);
            }
            §§goto(addr241);
         }
         §§goto(addr47);
      }
      
      public function §1n§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§@!-§ = param1;
         }
         do
         {
            this.§3S§ = param2;
         }
         while(_loc4_);
         
      }
      
      override public function clone() : §^!§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§&!Q§ = new §&!Q§(time,duration,this.mName,this.§,!E§,this.§"!d§,this.§,!W§,this.§1-§);
         if(!(_loc3_ && _loc2_))
         {
            _loc1_.§`!`§ = this.§`!`§;
            while(true)
            {
               _loc1_.§@!-§ = this.§@!-§;
               §§goto(addr85);
            }
         }
         addr85:
         while(true)
         {
            _loc1_.§3S§ = this.§3S§;
            if(_loc2_)
            {
               if(!(_loc3_ && _loc1_))
               {
                  break;
               }
               continue loop0;
            }
         }
         return _loc1_;
      }
   }
}
