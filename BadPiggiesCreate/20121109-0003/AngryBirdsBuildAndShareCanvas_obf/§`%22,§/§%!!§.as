package §`",§
{
   import §+!-§.§7"#§;
   import §+!-§.DisplayObject;
   import §+!-§.DisplayObjectContainer;
   import §+!-§.Sprite;
   import §;"7§.§+!I§;
   import §;"7§.§3"#§;
   import §;"7§.§="<§;
   
   public class §%!!§ extends §7!s§
   {
      
      public static const §=[§:String = "background";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §=[§ = "background";
         }
      }
      
      private var mName:String;
      
      private var §#^§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §",§:Number;
      
      private var §%"0§:Number;
      
      private var §@f§:Number = 1.0;
      
      private var §^"+§:Boolean = true;
      
      public function §%!!§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || param1)
         {
            super(param1,param2);
            while(true)
            {
               this.mName = param3;
               loop1:
               while(true)
               {
                  this.§#^§ = param4;
                  addr104:
                  while(true)
                  {
                     this.mX = param5;
                     continue loop1;
                  }
               }
            }
         }
         while(true)
         {
            §§push(!isNaN(param7));
            if(_loc8_)
            {
               if(§§pop())
               {
                  §§goto(addr79);
               }
               §§goto(addr34);
            }
            §§goto(addr79);
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §,X§() : String
      {
         return this.§#^§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set §use §(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§^"+§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§="<§) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:DisplayObject = null;
         var _loc5_:§+!I§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(_loc9_)
         {
            §§push(super.update(param1,param2,param3));
            if(_loc9_ || this)
            {
               if(!§§pop())
               {
                  addr46:
                  if(!(_loc4_ = §3"#§.§ !&§(this.§,X§,param3)))
                  {
                     if(!_loc10_)
                     {
                        if(_loc5_ = param3.§5!!§(this.§,X§))
                        {
                           (_loc4_ = new §7"#§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                           if(!_loc10_)
                           {
                              _loc4_.pivotY = -_loc5_.pivotY;
                              addr83:
                              if(_loc4_)
                              {
                                 if(!(_loc10_ && param3))
                                 {
                                    addr92:
                                    if(_loc6_ = param2.getChildByName(§=[§) as Sprite)
                                    {
                                       if(!(_loc10_ && param2))
                                       {
                                          param2 = _loc6_;
                                          addr111:
                                          §§push(_loc4_);
                                          §§push(_loc4_.x);
                                          if(_loc9_ || this)
                                          {
                                             §§push(§§pop() + this.x);
                                          }
                                          §§pop().x = §§pop();
                                          if(_loc9_)
                                          {
                                             addr137:
                                             §§push(_loc4_);
                                             §§push(_loc4_.y);
                                             if(_loc9_ || param3)
                                             {
                                                §§push(§§pop() + this.y);
                                             }
                                             §§pop().y = §§pop();
                                             if(!(_loc10_ && this))
                                             {
                                                addr158:
                                                _loc4_.name = this.name;
                                             }
                                             if(_loc7_ = param2.getChildByName(this.name))
                                             {
                                                if(_loc9_ || this)
                                                {
                                                   (_loc8_ = _loc7_.parent).removeChild(_loc7_,true);
                                                   if(!(_loc10_ && this))
                                                   {
                                                      _loc8_.addChild(_loc4_);
                                                      if(!(_loc10_ && param2))
                                                      {
                                                         addr206:
                                                         if(this.name == §=[§)
                                                         {
                                                            if(!_loc10_)
                                                            {
                                                               addr212:
                                                               if(this.§^"+§)
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     addr217:
                                                                     _loc4_.scaleX = this.§@f§;
                                                                     if(_loc10_ && param3)
                                                                     {
                                                                     }
                                                                     §§goto(addr242);
                                                                  }
                                                                  addr242:
                                                                  return false;
                                                               }
                                                               §§goto(addr217);
                                                            }
                                                            _loc4_.scaleY = this.§@f§;
                                                         }
                                                         §§goto(addr217);
                                                      }
                                                   }
                                                   §§goto(addr212);
                                                }
                                             }
                                             else
                                             {
                                                param2.addChild(_loc4_);
                                             }
                                             §§goto(addr206);
                                          }
                                          §§goto(addr158);
                                       }
                                       §§goto(addr137);
                                    }
                                    §§goto(addr111);
                                 }
                                 else
                                 {
                                    addr245:
                                    return true;
                                    addr244:
                                 }
                              }
                              §§goto(addr217);
                           }
                        }
                        §§goto(addr83);
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr83);
               }
               §§goto(addr244);
            }
            §§goto(addr245);
         }
         §§goto(addr46);
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            this.§",§ = param1;
         }
         do
         {
            this.§%"0§ = param2;
         }
         while(_loc3_);
         
      }
      
      override public function clone() : §7!s§
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§%!!§ = new §%!!§(time,duration,this.mName,this.§#^§,this.mX,this.mY,this.§@f§);
         if(_loc3_)
         {
            _loc1_.§^"+§ = this.§^"+§;
            while(true)
            {
               _loc1_.§",§ = this.§",§;
               loop1:
               while(_loc3_ || _loc3_)
               {
                  while(true)
                  {
                     _loc1_.§%"0§ = this.§%"0§;
                     if(!(_loc2_ && _loc2_))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return _loc1_;
               }
            }
         }
         §§goto(addr86);
      }
   }
}
