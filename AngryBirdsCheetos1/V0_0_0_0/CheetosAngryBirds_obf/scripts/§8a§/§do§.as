package §8a§
{
   import §4W§.§!]§;
   import §4W§.§9b§;
   import §4W§.§>c§;
   import §`a§.§>?§;
   import §`a§.DisplayObject;
   import §`a§.DisplayObjectContainer;
   import §`a§.Sprite;
   
   public class §do§ extends §'!U§
   {
      
      public static const §5!%§:String = "background";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §5!%§ = "background";
         }
      }
      
      private var mName:String;
      
      private var §8k§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §?l§:Number;
      
      private var §+G§:Number;
      
      private var §=l§:Number = 1.0;
      
      private var §>_§:Boolean = true;
      
      public function §do§(param1:Number, param2:Number, param3:String, param4:String, param5:Number, param6:Number, param7:Number)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc9_ || param2)
         {
            super(param1,param2);
            loop0:
            while(true)
            {
               this.mName = param3;
               while(true)
               {
                  this.§8k§ = param4;
                  addr95:
                  while(true)
                  {
                     this.mX = param5;
                  }
                  addr46:
                  if(!(_loc8_ && param1))
                  {
                     if(_loc9_)
                     {
                        §§goto(addr25);
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            this.mY = param6;
            loop4:
            while(_loc9_)
            {
               §§push(!isNaN(param7));
               if(_loc9_)
               {
                  if(§§pop())
                  {
                     loop7:
                     while(true)
                     {
                        §§pop();
                        loop6:
                        for(; !_loc8_; continue loop7)
                        {
                           addr78:
                           §§push(param7 > 0);
                           if(!_loc8_)
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc9_)
                                    {
                                       if(_loc8_)
                                       {
                                          continue loop6;
                                       }
                                       this.§=l§ = param7;
                                    }
                                    if(_loc8_)
                                    {
                                       continue loop4;
                                    }
                                    §§goto(addr46);
                                 }
                                 break;
                                 §§goto(addr78);
                              }
                              addr25:
                           }
                           continue loop7;
                           return;
                        }
                        §§goto(addr95);
                     }
                     addr75:
                  }
                  §§goto(addr35);
               }
               §§goto(addr75);
            }
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function get §=P§() : String
      {
         return this.§8k§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set §,T§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§>_§ = param1;
         }
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§!]§) : Boolean
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:DisplayObject = null;
         var _loc5_:§>c§ = null;
         var _loc6_:Sprite = null;
         var _loc7_:DisplayObject = null;
         var _loc8_:DisplayObjectContainer = null;
         if(_loc10_ || param1)
         {
            §§push(super.update(param1,param2,param3));
            if(_loc10_)
            {
               if(!§§pop())
               {
                  §§goto(addr47);
               }
               §§goto(addr240);
            }
            §§goto(addr241);
         }
         addr47:
         if(!(_loc4_ = §9b§.§3z§(this.§=P§,param3)))
         {
            if(!_loc9_)
            {
               if(_loc5_ = param3.§]]§(this.§=P§))
               {
                  (_loc4_ = new §>?§(_loc5_.texture)).pivotX = -_loc5_.pivotX;
                  if(_loc10_ || param3)
                  {
                     _loc4_.pivotY = -_loc5_.pivotY;
                  }
               }
               §§goto(addr89);
            }
            §§goto(addr93);
         }
         addr89:
         if(_loc4_)
         {
            if(!_loc9_)
            {
               addr93:
               if(_loc6_ = param2.getChildByName(§5!%§) as Sprite)
               {
                  if(_loc10_ || this)
                  {
                     param2 = _loc6_;
                     addr122:
                     §§push(_loc4_);
                     §§push(_loc4_.x);
                     if(!(_loc9_ && param2))
                     {
                        §§push(§§pop() + this.x);
                     }
                     §§pop().x = §§pop();
                     if(!_loc9_)
                     {
                        addr138:
                        §§push(_loc4_);
                        §§push(_loc4_.y);
                        if(_loc10_)
                        {
                           §§push(§§pop() + this.y);
                        }
                        §§pop().y = §§pop();
                        if(!_loc9_)
                        {
                           _loc4_.name = this.name;
                        }
                     }
                     if(_loc7_ = param2.getChildByName(this.name))
                     {
                        if(_loc10_ || param1)
                        {
                           (_loc8_ = _loc7_.parent).removeChild(_loc7_,true);
                           if(_loc10_ || param1)
                           {
                              _loc8_.addChild(_loc4_);
                              if(_loc10_ || param2)
                              {
                                 addr197:
                                 if(this.name == §5!%§)
                                 {
                                    if(_loc10_)
                                    {
                                       if(this.§>_§)
                                       {
                                          if(_loc9_ && param2)
                                          {
                                          }
                                          §§goto(addr238);
                                       }
                                    }
                                    §§goto(addr238);
                                 }
                                 _loc4_.scaleX = this.§=l§;
                                 if(_loc9_ && param3)
                                 {
                                 }
                              }
                              §§goto(addr238);
                           }
                           _loc4_.scaleY = this.§=l§;
                           §§goto(addr238);
                        }
                     }
                     else
                     {
                        param2.addChild(_loc4_);
                     }
                     §§goto(addr197);
                  }
                  §§goto(addr138);
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
         addr238:
         return false;
      }
      
      public function §,L§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§?l§ = param1;
         }
         do
         {
            this.§+G§ = param2;
         }
         while(!_loc3_);
         
      }
      
      override public function clone() : §'!U§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:§do§ = new §do§(time,duration,this.mName,this.§8k§,this.mX,this.mY,this.§=l§);
         if(!(_loc3_ && _loc1_))
         {
            _loc1_.§>_§ = this.§>_§;
            while(true)
            {
               _loc1_.§?l§ = this.§?l§;
               while(_loc2_ || _loc3_)
               {
                  _loc1_.§+G§ = this.§+G§;
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return _loc1_;
                  addr62:
               }
            }
         }
         §§goto(addr62);
      }
   }
}
